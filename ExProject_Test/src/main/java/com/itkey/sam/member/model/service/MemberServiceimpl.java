package com.itkey.sam.member.model.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.itkey.sam.member.dto.FileDTO;
import com.itkey.sam.member.dto.MemberDTO;
import com.itkey.sam.member.model.dao.MemberDAO;

@Service
public class MemberServiceimpl implements MemberService {
	@Resource(name = "memberDAO")
	MemberDAO dao;

	@Override
	public int idChk(String boardWriter) throws Exception {

		int result = dao.idChk(boardWriter);

		return result;
	}

	@Override
	public int insertMem(MemberDTO mDTO) throws Exception {
		int result = dao.insertMem(mDTO);
		return result;
	}

	@Override
	public MemberDTO loginDo(MemberDTO mDTO) throws Exception {
		mDTO = dao.loginDo(mDTO);
		return mDTO;
	}

	@Override
	public int addFile(FileDTO fDTO) throws Exception {
		int result = dao.addFile(fDTO);
		return result;
	}

	@Override
	public int loginChk(MemberDTO mDTO) throws Exception {
		int result = dao.loginChk(mDTO);
		return result;
	}

}
