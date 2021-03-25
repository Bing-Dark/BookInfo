<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${root }/css/footer/footer.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="main_footer">
		<div class="cust_service">
		
			<a href="${root }/views/qna/qna_Main.jsp" class="footer_a"><b>고객센터</b></a>
			<!--  <span onclick="javascript:location.href='${root}/views/qna/qna_Main.do'" class="footer_a" >고객센터</span>-->
		
		</div>
		<p class="toggle">| 토글</p>
		<span id="copyRight">Copyright © 우리 사이트 제목 뭐야, All Rights Reserved.</span>
	</div>
</body>
</html>