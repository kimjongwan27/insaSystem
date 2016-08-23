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


<title>인사 게시판</title>
</head>
<body>

	<br>
	<div class="container-fluid">
		<p class="bg-info">
			<form class="form-inline" name="frmKey" id="frmKey">
				<SELECT class="form-control" name="keyField" id="keyField">
					<OPTION VALUE="sel" >선택</OPTION>
					<OPTION VALUE="MEM_NAME" >이름</OPTION>
					<OPTION VALUE="BOARD_SUBJECT" >제목</OPTION>
					<OPTION VALUE="BOARD_NUM" >글번호</OPTION>
				</SELECT>
				<input type="text" name="keytext" id="keytext" class="form-control" />
				<label class="checkbox-inline"><input type="checkbox" name="keytext" id="keytext1" /> KOSA</label>
				<label class="checkbox-inline"><input type="checkbox" name="keytext" id="keytext2" /> 자격증</label>
				<input type="button" id="search" value="찾기" class="btn btn-default"/>
			</form>
		</p>
	
		<table class="table table-bordered">
			<colgroup>
		        <col width="10%"/>
		        <col width="*"/>
		        <col width="15%"/>
		        <col width="20%"/>
		        <col width="20%"/>
		    </colgroup>
			<thead>
				<tr>
		            <th scope="col">글번호</th>
		            <th scope="col">제목</th>
		            <th scope="col">조회수</th>
					<th scope="col">작성자</th>
		            <th scope="col">작성일</th>
				</tr>
			</thead>
			
			<tbody>
	        
	        <c:forEach items="${ list }" var="row">
	            <tr>
	                <td>${row.SEQ }</td>
	                <td>${row.BOARD_SUBJECT }</td>
	                <td>${row.VIEW_CNT }</td>
	                <td>${row.MEM_NAME }</td>
	                <td>${row.REG_DATE }</td>
	            </tr>
	        </c:forEach>
	         
	    </tbody>
		</table>
	</div>
	
	<script>
		$(document).ready(function(){

		    $("#search").click(function(){
		    	var text = $("#keytext").val();
		    	var sel = $("#keyField").val();
		    	
		    	if( text.length < 1 || sel == "sel"){
		    		alert("검색어를 입력해주시거나 검색조건을 선택 바랍니다.");
		    	} else {
		    		searchBoard();
		    	}
		    });
		});
		function searchBoard(){
			$("#frmKey").attr("method","POST");
			$("#frmKey").attr("action","list.do");
			$("#frmKey").submit();			
	    }
		
	</script>
</body>
</html>