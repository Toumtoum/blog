<?php
try{
  $bdd = new PDO('mysql:host=localhost;dbname=test;charset=utf8', 'root' , 'qX7-xM4-z6z-vPb',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
}
catch (Exception $e)
{
  die ('Erreur : ' .$e->getMessage());
}

$addBdd = $bdd->prepare('INSERT INTO commentaires (auteur,commentaire,idBillet) Values(:pseudo , :message, :id)');
if(!empty($_POST['pseudo']) && !empty($_POST['message'])){
  $addBdd->execute(array(
  'pseudo'=> strip_tags($_POST['pseudo']),
  'message'=> strip_tags($_POST['message']),
  'id'=> $_POST['id'],
  ));
}


  header('location:articles.php?billet='.$_POST['id']);exit;
  $addBdd->closeCursor();
?>
