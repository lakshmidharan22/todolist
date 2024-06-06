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
            margin: 20px;
        }

        form {
            max-width: 400px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        label, input, textarea {
            display: block;
            width: 100%;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="date"],
        textarea {
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

        input[type="radio"] {
            display: inline-block;
            width: auto;
        }

        label.radio-label {
            display: inline-block;
            margin-right: 20px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
 <form action="TaskFilled" method="post">

 TaskTitle: <input type="text" name="Title"><br>
 TaskDescription:<input type="text" name="desc"><br>
 TaskPriority:
 <input type="radio" name="priority" value="low" required>Low
 <input type="radio" name="priority" value="high" required>High<br>
 <br>
 <br>

DueDate:<input type="date" name="duedate"><br>
<input type="submit">
 
 
 </form>

</body>
</html>