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
</head>
<body>
	<div class="container">
		<h2>모임장/모임신청자 페이지</h2>
		<label>${vo.club_name}</label><br/>
		<label>인원</label><input type="text" value="${vo.user_count+1}" disabled="disabled"/><br/>
		<label>소개</label><textarea rows="15" cols="30" disabled="disabled">소개글 : ${vo.club_title}
내용 : ${vo.club_content}</textarea><br/>
		<input id="clubApply" type="button" value="신청하기" style="display: none">
		<input id="moveCommunity" type="button" value="모임커뮤니티 가기" style="display: none">
		<br/><br/><br/>
		<h3>모임 장소 추천 페이지(이미지 슬라이딩으로 구현 예정)</h3>
		<table class="table" style="border: 1px solid;">
			<tr style="border: 1px solid;">
				<jl:forEach items="${sVO}" var="vo">
					<td style="border: 1px solid;"><a href="space_detail.do?space_no=${vo.space_no}">${vo.space_thumb_img}</a></td>
				</jl:forEach>
			</tr>
		</table>
		
		
		<!-- modal창 시작 -->
		<form id="frm" action="club_apply.do" method="post">
			<div id="modal" class="modal fade" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-head" align="center">
							<h4>모임 신청</h4>
						</div>
						<div class="modal-body" align="center"><h3 id="modalbody">
							<textarea name="apply_content" id="apply_content" class='form-control' rows="7"></textarea>
							<input name="user_id" type="hidden"value="${user_id}"/>
							<input name="club_no" type="hidden"value="${vo.club_no}"/>
						</h3></div>
						<div id="ft" class="modal-footer">
							<button type='button' class='btn btn-default' id='modal-btn-Yes'>등록</button>
							<button type='button' class='btn btn-primary' id='modal-btn-No'>취소</button>
						</div>
					</div>
				</div>
			</div>
		</form>
		<!-- modal창 끝 -->
		
		<!-- 모임커뮤니티 이동페이지 post방식으로 설정 -->
		<div style="display: none">
			<form id="move_frm" action="club_community.do" method="post">
				<input name="club_no" type="hidden" value="${vo.club_no}"/>
			</form>
		</div>
		<!-- 기본 modal창 시작 -->
		<div id="basic_modal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div id="basic_mobody" class="modal-body" align="center">
					</div>
					<div id="basic_ft" class="modal-footer">
						<button type='button' class='btn btn-default' id='basic_modal_Yes'>확인</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 기본 modal창 끝 -->
	</div>	
	
	<script type="text/javascript">
		$(document).ready(function(){
			
			/* 기본 모달창 확인 버튼 클릭하면 숨기기 */
			$("#basic_modal_Yes").on("click",function(){
				$("#basic_modal").modal("hide");
			});
			
			//flag와 user_id를 이용해서 신청버튼과 모임커뮤니티 버튼 조정.
			if('${user_id}'=='${vo.user_id}'||'${user_id}'=='admin'||'${flag}'==''){
				$("#moveCommunity").attr("style","display:inline;");
			}else{
				if('${flag}'=='10001'){
					$("#clubApply").attr("style","display:inline;");
					$("#clubApply").attr("value","신청 중");
					$("#clubApply").attr("disabled","disabled");
				}else if('${flag}'=='10000'){
					$("#clubApply").attr("style","display:inline;");
				}
			}
			
			/* 클럽 신청 이벤트 */
			$("#clubApply").on("click",function(){
				$("#modal").modal();
				$("#modal-btn-Yes").on("click",function(){
					var formData = $("#frm").serialize();
					$.ajax({
						type : "POST",
						url : "club_apply.do",
						data : formData,
						success	: function(rt) {
							if(rt=="10000"){
								$("#modal").modal("hide");
								$("#basic_mobody").text("모임 신청이 되었습니다.");
								$("#basic_modal").modal("show");
								$("#basic_modal").on("hidden.bs.modal",function(){
									$("#basic_modal").modal("hide");
									location.reload();
								});
							}else if(rt="10001"){
								$("#modal").modal("hide");
								$("#basic_mobody").text("신청 처리가 실패 되었습니다.");
								$("#basic_modal").modal("show");
								$("#basic_modal").on("hidden.bs.modal",function(){
									$("#basic_modal").modal("hide");
									location.reload();
								});
							}
					    }
					});
				});
				$("#modal-btn-No").on("click",function(){
					$("#modal").modal('hide');
				});
			});
			/* 모임커뮤니티 이동하는 이벤트 */
			$("#moveCommunity").on("click",function(){
				$("#move_frm").submit();
			});
			
		});
	</script>	
	
</body>
</html>