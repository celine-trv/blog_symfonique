<?php

namespace App\Controller;

use App\Entity\User;
use App\Entity\Article;
use App\Entity\Comment;
use App\Entity\Category;
use App\Form\ArticleFormType;
use App\Form\CommentFormType;
use App\Form\CategoryFormType;
use App\Repository\UserRepository;
use App\Repository\ArticleRepository;
use App\Repository\CommentRepository;
use App\Repository\CategoryRepository;
use App\Form\AdminRegistrationFormType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdminController extends AbstractController
{
    /**
     * BackOffice
     * @Route("/admin", name="admin")
     */
    public function index(): Response
    {
        return $this->render('admin/index.html.twig');
    }

    
    /**
     * BackOffice - Display list of Articles in a <table>
     * @Route("/admin/articles", name="admin_articles")
     * @Route("/admin/{id}/remove", name="admin_remove_article")
     */
    public function adminArticles(EntityManagerInterface $manager, ArticleRepository $repoArticle, Article $article = null): Response
    {
        $columns = $manager->getClassMetadata(Article::class)->getFieldNames();
        $articles = $repoArticle->findBy(array(), array("createdAt" => "desc"));

        if($article)
        {
            $id = $article->getId();

            $manager->remove($article);
            $manager->flush();

            $this->addFlash("success", "L'article id$id a bien été supprimé");

            return $this->redirectToRoute("admin_articles");
        }

        return $this->render('admin/admin_articles.html.twig', [
            "columns" => $columns,
            "articles" => $articles
        ]);
    }
    
    
    /**
     * BackOffice - Edit an Article
     * @Route("/admin/{id}/edit-article", name="admin_edit_article")
     */
    public function adminEditArticle(Article $article, Request $request, EntityManagerInterface $manager): Response
    {
        $formArticle = $this->createForm(ArticleFormType::class, $article);
        $formArticle->handleRequest($request);

        if($formArticle->isSubmitted() && $formArticle->isValid())
        {
            $manager->persist($article);
            $manager->flush();

            $this->addFlash("success", "L'article id" . $article->getId() . " a bien été modifié");

            return $this->redirectToRoute("admin_articles");
        }

        return $this->render("admin/admin_edit_article.html.twig", [
            "idArticle" => $article->getId(),
            "formArticle" => $formArticle->createView()
        ]);
    }
    
    
    /**
     * BackOffice - Display list of Categories in a <table>
     * @Route("/admin/categories", name="admin_category")
     * @Route("/admin/category/{id}/remove", name="admin_remove_category")
     */
    public function adminCategory(EntityManagerInterface $manager, CategoryRepository $repoCategory, Category $category = null): Response
    {
        $columns = $manager->getClassMetadata(Category::class)->getFieldNames();

        if($category)
        {
            if($category->getArticles()->isEmpty())
            {
                $title = $category->getTitle();

                $manager->remove($category);
                $manager->flush();

                $this->addFlash("success", "La catégorie $title a bien été supprimée");
            }
            else
            {
                $this->addFlash("danger", "La catégorie ne peut pas être supprimée car des articles sont associés");
            }
            return $this->redirectToRoute("admin_category");
        }

        $categories = $repoCategory->findAll();

        return $this->render("admin/admin_category.html.twig", [
            "columns" => $columns,
            "categories" => $categories
        ]);
    }


    /**
     * BackOffice - Add and delete Categories of articles
     * @Route("/admin/category/new", name="admin_new_category")
     * @Route("/admin/category/{id}/edit", name="admin_edit_category")
     */
    public function adminFormCategory(Request $request, EntityManagerInterface $manager, Category $category = null): Response
    {
        if(!$category)
        {
            $category = new Category;
        }

        $formCategory = $this->createForm(CategoryFormType::class, $category, [
            "validation_groups" => ["category"]
        ]);

        $formCategory->handleRequest($request);

        if($formCategory->isSubmitted() && $formCategory->isValid())
        {
            if(!$category->getId())
                $message = "La catégorie " . $category->getTitle() . " a bien été enregistrée";
            else
                $message = "La catégorie " . $category->getTitle() . " a bien été modifiée";

            $manager->persist($category);
            $manager->flush();

            $this->addFlash("success", $message);

            return $this->redirectToRoute("admin_category");
        }

        return $this->render("admin/admin_form_category.html.twig", [
            "formCategory" => $formCategory->createView()
        ]);
    }

    
    /**
     * BackOffice - Display Comments of Articles and delete
     * @Route("/admin/comments", name="admin_comments")
     * @Route("/admin/comment/{id}/remove", name="admin_remove_comment")
     */
    public function adminComments(CommentRepository $repoComments, EntityManagerInterface $manager, Comment $comment = null): Response
    {
        $columns = $manager->getClassMetadata(Comment::class)->getFieldNames();

        $comments = $repoComments->findBy(array(), array("createdAt" => "desc"));

        if($comment)
        {
            $id = $comment->getId();
            $author = $comment->getAuthor();
            $date = $comment->getCreatedAt();
            $dateFormat = $date->format("d/m/Y à H:i:s");

            $manager->remove($comment);
            $manager->flush();

            $this->addFlash("success", "Le commentaire id$id de " . $author . " du " . $dateFormat . " a bien été supprimé");

            return $this->redirectToRoute("admin_comments");
        }

        return $this->render("admin/admin_comments.html.twig", [
            "columns" => $columns,
            "comments" => $comments
        ]);
    }

    
    /**
     * BackOffice - Edit Comment
     * @Route("/admin/comment/{id}/edit", name="admin_edit_comment")
     */
    public function editComment(Request $request, EntityManagerInterface $manager, Comment $comment): Response
    {
        $formComment = $this->createForm(CommentFormType::class, $comment);
        $formComment->handleRequest($request);

        if($formComment->isSubmitted() && $formComment->isValid())
        {
            $manager->persist($comment);
            $manager->flush();

            $this->addFlash("success", "Le commentaire id" . $comment->getId() . " de " . $comment->getAuthor() . " du " . $comment->getCreatedAt()->format("d/m/Y à H:i:s") . " a bien été modifié");

            return $this->redirectToRoute("admin_comments");
        }

        return $this->render("admin/admin_edit_comment.html.twig", [
            "formComment" => $formComment->createView()
        ]);
    }

    
    /**
     * BackOffice - Display Users and delete
     * @Route("/admin/users", name="admin_users")
     * @Route("/admin/user/{id}/remove", name="admin_remove_user")
     */
    public function adminUsers(UserRepository $repoUsers, EntityManagerInterface $manager, User $user = null): Response
    {
        $columns = $manager->getClassMetadata(User::class)->getFieldNames();

        $users = $repoUsers->findAll();

        if($user)
        {
            $id = $user->getId();
            $username = $user->getUsername();

            $manager->remove($user);
            $manager->flush();

            $this->addFlash("success", "Le membre id$id " . $username . " a bien été supprimé");

            return $this->redirectToRoute("admin_users");
        }

        return $this->render("admin/admin_users.html.twig", [
            "columns" => $columns,
            "users" => $users
        ]);
    }

    
    /**
     * BackOffice - Edit User
     * @Route("/admin/user/{id}/edit", name="admin_edit_user")
     */
    public function editUser(Request $request, EntityManagerInterface $manager, User $user): Response
    {
        $formUser = $this->createForm(AdminRegistrationFormType::class, $user);
        $formUser->handleRequest($request);

        if($formUser->isSubmitted() && $formUser->isValid())
        {
            $manager->persist($user);
            $manager->flush();

            $this->addFlash("success", "Le membre id" . $user->getId() . " " . $user->getUsername() . " a bien été modifié");

            return $this->redirectToRoute("admin_users");
        }

        return $this->render("admin/admin_edit_user.html.twig", [
            "formUser" => $formUser->createView()
        ]);
    }
}
