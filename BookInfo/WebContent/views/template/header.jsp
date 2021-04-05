<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root }/css/template/header.css" />
<script src="https://kit.fontawesome.com/16d6d96535.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="header-box">
		<a href="#"><img src="http://placehold.it/80x40" /></a>
		<div class="search-box">
			<select class="search-opt">
				<option>통합검색</option>
				<option>책검색</option>
				<option>작가검색</option>
			</select>
			<input class="search-txt" type="text" placeholder="입력하세요." />
			<a class="search-btn" href="#">
				<i class="fas fa-search"></i>
			</a>
		</div>
		<div class="category-box">
			<ul class="category-main">
				<li id="genre">
					<a href="#genre"><i class="fas fa-book"></i> 장르</a>
					<div class="category-sub">
						<a href="#">IT/공부</a>
						<a href="#">추리</a>
						<a href="#">만화</a>
						<a href="#">로맨스</a>
						<a href="#">과학</a>
						<a href="#">사회</a>
					</div>
				</li>
				<li><a href="#"><i class="far fa-clipboard"></i> 자유게시판</a></li>
				<li id="qna">
					<a href="#qna"><i class="fas fa-tools"></i> 고객센터</a>
					<div class="category-sub">
						<a href="#">자주묻는질문</a>
						<a href="#">문의하기</a>
						<a href="#">내문의내역</a>
					</div>
				</li>
				<li><a href="#"><i class="fas fa-user-cog"></i> 마이페이지</a></li>
			</ul>
		</div>
	</div>
</body>
</html>