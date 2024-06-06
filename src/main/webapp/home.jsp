<%@page import="dtoclass.Userdto"%>
<%@page import="dtoclass.Taskdto"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.add-task-link {
	display: inline-block;
	padding: 10px 20px;
	margin: 20px 0;
	background-color: #4CAF50;
	color: white;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	border-radius: 4px;
	transition: background-color 0.3s;
}

.add-task-link:hover {
	background-color: #45a049;
}

body {
	font-family: Arial, sans-serif;
	margin: 20px;
	width: 70%;
	margin-left: 200px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	border: 1px solid #ffdde1;
	padding: 16px;
	text-align: center;
}

th {
	background-color: #4CAF50;
	color: white;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

tr:hover {
	background-color: #f1f1f1;
}

button {
	background-color: #4CAF50;
	color: white;
	border: none;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 2px 2px;
	cursor: pointer;
	border-radius: 4px;
	transition: background-color 0.3s;
}
#welcome{
margin-top:35px;


}

button:hover {
	background-color: #45a049;
}

button.delete {
	background-color: #f44336;
}

button.delete:hover {
	background-color: #da190b;
}
</style>
</head>
<body>


	<%String name="Hiiii"; %>
	<%Userdto d=(Userdto)request.getAttribute("data"); %>
	<% if(d!=null){ 
	String s=d.getUname();
	name=""+s;
} %>

	<h1 id="welcome">
		Welcome
		<%= name%>
	</h1>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%int num=1; %>
	<%List<Taskdto> lt=(List<Taskdto>) request.getAttribute("listdata"); %>
	<%if(lt!=null && !lt.isEmpty()){%>
	<table>
		<thead>
			<tr>
				<th>Task Id</th>
				<th>Task Title</th>
				<th>Task Description</th>
				<th>Due date</th>
				<th>Priority</th>
				<th>Changes</th>
			</tr>
		</thead>
		<tbody>
			<%for(Taskdto task:lt){%>
			<tr>
				<td><%=num %></td>
				<%num++; %>

				<td><%=task.getTaskTitle() %></td>
				<td><%=task.getTaskDescription() %></td>
				<td><%=task.getTaskDueDate() %></td>
				<td><%=task.getTaskPriority() %></td>
				<%int id=task.getTaskid(); %>
				<%int uid=task.getUserid(); %>
				<%request.setAttribute("ro",id); %>
				<%request.setAttribute("usr",uid); %>
				<td><button>
						<a href="update.jsp?id=<%= id %>">Update</a>
					</button>
					<button>
						<a href="deleterow?id=<%= id %>">Delete</a>
					</button></td>

				<% %>
			</tr>
			<%} %>

		</tbody>
	</table>

	<%} else{ %>
	<h3></h3>
	<%} %>
	<br>
	<br>
	<br>



	<a href="addtask.jsp" class="add-task-link">Add Task</a>
	
	<a href="logout" class="add-task-link">Logout</a>



</body>
</html>