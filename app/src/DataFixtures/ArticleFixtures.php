<?php

namespace App\DataFixtures;

use App\Entity\Article;
use App\Entity\Comment;
use App\Entity\Category;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Symfony\Component\Validator\Constraints\Date;

class ArticleFixtures extends Fixture
{
    // put fixtures in BDD with doctrine (ORM) : php bin/console doctrine:fixtures:load
    public function load(ObjectManager $manager)
    {
        // import Faker library (installed via composer)
        $faker = \Faker\Factory::create("fr_FR");

        // create 3 catégories
        for($i = 1; $i <= 3; $i++)
        {
            $category = new Category; 

            $category->setTitle($faker->sentence())
                     ->setDescription($faker->paragraph());

            $manager->persist($category);


            // create between 4-6 articles per category
            for($j=1; $j <= mt_rand(4,6); $j++)
            {
                $article = new Article;

                $content = "<p>" .  join("</p><p>", $faker->paragraphs(5)) . "</p>";

                $article->setTitle($faker->sentence())
                        ->setContent($content)
                        ->setImage("https://picsum.photos/seed/picsum/450/300")
                        ->setCreatedAt($faker->dateTimeBetween("-6 months"))
                        ->setCategory($category);

                $manager->persist($article);


                // create between 4-10 comments per article
                for($k = 1; $k <= mt_rand(4,10); $k++)
                {
                    $comment = new Comment;
                    
                    $content = "<p>" . join("</p><p>", $faker->paragraphs(2)) . "</p>";

                    $now = new \DateTime;
                    $interval = $now->diff($article->getCreatedAt());
                    $days = $interval->days;
                    $minimum = "-$days days";

                    $comment->setAuthor($faker->name)
                            ->setContent($content)
                            ->setCreatedAt($faker->dateTimeBetween($minimum))
                            ->setArticle($article);

                    $manager->persist($comment);
                }
            }
        }
        $manager->flush();
    }
}
