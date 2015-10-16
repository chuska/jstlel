<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:choose>
	<c:when test="${empty param.r }">
		<c:set var='nRow' value='3' />
	</c:when>
	<c:otherwise>
		<c:set var='nRow' value='${param.r }'></c:set>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${empty param.r }">
		<c:set var='nCol' value='3' />
	</c:when>
	<c:otherwise>
		<c:set var='nCol' value='${param.c }'></c:set>
	</c:otherwise>
</c:choose>

<%-- <c:set var='nRow' value='${param.r }' />
<c:set var='nCol' value='${param.c }' /> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border='1px' cellspacing='0' cellpadding='10px'>
		<c:forEach begin='0' end='${nRow-1 }' var='i' step='1'>
			<tr>
				<c:forEach begin='0' end='${nCol-1 }' var='j' step='1'>
					<td>cell(${i}, ${j })</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</body>
</html>