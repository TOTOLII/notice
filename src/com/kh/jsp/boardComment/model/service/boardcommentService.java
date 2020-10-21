package com.kh.jsp.boardComment.model.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.kh.jsp.boardComment.model.dao.BoardCommentDAO;
import com.kh.jsp.boardComment.model.vo.BoardComment;

import static com.kh.jsp.common.JDBCTemplate.*;

public class boardcommentService {

	private Connection con;
	private BoardCommentDAO bcDAO = new BoardCommentDAO();
	
	
	public int insertComment(BoardComment comment) {
		con = getConnection();
		int result = bcDAO.insertComment(con,comment);
		
		if (result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		 
		close(con);
		return result;
	}


	public ArrayList<BoardComment> selectList(int bno) {
		con = getConnection();
		
		ArrayList<BoardComment> clist = bcDAO.selectList(con, bno);
		close(con);
		
		return clist;
	}


	public int updateComment(BoardComment bco) {
		
		con = getConnection();
		int result = bcDAO.updateBoardComment(con, bco);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		return 0;
	}

}
