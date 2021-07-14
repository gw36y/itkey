<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>ITKey 회원가입</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="resources/images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="resources/vendor/animsition/js/animsition.min.js"></script>
<script src="resources/vendor/bootstrap/js/popper.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/vendor/select2/select2.min.js"></script>
<script src="resources/vendor/daterangepicker/moment.min.js"></script>
<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
<script src="resources/vendor/countdowntime/countdowntime.js"></script>
<script src="resources/js/main.js"></script>
<script src="resources/js/member.js"></script>
</head>
<body>
	<div class="limiter animsition">
		<form id="joinFrm" name="joinFrm" class="joinFrm" method="post" action="joinDo" enctype="multipart/form-data">
			<div class="container-login100">
				<div class="wrap-login100">
					<div class="login100-form validate-form">
						<span class="login100-form-title p-b-27 p-t-15">회원가입 <img class="thumb_img" src="" width="130">
						</span>
						<div class="row text-center">
							<div class="col-sm-12">
								<img src="resources/images/noImage.png" id="imgPrev" class="img-circle" style="width: 180px; height: 180px; border-radius: 100%;">
							</div>
						</div>
						<div class="form-group" style="margin-bottom: 50px; margin-top: 10px;">
							<div class="input-group">
								<input type="text" class="form-control" id="fileIdx" readonly>
								<div class="input-group-btn">
									<span class="fileUpload btn login100-form-btn"> <span class="upl" id="upload">업로드</span> 
									<input type="file" class="upload up" id="fileUp" name="fileUp" onchange="setThumbnail(event);" />
									</span>
									<!-- btn-orange -->
								</div>
								<!-- btn -->
								<!-- btn -->
							</div>
							<!-- group -->
						</div>
						<!-- form-group -->
						<div class="row">
							<div class="col-sm-6">
								<div class="wrap-input100 validate-input" data-validate="Enter username">
									<input class="input100" type="text" id="boardWriter" name="boardWriter" placeholder="ID"> 
									<span class="focus-input100" data-placeholder="&#xf207;"></span>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="wrap-input100 validate-input" data-validate="Enter password">
									<input class="input100" type="password" id="boardWriterPw" name="boardWriterPw" placeholder="Password"> 
									<span class="focus-input100" data-placeholder="&#xf191;"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="wrap-input100 validate-input" data-validate="Enter username">
									<input class="input100" type="text" id="boardWriterName" name="boardWriterName" placeholder="이름 입력란"> 
									<span class="focus-input100" data-placeholder="&#xf205;"></span>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="wrap-input100 validate-input" data-validate="Enter username">
									<input class="input100" type="text" id="boardWriterPhone" name="boardWriterPhone" placeholder="전화번호 입력란"> 
									<span class="focus-input100" data-placeholder="&#xf2be;"></span>
								</div>
							</div>
						</div>
						<div class="wrap-input100 validate-input" data-validate="Enter username">
							<input class="input100" type="text" id="boardWriterEmail" name="boardWriterEmail" placeholder="이메일을 입력해주세요."> 
							<span class="focus-input100" data-placeholder="&#xf15a;"></span>
						</div>
						<div class="wrap-input100 validate-input" data-validate="Enter username">
							<input class="input100" type="text" id="boardWriterEmailChk" name="boardWriterEmailChk" placeholder="이메일을 다시한번 입력해주세요."> 
							<span class="focus-input100" data-placeholder="&#xf159;"></span>
						</div>
						<div class="container-login100-form-btn">
							<a class="login100-form-btn" onclick="joinChk()">가입</a> 
							<a href="login.html" class="login100-form-btn">취소</a>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>