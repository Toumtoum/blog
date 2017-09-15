<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" >
   <head>
       <title>Formulaires</title>
       <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
   </head>
   <body>

		<p>
			Entrez le mot de passe :
		</p>

		<form action="formulaire.php" method="post">
			<p>
				<input type="password" name="password" />
        <input type="submit" value="Valider" />
      </p>

		</form>

    <?php

        if (isset($_POST['password'])){

          $_POST['password'] = htmlspecialchars($_POST['password']);

          if ($_POST['password'] == "kangourou"){

            echo 'les codes de la NASA sont 0000';
          }
          else
            echo 'vous n\'obtienderez jamais les codes';

        }

    ?>


   </body>
</html>
