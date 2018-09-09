<!DOCTYPE html>
<html>
<h2>Create Object from JSON String</h2>

<p id="demo0"></p>

<script>
var txt = '{"name":"John", "age":30, "city":"New York"}'  //字符串
var obj = JSON.parse(txt);                              //解析成obj
document.getElementById("demo0").innerHTML = obj.name + ", " + obj.age;   //打印obj元素
</script>
Use the XMLHttpRequest to get data from the server:
<body><h2>Use the XMLHttpRequest to get the content of a file.</h2>
<p>The content is written in JSON format, and can easily be converted into a JavaScript object.</p>

<p id="demo"></p>

<script>

var xmlhttp = new XMLHttpRequest();
xmlhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
        var myObj = JSON.parse(this.responseText);        //解析为myObj
        document.getElementById("demo").innerHTML += myObj.cars.car2; //赋值
    }
};
xmlhttp.open("GET", "json_demo.txt", true);
xmlhttp.send();

</script>


<p>How to loop through all properties in a JSON object.</p>

<p id="demo1"></p>

<script>
var myObj = {"name":"John", "age":30, "car":null};
for (xx in myObj) {
    document.getElementById("demo1").innerHTML += xx + "<br>";
}
</script>


<p>How to access nested JSON objects.</p>

<p id="demo2"></p>

<script>
var myObj = {                           //obj in obj
  "name":"John",
  "age":30,
  "cars": {
    "car1":"Ford",
    "car2":"BMW",
    "car3":"Fiat"
  }
}
document.getElementById("demo2").innerHTML += myObj.cars.car2 + "<br>";
//or:
document.getElementById("demo2").innerHTML += myObj.cars["car1"]+ "<br>";    //+=是内容增加不是替代


document.getElementById("demo2").innerHTML += myObj.cars.car3 + "<br>";     //+=是内容增加不是替代


</script>




<p>How to modify values in a JSON object using the bracket notation.</p>

<p id="demo3"></p>

<script>
var myObj, i, x = "";
myObj = {
  "name":"John",
  "age":30,
  "cars": {
    "car1":"Ford",
    "car2":"BMW",
    "car3":"Fiat"
  }
}
myObj.cars["car2"] = "Mercedes";

for (i in myObj.cars) {
    x += myObj.cars[i] + "<br>";
}

document.getElementById("demo3").innerHTML = x;

</script>


<h2> date is not allowed! Convert a string into a date object.</h2>

<p id="demo4"></p>

<script>
var text = '{"name":"John", "birth":"1986-12-14", "city":"New York"}';
var obj = JSON.parse(text);
obj.birth = new Date(obj.birth);
document.getElementById("demo4").innerHTML = obj.name + ", " + obj.birth; 
</script>
<h2>Convert a string into a date object. using the reviver function.</h2>

<p id="demo5"></p>

<script>
var text = '{"name":"John", "birth":"1986-12-14", "city":"New York"}';
var obj = JSON.parse(text, function (key, value) {
    if (key == "birth") {
        return new Date(value);
    } else {
        return value;
    }});
document.getElementById("demo5").innerHTML = obj.name + ", " + obj.birth; 
</script>
<h2>Functions are not allowed in JSON.

If you need to include a function, write it as a string as function.</h2>

<p id="demo6"></p>

<script>
var text = '{"name":"John", "age":"function() {return 30;}", "city":"New York"}';
var obj = JSON.parse(text);
obj.age = eval("(" + obj.age + ")");
document.getElementById("demo6").innerHTML = obj.name + ", " + obj.age(); 
</script>

<h2>Create JSON string from a JavaScript object.</h2>

<p id="demo7"></p>

<script>
var obj = { name: "John", age: 30, city: "New York" };
var myJSON = JSON.stringify(obj);
document.getElementById("demo7").innerHTML = myJSON;
</script>
<h2>Create JSON string from a JavaScript array.</h2>

<p id="demo8"></p>

<script>

var arr = [ "John", "Peter", "Sally", "Jane" ];
var myJSON = JSON.stringify(arr);
document.getElementById("demo8").innerHTML = myJSON;

</script>
<h2>JSON.stringify will convert any date objects into strings.</h2>

<p id="demo9"></p>

<script>
var obj = { name: "John", today: new Date(), city: "New York" };
var myJSON = JSON.stringify(obj);
document.getElementById("demo9").innerHTML = myJSON;
</script>
<h2>JSON.stringify will remove any functions from an object.</h2>

<p id="demoa"></p>

<script>
var obj = { name: "John", age: function () {return 30;}, city: "New York" };
var myJSON = JSON.stringify(obj);
document.getElementById("demoa").innerHTML = myJSON;
</script>

<h2>JSON.stringify will remove any functions from an object.</h2>

<p>Convert the functions into strings to keep them in the JSON object.函数先变字符串</p>

<p id="demob"></p>

<script>
var obj = { name: "John", age: function () {return 30;}, city: "New York" };
obj.age = obj.age.toString();
var myJSON = JSON.stringify(obj);
document.getElementById("demob").innerHTML = myJSON;
</script>


<p>How to delete properties of a JSON object.</p>

<p id="democ"></p>

<script>
var myObj, i, x = "";
myObj = {
  "name":"John",
  "age":30,
  "cars": {
    "car1":"Ford",
    "car2":"BMW",
    "car3":"Fiat"
  }
}
delete myObj.cars.car2;

for (i in myObj.cars) {
    x += myObj.cars[i] + "<br>";
}

document.getElementById("democ").innerHTML = x;

</script>
<p>Looping through an array using a for in loop:</p>

<p id="demod"></p>

<script>

var myObj, i, x = "";
myObj = {
    "name":"John",
    "age":30,
    "cars":[ "Ford", "BMW", "Fiat" ]
};

for (i in myObj.cars) {
    x += myObj.cars[i] + "<br>";
}

document.getElementById("demod").innerHTML = x;

</script>
<p>Loopin through an array using a for loop:</p>

<p id="demoe"></p>

<script>

var myObj, i, x = "";
myObj = {
    "name":"John",
    "age":30,
    "cars":[ "Ford", "BMW", "Fiat" ]
};

for (i = 0; i < myObj.cars.length; i++) {
    x += myObj.cars[i] + "<br>";
}

document.getElementById("demoe").innerHTML = x;

</script>
<p>Looping through arrays inside arrays.</p>

<p id="demof"></p>

<script>
var myObj, i, j, x = "";
myObj = {
    "name":"John",
    "age":30,
    "cars": [
        {"name":"Ford", "models":["Fiesta", "Focus", "Mustang"]},
        {"name":"BMW", "models":["320", "X3", "X5"]},
        {"name":"Fiat", "models":["500", "Panda"] }
    ]
}
for (i in myObj.cars) {
    x += "<h2>" + myObj.cars[i].name + "</h2>";
    for (j in myObj.cars[i].models) {
        x += myObj.cars[i].models[j] + "<br>";
    }
}

document.getElementById("demof").innerHTML = x;
</script>
<p>How to modify an array value of a JSON object.</p>

<p id="demog"></p>

<script>

var myObj, i, x = "";
myObj = {
    "name":"John",
    "age":30,
    "cars":[ "Ford", "BMW", "Fiat" ]
};
myObj.cars[1] = "Mercedes";

for (i in myObj.cars) {
    x += myObj.cars[i] + "<br>";
}

document.getElementById("demog").innerHTML = x;

</script>

</body>
</html>
