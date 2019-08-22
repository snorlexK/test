<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
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
		<div id="signUpBox">
			<form name="signUp" action="signUp.jsp">
			<table id="signUpTbl" align="center">
				<tr>
					<td colspan="2" class="titleTd">회원가입</td>
				</tr>
				<tr>
					<td class="necessaryTd">필수 항목</td>
					<td>반드시 입력해야 가입할 수 있습니다.</td>
				</tr>
				<tr>
					<td class="descTd">아이디</td>
					<td><input type="text" name="userId" maxlength="20" placeholder="6~20자로 입력하세요."></td>
				</tr>
				<tr>
					<td class="descTd">비밀번호</td>
					<td><input type="password" name="userPwd" maxlength="20" placeholder="6~20자로 입력하세요."></td>
				</tr>
				<tr>
					<td class="descTd">비밀번호 확인</td>
					<td><input type="password" name="userRePwd" maxlength="20" placeholder="비밀번호를 다시 입력하세요."></td>
				</tr>
				<tr>
					<td class="descTd">비밀번호찾기 질문</td>
					<td><input type="text" name="userPwdQ" id="longText" placeholder="비밀번호를 찾기위한 질문입니다."></td>
				</tr>
				<tr>
					<td class="descTd">비밀번호찾기 답</td>
					<td><input type="text" name="userPwdA" id="longText" placeholder="비밀번호찾기 질문에 대한 답입니다."></td>
				</tr>
				<tr>
					<td class="descTd">이름</td>
					<td><input type="text" name="userName" maxlength="30" placeholder="이름을 입력하세요."></td>
				</tr>
				<tr>
					<td class="descTd">이메일</td>
					<td><input type="email" name="userEmail" maxlength="50" placeholder="이메일 주소를 입력하세요."></td>
				</tr>
				<tr>
					<td class="necessaryTd">선택 항목</td>
					<td>입력하지 않아도 가입할 수 있습니다.</td>
				</tr>
				<tr>
					<td class="descTd">전화번호</td>
					<td>
						<input type="text" name="userPhone1" id="phoneText" maxlength="3">&nbsp;-&nbsp; 
						<input type="text" name="userPhone2" id="phoneText" maxlength="4">&nbsp;-&nbsp;
						<input type="text" name="userPhone3" id="phoneText" maxlength="4">					
					</td>
				</tr>
				<tr>
					<td class="descTd">광고 문자 수신 동의</td>
					<td>
						<input type="radio" name="userSMS" value="Y">동의 
						<input type="radio" name="userSMS" value="N">미동의
					</td>
				</tr>
				<tr>
					<td class="descTd">주소</td>
					<td><input type="text" name="userAddr" id="longText" maxlength="50" placeholder="주소를 입력하세요."></td>
				</tr>
				<tr>
					<td class="descTd">생년월일</td>
					<td>
						<select name="userBirthYear">
							<option value="2019">2019</option>
							<option value="2018">2018</option>
							<option value="2017">2017</option>
							<option value="2016">2016</option>
							<option value="2015">2015</option>
							<option value="2014">2014</option>
							<option value="2013">2013</option>
							<option value="2012">2012</option>
							<option value="2011">2011</option>
							<option value="2010">2010</option>
							<option value="2009">2009</option>
							<option value="2008">2008</option>
							<option value="2007">2007</option>
							<option value="2006">2006</option>
							<option value="2005">2005</option>
							<option value="2004">2004</option>
							<option value="2003">2003</option>
							<option value="2002">2002</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
							<option value="1999">1999</option>
							<option value="1998">1998</option>
							<option value="1997">1997</option>
							<option value="1996">1996</option>
							<option value="1995">1995</option>
							<option value="1994">1994</option>
							<option value="1993">1993</option>
							<option value="1992">1992</option>
							<option value="1991">1991</option>
							<option value="1990">1990</option>
							<option value="1989">1989</option>
							<option value="1988">1988</option>
							<option value="1987">1987</option>
							<option value="1986">1986</option>
							<option value="1985">1985</option>
							<option value="1984">1984</option>
							<option value="1983">1983</option>
							<option value="1982">1982</option>
							<option value="1981">1981</option>
							<option value="1980">1980</option>
						</select>
						년 
						<select name="userBirthMonth">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>
						월
						<select name="userBirthDay">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="submitTd"><input type="button" value="회원가입" onclick="signUpCheck()"></td>
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
