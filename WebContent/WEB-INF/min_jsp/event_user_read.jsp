<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script>
	$(document).ready(function(){

		var scOffset = $( '.navbar-Menu' ).offset();
		$( window ).scroll( function() {
		if ( $( document ).scrollTop() > scOffset.top ) {
		$( '.navbar' ).addClass( 'navbar-fixed-top' );
		}
		else {
		$( '.navbar' ).removeClass( 'navbar-fixed-top' );
		}
		});




		});

	</script>

</head>


<body>	
						<div class="jbTitle">
	<h1>Multi Space</h1>
</div>

<!-- Fixed navbar -->
<nav class="navbar navbar-default ">
	<div class="container">
	 <div class="navbar-header">
	   <a class="navbar-brand" href="main.html">multi space</a>
	 </div>

 <div id="navbar" class="navbar-collapse collapse navbar-Menu ">
	<ul class="nav navbar-nav ">
 	 <li><a href="space_home.do">공간</a></li>
	 <li><a href="club_home.do">모임</a></li>
	 <li><a href="community_list.do">커뮤니티</a></li>
	 <li><a href="event_user_list.do">이벤트</a></li>	
	 <li><a href="notice_list.do">공지사항</a></li>
	 <li><a href="faq_list.do">FAQ</a></li>			
	 <li><a href="admin_main.do">관리자</a></li>			
	</ul>
			
<ul id="login_nav" class="nav navbar-nav navbar-right">
<li><a href="#" id="user_name"></a></li>
	<li><a href="mypage_moveMypageMainPage.do">마이페이지</a></li>
	<li><a href="home_logout.do">로그아웃</a></li>	
</ul>
		
<ul id="non_login_nav" class="nav navbar-nav navbar-right">
	     <li><a href="#">로그인</a></li>		
	</ul>

	   </div>
	</div>
</nav>
<!-- nav -->

			
			제목 :<input type="text" name="eve_title" value="${text.eve_title}" readonly /><br/>
			내용 :<textarea name="eve_content" rows="7" cols="40" readonly >${text.eve_content}</textarea><br/>
				<img src="thumbnail/${text.eve_thumb_img}" height="100" width="100"/> <br/>
			<input type="button" value="목록" onclick= "window.location.href='event_user_list.do'">
</body>
</html>