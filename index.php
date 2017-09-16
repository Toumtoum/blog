<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <!-- Place favicon.ico in the root directory -->

        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">


    </head>
    <body>
      <div class="page">
        <?php include 'header.php'; ?>
        <?php include 'aside.php'; ?>

           <div class="col-md-8"><!--Posts-->
             <?php

             try{
               $bdd = new PDO('mysql:host=localhost;dbname=test;charset=utf8', 'root' , 'qX7-xM4-z6z-vPb',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
             }
             catch (Exception $e)
             {
               die ('Erreur : ' .$e->getMessage());
             }
             $addArticle = $bdd -> query('SELECT titre, contenu, id, DATE_FORMAT(dateCreation, "%d/%m/%Y") AS date FROM billets');
             while($display = $addArticle -> fetch()){
               ?>
               <article>
                 <h2><?php echo $display['titre'] ?></h2>
                   <h4>Posté le <?php echo $display['date'] ?></h4>
                   <p class="lead"><?php echo substr($display['contenu'],0,200) . '...';?></p>
                   <a href="articles.php?billet=<?php echo $display['id']; ?>">LIRE LA SUITE</a>
                   <hr>
               </article>
             <?php
             }
             $addArticle->closeCursor();
             ?>
           </div>
         </div>
       </div>
      <?php include 'footer.php' ?>
   </div> <!--fin de la page-->



        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.12.0.min.js"><\/script>')</script>
        <script src="js/plugins.js"></script>
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>



        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>

        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='https://www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-XXXXX-X','auto');ga('send','pageview');
        </script>
    </body>
</html>
