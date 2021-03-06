package com.mycom.myapp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycom.myapp.user.UserDAO;
import com.mycom.myapp.user.UserVO;

@Controller
@RequestMapping(value="/login")
public class LoginController 
{
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login()
	{
		return "login";
	}
	
	@RequestMapping(value = "/loginOk", method = RequestMethod.POST)
	public String logicCheck(HttpSession session, UserVO vo)
	{
		String returnURL = "";
		if(session.getAttribute("login") != null)
		{
			session.removeAttribute("login");
		}
		UserVO loginvo = userDAO.getUser(vo);
		if(loginvo != null)
		{
			System.out.println("로그인 성공");
			session.setAttribute("login", loginvo);
			returnURL = "redirect:/board/list";
		}
		else
		{
			System.out.println("로그인 실패!");
			returnURL = "redirect:/login/login";
		}
		return returnURL;
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup()
	{
		return "signup";
	}
	
	@RequestMapping(value = "/signupok", method = RequestMethod.POST)
	public String signupok(UserVO vo)
	{
		if(userDAO.signup(vo) == 0)
			System.out.println("회원가입 실패!");
		else
			System.out.println("회원가입 성공!");
		return "redirect:login";
	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session)
	{
		session.invalidate();
		return "redirect:/login/login";
	}
	
}
