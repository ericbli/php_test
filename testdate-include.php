
<!DOCTYPE html>
<html>
<body>

<h1>Test Array</h1>
<?php
echo "Today is " . date("Y/m/d") . "<br>";
echo "Today is " . date("Y.m.d") . "<br>";
echo "Today is " . date("Y-m-d") . "<br>";
echo "Today is " . date("l");
?> 
<br>
&copy; 2010-<?php echo date("Y");?>
<br>
<?php
echo "The time is " . date("h:i:sa");
?><br>
 <?php
date_default_timezone_set("America/New_York");
echo "The NEw York time is " . date("h:i:sa");
?> 
<br>
<?php
$d=mktime(11, 14, 54, 8, 12, 2014);
echo "Created date is " . date("Y-m-d h:i:sa", $d);
?> 
<br>
<?php
$d=strtotime("10:30pm April 15 2014");
echo "Created date is " . date("Y-m-d h:i:sa", $d);
?> <br>
 <?php
$d=strtotime("tomorrow");
echo "Tomorrow: ";
echo date("Y-m-d h:i:sa", $d) . "<br>";

$d=strtotime("next Saturday");
echo "Next Saturday: ";
echo date("Y-m-d h:i:sa", $d) . "<br>";

$d=strtotime("+3 Months");
echo '+3 Months: ';
echo date(" Y-m-d h:i:sa", $d) . "<br>";
?> <br>
 <?php
$startdate = strtotime("Saturday");

$enddate = strtotime("+6 weeks", $startdate);
echo '+6 weeks Saturdays: '. "<br>"; 
while ($startdate < $enddate) {
  echo date("M d", $startdate) . "<br>";
  $startdate = strtotime("+1 week", $startdate);
}
?> <br>
 <?php
$d1=strtotime("December 25");
$d2=ceil(($d1-time())/60/60/24);
echo "There are " . $d2 ." days until December 25.";
?> <br>


<h1> Test include!</h1>
<div class="menu">
<?php include 'menu.php';?>
</div>
<h1>Welcome to my home page!</h1>
<p>Some text.</p>
<p>Some more text.</p>
<br>
<?php include 'vars.php';
echo "I have a $color $car.";
?><br>
<?php
$myfile = fopen("webdictionary.txt", "r") or die("Unable to open file!");
echo fread($myfile,filesize("webdictionary.txt"));
fclose($myfile);
?>
<br>
<br>
<h2>The fgets() function is used to read a single line from a file.</h2>

<br>
<?php
$myfile = fopen("webdictionary.txt", "r") or die("Unable to open file!");
echo fgets($myfile);
fclose($myfile);
?>

 <h2>The feof() function checks if the "end-of-file" (EOF) has been reached.</h2>

 <?php
$myfile = fopen("webdictionary.txt", "r") or die("Unable to open file!");
// Output one line until end-of-file
while(!feof($myfile)) {
  echo fgets($myfile) . "<br>";
}
fclose($myfile);
?> 


<br>
 <h2>Read file charcter by character.</h2>
<br>


<?php
$myfile = fopen("webdictionary.txt", "r") or die("Unable to open file!");
// Output one character until end-of-file
while(!feof($myfile)) {
  echo fgetc($myfile);
}
fclose($myfile);
?>
 <h2>The fwrite() function is used to write to a file.</h2>

 <?php
$myfile = fopen("newfile.txt", "w") or die("Unable to open file!");
$txt = "John Doe\n";
fwrite($myfile, $txt);
$txt = "Jane Doe\n";
fwrite($myfile, $txt);
fclose($myfile);
?> 
 <h2>PHP Overwriting</h2>

 <?php
$myfile = fopen("newfile.txt", "w") or die("Unable to open file!");
$txt = "Mickey Mouse\n";
fwrite($myfile, $txt);
$txt = "Minnie Mouse\n";
fwrite($myfile, $txt);
fclose($myfile);
?> 
 <h2>PHP Overwriting</h2>
<?php
echo file_put_contents("newfile.txt","Hello World. Testing!");
?> 
<h2>Add content and Read the entire file into a string using file_get_contents, into an array of lines using file.</h2>
<?php
$myfile = fopen("newfile.txt", "a") or die("Unable to open file!");
$txt = "user New content added!!!!!!!!!";
fwrite($myfile, "\n". $txt);
$file = file_get_contents('newfile.txt');
echo $file. "<br>";

$file_lines = file('newfile.txt');
foreach ($file_lines as $line) {
    echo $line. "<br>";
}



fclose($myfile);

?> 





</body>
</html>