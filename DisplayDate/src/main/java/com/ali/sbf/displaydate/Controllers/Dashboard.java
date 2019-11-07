package com.ali.sbf.displaydate.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Dashboard {
	
	@RequestMapping("/")
	public String dashboard() {
		return "index.jsp";
	}

}