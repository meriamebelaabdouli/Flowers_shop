
<?php
if(isset($_POST['text'])) {
$name = $_POST['text'];
$handle = fopen('names.txt'
, 'a');
fwrite($handle, $name."\n");
fclose($handle); 
}
?>
<form method="post">
Name: <input type="text" name="text" />
<input type="submit" name="submit" />
</form>
<?php
$uploaddir = '/var/www/uploads/';
$uploadfile = $uploaddir . basename($_FILES['userfile']['name']);
echo '<pre>';
if(move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile)){
echo "Le fichier est valide, et a été téléchargé avec succès. 
Voici plus d'informations :\n";
} else {
echo "Attaque potentielle par téléchargement de fichiers. Voici 
plus d'informations :\n";
}
echo 'Voici quelques informations de débogage :';
print_r($_FILES);
echo '</pre>';
?>