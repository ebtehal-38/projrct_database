<?php 

$servername = "localhost";
$username = "root";
$password = "";
$dbname="rebortdata";

// Create connection
$conn = new mysqli($servername, $username, $password ,$dbname);
// Check connection
if (mysqli_connect_errno()) {
   printf("Connection failed: %s\n " ,mysqli_connect_errno());
}

//print_r($_POST) ;exit;


if(isset($_POST['save'])){
   $v1 = $_POST['m1'];
   $v2 = $_POST['m2'];
   $v3 = $_POST['m3'];
   $v4 = $_POST['m4'];
   $v5 = $_POST['m5'];
   $v6 = $_POST['m6'];


    $sql= "INSERT INTO motors_value (op_id,motor1,motor2,motor3,motor4,motor5,motor6) VALUES (NULL,'$v1', '$v2', '$v3', '$v4', '$v5', $v6)";
    $result = @mysqli_query($conn, $sql );
	if ($result) {
        echo "New added successfully !";
      } else {
         echo "Error: " . $sql . ":-" . mysqli_error($conn);
      }
      
   }else{
      echo "NO Data..... !";

   }

   if(isset($_POST['Running']))
   {    
        $result = mysqli_query($connection, $my_query);
      $data=mysqli_fetch_array($result)

      if ($data['Running']==0)
      $sql= "INSERT INTO motors_value (Running) VALUES (1)";
      else{
          echo "ERROR ";
      }

  }
  else if(isset($_POST['Running'])) {

   $result = mysqli_query($connection, $my_query);
   $data=mysqli_fetch_array($result)

   if ($data['Running']==0)
   $sql= "INSERT INTO motors_value (Running) VALUES (0)";
   else{
       echo "ERROR ";
   }
   }
?>
