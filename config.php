<?php
// $nickname = 's';
// $email = '@';
// $password = 'g'; 
function newUserInsert($nickname,$email,$password){ 
    $password = password_hash($password, PASSWORD_DEFAULT);
$sql = "insert into users (nickname_user, email_user, password_user, prestige_user) values (:name, :email, :password, 0)";
$localhost = 'localhost'; $projekt = 'projekt'; $root = 'root'; $empty = '';
$conn = new pdo("mysql:host=$localhost;dbname=$projekt", $root, $empty);
$stmt = $conn->prepare($sql); 
$stmt->bindParam(':name', $nickname, PDO::PARAM_STR);
$stmt->bindParam(':email', $email, PDO::PARAM_STR);
$stmt->bindParam(':password', $password, PDO::PARAM_STR);
$stmt->execute();
$stmt = null;
$conn= null;
// header("logIn.php");
// exit();
}
function newCommentInsert($postname, $nickname_user, $body, $category, $public_status){ 
    $localhost = 'localhost'; $projekt = 'projekt'; $root = 'root'; $empty = '';
    $conn = new pdo("mysql:host=$localhost;dbname=$projekt", $root, $empty);
    $sql = "select id_user from useres where nickname_user = '$nickname_user'";
    $stmt = $conn->prepare($sql);
    $id_author = $stmt->execute();
    $sql = "insert into users (postname, id_author, body, category, public_status, mark) values 
    (:postname, :id_author, :body, :category, :public_status, 0)";


$stmt = $conn->prepare($sql); 
$stmt->bindParam(':postname', $postname, PDO::PARAM_STR);
$stmt->bindParam(':id_author', $id_author, PDO::PARAM_INT);
$stmt->bindParam(':body', $body, PDO::PARAM_STR);
$stmt->bindParam(':category', $category, PDO::PARAM_STR);
$stmt->bindParam(':public_status', $public_status, PDO::PARAM_BOOL);
$stmt->execute();
$stmt = null;
$conn= null;
}
function loguj($email, $password){
    $sql = "select passwword_user from users where email_user = :email";
    $localhost = 'localhost'; $projekt = 'projekt'; $root = 'root'; $empty = '';
$conn = new pdo("mysql:host=$localhost;dbname=$projekt", $root, $empty);
$stmt = $conn->prepare($sql); 
$stmt->bindParam(':email', $email, PDO::PARAM_STR);
$stmt->execute();
$pobranie_password = $stmt->fetch(PDO::FETCH_COLUMN);
$stmt = null;
$conn= null;
if (password_verify($password, $pobranie_password)){
    return true;

}else{
    return false;
}

}
function give_categories(){
    //  where id='$cyfra' $cyfra
    $sql = "select category from posts";
    $localhost = 'localhost'; $projekt = 'projekt'; $root = 'root'; $empty = '';
$conn = new pdo("mysql:host=$localhost;dbname=$projekt", $root, $empty);
$stmt = $conn->prepare($sql); 
$stmt->execute();
$pobranie_listy_kategorii = $stmt->fetchAll(PDO::FETCH_COLUMN);
$stmt = null;
$conn = null;
return $pobranie_listy_kategorii;
}

function show_posts(){
    $sql = "select author_post from posts";
    $localhost = 'localhost'; $projekt = 'projekt'; $root = 'root'; $empty = '';
$conn = new pdo("mysql:host=$localhost;dbname=$projekt", $root, $empty);
$stmt = $conn->prepare($sql); 
$stmt->execute();
$pobranie_tabeli = $stmt->fetch(PDO::FETCH_COLUMN);
$stmt = null;
$conn = null;
foreach ($pobranie_tabeli as $krotka){
    // $el = $krotka['id_post'] ;
    echo "<tr> $krotka";
    foreach ($krotka as $element){
        echo "<td>$element</td>";
    }
    echo "</tr>"; 
}
}
?>



