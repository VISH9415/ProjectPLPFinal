<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Thanks you are successfully logged in ...</h3>

<c:choose>

    <c:when test="${user.accountId==0}">
    <%-- <form action="openAccountRequest" >
    <input type="hidden" name="username" value="${user.userId}"/> --%>
    <a href="openAccountRequest/${name="user" value="user"}">OpenAccount</a>
<!-- </form> -->
	</c:when> 
	   
    <c:otherwise>
    <h3>Hello {} your account is already opened with account number {}</h3>
    <h3>Your Account Balance is {}</h3>
<form>
Please select:

<a href="balance">View Mini/Detailed Statement</a>
<a href="changeRequest">Change in address</a>
<a href="chequeRequest">ChequeBook request</a>
<a href="trackService">Track Service Request</a>
<a href="fundTransfer">Fund Transfer</a>
<a href="changePass">Change Password</a>
</form>
    </c:otherwise>
</c:choose>

</body>
</html>