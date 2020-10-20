package com.kh.jsp.board.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.jsp.common.JDBCTemplate.*;

import com.kh.jsp.board.model.dao.BoardDAO;
import com.kh.jsp.board.model.vo.Board;

public class BoardService {

	private Connection con;
	private BoardDAO bDAO = new BoardDAO();
	
	public int getListCount() {
		
		con = getConnection();
		
		int result = bDAO.getListCount(con);
		
		return result;
	}

	public ArrayList<Board> selectList(int currentPage, int limit) {
		con = getConnection();
		
		ArrayList<Board> list = bDAO.selectList(con, currentPage, limit);
		
		close(con);
		
		return list;
	}
	
	public int insertBoard(Board b) {
		con = getConnection();
		int result = bDAO.insertBoard(con, b);
		
		if(result > 0 ) {
			commit(con);
		} else {
			rollback(con);
		} 
		close(con);
		return result;
	}

	public Board selectOne(int bno) {
		
		con = getConnection();
		Board b = bDAO.selectOne(con, bno);
		
		close(con);
		return b;
	}

}
