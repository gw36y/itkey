function setThumbnail(event) {
	var reader = new FileReader();
	reader.onload = function(event) {
		var img = document.getElementById("imgPrev");
		img.setAttribute("src", event.target.result);
	};
	reader.readAsDataURL(event.target.files[0]);
}

function joinChk() {
	var form = $("#joinFrm");

	var boardWriter = $("#boardWriter").val();
	var pw = $("#boardWriterPw").val();
	var name = $("#boardWriterName").val();
	var eMail = $("#boardWriterEmail").val();
	var eMailChk = $("#boardWriterEmailChk").val();
	var phone = $("#boardWriterPhone").val();

	var val_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	var val_phone = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/;
	var idStatus = "no";
	var val = true;

	$.ajax({
		url: "joinChk.do",
		type: "POST",
		async: false,
		data: {
			boardWriter: boardWriter
		},
		success: function(data) {
			if (data == 0) {
				idStatus = "ok";
			} else {
				idStatus = "no";
			}
		}
	});

	if (boardWriter == '' || pw == '' || name == '' || eMail == '' || eMailChk == '' || phone == '') {
		alert("모든 항목을 빈칸없이 작성해 주시기 바랍니다.");
		val = false;
	} else if (fileIdx == '') {
		alert("프로필 사진을 선택해 주세요");
		val = false;
	} else if (eMail != eMailChk) {
		alert("작성된 이메일이 다릅니다. 이메일을 다시 확인하여 주시기 바랍니다.");
		val = false;
	} else if (!val_email.test(eMail)) {
		alert("이메일 양식에 맞춰 작성해 주시기 바랍니다.");
		val = false;
	} else if (!val_phone.test(phone)) {
		alert("전화번호 양식에 맞춰 작성해 주시기 바랍니다.");
		val = false;
	} else if (idStatus == "no") {
		alert("사용불가능한 아이디 입니다");
		val = false;
	}

	if (val == false) {
		return false;
	} else {
		form.submit();
	}

}