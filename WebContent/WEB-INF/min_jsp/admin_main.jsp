<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="jl" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
* {
    padding: 0px;
    margin: 0px;
}

aside#left {
    width: 175px;
    margin-top: 20px;
    float: left;
}

#left h4 {
    font-family: Arial, Helvetica, sans-serif;
    font-size: 20px;
}

#left ul {
    font-family: Arial, Helvetica, sans-serif;
    font-size: 15px;
    color: #FFF;
    list-style: none;
    text-indent: 15px;
}

    #left ul li {
        background: #3f3f3f;
        line-height: 28px;
        border-bottom: 1px solid #333;
    }

        #left ul li a {
            text-decoration: none;
            color: #FFF;
            display: block;
        }

            #left ul li a:hover {
                background: #d40203;
            }

        #left ul li#active {
            background: #d40203;
        }

#main {
    font-family: Arial, Helvetica, sans-serif;
    font-size: 12px;
    color: #464646;
    overflow: scroll;
    float: left;
    width: 800px;
}

#user_manage {
	background: #FF7000 !important;
}
#user_stastic {
	background: #FF7000 !important;
}
#host_manage {
	background: #FF7000 !important;
}
#host_requests {
	background: #FF7000 !important;
}

#community_free {
	background: #FF7000 !important;
}
#community_review {
	background: #FF7000 !important;
}
#community_question {
	background: #FF7000 !important;
}


#admin_announcement {
	background: #FF7000 !important;
}
#admin_event {
	background: #FF7000 !important;
}
#admin_faq {
	background: #FF7000 !important;
}
#admin_one_one {
	background: #FF7000 !important;
}
#one_one_request {
	background: #FF7000 !important;
}
#one_one_un_reple {
	background: #FF7000 !important;
}
#one_one_reple_done {
	background: #FF7000 !important;
}
#sending_message {
	background: #FF7000 !important;
}
#have_messages {
	background: #FF7000 !important;
}
#to_messages {
	background: #FF7000 !important;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="common.js" type="text/javascript"></script>
<script>
 $("document").ready(function(){
	$("#user_manage").hide();
	$("#user_stastic").hide();
	
	$("#host_manage").hide();
	$("#host_requests").hide();
	
	$("#community_free").hide();
	$("#community_review").hide();
	$("#community_question").hide();
	
	$("#admin_announcement").hide();
	$("#admin_event").hide();
	$("#admin_faq").hide();
	
	$("#one_one_request").hide();
	$("#one_one_un_reple").hide();
	$("#one_one_reple_done").hide();
	
	$("#sending_message").hide();
	$("#have_messages").hide();
	$("#to_messages").hide();
	
	$("#user").on("click",function(){
		$("#user_manage").show();
		$("#user_stastic").show();
		
		$("#host_manage").hide();
		$("#host_requests").hide();
		$("#community_free").hide();
		$("#community_review").hide();
		$("#community_question").hide();
		$("#admin_announcement").hide();
		$("#admin_event").hide();
		$("#admin_faq").hide();
		$("#one_one_request").hide();
		$("#one_one_un_reple").hide();
		$("#one_one_reple_done").hide();
		$("#sending_message").hide();
		$("#have_messages").hide();
		$("#to_messages").hide();
	});
	
	$("#host").on("click",function(){
		$("#host_manage").show();
		$("#host_requests").show();
		
		$("#user_manage").hide();
		$("#user_stastic").hide();
		$("#community_free").hide();
		$("#community_review").hide();
		$("#community_question").hide();
		$("#admin_announcement").hide();
		$("#admin_event").hide();
		$("#admin_faq").hide();
		$("#one_one_request").hide();
		$("#one_one_un_reple").hide();
		$("#one_one_reple_done").hide();
		$("#sending_message").hide();
		$("#have_messages").hide();
		$("#to_messages").hide();
	});
	
	$("#community").on("click",function(){
		$("#community_free").show();
		$("#community_review").show();
		$("#community_question").show();
		
		$("#user_manage").hide();
		$("#user_stastic").hide();
		$("#host_manage").hide();
		$("#host_requests").hide();
		$("#admin_announcement").hide();
		$("#admin_event").hide();
		$("#admin_faq").hide();
		$("#one_one_request").hide();
		$("#one_one_un_reple").hide();
		$("#one_one_reple_done").hide();
		$("#sending_message").hide();
		$("#have_messages").hide();
		$("#to_messages").hide();
	});
	
	$("#admin_user").on("click",function(){
		$("#admin_announcement").show();
		$("#admin_event").show();
		$("#admin_faq").show();
		
		$("#user_manage").hide();
		$("#user_stastic").hide();
		$("#host_manage").hide();
		$("#host_requests").hide();
		$("#community_free").hide();
		$("#community_review").hide();
		$("#community_question").hide();
		$("#one_one_request").hide();
		$("#one_one_un_reple").hide();
		$("#one_one_reple_done").hide();
		$("#sending_message").hide();
		$("#have_messages").hide();
		$("#to_messages").hide();
	});
	
	$("#one_one").on("click",function(){
		$("#one_one_request").show();
		$("#one_one_un_reple").show();
		$("#one_one_reple_done").show();
		
		$("#user_manage").hide();
		$("#user_stastic").hide();
		$("#host_manage").hide();
		$("#host_requests").hide();
		$("#community_free").hide();
		$("#community_review").hide();
		$("#community_question").hide();
		$("#admin_announcement").hide();
		$("#admin_event").hide();
		$("#admin_faq").hide();
		$("#sending_message").hide();
		$("#have_messages").hide();
		$("#to_messages").hide();
	});
	
	$("#message").on("click",function(){
		$("#sending_message").show();
		$("#have_messages").show();
		$("#to_messages").show();
		
		$("#user_manage").hide();
		$("#user_stastic").hide();
		$("#host_manage").hide();
		$("#host_requests").hide();
		$("#community_free").hide();
		$("#community_review").hide();
		$("#community_question").hide();
		$("#admin_announcement").hide();
		$("#admin_event").hide();
		$("#admin_faq").hide();
		$("#one_one_request").hide();
		$("#one_one_un_reple").hide();
		$("#one_one_reple_done").hide();
	});
 });
</script>
</head>
<body>
		<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"	aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Project name</a>
			</div>
		
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="space_home.do">공간</a></li>
					<li><a href="club_list.do">모임</a></li>
					<li><a href="community_list.do">커뮤니티</a></li>
					<li><a href="event_list.do">이벤트</a></li>	
					<li><a href="notice_list.do">공지사항</a></li>
					<li><a href="faq_list.do">FAQ</a></li>			
					<li><a href="admin_main.do">관리자</a></li>			
				</ul>
				
				<ul class="nav navbar-nav navbar-right">
					<li><a herf="#">${user_name}님이 로그인 하셨습니다.</a></li>
					<li><a href="mypage_moveMypageMainPage.do">마이페이지</a></li>
					<li><a href="#">로그아웃</a></li>					
				</ul>
			</div>
			<!--/.nav-collapse -->
			
	<aside id="left">
		<h4>관리 항목들</h4>
		<ul>
			<li id="user">회원 관리 항목</li>
			<li id="user_manage"><a target="iframe1" href="admin_users.do">일반 회원 관리</a></li>
			<li id="user_stastic"><a target="iframe1" href="admin_user_stastic.do">방문자 통계</a></li>
			
			<li id="host">판매자 관리 항목</li>
			<li id="host_manage"><a target="iframe1" href="admin_hosts.do">판매자 회원 관리</a></li>
			<li id="host_requests"><a target="iframe1" href="admin_host_request.do">신청리스트</a></li>
			
			<li><a target="iframe1" href="admin_spaces.do">물품 관리</a></li>
			
			<li><a target="iframe1" href="admin_clubs.do">모임 관리</a></li>
			
			<li id="community">커뮤니티 관리</li>
			<li id="community_free"><a target="iframe1" href="#">자유 게시판 관리</a></li>
			<li id="community_review"><a target="iframe1" href="#">후기 게시판 관리</a></li>
			<li id="community_question"><a target="iframe1" href="#">Q&A 관리</a></li>
			
			<li id="admin_user">공지 항목 관리</li>
			<li id="admin_announcement"><a target="iframe1" href="admin_notice_list.do">공지 관리</a></li>
			<li id="admin_event"><a target="iframe1" href="admin_event.do">이벤트 관리</a></li>
			<li id="admin_faq"><a target="iframe1" href="admin_faq.do">FAQ 관리</a></li>
			
			<li id="one_one">1:1 관리</li>
			<li id="one_one_request"><a target="iframe1" href="admin_o2oQnA.do">1:1 문의 하기(테스트 용)</a></li>
			<li id="one_one_un_reple"><a target="iframe1" href="admin_o2oQnA_list.do">문의 미 답변 관리</a></li>
			<li id="one_one_reple_done"><a target="iframe1" href="admin_o2oQnA_list_reply.do">문의 답변 완료 보기</a></li>
			
			<li id="message">쪽지 관리</li>
			<li id="sending_message"><a target="iframe1" href="admin_message_write.do">쪽지 보내기</a></li>
			<li id="have_messages"><a target="iframe1" href="admin_message_read_get.do">받은 쪽지함</a></li>
			<li id="to_messages"><a target="iframe1" href="admin_o2oQnA.do">보낸 쪽지함</a></li>
		</ul>
	</aside>
	
	
	<section id="main">
		<article id="article1">
			<iframe name="iframe1" src="admin_users.do" width="800px" height="700px" seamless></iframe>	
		</article>
	</section>
	</div>
</body>
</html>