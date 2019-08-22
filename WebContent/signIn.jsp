<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, assignment.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="assignment.UserBean"/>
<jsp:setProperty property="*" name="user"/>
<%-- 입력 값으로 UserBean 객체 생성 --%>
<jsp:useBean id="userSignIn" class="assignment.UserMgr"/>
<%-- UserMgr을 이용하여 userSignIn 객체 생성 --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script language="JavaScript" src="script.js"></script>
</head>
<body>
<% 
	UserBean userFound = userSignIn.signIn(user);
	// UserBean 객체를 파라미터 값으로 사용, signIn 메소드로 불러온 유저 객체를 userFound에 저장
	String str = null;
	if(userFound.getUserName() == null) {
	// 아이디나 비밀번호가 틀렸을 때 조회되는 회원 이름이 없기 때문에 회원 이름이 null인지 확인
		str = "해당되는 회원이 존재하지 않습니다.<br> 아이디와 비밀번호를 확인해주세요.";
		// 확인 후 상황에 맞는 출력 문구 지정
	} else {
		str = "성공적으로 로그인되었습니다!<br>회원님의 정보입니다.";
	}
%>
	<div id="topBox">
		<jsp:include page="topIncluded.jsp" flush="false" />
	</div>
	<div id="leftBox">
		<jsp:include page="leftIncluded.jsp" flush="false" />
	</div>
	<div id="contentBox">
		<div id="userInfoBox">
			<%=str %>
<%
	if(userFound.getUserName() != null) {
	// 아이디와 비밀번호에 해당되는 회원이 존재할 때만 회원 정보 출력 
%>
	<table id="userInfoTbl" align="center">
				<tr>
					<td>아이디:</td>
					<td><%=userFound.getUserId() %></td>
				</tr>
				<tr>
					<td>이름:</td>
					<td><%=userFound.getUserName() %></td>
				</tr>
				<tr>
					<td>이메일:</td>
					<td><%=userFound.getUserEmail() %></td>
				</tr>
				<tr>
					<td>전화번호:</td>
					<td><%=userFound.getUserPhone1() %>-<%=userFound.getUserPhone2() %>-<%=userFound.getUserPhone3() %></td>
				</tr>
				<tr>
					<td>광고 수신 동의 여부:</td>
					<td><%=userFound.getUserSMS() %></td>
				</tr>
				<tr>
					<td>주소:</td>
					<td><%=userFound.getUserAddr() %></td>
				</tr>
				<tr>
					<td>생년월일:</td>
					<td><%=userFound.getUserBirthYear() %>년 <%=userFound.getUserBirthMonth() %>월 <%=userFound.getUserBirthDay() %>일</td>
				</tr>
			</table>
<%
	}
%>
		</div>
	</div>
	<div id="bottomBox">
		<jsp:include page="bottomIncluded.jsp" flush="false" />
	</div>
</body>
</html>
