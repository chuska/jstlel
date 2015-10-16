<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>데이터 형</h3>
	${iVal + 10 * dVal }
	<br> ${dVal > 5.0 || bVal }
	<br> ${bVal }
	<br> ${sVal }
	<br> --${empty value}--
	--${empty bVal}--
	--${not empty value}--
	--${not empty bVal}--
</body>
</html>