<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${root }/css/header/header.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="mainHeader">
		<div class="logo">
			<a href="${root }/views/template/main_view.jsp"><img src="${root }/img/80x40.png" /></a>
		</div>
		<div class="search">
			<!-- <select>
				<option>통합검색</option>
			</select> -->
			<form action="${root}/views/search/search_main.do" method="get">
				<input type="text" name="search" />
				<button type="submit" class="searchBtn">검색</button>
			</form>
		</div>
		<div class="user">
			<p><b>${name }님</b></p> <!-- DB에서 데이터 받아와야함. -->
		</div>
	</div>
	<div class="mainNav">
		<div class="category">
			<a href="${root }/views/genrebook/it.do" class="categoryA"><b>IT/공부</b></a>
			<a href="${root }/views/genrebook/comic.do" class="categoryA"><b>만화</b></a>
			<a href="${root }/views/genrebook/detective.do" class="categoryA"><b>추리</b></a>
			<a href="${root }/views/genrebook/romance.do" class="categoryA"><b>로맨스</b></a>
			<a href="${root }/views/genrebook/science.do" class="categoryA"><b>과학</b></a>
			<a href="${root }/views/genrebook/society.do" class="categoryA"><b>사회</b></a>
		</div>
		<div class="mainPage">
			<a href="${root }/views/member/update.do" class="navAPage"><b>회원관리</b></a>
			<a href="${root }/views/member/logout.do" class="navAPage"><b>로그아웃</b></a>
		</div>
	</div>
	<hr />
</body>
</html>