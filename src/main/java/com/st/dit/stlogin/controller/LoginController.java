package com.st.dit.stlogin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	@RequestMapping("/")
	public String index(){
		
		return "index";
	}
	
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(@RequestParam("email") String email,
			            ModelMap model){

		if(!checkEmail(email)) {
			return "index";
		}
		
		model.put("email",email);
		if(email.toUpperCase().endsWith("ST.COM"))
		{		     
	         return "B2CLogin";
		}
		else {
			return "B2BPage";
		}
	         
	}
	
	@RequestMapping(value="/validateLogin", method = RequestMethod.POST)
	public String validateLogin(@RequestParam("email") String email,
			                    @RequestParam("password") String password,
			            ModelMap model){

		if(!checkEmail(email)) {
			return "index";
		}
		
		model.put("email",email);
		
		if(password.equalsIgnoreCase("password")) {
			return "LoginSuccess";
		}
		else {
			model.put("errMsg", "Invalid User ID and Password for email '" + email + "'");
			return "B2CLogin";
		}		
	         
	}
	
	
	private boolean checkEmail(String inEmail){
		if(inEmail.trim().length() == 0) {
			return false;
		}
		
		return true;
	}
	
}
