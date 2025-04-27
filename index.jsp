<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Output Page</title>
</head>
<body>
	<h1 style='color:blue;text-align:center'>
		UserName is :: ${param.userName}<br/>
		
		<c:catch var="e">
			<%
				int age = Integer.parseInt(request.getParameter("userAge"));
			%>
		UserAge  is :: ${param.userAge}<br/>
		</c:catch>
		<c:if test="${e!=null}">
			oops... Exception raised... : ${e}<br/>
		</c:if>
		
		
		UserHeight is :: ${param.userHeight}
	</h1>

	<%-- <c:set var="x" value="10" scope="page" />
	<c:set var="y" value="20" scope="page" />
	<c:set var="z" value="${x+y}" scope="session" />
	<h1 style='color:blue; text-align:center;'>
		The result is :: <c:out value="${z}"/>
	</h1>
	<c:remove var="x"/>
	<c:remove var="y"/>
	<c:remove var="z"/>
	<h1 style='color:red; text-align:center;'>
		The result is :: <c:out value="${z}" default="1000"/>
	</h1> --%>

		<%-- <c:set var="x" value="10" scope="request" />
		<c:set var="y" value="20" scope="request" />
		<c:set var="sum" value="${x+y}" scope="session" />
		<h1 style='color:red; text-align:center'>
			The result is :: <c:out value="${sum}"/> --%>
	
		<%-- <c:out value="WELCOME TO JSTL CODING..."/><br/>
		The user name is :: <c:out value="${param.user}"/><br/>
		The password is  :: <c:out value="${param.password}" default="Guest"/> --%>
	
</body>
</html>