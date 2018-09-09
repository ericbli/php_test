
<!DOCTYPE html>
<html>
<body>



<h1>My first PHP page</h1>

<?php
echo "Hello World!";
?>

<br>

<?php
echo "My first PHP script!";
?>
<br>
<?php
// This is a single-line comment

# This is also a single-line comment

/*
This is a multiple-lines comment block
that spans over multiple
lines
*/

// You can also use comments to leave out parts of a code line
$x = 5 /* + 15 */ + 5;
echo $x;
?>
<br>
<?php
ECHO "Hello World!<br>";
echo "Hello World!<br>";
EcHo "Hello World!<br>";
?>
<br>
<?php
$color = "red";
echo "My car is " . $color . "<br>";
// echo "My house is " . $COLOR . "<br>";
// echo "My boat is " . $coLOR . "<br>";
?>
 <?php
$txt = "Hello world!";
$x = 5;
$y = 10.5;
echo $txt;
echo "<br>";
echo $x;
echo "<br>";
echo $y;
?> 
 <?php
$txt = "W3Schools.com";
echo "I love $txt!";
?> 
 <?php
$x = 5; // global scope
echo "<p>Variable x outside function is: $x</p>";
function myTest() {
	$x = 9;
    // using x inside this function will generate an error
    echo "<p>Variable x inside function is: $x</p>";
}
myTest($x=8);

echo "<p>Variable x outside function is: $x</p>";
?> 
<?php
$x = 5;
$y = 10;

function myTest2() {
    global $x, $y;
    $y = $x + $y;
}

myTest2();  // run function
echo $y; // output the new value for variable $y
?>
<br>
<?php

function myTest3() {
    static $x = 0;
    echo $x;
    $x++;
}

myTest3();
echo "<br>";
myTest3();
echo "<br>";
myTest3();
?> 
 <?php
echo "<h2>PHP is Fun!</h2>";
echo "Hello world!<br>";
echo "I'm about to learn PHP!<br>";
echo "This ", "string ", "was ", "made ", "with multiple parameters.";
?> 
 <?php
print "<h2>PHP is Fun!</h2>";
print "Hello world!<br>";
print "I'm about to learn PHP!";
?> 
 <?php
$txt1 = "Learn PHP";
$txt2 = "W3Schools.com";
$x = 5;
$y = 4;

print "<h2>" . $txt1 . "</h2>";
print "Study PHP at " . $txt2 . "<br>";
print $x + $y;
?> 
 <?php
$x = "Hello world!";
$y = 'Hello world!';

echo $x;
echo "<br>";
echo $y;
?> 
<br>
 <?php
$x = 5985;
var_dump($x);
?> 
 <?php
$cars = array("Volvo","BMW","Toyota");
var_dump($cars);
?> 
<br>  <br>
 <?php
class Car {
    function Car() {
        $this->model = "VW";
    }
}

// create an object
$herbie = new Car();

// show object properties
echo $herbie->model;

?>
<br>
 <?php
$x = "Hello world!";
$x = null;
var_dump($x);
?> 
<br>
 <?php
echo strlen("Hello world!"); // outputs 12
?> 
<br>
<?php
// case-sensitive constant name
define("GREETING", "Welcome to W3Schools.com!");
echo GREETING;
?>
<br>
<?php
// case-insensitive constant name
define("GREETING", "Welcome to W3Schools.com!", true);
echo greeting;
?>
</body>
</html>