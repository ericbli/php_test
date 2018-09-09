<!DOCTYPE html>
<html>
<body>
    
<?php
$myObj->name = "John";
$myObj->age = 30;
$myObj->city = "New York";

$myJSON = json_encode($myObj);

echo $myJSON;
?>

<h2>Get data as JSON from a PHP file on the server.</h2>

<p id="demo"></p>

<script>

var xmlhttp = new XMLHttpRequest();

xmlhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
        myObj = JSON.parse(this.responseText);
        document.getElementById("demo").innerHTML = myObj.name;
    }
};
xmlhttp.open("GET", "demo_file.php", true);
xmlhttp.send();

</script>


<?php
$myArr = array("John", "Mary", "Peter", "Sally");

$myJSON = json_encode($myArr);

echo $myJSON;
?>

<body>

<h2>Get data as JSON from a PHP file, and convert it into a JavaScript array.</h2>

<p id="demo1"></p>

<script>

var xmlhttp = new XMLHttpRequest();

xmlhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
        var myObj = JSON.parse(this.responseText);
        document.getElementById("demo1").innerHTML = myObj[2];
    }
};
xmlhttp.open("GET", "demo_file_array.php", true);
xmlhttp.send();

</script>
<h2>Convert Data from Mysql to JSON Formate using PHP</h2>

   <?php   
           $connect = mysqli_connect("localhost", "root", "root", "php_rest");  //连接数据库
           $sql = "SELECT * FROM tbl_employee";  
           $result = mysqli_query($connect, $sql);  //获取结果
           $json_array = array();  
           while($row = mysqli_fetch_assoc($result))  
           {  
                $json_array[] = $row;             //循环将查询的每行赋值给数组
           }  

         //  echo $json_array;   这行会报错！！！！！

           echo '<pre>';  
           print_r(json_encode($json_array));          //Arrays in PHP will also be converted into JSON when using the PHP function json_encode()
           echo '</pre>';
           echo '................................................ <br>';
           echo json_encode($json_array);      //打印obj数组
           ?>  

</body>
</html>
