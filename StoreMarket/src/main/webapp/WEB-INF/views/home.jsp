<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!doctype html>

<html>
<head>
<title>Home</title>

<!-- dojo support -->
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.1/dojo/dojo.js"></script>

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
					class="head-imge" /> </a>
			</div>

			<div id="mainSearch" class="home-search">
				<input type="text" />
				<button>ok</button>
			</div>

			<div class="main-nav">
				<ul>
					<li><a href="">Reading</a></li>
					<li><a href="">Group</a></li>
					<li><a href=""> movie</a></li>
					<li><a href="">more</a></li>
				</ul>
			</div>
		</div>
	</header>


<!-- login area -->
	<section id="login">
		<form:form commandName="Login" method="post" action="/">
			<table>
				<tr>
					<td><form:label path="userName"></form:label></td>
					<td><form:input path="userName"/> </td>
					<td><form:errors path="userName"></form:errors> </td>
				</tr>
					<tr>
					<td><form:label path="password"></form:label></td>
					<td><form:input path="password"/> </td>
					<td><form:errors path="password"></form:errors> </td>
				</tr>
					<tr>
					<td><button>ok</button></td>
					<td></td>
					<td><button>register</button></td>
				</tr>
			</table>
		</form:form>


		//这里是登陆的信息 //如果已经登陆，隐藏
	</section>






</body>
</html>
