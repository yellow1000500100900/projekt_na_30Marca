<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST'){
if ( !empty($_POST['data_email']) && !empty($_POST['data_nick']) &&!empty($_POST['data_password']) && !empty($_POST['data_password_confirm'])){
   $email = $_POST['data_email'];
   $nickname = $_POST['data_nick'];
   $password = $_POST['data_password'];
   $password_2 = $_POST['data_password_confirm'];
   if (!str_contains($email, '@')){
Print("<div class='error'><label>Podano błędny email! </label></div>");
   
   }
   if ($password == $password_2){
        if (strlen($password) >= 12){
        require "config.php";
        newUserInsert($nickname, $email, $password);
        Print("<div class='ok'><label>Rejestrowanie powiodło się pomyślnie.</label></div>");
        
        } else{
    Print("<div class='error'><label>Podano za krótkie hasło na wymagane 12 znaków! </label></div>");
   }

   } else{
    Print("<div class='error'><label>Podano dwa różne hasła!</label></div>");
   }
}
else {
    Print("<div class='error'><label>Podaj wszystkie dane!</label></div>");
}
}else {
    Print("<div class='ok'><label>Rejestruj się:</label></div>");
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel='stylesheet' href='style.css' >
    
</head>
<body>
    <div class='window'>
        <form action='' method='POST'>
            <fieldset>
            <legend><label id='email'>Podaj swój email:</label></legend>
            <input id='email' name='data_email' type='email'>
            </fieldset>
            <fieldset>
            <legend><label id='name'>Wpisz nazwę użytkownika:</label></legend>
            <input id='name' name='data_nick' type='text'>
            </fieldset>
            <fieldset>
            <legend><label id='ps'>Wpisz hasło użytkownika:</label></legend>
            <input id='ps' name='data_password' type='password'> 
            </fieldset>     
            <fieldset>      
            <legend><label id='ps2'>Zatwierdź hasło użytkownika:</label></legend>
            <input id='ps2' name='data_password_confirm' type='password'>
            </fieldset> 
            <fieldset> 
            <button type="submit">Prześlij te dane i zarejestruj się!</button>
            </fieldset> 
            <fieldset> 
            <button type="reset">Resetuj dane.</button>
            </fieldset> 
            <!-- <fieldset>  -->
            <a href='index.php'>Zrezygnuj i wyjdź</a>
            <!-- <button onclick='toexit()'> </button>-->
            <!-- </fieldset>  -->
        </form>
    </div>
</body>
</html>
<!-- <script>
    function toexit(){
        window.location.href="index.php";
        
    }
</script> -->