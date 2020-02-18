package org.zerock.board.mapper;

import java.util.List;

import org.zerock.board.dto.BoardDTO;

public interface BoardMapper {

	// 게시판 리스트
	public List<BoardDTO> list();

	// 게시판 글쓰기
	public Integer write(BoardDTO dto);

	// 게시판 글보기 - select
	public BoardDTO view(int no);

	public Integer update(BoardDTO dto);

	public Integer delete(int no);
	
}
