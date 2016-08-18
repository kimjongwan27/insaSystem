<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../module/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="list.do">
		<table>
		<caption><h2>인사시스템</h2></caption>
		<caption><h3>로그인</h3></caption>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" required="required" placeholder="ID"></td>
			</tr>
			<tr>
				<th>암호</th>
				<td><input type="password" name="password" required="required" placeholder="Password"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="로그인"></td>
			</tr>
		</table>
	</form>
</body>
</html>