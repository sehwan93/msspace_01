<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="jl" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style>
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#prev").on("click",function(){
				location.href="club_notice_detail.do?c_notice_no="+${vo.c_notice_no};
			});
			$("#textMod").on("click",function(){
				$("#frm").submit();
			});
			$("#textDel").on("click",function(){
				location.href="club_del_notice_detail.do?c_notice_no="+${vo.c_notice_no}+"&club_no="+${vo.club_no};
			});
		});
	</script>
</head>
<body>
	<form id="frm" method="post" action="club_mod_notice_detail_submit.do">
	
		<label>작성시간 : ${vo.the_time}</label><label> 작성자 : ${vo.user_id}</label><br/>
		<label>제목</label><input name="c_notice_title" type="text" value="${vo.c_notice_title}"/><br/>
		<label>소개</label><textarea name="c_notice_content" rows="15" cols="30">${vo.c_notice_content}</textarea><br/>
		<input name="c_notice_no" type="hidden" value="${vo.c_notice_no}">
		<input id="textMod" type="button" value="수정하기">
		<input id="textDel" type="button" value="삭제하기">
		<input id="prev" type="button" value="취소">
	</form>
	
</body>
</html>