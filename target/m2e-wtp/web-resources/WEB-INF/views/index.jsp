<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome::Nicheki</title>
<%@ include file="common/head.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@ include file="common/header.jsp"%>
		<br />
		<hr/>
		<%-- <%@ include file="/WEB-INF/resources/public/css/styles.css" %> --%>
		<form class="form form-responsive" action="welcome">
			<input type="text" name="uname"> <input type="submit"
				value="go"><br />
		</form>
	</div>


</body>
</html>