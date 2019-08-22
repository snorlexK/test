<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="assignment.UserBean"/>
<jsp:setProperty property="*" name="user"/>
<jsp:useBean id="userInsert" class="assignment.UserMgr"/>
<% 
	userInsert.insertUserInfo(user);
	// UserBean 객체를 파라미터 값으로 사용, insertUserInfo 메소드로 user의 값을 DB에 저장
	response.sendRedirect("mainPage.jsp"); 
	// 메인 화면으로 돌아감
%>