<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.java.topbook.dao.BookDao" %>
<%	 

	List recomList = BookDao.getInstance().recomList();
	List romanceList = BookDao.getInstance().romanceList();
	List gameList = BookDao.getInstance().gameList();
	List topList = BookDao.getInstance().topList();
	List itList = BookDao.getInstance().itList();

	request.setAttribute("romanceList", romanceList);
	request.setAttribute("recomList", recomList);
	request.setAttribute("gameList", gameList);
	request.setAttribute("topList", topList);
	request.setAttribute("itList", itList);
	
	
%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script type="text/javascript" src="${root}/XHR/xhr.js"></script>
<script type="text/javascript" src="${root}/main/allStart.js"></script>
<script type="text/javascript" src="${root}/main/nextBook.js"></script>
<script type="text/javascript" src="${root}/main/showClock.js"></script>
<script type="text/javascript" src="${root}/main/slide.js"></script>
<link rel="stylesheet" href="${root}/css/main/main.css" type="text/css">
<link rel="stylesheet" href="${root}/css/main/bookInfo.css" type="text/css">
<link rel="stylesheet" href="${root}/css/book/book.css" type="text/css">
</head>
<body onload="allStart()">

<label class="switch">
  <input class="check" type="checkbox" id="toggleTheme">
  <span class="slider round"></span>
</label>

	<header style="background:#93DAFF">
		<c:if test="${id == null }">
			<jsp:include page="header_before.jsp" />
		</c:if>
		<c:if test="${id != null }">
			<jsp:include page="header_after.jsp" />
		</c:if>
	</header> 
	
	<section>
		<header class="header00" >	
				<!-- 독서 관련 정보 -->
				<div class="slideshow-container">

				<div class="mySlides fade">
  					<div class="numbertext">1 / 3</div>
  					<img src="${root}/img/ex01.jpg">
				</div>

				<div class="mySlides fade">
  					<div class="numbertext">2 / 3</div>
  					<img src="${root}/img/ex02.jpg">
					</div>

				<div class="mySlides fade">
  					<div class="numbertext">3 / 3</div>
  					<img src="${root}/img/ex03.jpg">
				</div>

				</div>

			<!-- 버튼 얍 -->
			<div id="timeBox" class="clock">
				<!-- 시간 보여주는 공간 / 디자인 언제 만져 띠바 -->
			</div>
		</header>
		
		<article>
			<!-- 인기도서 -->
			
			<p class="title">인기도서</p>
			<div id="popBook">
				<img class="buttonImg" src="${root}/img/left.png" onclick="topBeforeBook()"/>
				<c:forEach var="topList" items="${topList}" varStatus="status">
				<form id="bookForm" method="get" action="${root}/views/bookInfo/info.do"  class="top${status.index}" name="top${status.index}"> 
					<a onclick="document.top${status.index}.submit();">
					<img src="${topList.thumbnail}"/>
					<br />
					<span class="bookTitle">${topList.title}</span>
					<span class="bookAuthors">${topList.authors}</span>
					<input id="bookISBN" type="text" name="isbn" value="${topList.isbn}" style="display:none;">
					</a>
				</form>
				</c:forEach>
				<img class="buttonImg" src="${root}/img/right.png" onclick="topNextBook()" />
			</div>
			
			<!-- 추천도서 -->
			<p class="title">추천도서</p>
			<div id="recBook">
				<img class="buttonImg" src="${root}/img/left.png" onclick="recomBeforeBook()"/>
				<c:forEach var="recomList" items="${recomList}" varStatus="status">
				<form id="bookForm" method="get" action="${root}/views/bookInfo/info.do" class="recom${status.index}" name="recom${status.index}"> 
					<a onclick="document.recom${status.index}.submit();">
					<img src="${recomList.thumbnail}" />
					<br />
					<span class="bookTitle">${recomList.title}</span>
					<span class="bookAuthors">${recomList.authors}</span>
					<input id="bookISBN" type="text" name="isbn" value="${recomList.isbn}" style="display:none;">
					</a>
				</form>
				</c:forEach>
				<img class="buttonImg" src="${root}/img/right.png" onclick="recomNextBook()"/>
			</div>
			
			<!-- 장르도서 -->
			<p class="title" onclick="javascript:location.href='${root}/views/genrebook/romance.do'">로맨스 》</p>
			<div id="recBook">
				<img class="buttonImg" src="${root}/img/left.png" onclick="romanBeforeBook()"/>
				<c:forEach var="romanceList" items="${romanceList}" varStatus="status">
				<form id="bookForm" method="get" name="roman${status.index}" action="${root}/views/bookInfo/info.do" class="roman${status.index}"> 
					<a onclick="document.roman${status.index}.submit();">
					<img src="${romanceList.thumbnail}" />
					<br />
					<span class="bookTitle">${romanceList.title}</span>
					<span class="bookAuthors">${romanceList.authors}</span>
					<input id="bookISBN" type="text" name="isbn" value="${romanceList.isbn}" style="display:none;">
					</a>
				</form>
				</c:forEach>
				<img class="buttonImg" src="${root}/img/right.png" onclick="romanNextBook()"/>
			</div>
			
			<p class="title" onclick="javascript:location.href='${root}/views/genrebook/it.do'">IT 》</p>
			<div id="recBook">
				<img class="buttonImg" src="${root}/img/left.png" onclick="itBeforeBook()"/>
				<c:forEach var="itList" items="${itList}" varStatus="status">
				<form id="bookForm" method="get" name="it${status.index}" action="${root}/views/bookInfo/info.do" class="it${status.index}"> 
					<a onclick="document.it${status.index}.submit();">
					<img src="${itList.thumbnail}" />
					<br />
					<span class="bookTitle">${itList.title}</span>
					<span class="bookAuthors">${itList.authors}</span>
					<input id="bookISBN" type="text" name="isbn" value="${itList.isbn}" style="display:none;">
					</a>
				</form>
				</c:forEach>
				<img class="buttonImg" src="${root}/img/right.png" onclick="itNextBook()"/>
			</div>
			
			<p class="title" onclick="javascript:location.href='${root}/views/genrebook/comic.do'">만화 》</p>
			<div id="recBook">
				<img class="buttonImg" src="${root}/img/left.png" onclick="gameBeforeBook()"/>
				<c:forEach var="gameList" items="${gameList}" varStatus="status">
				<form id="bookForm" method="get" name="game${status.index}" action="${root}/views/bookInfo/info.do" class="game${status.index}"> 
					<a onclick="document.game${status.index}.submit();">
					<img src="${gameList.thumbnail}" />
					<br />
					<span class="bookTitle">${gameList.title}</span>
					<span class="bookAuthors">${gameList.authors}</span>
					<input id="bookISBN" type="text" name="isbn" value="${gameList.isbn}" style="display:none;">
					</a>
				</form>
				</c:forEach>
				<img class="buttonImg" src="${root}/img/right.png" onclick="gameNextBook()"/>
			</div>
		</article>
	</section>
	<footer style="background:#8c8c8c">
		<jsp:include page="footer.jsp" />
	</footer>
</body>
<script src="${root}/javascript/darkmode/darkmode.js"
	type="text/javascript"></script>
</html>