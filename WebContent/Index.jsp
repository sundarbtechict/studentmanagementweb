<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.sundar.*, java.util.*"%>
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
	<div class="container">
		<table class="table table-bordered">
			<tr>
				<th>Register no:</th>
				<th>Name:</th>
				<th>Date of Birth:</th>
				<th>Department:</th>
				<th>Email:</th>
				<th>Mobile:</th>
				<th>ACTION</th>
				<th>ACTION</th>
				<th>ACTION</th>
			</tr>
			<%
					 try{
							StudentDB s=new StudentDB();
						List<Student> li=s.select();
						Iterator<Student> itr=li.iterator();  
						while(itr.hasNext())  
						{
							Student st=itr.next();
			%>
			<tr>
				<td><%=st.getRegNo() %></td>
				<td><%=st.getName()%></td>
				<td><%=st.getDob()%></td>
				<td><%=st.getDept()%></td>
				<td><%=st.getEmail()%></td>
				<td><%=st.getMobile()%></td>
				<td><a href="./Read.jsp?regno=<%=st.getRegNo()%>">View</a></td>
				<td><a href="./Edit.jsp?regno=<%=st.getRegNo()%>">Edit</a></td>
				<td><a href="./delete?regno=<%=st.getRegNo()%>">Delete</a></td>

				<%
						}
					 }catch (Exception e){ System.out.println("sas"); }
			%>
			
		</table>
		<a href="./././insert.html">create</a>
	</div>

</body>
</html>