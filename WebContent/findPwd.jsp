<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="assignment.UserBean"/>
<jsp:setProperty property="userId" name="user" param="userId"/>
<jsp:setProperty property="userPwdA" name="user" param="userPwdA"/>
<jsp:useBean id="userPwdFound" class="assignment.UserMgr"/>
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
	String userPwd = userPwdFound.userPwdFind(user);
	//UserBean 객체를 파라미터 값으로 사용, userPwdFind 메소드로 불러온 비밀번호를 userPwd에 저장
	String str = null;
	if(userPwd == null) {
		str = "해당되는 회원이 존재하지 않습니다.<br> 아이디와 비밀번호찾기 질문의 답을 확인해주세요.";
	} else {
		str = "회원님의 비밀번호는 <strong>" + userPwd + "</strong>입니다.";
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
