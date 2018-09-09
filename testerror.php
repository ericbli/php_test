
<!DOCTYPE html>
<html>
<body>

<h2>No error handling</h2>
<?php
$file=fopen("welcome.txt","r");
?> 
<h2>With error handling</h2>
<?php
if(!file_exists("welcome.txt")) {
  die("File not found");
} else {
  $file=fopen("welcome.txt","r");
}
?> 
Hello
<?php
function inverse($x) {
    if (!$x) {
        throw new Exception('Division by zero.');
    }
    return 1/$x;
}

try {
    echo inverse(5) . "\n";
} catch (Exception $e) {
    echo 'Caught exception: ',  $e->getMessage(), "\n";
} finally {
    echo "First finally.\n";
}

try {
    echo inverse(0) . "\n";
} catch (Exception $e) {
    echo 'Caught exception: ',  $e->getMessage(), "\n";
} finally {
    echo "Second finally.\n";
}

// Continue execution
echo "Hello World\n";
?>

</body>
</html>