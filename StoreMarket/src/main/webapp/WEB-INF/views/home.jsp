<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!doctype html>

<html>
<head>
<title>Home</title>

<!-- dojo support -->
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.1/dojo/dojo.js"></script>
<!-- start loading jquery -->
<link rel="stylesheet" href="<c:url value="/resources/themes/tea-green.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/themes/jquery.mobile.icons.min.css"/>" />
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.3/jquery.mobile.structure-1.4.3.min.css" />

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.3/jquery.mobile-1.4.3.min.js"></script> 

<!--  local js-->
<script type="text/javascript"
	src="<c:url value="/resources/js/home.js" />"></script>

<!-- css -->
<link rel="stylesheet" href="<c:url value="/resources/css/home.css"/>" />

<!-- icon for this application -->
<link href="<c:url value="/resources/image/Shamrock.png"/>"
	rel="shortcut icon" type="image/x-icon" />


</head>
<body>

	<!-- header -->
	<header>
		<div class="head-content">
			<div class="home-Image">
				<a href="#"><img
					src="<c:url value="/resources/image/Shamrock.png"/>" alt="index"
					class="head-imge" />XXX system-index </a>
			</div>

		

			<div class="main-nav">
				<ul>
					<li><a href="">Contact</a></li>
					<li><a href="">Stock</a></li>					
					<li><a href="">more</a></li>
				</ul>
			</div>
		</div>
	</header>


<c:if test="${sessionScope.IsLogin.level>=1}">
用户：${sessionScope.IsLogin.userName} 已经登陆
</c:if>



	<!-- login area -->
	<section id="loginController" class="login-control">
		<form:form commandName="Login" method="post">
			<table>
				<tr>
					<td><form:label path="userName">Name</form:label></td>
					<td><form:input path="userName" /></td>
					<td><form:errors path="userName"></form:errors></td>
				</tr>
				<tr>
					<td><form:label path="Password">password</form:label></td>
					<td><form:input path="Password" /></td>
					<td><form:errors path="Password"></form:errors></td>
				</tr>
				<tr>
					<td><button>ok</button></td>
					<td></td>
					<td><a href='register'>register</a></td>
				</tr>
			</table>
		</form:form>


		//这里是登陆的信息 //如果已经登陆，隐藏
	</section>
	





	<table boerder="1">
		<tr>
			<td>user</td>
			<td>password</td>
		
		</tr>
		<c:forEach items="${accounts}" var="account">
		<tr>
			<td>${account.userName}</td>
			<td>${account.password}</td>
			
		</tr>
			</c:forEach>
	</table>


</body>
</html>
