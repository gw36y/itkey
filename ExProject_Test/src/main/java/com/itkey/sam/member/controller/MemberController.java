package com.itkey.sam.member.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.itkey.sam.member.dto.FileDTO;
import com.itkey.sam.member.dto.MemberDTO;
import com.itkey.sam.member.model.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	@GetMapping("/login")
	public ModelAndView login() throws Exception {
		ModelAndView mv = new ModelAndView("user/login");

		return mv;
	}

	@PostMapping("/loginDo")
	public ModelAndView loginDo(MemberDTO mDTO, HttpSession session, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView();

		int selectMem = memberService.loginChk(mDTO);

		if (selectMem == 1) {
			mDTO = memberService.loginDo(mDTO);

			session.setAttribute("memInfo", mDTO);
			mv.addObject("selectMem", selectMem);
			mv.setViewName("redirect:main.do");
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter result = response.getWriter();
			result.println("<script>alert('아이디나 비밀번호가 틀렸습니다. 다시 입력해 주십시오.'); </script>");
			result.flush();

			mv.setViewName("user/login");
		}

		return mv;
	}

	@GetMapping("/join")
	public ModelAndView join() throws Exception {
		ModelAndView mv = new ModelAndView("user/register");

		return mv;
	}

	@PostMapping(value = "/joinDo")
	public String joinDo(MemberDTO mDTO, HttpServletRequest request, MultipartHttpServletRequest fRequest,
			MultipartFile mFile) throws Exception {

		mFile = fRequest.getFile("fileUp");
		String path = "C:\\upload";

		UUID uuid = UUID.randomUUID();

		String changedName = uuid + mFile.getOriginalFilename();
		FileDTO fDTO = new FileDTO();
		fDTO.setFileOriginalName(mFile.getOriginalFilename());
		fDTO.setFileChangedName(changedName);
		fDTO.setFilePath(path);

		// 파일 DB 추가
		int insertF = memberService.addFile(fDTO);

		if (insertF == 1) {
			// 실제 파일 업로드
			File file = new File(path, changedName);
			mFile.transferTo(file);
		}

		mDTO.setFileIdx(fDTO.getFileIdx());

		memberService.insertMem(mDTO);

		return "redirect: login";

	}

	@ResponseBody
	@PostMapping(value = "/joinChk.do")
	public String joinChk(HttpServletRequest request) throws Exception {

		MemberDTO mDTO = new MemberDTO();
		mDTO.setBoardWriter(request.getParameter("boardWriter"));
		int idChk = memberService.idChk(mDTO.getBoardWriter());

		if (idChk == 1) {
			return "1";
		} else {
			return "0";
		}
	}

}
