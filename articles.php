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

          <?php

          try{
            $bdd = new PDO('mysql:host=localhost;dbname=test;charset=utf8', 'root' , 'qX7-xM4-z6z-vPb',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
          }
          catch (Exception $e)
          {
            die ('Erreur : ' .$e->getMessage());
          }
          $addArticle = $bdd -> prepare('SELECT titre, contenu, DATE_FORMAT(dateCreation, "%d/%m/%Y") AS date FROM billets WHERE id = :id');
          $addArticle -> execute(array('id' => $_GET['billet']));
          $display = $addArticle -> fetch();
          ?>
            <article class="col-md-8">
              <h2><?php echo $display['titre'] ?></h2>
                <h4>Posté le <?php echo $display['date'] ?></h4>
                <p class="lead"><?php echo $display['contenu'];?></p>
                <a href="index.php">RETOUR À L'ACCEUIL</a></div>
                <hr>
            </article>

      <div class="comments">
        <form action= "addBdd.php" method="post">
         <div class="form-group">
           <label>PSEUDO</label>
           <input type="text" class="form-control" name="pseudo"/>
         </div>
         <div class="form-group">
           <label>MESSAGE</label>
           <textarea class="form-control" rows="3" name="message"></textarea>
         </div>
           <input type="hidden" name="id" value="<?php echo $_GET['billet'];?>" />
           <button type="submit" class="btn btn-default">ENVOYER</button>
       </form>
       <div class="display box">
       <?php
       $displayComment = $bdd -> prepare('SELECT auteur, commentaire, DATE_FORMAT(dateCommentaire, "%d/%m/%Y") AS date, DATE_FORMAT(dateCommentaire, "%H:%i") AS heure  FROM commentaires WHERE idBillet=:id ORDER BY id DESC ');
       $displayComment -> execute(array('id' => $_GET['billet']));
       while ($display = $displayComment -> fetch()) {
        ?>

          <h6>Posté par <?php echo $display['auteur'] ?> le <?php echo $display['date'] ?> à <?php echo $display['heure'] ?> </h4>
          <p><?php echo $display['commentaire'];?></p><hr>

      <?php
       };
      ?>
      </div>

    </div>

        <?php include 'footer.php' ?>
     </div>
