<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<head>
<style>
form {
	width: 60%;
	margin: 60px auto;
	background: #efefef;
	padding: 60px 120px 80px 120px;
	text-align: center;
	-webkit-box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.1);
	box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	position: relative;
	margin: 40px 0px;
}

.label-txt {
	position: absolute;
	top: -1em;
	padding: 10px;
	font-family: sans-serif;
	font-size: .8em;
	letter-spacing: 1px;
	color: rgb(120, 120, 120);
	transition: ease .3s;
}

.label-txt1 {
	position: absolute;
	top: -3em;
	padding: 10px;
	font-family: sans-serif;
	font-size: .8em;
	letter-spacing: 1px;
	color: rgb(120, 120, 120);
	transition: ease .3s;
}

.label-txt2 {
	position: absolute;
	top: -4em;
	padding: 10px;
	font-family: sans-serif;
	font-size: .8em;
	letter-spacing: 1px;
	color: rgb(120, 120, 120);
	transition: ease .3s;
}


.input {
	width: 100%;
	padding: 10px;
	background: transparent;
	border: none;
	outline: none;
}

.line-box {
	position: relative;
	width: 100%;
	height: 2px;
	background: #BCBCBC;
}

.line {
	position: absolute;
	width: 0%;
	height: 2px;
	top: 0px;
	left: 50%;
	transform: translateX(-50%);
	background: #8BC34A;
	transition: ease .6s;
}

.input:focus+.line-box .line {
	width: 100%;
}

.label-active {
	top: -3em;
}

button {
	display: inline-block;
	padding: 12px 24px;
	background: rgb(220, 220, 220);
	font-weight: bold;
	color: rgb(120, 120, 120);
	border: none;
	outline: none;
	border-radius: 3px;
	cursor: pointer;
	transition: ease .3s;
}

button:hover {
	background: #8BC34A;
	color: #ffffff;
}

.pw{
	position: absolute;
	border:0px; 
	background-color:#efefef; 
	top: -1em; 
	left: 0.5%;
}
</style>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700i,900|Roboto&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="../fonts/icomoon/style.css">

<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/animate.min.css">
<link rel="stylesheet" href="../css/jquery.fancybox.min.css">
<link rel="stylesheet" href="../css/owl.carousel.min.css">
<link rel="stylesheet" href="../css/owl.theme.default.min.css">
<link rel="stylesheet" href="../fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="../css/aos.css">

<!-- MAIN CSS -->
<link rel="stylesheet" href="../css/style.css">

</head>


		<body>
			<form>
				<label>
					<p class="label-txt">ENTER YOUR NAME</p> <br>
					<input type="text" class="input">
					<div class="line-box">
						<div class="line"></div>
					</div>
				</label> 
				<label>
					<p class="label-txt">ENTER YOUR ID &nbsp;&nbsp;
					<button type="button" id="IdCheck" class="btn btn-light btn-sm">check</button></p> 	<br>
					<input type="text" class="input" id="id" name="id">
					<div class="line-box">
						<div class="line"></div>
					</div>		
				</label>
				<label>
				<div class="label-txt1" id="msg">아이디 중복 확인</div>		
				</label>
				<br><br>
				<label>
					<p class="label-txt2">ENTER YOUR PASSWORD</p> <br>
					<input type="password" id="password_1" class="pw" >
					<div class="line-box">
						<div class="line">
						</div>
					</div> 
				</label><br>
				<label>
					<p class="label-txt2">CHECK YOUR PASSWORD</p> <br>
					<input type="password" id="password_2" class="pw">
					<div class="line-box">
						<div class="line"></div>
					</div>
					<label style="position:absolute; padding:0px; top: 0.2em;">
					 <span id="alert-success" style="display: none; font-size: .8em;">&nbsp;비밀번호가 일치합니다.</span>
    			 	 <span id="alert-danger" style="display: none;  font-size: .8em; color: red; ">&nbsp;비밀번호가 일치하지 않습니다.</span>
					</label>
				</label>
				<br>
				<label>
					<p class="label-txt">ENTER YOUR PHONE</p> <br>
					<input type="text" class="input">
					<div class="line-box">
						<div class="line"></div>
					</div>
				</label><br>
				<button type="submit">submit</button>
			</form>
		</body>


<script>
    $('.pw').focusout(function () {
        var pwd1 = $("#password_1").val();
        var pwd2 = $("#password_2").val();
 
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#alert-success").css('display', 'inline-block');
                $("#alert-danger").css('display', 'none');
            } else {
                $("#alert-success").css('display', 'none');
                $("#alert-danger").css('display', 'inline-block');
            }
        }
    });
    
    $("#IdCheck").on('click',function(){
    	$.ajax({
    		type:"post",
    		url:"overappedId.do",
    		data:{"id":$("#id").val()},
    		async:false,
    		dataType:"text",
    		success:function(data,textStatus){
    			if(data=='usable'){
    				$("#msg").html("사용가능한 아이디")
    			}else if(data=='not usable'){
    				$("#msg").html("사용불가능한 아이디")
    				document.getElementById("msg").style.color="red";
    			}
    		},error:function(data,textStatus){
    			alert("error")
    		},complete:function(data,textStatus){
    			
    		}
    		
    		
    	});
    });

</script>
<%@ include file="../include/footer.jsp" %>
