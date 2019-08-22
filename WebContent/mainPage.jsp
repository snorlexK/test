<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>PICTURES.COM</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div id="topBox">
		<jsp:include page="topIncluded.jsp" flush="false" />
	</div>
	<div id="leftBox">
		<jsp:include page="leftIncluded.jsp" flush="false" />
	</div>
	<div id="contentBox">
		<div id="textBox">
			다양한 무료 사진, 그림, 그리고 아이콘들을 만나보세요.<br>
			무료로 고화질 이미지를 다운로드 받으실 수 있습니다.<br><br>
			공유하고 싶은 사진이 있다면 업로드 해보세요.<br>
			많은 사람들과 공유할 수 있습니다. 
		</div>
		<div id="imageBox">
			<img src="./img/img02.jpeg">
			<img src="./img/img03.jpeg">
			<img src="./img/img04.jpeg">
			<img src="./img/img05.jpeg">
			<img src="./img/img06.jpeg">
			<img src="./img/img07.jpeg">
		</div>
	</div>
	<div id="bottomBox">
		<jsp:include page="bottomIncluded.jsp" flush="false" />
	</div>
</body>
</html>
