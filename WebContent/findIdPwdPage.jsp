<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>아이디/비밀번호 찾기</title>
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
		<p id="findIdBox">
			<form name="findId" action="findId.jsp">
			<table id="findIdTbl" align=center>
				<tr>
					<td colspan="2" class="titleTd">아이디 찾기</td>
				</tr>
				<tr>
					<td class="descTd">이름</td>
					<td><input type="text" name="userName"></td>
				</tr>
				<tr>
					<td class="descTd">이메일</td>
					<td><input type="email" name="userEmail"></td>
				</tr>
				<tr>
					<td colspan="2" class="submitTd"><input type="button" value="아이디 찾기" onclick="findIdCheck()"></td>
				</tr>
			</table>
			</form>
		</p>
		<div id="findPwdBox">
			<form name="findPwd" action="findPwd.jsp">
			<table id="findPwdTbl" align=center>
				<tr>
					<td colspan="2" class="titleTd">비밀번호 찾기</td>
				</tr>
				<tr>
					<td class="descTd">아이디</td>
					<td><input type="text" name="userId"></td>
				</tr>
				<tr>
					<td colspan="2" class="submitTd"><input type="button" value="비밀번호찾기 질문 확인" onclick="findPwdQ()"></td>
				</tr>
				<tr>
					<td class="descTd">비밀번호찾기 답</td>
					<td><input type="text" name="userPwdA"></td>
				</tr>
				<tr>
					<td colspan="2" class="submitTd"><input type="button" value="비밀번호 찾기" onclick="findPwdCheck()"></td>
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
