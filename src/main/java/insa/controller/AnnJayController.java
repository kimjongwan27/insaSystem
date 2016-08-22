package insa.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import insa.model.LoginInfo;
import insa.service.InsaService;

@Controller
public class AnnJayController {
	
	@Autowired
	private InsaService is;
	
	@RequestMapping("login")
	public String login(String success, Model model){
		model.addAttribute("success", success);
		return "login/login";
	}
	
	@RequestMapping("loginPro")
	public String loginPro(LoginInfo log, HttpSession session){
		String success = "";
		int loginResult = is.login(log);
		System.out.println(loginResult);
		if(loginResult == 1){
			session.setAttribute("loginId", log.getId());
			success = "로그인 되었습니다.";
		}else if(loginResult == 0){
			success = "비밀번호가 틀렸습니다.";
			return "forward:login.do?success="+success;
		}else{
			success = "없는 아이디입니다.";
			return "forward:login.do?success="+success;
		}
		return "forward:list.do?success="+success;
	}
	
	@RequestMapping("list")
	public String list(String success, Model model){
		model.addAttribute("success", success);
		return "insaList/list";
	}
}