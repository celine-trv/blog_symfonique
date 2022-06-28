<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Comment;
use App\Entity\Category;
use App\Form\ArticleFormType;
use App\Form\CommentFormType;
use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;

class BlogController extends AbstractController
{
    /**
     * Display home page
     * @Route("/", name="home")
     */
    public function home(): Response
    {
        return $this->render("blog/home.html.twig", [
            "title" => "Bienvenue sur ce blog 'Symfonique'"
        ]);
    }


    /**
     * Display all Articles
     * @Route("/blog", name="blog")
     */
    public function index(ArticleRepository $repoArticles): Response
    {
        $articles = $repoArticles->findBy(array(), array("createdAt" => "asc"));

        return $this->render('blog/index.html.twig', [
            'title' => "Musique Maestro !",
            'articles' => $articles
        ]);
    }


    /**
     * Create and edit an Article
     * @Route("/blog/new", name="blog_create")
     * @Route("/blog/{id}/edit", name="blog_edit")
     */
    public function create(Article $articleCreate = null, Request $request, EntityManagerInterface $manager, SluggerInterface $slugger): Response
    {
        if(!$articleCreate)
        {
            $articleCreate = new Article;
        }

        $form = $this->createForm(ArticleFormType::class, $articleCreate);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
        {
            /** @var UploadedFile $imageFile */
            $imageFile = $form->get("image")->getData();

            if($imageFile)
            {
                $originalFilename = pathinfo($imageFile->getClientOriginalName(), PATHINFO_FILENAME);
                $safeFilename = $slugger->slug($originalFilename);
                $newFilename = $safeFilename . "-" . uniqid() . "." . $imageFile->guessExtension();

                try
                {
                    $imageFile->move(
                        $this->getParameter("img_directory"),
                        $newFilename
                    );
                }
                catch(FileException $e)
                {
                }
                
                $articleCreate->setImage($newFilename);
            }

            if(!$articleCreate->getId())
            {
                $articleCreate->setCreatedAt(new \DateTime);
            }

            $manager->persist($articleCreate);
            $manager->flush();

            // redirection
            return $this->redirectToRoute("blog_show", [
                'id' => $articleCreate->getId()
            ]);
        }

        return $this->render("blog/create.html.twig", [
            "formArticle" => $form->createView(),
            "editMode" => $articleCreate->getId()
        ]);
    }


    /**
     * Display an Article
     * @Route("/blog/{id}", name="blog_show")
     */
    
/*    public function show(ArticleRepository $repo, $id): Response
    {
       $repo = $this->getDoctrine()->getRepository(Article::class);

        $article = $repo->find($id);

        return $this->render("blog/show.html.twig", [
            "articleTwig" => $article
        ]);
    }
*/
    // OR
    public function show(Article $article, Request $request, EntityManagerInterface $manager): Response
    {
        $comment = new Comment;

        $formComment = $this->createForm(CommentFormType::class, $comment);

        $formComment->handleRequest($request);

        if($formComment->isSubmitted() && $formComment->isValid())
        {
            $comment->setCreatedAt(new \DateTime)
                    ->setArticle($article);

            $manager->persist($comment);
            $manager->flush();

            $this->addFlash('success', 'Le commentaire a bien été posté');

            return $this->redirectToRoute("blog_show", [
                "id" => $article->getId()
            ]);
        }

        return $this->render("blog/show.html.twig", [
            "articleTwig" => $article,
            "formComment" => $formComment->createView()
        ]);
    }
}
