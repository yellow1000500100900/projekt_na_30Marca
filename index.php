<?php
session_start();
include_once("config.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel='stylesheet' href='style.css'>
</head>
<body>
    <?php
    include("header.php");
    ?>
    <main>
        <h1>Witamy na blogu!</h1>   
             <a href='post.php' id='write' autofocus>Napisz Posta</a>
        <section>
            <?php
            // include("config");
            show_posts($_SESSION['logged']);
            ?>
        </section>     
    </main>
    <?php
    include("footer.php");
    ?>
</body>
</html>