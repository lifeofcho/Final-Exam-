package com.mycom.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycom.myapp.board.BoardDAO;
import com.mycom.myapp.board.BoardVO;

@Controller
@RequestMapping(value="/board")
public class BoardController 
{
	@Autowired
	BoardDAO boardDAO;
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String boardlist(Model model)
	{
		model.addAttribute("list", boardDAO.getBoardList());
		return "list";
	}
	
	@RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
	public String viewBoard(@PathVariable("id") int id, Model model) {
		BoardVO boardVO = boardDAO.getBoard(id);
		model.addAttribute("command", boardVO);
		return "view";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPost()
	{
		return "addpostform";
	}
	
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addPostOK(BoardVO vo)
	{
		if(boardDAO.insertBoard(vo) == 0)
			System.out.println("데이터 추가 실패!");
		else
			System.out.println("데이터 추가 성공!");
		return "redirect:list";
	}	
	
	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model)
	{
		BoardVO boardVO = boardDAO.getBoard(id);
		model.addAttribute("u", boardVO);
		return "editform";
	}
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOK(BoardVO vo)
	{
		if(boardDAO.updateBoard(vo) == 0)
			System.out.println("데이터 수정 실패!");
		else
			System.out.println("데이터 수정 성공!");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deleteOK(@PathVariable("id") int id)
	{
		if(boardDAO.deleteBoard(id) == 0)
			System.out.println("데이터 삭제 실패!");
		else
			System.out.println("데이터 삭제 성공!");
		return "redirect:../list"; 
	}
	
	
}
