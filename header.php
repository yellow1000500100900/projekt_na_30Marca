<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel='stylesheet' href='style.css'>
</head>
<body>
<header>
    <ul>
        <?php
        if (empty($_SESSION['logged']) || $_SESSION['logged'] == false){
        ?>
        <li><a>Nie jesteś zalogowany drogi użytkowniku!</a></li>
        
    <li><a href='logIn.php'>Zaloguj się</a></li>
    <li><a href='register.php'>Zarejestruj się</a></li>
       
    
<?php
}else{
?>   
<li><a>Zalogowano.</a></li> 
<li><a href='logout.php'>Wyloguj się</a></li>
<?php
}
?>    
</ul>
</header>    
</body>
</html>
