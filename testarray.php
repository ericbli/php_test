
<!DOCTYPE html>
<html>
<body>

<h1>Test Array</h1>
<?php
$x = array("a" => "red", "b" => "green");  
$y = array("c" => "blue", "d" => "yellow");  

print_r($x + $y); // union of $x and $y
?>  
<br>
<?php
$x = array("a" => "red", "b" => "green");  
$y = array("c" => "blue", "d" => "yellow");  

var_dump($x == $y);
?>  
<br>
<?php
$x = array("a" => "red", "b" => "green");  
$y = array("c" => "blue", "d" => "yellow");  

var_dump($x === $y);
?>  
<br>
<?php
$x = array("a" => "red", "b" => "green");  
$y = array("c" => "blue", "d" => "yellow");  

var_dump($x != $y);
?>  
<br>
<?php
$x = array("a" => "red", "b" => "green");  
$y = array("c" => "blue", "d" => "yellow");  

var_dump($x <> $y);
?>  
<br>
<?php
$x = array("a" => "red", "b" => "green");  
$y = array("c" => "blue", "d" => "yellow");  

var_dump($x !== $y);
?>  
<br>


 <?php
$t = date("H");

if ($t < "10") {
    echo "Have a good morning!";
} elseif ($t < "20") {
    echo "Have a good day!";
} else {
    echo "Have a good night!";
}
?> 
<br>
<?php
$favcolor = "red";

switch ($favcolor) {
    case "red":
        echo "Your favorite color is red!";
        break;
    case "blue":
        echo "Your favorite color is blue!";
        break;
    case "green":
        echo "Your favorite color is green!";
        break;
    default:
        echo "Your favorite color is neither red, blue, nor green!";
}
?>

<br>
<?php  
$x = 1;
 
while($x <= 5) {
  echo "The number is: $x <br>";
  $x++;
}
?>  
<br>
 <?php
$x = 6;

do {
    echo "The number is: $x <br>";
    $x++;
} while ($x <= 5);
?> 

<?php  
for ($x = 0; $x <= 10; $x++) {
  echo "The number is: $x <br>";
}
?>  
 <?php
$colors = array("red", "green", "blue", "yellow");

foreach ($colors as $value) {
    echo "$value <br>";
}
?> 

</body>
</html>