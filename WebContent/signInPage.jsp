<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script language="JavaScript" src="script.js"></script>
</head>
<body>
	<div id="topBox">
		<jsp:include page="topIncluded.jsp" flush="false" />
	</div>
	<div id="leftBox">
		<jsp:include page="leftIncluded.jsp" flush="false" />
	</div>
	<div id="contentBox">
		<div id="signInBox">
			<form name="signIn" action="signIn.jsp">
			<table id="signInTbl" align="center">
				<tr>
					<td colspan="2" class="titleTd">로그인</td>
				</tr>
				<tr>
					<td class="descTd">아이디</td>
					<td><input type="text" name="userId"></td>
				</tr>
				<tr>
					<td class="descTd">비밀번호</td>
					<td><input type="password" name="userPwd"></td>
				</tr>
				<tr>
					<td colspan="2" class="submitTd"><input type="button" value="로그인" onclick="signInCheck()"></td>
				</tr>
			</table>
			</form>
		</div>
	</div>
	<div id="bottomBox">
		<jsp:include page="bottomIncluded.jsp" flush="false" />
	</div>
</body>
</html>
