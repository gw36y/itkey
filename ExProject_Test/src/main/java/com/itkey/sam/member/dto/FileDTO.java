package com.itkey.sam.member.dto;

import lombok.Data;

@Data
public class FileDTO {

	private String fileIdx = null;
	private String fileOriginalName = null;
	private String fileChangedName = null;
	private String filePath = null;
	public String getFileIdx() {
		return fileIdx;
	}
	public void setFileIdx(String fileIdx) {
		this.fileIdx = fileIdx;
	}
	public String getFileOriginalName() {
		return fileOriginalName;
	}
	public void setFileOriginalName(String fileOriginalName) {
		this.fileOriginalName = fileOriginalName;
	}
	public String getFileChangedName() {
		return fileChangedName;
	}
	public void setFileChangedName(String fileChangedName) {
		this.fileChangedName = fileChangedName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	
	
	
}
