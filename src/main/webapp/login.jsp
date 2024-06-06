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
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }
    input[type="text"] {
        width: calc(100% - 20px);
        padding: 8px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        border: none;
        border-radius: 4px;
        color: white;
        font-size: 16px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #4CAF48;
    }
    .message {
        margin-top: 15px;
        color: red;
    }
    span{
    color:red;
    }
</style>
</head>
<body>

<form method="post" action="checkUser" >

Email:<input type="text" name="mail"><br>
Password:<input type="text" name="pass">
<br><% String msg=(String)request.getAttribute("message");%>
<% if(msg!=null){ %>

<span>    <%="            "+ msg %> 
 </span>
<%} %>
<br>

<input type="submit"> 
</form>






</body>
</html>