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

}
