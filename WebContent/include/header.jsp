<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

<head>
  <title>Harbor &mdash; Website Template by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 
	

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700i,900|Roboto&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css/aos.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/style.css">

  </head>

  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

    
    <div class="site-wrap" id="home-section">

      <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
          <div class="site-mobile-menu-close mt-3">
            <span class="icon-close2 js-menu-toggle"></span>
          </div>
        </div>
        <div class="site-mobile-menu-body"></div>
      </div>



      <header class="site-navbar site-navbar-target bg-white" role="banner">


			<div class="col-lg-20 text-right">
			<c:choose>
				<c:when test="${empty session_id }">
					<button type="button" id="btn_login" class="btn btn-light btn-sm ">Login</button>
				</c:when>
				<c:otherwise>
					<button type="button" id="btn_logout" class="btn btn-light btn-sm ">Logout(${session_id })</button>
				</c:otherwise>
			</c:choose>
					
			</div>
			
        <div class="container">
          <div class="row align-items-center position-relative">


            <div class="col-lg-2 text-center">
              <div class="site-logo">
                <a href="home.do">Share House</a>
              </div>


              <div class="ml-auto toggle-button d-inline-block d-lg-none"><a href="#" class="site-menu-toggle py-5 js-menu-toggle text-white"><span class="icon-menu h3 text-primary"></span></a></div>
            </div>
            <div class="col-lg-10">
              <nav class="site-navigation text-right ml-auto " role="navigation">
                <ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
                  <li class="active"><a href="home.do" class="nav-link">Home</a></li>
                  <li ><a href="work.do" class="nav-link">Facilities</a></li>
                  <!-- <li><a href="about.do" class="nav-link">about</a></li> -->
                  <li ><a href="about.do" class="nav-link" 
						onMouseOver='this.innerHTML="입주자 전용"' onMouseOut='this.innerHTML="Community"'>Community</a></li>
            
                </ul>
              </nav>
            </div>
            <div class="col-lg-2">
              <nav class="site-navigation text-left mr-auto " role="navigation">
                <ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
<!--                   <li><a href="contact.html" class="nav-link">Contact</a></li> -->
                </ul>
              </nav>
            </div>
            

          </div>
        </div>
        
        <!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
		
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel" >LOGIN</h4>
				</div>
				<div class="modal-body">

					<div class="form-group">
						<label for="id">ID</label> 
						<input type="text" class="form-control" placeholder="아이디를 입력하세요" id="mo_id">
					</div>
					<div class="form-group">
						<label for="pw">PW</label> 
						<input type="text" class="form-control" placeholder="패스워드를 입력하세요" id="mo_pw">
					</div> 				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="btnLogin">로그인</button>
					<button type="button" class="btn btn-default" id="btnJoin">회원가입</button>
				</div>
			</div>
			<!-- 모달 콘텐츠 -->
		</div>
		<!-- 모달 다이얼로그 -->
	</div>
	<!-- 모달 전체 윈도우 -->

      </header>
      <script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/main.js"></script>
   
	<script>
		// 모달창 화면요소를 미리 변수로 저장
		var modal = $('.modal');
		var modalTitle = $('#myModalLabel');
		var modalInputReply = modal.find('input[name="reply"]');
		var modalInputReplyer = modal.find('input[name="replyer"]');
		var modalInputRegDate = modal.find('input[name="regDate"]');
		
		var btnLogin = $('#btnLogin');
		var btnModalRemove = $('#btnModalRemove');
		var btnModalModify = $('#btnModalModify');
		
		
		$('#btn_login').on('click', function (event) {
			event.stopPropagation();
			$('#myModal').modal('show'); // 모달 대화상자 띄우기
		});
		
		$('#btn_logout').on('click', function (event) {
			event.stopPropagation(); 

			$.ajax({
				type:"get",
				url:"logout.do",
				async:false,
				dataType:"text",
				success:function(data,textStatus){
					if(data=="success"){
						alert("로그아웃");
					
						location.href="home.do";
					}
				},error:function(data,textStatus){
					alert("error")
				},complete:function(data,textStatus){}
			});
		
		});
		
 		btnLogin.on('click', function () {
 			var query={"id":$("#mo_id").val(), "pw":$("#mo_pw").val()};
 			$.ajax({
 				type:"post",
 				url:"login.do",
 				async:false,
 				data:query,
 				dataType:"text",
 				success:function(data,textStatus){
 					if(data=="success"){
 						alert("로그인 성공");
 						modal.modal("hide")
 						location.href="home.do";
 					}else if(data=="password error"){
 						alert("패스워드가 틀림")
 					}else{
 						alert("아이디가 없음")
 					}
 				},error:function(data,textStatus){
 					alert("error")
 				},complete:function(data,textStatus){}
 			});
 			
		}); 
		
		
	</script>
	<script type="text/javascript">
	$("#btnJoin").on('click',function(){
	location.href="JoinForm.do";
	});
	
	$("#btn_join").on('click',function(){
		location.href="JoinForm.do";
		});
	</script>
	

