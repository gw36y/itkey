<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>ITKey 로그인</title>
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
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
<style>
#progressbar1 {
	height: 23px;
}

#progressbar1 .ui-progressbar-value {
	margin-top: -23px;
}

#progressbar1 span.caption {
	display: block;
	text-align: center;
}
</style>
</head>
<body>
	<form id="loginFrm" name="loginFrm" action="loginDo" method="post">
		<div class="limiter animsition">
			<div class="container-login100">
				<div class="wrap-login100">
					<div class="login100-form">
						<div class="text-center" style="width: 100%">
							<img src="resources/images/logo.png" width="50%">
						</div>
						<span class="login100-form-title p-b-34 p-t-27"> ITKey Edu<br>Project Login
						</span>
						<div class="wrap-input100 validate-input" data-validate="Enter username">
							<input class="input100" type="text" name="boardWriter" id="boardWriter" placeholder="ID"> <span class="focus-input100" data-placeholder="&#xf207;"></span>
						</div>
						<div class="wrap-input100 validate-input" data-validate="Enter password">
							<input class="input100" type="password" name="boardWriterPw" id="boardWriterPw" placeholder="비밀번호"> 
							<span class="focus-input100" data-placeholder="&#xf191;"></span>
						</div>
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me"> 
							<label class="label-checkbox100" for="ckb1"> ID 저장 </label>
						</div>
						<div class="container-login100-form-btn">
							<button class="login100-form-btn" type="submit">로그인</button>
							<a href="join" class="login100-form-btn">회원가입</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>