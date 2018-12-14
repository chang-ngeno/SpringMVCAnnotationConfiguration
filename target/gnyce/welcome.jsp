<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome::Nicheki</title>

<%@ include file="common/head.jsp"%>
</head>
<body>


	<%@ page import="java.util.Date" import="java.text.SimpleDateFormat"%>
	<div class="container-fluid">

		<div id="header"></div>
		<div>
			<!-- <div id="page-title">Welcome to Nicheki</div> -->

			<div><%@ include file="common/header.html"%></div>

			<div>
				<%
					out.println("Sub Section Header");
				%>
				<hr />
				<br />
				<%
					out.println(request.getParameter("uname"));
				%>
				<br /> Today is:
				<%=new Date()%>
				<%!String format = "dd/MM/yyyy";
	//SimpleDateFormat newDateFormat =new SimpleDateFormat(format);
	//Date date = newDateFormat.parse(new Date().toString());%>
				<%
					this.log("message occured at: " + new Date());
				%>
			</div>
		</div>
		<div id="footer"></div>
	</div>

</body>
</html>