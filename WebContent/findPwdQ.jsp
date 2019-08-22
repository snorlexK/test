<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="assignment.UserBean"/>
<jsp:setProperty property="userId" name="user" param="userId"/>
<jsp:useBean id="userPwdQFound" class="assignment.UserMgr"/>
<% 
	String userPwdQ = userPwdQFound.userPwdQFind(user);
	// UserBean 객체를 파라미터 값으로 사용, userPwdQFind 메소드로 불러온 비밀번호찾기 질문을 userPwdQ에 저장
	String str = null;
	if(userPwdQ == null) {
		str = "존재하지 않는 아이디입니다.";
	} else {
		str = "회원님의 비밀번호찾기 질문은<br><strong>" + userPwdQ + "</strong>입니다.";
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>비밀번호찾기 질문 확인</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<p id="foundPwdQP"><%=str %></p>
</body>
</html>
