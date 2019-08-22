<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="assignment.UserBean"/>
<jsp:setProperty property="userName" name="user" param="userName"/>
<jsp:setProperty property="userEmail" name="user" param="userEmail"/>
<jsp:useBean id="userIdFound" class="assignment.UserMgr"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>아이디 찾기</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script language="JavaScript" src="script.js"></script>
</head>
<body>
<% 
	String userId = userIdFound.userIdFind(user);
	//UserBean 객체를 파라미터 값으로 사용, userIdFind 메소드로 불러온 아이디를 userId에 저장
	String str = null;
	if(userId == null) {
		str = "해당되는 아이디가 존재하지 않습니다.<br> 이름과 이메일을 확인해주세요.";
	} else {
		str = "회원님의 아이디는 <strong>" + userId + "</strong>입니다.";
	}
%>
	<div id="topBox">
		<jsp:include page="topIncluded.jsp" flush="false" />
	</div>
	<div id="leftBox">
		<jsp:include page="leftIncluded.jsp" flush="false" />
	</div>
	<div id="contentBox">
		<div id="foundIdP">
			<%=str %>
		</div>
	</div>
	<div id="bottomBox">
		<jsp:include page="bottomIncluded.jsp" flush="false" />
	</div>
</body>
</html>
