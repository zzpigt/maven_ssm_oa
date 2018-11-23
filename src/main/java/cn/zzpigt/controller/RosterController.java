package cn.zzpigt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Roster")
public class RosterController {
	
	@RequestMapping("/list.action")
	public String list(){
		System.out.println("没有别拦截到啊！！！");
		return null;
	}

}
