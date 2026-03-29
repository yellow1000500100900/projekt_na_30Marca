<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] == 'POST'){ if( !empty($_POST['data_email']) &&!empty($_POST['data_password'])){
   $email = $_POST['data_email'];
   
   $password = $_POST['data_password'];
   
   
    
        require "config.php";                
        if(loguj($email, $password)){
            Print("<div class='ok'><label>Logowanie pomyślne.</label></div>");
            $_SESSION['logged'] = true;
    header("index.php");
exit();
        }else{
    Print("<div class='error'><label>Podano dwa różne hasła!</label></div>");
   }
}
else {
    Print("<div class='error'><label>Podaj wszystkie dane!</label></div>");
}
}else {
    Print("<div class='ok'><label>Zaloguj się:</label></div>");
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
            <legend><label id='ps'>Wpisz hasło użytkownika:</label></legend>
            <input id='ps' name='data_password' type='password'> 
            </fieldset>     
            <fieldset> 
            <button type="submit">zaloguj się!</button>
            </fieldset> 
            <fieldset> 
            <button type="reset">Resetuj dane.</button>
            </fieldset> 
            <!-- <fieldset>  -->
            <a href='index.php'>Zrezygnuj i wyjdź</a>
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