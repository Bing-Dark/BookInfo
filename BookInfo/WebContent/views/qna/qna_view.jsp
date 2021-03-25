<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${root }/css/qna/qna_view.css" type="text/css" />
<title>고객센터</title>
</head>
<body>

	<header style="background: #93DAFF">
		<c:if test="${id == null }">
			<jsp:include page="../template/header_before.jsp" />
		</c:if>
		<c:if test="${id != null }">
			<jsp:include page="../template/header_after.jsp" />
		</c:if>
	</header>

	<div class="qna">
		<!-- 임시 링크 걸어뒀음 -->
		<a href="${root }#"> 
		<img src="${root }/img/qnalogo.png" />
		</a>
		<center>자주묻는질문</center>
	</div>

	<div class="askcenter">
		<img src="${root }/img/asklogo.png" />
		<center>문의하기</center>
	</div>

	<div class="myask">
		<img src="${root }/img/myasklogo.png" />
		<center>내 문의내역</center>
	</div>

	<footer>
		<jsp:include page="../template/footer.jsp" />
	</footer>

</body>
</html>