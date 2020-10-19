package com.kh.jsp.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable{

	private static final long serialVersionUID = 11010L;

	/*
	 * 만약 DB 테이블의 정보와 다르게
	 * vo에 더 많은 값을 담아야 하거나,
	 * DB의 JOIN한 결과를 담고자 한다면
	 * VO의 필드 변수는 관련 테이블과 반드시 1:1로
	 * 연결 시키지 않아도 된다.
	 * 즉, 컬럼과 필드 변수 관계는 1:1이 아니다
	 * 
	 */
	private int bno;			// 게시글 번호
	private int btype;			// 게시글 유형 (1:일반/ 2:사진)
	private String btitle;		// 게시글 제목
	private String bcontent;	// 게시글 내용
	private String bwriter;		// 게시글 작성자(닉네임, 이름)
	private String userId;		// 게시글 작성자 아이디		
	private int bcount;			// 게시글 조회수
	private String boardfile;	// 첨부파일
	private Date bdate;			// 작성일
	private String status;		// 삭제 여부 (Y: 삭제, N : 삭제됨)

	public Board() {}

	public Board(int bno, int btype, String btitle, String bcontent, String bwriter, String userId, int bcount,
			String boardfile, Date bdate, String status) {
		super();
		this.bno = bno;
		this.btype = btype;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bwriter = bwriter;
		this.userId = userId;
		this.bcount = bcount;
		this.boardfile = boardfile;
		this.bdate = bdate;
		this.status = status;
	}

	public Board(String btitle, String bcontent, String bwriter, String boardfile) {
		super();
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bwriter = bwriter;
		this.boardfile = boardfile;
	}
	
	
	public int getBno() {
		return bno;
	}

	public int getBtype() {
		return btype;
	}

	public String getBtitle() {
		return btitle;
	}

	public String getBcontent() {
		return bcontent;
	}

	public String getBwriter() {
		return bwriter;
	}

	public String getUserId() {
		return userId;
	}

	public int getBcount() {
		return bcount;
	}

	public String getBoardfile() {
		return boardfile;
	}

	public Date getBdate() {
		return bdate;
	}

	public String getStatus() {
		return status;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public void setBtype(int btype) {
		this.btype = btype;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public void setBcount(int bcount) {
		this.bcount = bcount;
	}

	public void setBoardfile(String boardfile) {
		this.boardfile = boardfile;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Board [bno=" + bno + ", btype=" + btype + ", btitle=" + btitle + ", bcontent=" + bcontent + ", bwriter="
				+ bwriter + ", userId=" + userId + ", bcount=" + bcount + ", boardfile=" + boardfile + ", bdate="
				+ bdate + ", status=" + status + "]";
	}
	
	
	
	
	
	
}