package com.itkey.sam.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itkey.sam.member.dto.FileDTO;
import com.itkey.sam.member.dto.MemberDTO;

@Repository("memberDAO")
public class MemberDAOimpl implements MemberDAO{

	
	@Autowired 
	SqlSession sql;
	
	
	@Override
	public int idChk(String boardWriter) throws Exception {
		int result = sql.selectOne("idChk",boardWriter);
		return result;
	}


	@Override
	public int insertMem(MemberDTO mDTO) throws Exception {
		int result = sql.insert("insertMem",mDTO);
		return result;
	}


	@Override
	public MemberDTO loginDo(MemberDTO mDTO) throws Exception {
		mDTO = sql.selectOne("loginDo",mDTO);
		return mDTO;
	}


	@Override
	public int addFile(FileDTO fDTO) throws Exception {
		int result = sql.insert("addFile",fDTO);
		return result;
	}


	@Override
	public int loginChk(MemberDTO mDTO) throws Exception {
		int result = sql.selectOne("loginChk",mDTO);
		return result;
	}

}
