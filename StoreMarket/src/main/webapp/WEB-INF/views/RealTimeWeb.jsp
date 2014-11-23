<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html >
<head>
<!-- for IOS can delete if do not support mobile -->
<meta name="viewport" content="width=device-width" />
<!-- the icon for website -->
<link href="<c:url value="/resources/image/Shamrock.png"/>" rel="shortcut icon"
	type="image/x-icon" />
<!-- start loading jquery -->
<link rel="stylesheet" href="<c:url value="/resources/themes/tea-green.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/themes/jquery.mobile.icons.min.css"/>" />
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.3/jquery.mobile.structure-1.4.3.min.css" />

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.3/jquery.mobile-1.4.3.min.js"></script> 
<!-- loading own css and js -->
<link rel="stylesheet" href="<c:url value="/resources/css/site.css"/>" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
<script src="<c:url value="/resources/js/site.js"/>"></script>
<title> Yuan Huan - StoreMarket</title>
</head>
<!-- 
***********************************************************************
* 	    Welcome to my web site warrior! It is the new age of this world.  	   	
*	    Wish you can feel this world becoming smaller than it used to.			
*	    All the people can influence each other by their will.				
*	    Using my power. I will be the sword  on you hand. 				
*	    let's establish a new world!							
*		        													--Yuan Huang					
***********************************************************************
 -->
 
<body ng-app="StoreMarket">
<header data-role="header"  ng-controller="headerCTRL as header" >
		<div class="head-left-menu ui-alt-icon ui-nodisc-icon ">
			<a href="#navPanel"
				class="ui-btn ui-shadow ui-corner-all ui-icon-bars ui-btn-icon-notext "></a>
		</div>

		<h1 class="head">

			<a ng-href="{{PageLink.nav.home}}"><img src="<c:url value="/resources/image/Shamrock.png"/>"
				alt="" class="head-imge" /> <b class="head-title">Huang Yuan</b> -
				StoreMarket </a>
		</h1>
		<nav class="web-nav">
			<ul>
				<li><a ng-href="{{PageLink.nav.home}}">Home</a></li>
				<li><a ng-href="{{PageLink.nav.blog}}">Blog</a></li>
				<li><a ng-href="{{PageLink.nav.project}}"> Project</a></li>
				<li><a ng-href="{{PageLink.nav.about}}">About</a></li>
			</ul>
		</nav>
	</header>
	
	<!-- panel -->
	<section data-role="panel" id="navPanel" data-display="overlay"  ng-controller="panelCTRL as panel"
		data-position="left">
		<div class="ui-panel-inner">
			<ul class="ui-alt-icon ui-nodisc-icon ui-listview">
				<li>
					<div data-role="collapsible" data-collapsed="false"
						data-collapsed-icon="carat-d" data-expanded-icon="carat-u"
						data-iconpos="right">
						<h4>navigation</h4>
						<ul data-role="listview" data-inset="false">
							<li><a ng-href="{{PageLink.nav.home}}"
								class="ui-btn ui-btn-icon-right ui-icon-carat-r">Home</a></li>
							<li><a ng-href="{{PageLink.nav.blog}}"
								class="ui-btn ui-btn-icon-right ui-icon-carat-r">Blog</a></li>
							<li><a ng-href="{{PageLink.nav.project}}"
								class="ui-btn ui-btn-icon-right ui-icon-carat-r"> Project</a></li>
							<li><a ng-href="{{PageLink.nav.about}}"
								class="ui-btn ui-btn-icon-right ui-icon-carat-r">About</a></li>
						</ul>
					</div>
				</li>
				<li>
					<div data-role="collapsible" data-collapsed="false"
						data-collapsed-icon="carat-d" data-expanded-icon="carat-u"
						data-iconpos="right">
						<h4>quick link</h4>
						<ul data-role="listview" data-inset="false">
							<li><a ng-href="{{PageLink.link.introduce}}"> introduce myself </a></li>
							<li><a ng-href="{{PageLink.link.myGithub}}"> my github</a></li>
							<li><a ng-href="{{PageLink.link.spitfire}}">spitfire project</a></li>
						</ul>
					</div>
				</li>
				<li>
					<div data-role="collapsible" data-collapsed="false"
						data-collapsed-icon="carat-d" data-expanded-icon="carat-u"
						data-iconpos="right">
						<h4>technology support</h4>
						<ul data-role="listview" data-inset="false">
							<li><a ng-href="{{PageLink.it.github}}" target="_blank">GitHub</a></li>
							<li><a ng-href="{{PageLink.it.jquery}}" target="_blank">Jquery</a></li>
							<li><a ng-href="{{PageLink.it.mvc}}" target="_blank">ASP.NET</a></li>
							<li><a ng-href="{{PageLink.it.django}}" target="_blank">Django</a></li>
							<li><a ng-href="{{PageLink.it.java}}" target="_blank">Java web</a></li>
						</ul>
					</div>
				</li>

			</ul>
		</div>
	</section>
	<!-- content  -->
	
	<senction id="content" >
	
	<div>这里是股票的快捷选择</div>
	<div>这里显示当前的价格</div>
	<div>图片部分</div>
	</senction>
	<!-- end of content -->
	
		<!-- foot for web -->
	<footer id="footer"  ng-controller="footCTRL as foot">
		<div id="foot-main">
			<div id="footer-main-left">
				<span class="foot-span">technology support</span>
				<div class="foot-line"></div>
				<div id="supportDiv">
					<figure class="foot-figure">
						<img src="<c:url value="/resources/image/octocat.png"/>" class="support-img" />
						<figcaption>
							<a ng-href="{{PageLink.it.github}}" target="_blank">GitHub</a>
						</figcaption>
					</figure>
					<figure class="foot-figure">
						<img src="<c:url value="/resources/image/jquery.png"/>" class="support-img" />
						<figcaption>
							<a ng-href="{{PageLink.it.jquery}}" target="_blank">Jquery</a>
						</figcaption>
					</figure>
					<figure class="foot-figure">
						<img src="<c:url value="/resources/image/aspnet.png"/>" class="support-img" />
						<figcaption>
							<a ng-href="{{PageLink.it.mvc}}" target="_blank">ASP.NET</a>
						</figcaption>
					</figure>
					<figure class="foot-figure">
						<img src="<c:url value="/resources//image/django.png"/>" class="support-img" />
						<figcaption>
							<a ng-href="{{PageLink.it.django}}" target="_blank">Django</a>
						</figcaption>
					</figure>
					<figure class="foot-figure">
						<img src="<c:url value="/resources/image/Java.png"/>" class="support-img" />
						<figcaption>
							<a href="{{PageLink.it.java}}" target="_blank">Java web</a>
						</figcaption>
					</figure>
				</div>
			</div>
			<div id="footer-main-right">
				<span class="foot-span">quick Link</span>
				<div class="foot-line"></div>
				<a href="{{PageLink.link.introduce}}"> introduce myself by ppt</a><br /> <a
					href="{{PageLink.link.myGithub}}"> my github</a><br /> <a
					href="{{PageLink.link.spitfire}}">spitfire project</a>
			</div>
			<div id="copyright">
				<div class="foot-line"></div>
				<div id="copyright-words">
					Copyright 2013 -2014,code by huang yuan<br>
					Email:huangyuan3h@gmail.com
				</div>
			</div>
		</div>
	</footer>
</body>
</html>