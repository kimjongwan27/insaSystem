<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>인사 시스템</title>
</head>
<body>
	<c:if test="${not empty success }">
		<script type="text/javascript">
			alert("${success}");
		</script>
	</c:if>
	<div class="container">
		<form name="frmLogin" id="frmLogin">
			<div class="form-group">
				<div class="col-md-6 col-md-offset-3">
					<p class="h2 text-center">인사시스템</p>
					<p class="h3 text-center">로그인</p>
				</div>
				<div class="col-md-6 col-md-offset-3">
					<label for="exampleInputEmail1">아이디</label>
					<input type="text" class="form-control" name="loginId" id="loginId"  placeholder="ID">
					<br>
					<label for="exampleInputPassword1">비밀번호</label>
					<input type="password" class="form-control" name="loginPw" id="loginPw" placeholder="Password">
					<br>
					<input type="submit" value="로그인" id="loginBtn" class="btn btn-default">
				</div>
				
			</div>
		</form>
	</div>
</body>

	<script>
		$(document).ready(function(){

		    $("#loginBtn").click(function(){
		    	$("#frmLogin").attr("method","POST");
				$("#frmLogin").attr("action","loginPro.do");
				$("#frmLogin").submit();
		    });
		});
		
	</script>
	
</html>