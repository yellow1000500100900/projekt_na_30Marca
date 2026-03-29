<?php
// session_start();
if (!isset($_SESSION['logged'])){
    header("logIn.php");
    exit();
}

require "post.php";
$given = give_categories();
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
        <h1>Napisz posta!</h1>   
        <form action='' method='GET'>
            <fieldset>
            <legend>Nadaj tytuł: <input name='postname' type='text'></legend>
            <label>Wybierz status: 
            <select name='status'>
                <option value='false'>Prywatny</option>
                 <option value='true'>Publiczny</option> 
                
                <!-- <option value='false'>Prywatny</option>
                 <option value='true'>Publiczny</option>    -->
            </select></label><br>
            <label>Wybierz tematykę: 
            <select name='category'>
                <option><input type='text' name='category'></option>
                 <?php
                
                // include_once("post.php");
                // for ($i=0; $i< give_categories()->num_rows(); $i++){
                    // $cat = give_categories($i)->fetch_assoc()[$i];
                    // while ($cat = mysql_fetch_array(give_categories(), MYSQL_ASSOC))
                    // $given = give_categories();
                    if (!empty($given)){
                       foreach ($given as $categoria)
                        //['category']
                    {
                        // $categoria = $cat['category'];    
                    echo "<option value='$categoria'> $categoria </option>";
                }
            $given = null;}
                ?>  
            </select></label>
        <article>
            <input type='textarea' name='content' cols='20' rows='10'>
</article>
</fieldset>
<button type='submit'>Napisane i .</button>

</form>
    </main>
    <?php
    include("footer.php");
    ?>
</body>
</html>