<?php

namespace App\Form;

use App\Entity\Article;
use App\Entity\Category;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;

class ArticleFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title')
            ->add("category", EntityType::class, [
                "class" => Category::class,
                "choice_label" => "title"
            ])
            ->add('content')
            ->add('image', FileType::class, [
                'data_class' => null,           // added after to debug...
                "label" => "Photo de l'article",
                "mapped" => true,
                "required" => false, 
                "constraints" => [
                    new File([
                        "maxSize" => "3M",
                        "mimeTypes" => [
                            "image/jpeg",
                            "image/jpg",
                            "image/png",
                            "image/JPEG",
                            "image/JPG",
                            "image/PNG"
                        ],
                        "mimeTypesMessage" => "Formats acceptés : jpeg, jpg ou png"
                    ])
                ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}
