package com.kh.jsp.boardComment.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class BoardComment implements Serializable{

	private static final long serialVersionUID = 1001L;
	
	private int cno;
	private int bno;
	private String ccontent;
	private String cwriter;
	private Date cdate;
	private String userId;
	private int refcno;
	private int clevel;
	
	public BoardComment() {
		super();
	}

	public BoardComment(int cno, int bno, String ccontent, String cwriter, Date cdate, String userId, int refcno,
			int Clevel) {
		super();
		this.cno = cno;
		this.bno = bno;
		this.ccontent = ccontent;
		this.cwriter = cwriter;
		this.cdate = cdate;
		this.userId = userId;
		this.refcno = refcno;
		this.clevel = Clevel;
	}

	public BoardComment(int bno, String ccontent, String cwriter, int refcno, int Clevel) {
		super();
		this.bno = bno;
		this.ccontent = ccontent;
		this.cwriter = cwriter;
		this.refcno = refcno;
		this.clevel = Clevel;
	}

	public int getCno() {
		return cno;
	}

	public int getBno() {
		return bno;
	}

	public String getCcontent() {
		return ccontent;
	}

	public String getCwriter() {
		return cwriter;
	}

	public Date getCdate() {
		return cdate;
	}

	public String getUserId() {
		return userId;
	}

	public int getRefcno() {
		return refcno;
	}

	public int getClevel() {
		return clevel;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}

	public void setCwriter(String cwriter) {
		this.cwriter = cwriter;
	}


	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public void setRefcno(int refcno) {
		this.refcno = refcno;
	}

	public void setClevel(int Clevel) {
		this.clevel = Clevel;
	}

	@Override
	public String toString() {
		return "boardComment [cno=" + cno + ", bno=" + bno + ", ccontent=" + ccontent + ", cwriter=" + cwriter
				+ ", cdate=" + cdate + ", userId=" + userId + ", ref_cno=" + refcno + ", Aclevel=" + clevel + "]";
	}
	
	
	
}