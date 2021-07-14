package com.itkey.sam.member.model.service;

import com.itkey.sam.member.dto.FileDTO;
import com.itkey.sam.member.dto.MemberDTO;

public interface MemberService {

	public int idChk(String boardWriter) throws Exception;

	public int insertMem(MemberDTO mDTO) throws Exception;

	public MemberDTO loginDo(MemberDTO mDTO) throws Exception;

	public int addFile(FileDTO fDTO) throws Exception;

	public int loginChk(MemberDTO mDTO) throws Exception;

}
