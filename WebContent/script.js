function signInCheck() {
	// 빈 칸이 없는지 확인 후 submit
	if(document.signIn.userId.value == "") {
		alert("아이디를 입력해주세요.");
		document.signIn.userId.focus();
		return;
	}
	if(document.signIn.userPwd.value == "") {
		alert("비밀번호를 입력해주세요.");
		document.signIn.userPwd.focus();
		return;
	}
	document.signIn.submit();
}

function signUpCheck() {
	// 필수적인 항목이 모두 채워져있는지 확인 후 submit
	if(document.signUp.userId.value == "") {
		alert("아이디를 입력해주세요.");
		document.signUp.userId.focus();
		return;
	}
	if(document.signUp.userPwd.value == "") {
		alert("비밀번호를 입력해주세요.");
		document.signUp.userPwd.focus();
		return;
	}
	if(document.signUp.userRePwd.value == "") {
		alert("비밀번호를 한번 더 입력해주세요.");
		document.signUp.userRePwd.focus();
		return;
	}
	if(document.signUp.userPwdQ.value == "") {
		alert("비밀번호찾기 질문을 입력해주세요.");
		document.signUp.userPwdQ.focus();
		return;
	}
	if(document.signUp.userPwdA.value == "") {
		alert("비밀번호찾기 질문의 답을 입력해주세요.");
		document.signUp.userPwdA.focus();
		return;
	}
	if(document.signUp.userName.value == "") {
		alert("이름을 입력해주세요.");
		document.signUp.userName.focus();
		return;
	}
	if(document.signUp.userEmail.value == "") {
		alert("이메일을 입력해주세요.");
		document.signUp.userEmail.focus();
		return;
	}
	if(document.signUp.userId.value.length>20 || document.signUp.userId.value.length<6) {
		alert("아이디는 6~20자이어야 합니다.");
		document.signUp.userId.focus();
		return;
	}
	if(document.signUp.userPwd.value.length>20 || document.signUp.userPwd.value.length<6) {
		alert("비밀번호는 6~20자이어야 합니다.");
		document.signUp.userPwd.focus();
		return;
	}
	if(document.signUp.userPwd.value!=document.signUp.userRePwd.value) {
		alert("비밀번호가 일치하지 않습니다.");
		document.signUp.userRePwd.focus();
		return;
	}
	alert("회원가입이 성공적으로 완료되었습니다.");
	document.signUp.submit();
}

function findIdCheck() {
	if(document.findId.userName.value == "") {
		alert("이름을 입력해주세요.");
		document.findId.userName.focus();
		return;
	}
	if(document.findId.userEmail.value == "") {
		alert("이메일을 입력해주세요.");
		document.findId.userEmail.focus();
		return;
	}
	document.findId.submit();
}

function findPwdCheck() {
	if(document.findPwd.userId.value == "") {
		alert("아이디를 입력해주세요.");
		document.findPwd.userId.focus();
		return;
	}
	if(document.findPwd.userPwdA.value == "") {
		alert("비밀번호찾기 질문에 대한 답을 입력해주세요.");
		document.findPwd.userPwdA.focus();
		return;
	}
	document.findPwd.action = "findPwd.jsp";
	document.findPwd.method = "post";
	document.findPwd.target = "_self";
	document.findPwd.submit();
	// findPwdQ 함수를 실행한 후 이 함수를 실행하면 새 창에 submit하는 현상이 발생하여
	// 현재 창에 띄우는 것으로 다시 변경
}

function findPwdQ() {
	if(document.findPwd.userId.value == "") {
		alert("아이디를 입력해주세요.");
		document.findPwd.userId.focus();
		return;
	}
	var findPwdForm = document.findPwd;
	window.open("", "popForm", "width=400, height=300, scrollbar=no");
	// 비밀번호찾기의 질문을 확인하는 창을 새 창에 띄워 질문을 확인하면서 답을 적을 수 있게 만듬
	findPwdForm.action = "findPwdQ.jsp";
	findPwdForm.method = "post";
	findPwdForm.target = "popForm";
	findPwdForm.submit();
	// 기존 창에서 받아온 form의 파라미터 값을 그대로 새 창에 넘김 
}