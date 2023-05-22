package com.example.demo;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {
	
	
	@GetMapping(value = "/")
	public String  demo(Model model){
		
		return "demo";
	}
	
	@GetMapping(value = "/hello")
	public String  demo(String name, Model model){
		
		model.addAttribute("name", name);
		
		return "hello";
	}

}
