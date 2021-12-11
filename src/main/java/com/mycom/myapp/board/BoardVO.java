package com.mycom.myapp.board;
import java.util.Date;

public class BoardVO
{
	private int seq;
	private String title; // 강의 이름
	private String category; // 학부
	private String name; // 교수님 성함
	private String code; // 과목 코드
	private String content; // 강의평
	private String score; // 강의 점수
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	private Date regdate; // 강의평 등록일
	

	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String catagory) {
		this.category = catagory;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}