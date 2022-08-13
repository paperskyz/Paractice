<?php
  session_start();
  ini_set('display_errors', 1);
  ini_set('display_startup_errors', 1);
  error_reporting(E_ALL);
  if(isset($_SESSION['username'])) {
}
  $user_check = $_SESSION['username'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>    
    <title>Admin Dashboard</title>
</head>
<body >
        <nav class="navbar navbar-expand-lg navbar navbar-dark bg-danger">
        <a class="navbar-brand" href="index.html">Health 415</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item active">
              <a class="nav-link" href="index.html">Home<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Products</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="login.html" tabindex="-1" aria-disabled="false">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="register.html" tabindex="-1" aria-disabled="false">Register</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#"><i class="fas fa-shopping-cart"></i></a>
            </li>
          </ul>
      </nav>
    <form action="log_in_check_practice4.php" method = "post">   
   <h1>Registered Users</h1>
      </form>
      <!-- <button class="btn" onclick="document.location='register.html'">Register</button> -->
</body>
</html>
<?php
  
  $con=mysqli_connect('localhost', 'mwhrskay_customer', 'FJb$**]ac_?N', 'mwhrskay_Health415');
// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($con,"SELECT * FROM receipt WHERE username = '".$user_check."'");

echo "<table border='1'>
<tr>
<th>Username</th>
<th>Order Number</th>
<th>Total</th>
<th>Shipment Status</th>
<th>Cancel Request</th>
</tr>";

while($row = mysqli_fetch_array($result))
{
echo "<tr>";
echo "<td>" . $row['username'] . "</td>";
echo "<td>" . $row['order_number'] . "</td>";
echo "<td>" . $row['total'] . "</td>";
echo "<td>" . $row['shipment_status'] . "</td>";
echo "<td>" . $row['cancel_request'] . "</td>";
echo "</tr>";
}
echo "</table>";

mysqli_close($con);
?>


<head>
<title> Customer order management</title>
</head>
<body>
            <h1> Customer Order Management</h1>
            <form action=" " method = "POST">
                <input type = "number" name = "order_number" placeholder = "Enter order number" /> <br/>
        <!--        <input type = "text" name = "username" placeholder = "Enter username" /> <br/>
                <input type = "text" name = "total" placeholder = "Enter total" /> <br/> -->
        <!--        <input type = "text" name = "shipment_status" placeholder = "Enter Shipment Status" /> <br/> -->
                <label for="cancel_request"> Request Cancel Order? </label>
                <select name="cancel_request" id = "cancel_request">
                    <option value = "yes"> yes</option>
                </select>
                
                <input type = "submit" name = "update" value = "UPDATE SHIPMENT"/>
            </form>
    </body>
<?php
  @ $db = new mysqli('localhost', 'mwhrskay_customer', 'FJb$**]ac_?N', 'mwhrskay_Health415');
  if(isset($_POST['update']))
  {
      $order_number = $_POST['order_number'];
      #$username = $_POST['username'];
      #$total = $_POST['total'];
      $cancel_request = $_POST['cancel_request'];
      
      #$query = "UPDATE receipt SET username = '$username', total = '$total', shipment_status = '$shipment_status' where order_number = '$order_number' ";
      $query = "UPDATE receipt SET cancel_request = '$cancel_request' where order_number = '$order_number'";
      $query_run = mysqli_query($db, $query);
      if($query_run)
      {
          echo "Your request is being processed";
      }
      else
      {
          echo "error: no connection";
      }
      
  }
?>