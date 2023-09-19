


<?php

session_start();

include('database.php');


// register code
if(isset($_POST['register']))
{
    $name = $_POST['username'];
    $mail = $_POST['mail'];
    $pass = md5($_POST['pass']) ;
    $repass =md5($_POST['repass']) ;
    
    $query = "insert into customer (id,username,email,password,repassword) values(NULL, '$name', '$mail', '$pass', '$repass')";
    
    $conn->query($query);
  header("location:login.php");
}
//login
if(isset($_POST['Login']))
{
    $name = $_POST['username'];
    $pass = md5($_POST['pass']) ;

    $query = "select * from customer where username ='$name' and password ='$pass' " ;
   
   $result= $conn->query($query);

   $userdata = $result->fetch_assoc(); // fetches data from database 

   $count = $result->num_rows; //counts the number of rows selected

   if($count==0)
   {
    //login details do not match

    echo "Invalid login details !!!";
  
   }
   else{

    $_SESSION['ticket'] = 'correct';

    $_SESSION['userid'] = $userdata['id'];
    $_SESSION['usertype'] = $userdata['usertype'];



    header('location:dashboard.php');

   }


}






if(isset($_GET['id'])){

$id = $_GET['id'];
$query = "delete from location where id='$id'";
$conn->query($query);
header("location:trips.php");

}

// booking ko action...
if(isset($_POST['book'])){
  $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];
    $destination = $_POST['destination'];
    $people = $_POST['people'];
    $arrivals = $_POST['arrivals'];
    $departure = $_POST['departure'];

   


    $query="insert into booking (id,name,email,phone,address,destination,people,arrival,departure) values
    (NULL,'$name','$email','$phone','$address','$destination','$people','$arrivals','$departure')";
    $conn->query($query);

   header("location:index.php");

}








?>




