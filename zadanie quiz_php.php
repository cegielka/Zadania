<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
<div><h1>Oto jest quiz dotyczący Java!!!</h1></div>
<form method="post">
<legend>Podaj login</legend>
<input type="text" name="imie" value="">
<legend><br><br></legend>
<legend>Podaj hasło</legend>
<input type="password" name="pass" value="">
<legend><br><br></legend>
<input type="submit" name="submit" value="wyślij">
</form><?php
$polaczenie = mysqli_connect('localhost', 'root', '', 'quizdb');
if(isset($_POST['submit'])){
$insertsql = "INSERT INTO `person` (`PersonID`, `man`) VALUES (NULL, '".$_POST['imie']."')";
if ($polaczenie->query($insertsql)){
    echo "Zapisano";
} else {
    echo "Nie zapisano";
}
$result = mysqli_query($polaczenie, $insertsql);

           if($result){
               echo "Dodane prawidłowo";
           } else {
               echo "Błąd dodawania rekordu";
           }
        }
?>

<?php  
$connection = mysqli_connect("localhost","root","","quizdb");

if(mysqli_connect_errno()){
    echo "Failed connection" . mysqli_connect_error();
    exit;
 }
$result = mysqli_query($connection,"SELECT * FROM quiz");
if (isset($_POST['submit'])) {
    
  if ($result) {
    echo '<form action="result.php" method="post">'; 
    echo '<input type="text" name="imie" placeholder="Podaj imię gracza" required />';
while ($row = mysqli_fetch_array($result)) {
    
    echo "<hr>";
    echo $row["quizID"] . " " . $row["question"];
    echo "<br>";
    echo '<label><input type="radio" name="odp_' . $row['quizID'].'" value="'. $row["choice1"].'"/>' . $row["choice1"]; 
    echo '<label><input type="radio" name="odp_' . $row['quizID'].'" value="'. $row["choice2"].'"/>' . $row["choice2"];
    echo '<label><input type="radio" name="odp_' . $row['quizID'].'" value="'. $row["choice3"].'"/>' . $row["choice3"];
    echo "<br>";
    
}
echo "<br>";
echo "<input type='submit' name='submit1' value='wyślij'>";
echo "</form>";

  $result -> free_result();
}
}

mysqli_close($connection);





?>
</body>
</html>