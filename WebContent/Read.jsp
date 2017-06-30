<%@ page language=java " contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.sundar.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./plugins/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src="./plugins/bootstrap.min.js"></script>
<script type="text/javascript" src="./plugins/jquery.2.2.3.min.js"></script>
</head>
<body>
	<div class="jumbotron text-center" style="color: #000080;">
		<h2>Student Management</h2>
	</div>
	<%!String regno;
	StudentDB st;
	Student s;%>
	<%
		regno = request.getParameter("regno");
		System.out.println(regno);
		try {
			st = new StudentDB();
			s = st.read(regno);
		} catch (Exception e) {
			System.out.println(e);
		}
		if (s.isF()) {
	%>
	<div class="container">
		<table class="table table-striped">
			<form class="form-inline" action="./edit1" method="POST">
				<tr>
					<th>Register no:</th>
					<td><%=s.getRegNo()%></td>
				</tr>
				<tr>
					<th>Name:</th>
					<td><%=s.getName()%></td>
				</tr>
				<tr>
					<th>Date of Birth:</th>
					<td><%=s.getDob()%></td>
				</tr>
				<tr>
					<th>Department:</th>
					<td><%=s.getDept()%></td>
				</tr>
				<tr>
					<th>Email:</th>
					<td><%=s.getEmail()%></td>
				</tr>
				<tr>
					<th>Mobile:</th>
					<td><%=s.getMobile()%></td>
				</tr>
			</form>
		</table>
		<a href='./././Index.jsp'> Back</a>
	</div>
	<%
	}
 %>
</body>
</html>