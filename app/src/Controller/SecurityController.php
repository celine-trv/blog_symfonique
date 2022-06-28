<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\UserFormType;
use App\Form\RegistrationFormType;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Security\Core\Authorization\Voter\AuthenticatedVoter;

class SecurityController extends AbstractController
{
    /**
     * Registration
     * @Route("/inscription", name="security_registration")
     */
    public function registration(Request $request, EntityManagerInterface $manager, UserPasswordEncoderInterface $encoder): Response
    {
        $user = new User;

        $formRegistration = $this->createForm(RegistrationFormType::class, $user, [
            "validation_groups" => ["registration"]
        ]);

        $formRegistration->handleRequest($request);

        if($formRegistration->isSubmitted() && $formRegistration->isValid())
        {
            $hash = $encoder->encodePassword($user, $user->getPassword());

            $user->setPassword($hash);

            $user->setRoles(["ROLE_USER"]);

            $manager->persist($user);
            $manager->flush();

            $this->addFlash("success", "Félicitations, votre compte a bien été enregistré ! Vous pouvez vous connecter");

            return $this->redirectToRoute("security_login");
        }
        
        return $this->render("security/registration.html.twig", [
            "formRegistration" => $formRegistration->createView()
        ]);
    }

    /**
     * Login
     * @Route("/connexion", name="security_login")
     */
    public function login(AuthenticationUtils $authenticationUtils): Response
    {
        $error = $authenticationUtils->getLastAuthenticationError();
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render("security/login.html.twig", [
            "error" => $error,
            "lastUsername" => $lastUsername
        ]);
    }

    
    /**
     * Display User account
     * @Route("/user", name="security_user")
     */
    public function userAccount(UserRepository $repoUsers, EntityManagerInterface $manager, UserInterface $userLogin): Response
    {
        return $this->render("security/user_account.html.twig", [
        ]);
    }

    
    /**
     * Edit User account
     * @Route("/user/edit", name="edit_user")
     */
    public function userEditAccount(Request $request, EntityManagerInterface $manager, UserInterface $userLogin): Response
    {
        $formUser = $this->createForm(UserFormType::class, $userLogin);
        $formUser->handleRequest($request);

        if($formUser->isSubmitted() && $formUser->isValid())
        {
            $manager->persist($userLogin);
            $manager->flush();

            $this->addFlash("success", $userLogin->getUsername() . " vos informations ont bien été modifiées");

            return $this->redirectToRoute("security_user");
        }

        return $this->render("security/user_edit_account.html.twig", [
            "formUser" => $formUser->createView()
        ]);
    }

    /**
     * Logout
     * @Route("/deconnexion", name="security_logout")
     */
    public function logout()
    {
    }
}
