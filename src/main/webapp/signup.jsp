<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
    }
    form {
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
    }
    input[type="text"], input[type="password"], input[type="file"], input[type="email"], input[type="tel"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>

</head>
<body>

<form method="post" action="signserver" enctype="multipart/form-data">

<br>
<br>
UserName:<input type="text" name="name">
<br>
<br>
Image:<input type="file" name="profile">
<br>
<br>
UserEmail:<input type="text" name="mail"><br><br>
UserContact:<input type="text" name="con"><br><br>
passWord:<input type="text" name="pass"><br><br>
<input type="submit">

</form>

</body>
</html>