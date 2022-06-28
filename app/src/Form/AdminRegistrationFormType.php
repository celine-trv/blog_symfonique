<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;

class AdminRegistrationFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('email')
            ->add('username')
            // CollectionType because in db field 'roles' is an Array/json
            ->add('roles', CollectionType::class, [
                'label_format' => "Rôle utilisateur", 
                'entry_type' => ChoiceType::class,
                'entry_options' => [
                    "choices" => [
                        "Utilisateur" => "ROLE_USER",
                        "Admnistrateur" => "ROLE_ADMIN"
                    ]
                ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
