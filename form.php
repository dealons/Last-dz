<?php
$host = 'localhost';
$dbname = 'postgres';
$port = '5432';
$user= 'root';
$password = 'root';

$dsn = 'pgsql:host={$host};port:{$port};dbname={$dbname};user={$user};password={$password}';
$con = mysqli_connect('localhost','root','postgres','5432')
mysqli_select_db('postgres', $con);

$name = filter_var(trim($_POST['name']),FILTER_SANITIZE_STRING);
$surname = filter_var(trim($_POST['surname']),FILTER_SANITIZE_STRING);

if (mb_strlen($name)<5 || mb_strlen($login)>90)
{
     echo "Недопустимая длина логина";
    exit;
}

else if (mb_strlen($name) < 3 || mb_strlen($name)>50)
{
     echo "Недопустимая длина имени";
    exit;
}
elseif (!preg_match('/^[а-яА-Я]+$/iu', $name)) {
    echo "В имени не должно быть чисел!";
    exit;
}
else if (mb_strlen($surname) < 3 || mb_strlen($surname)>50)

{
     echo "Недопустимая длина фамилии";
    exit;
}
elseif (!preg_match('/^[а-яА-Я]+$/iu', $surname)) {
    echo "В фамилии не должно быть чисел!";
    exit;
}
header('location: /' );
?>