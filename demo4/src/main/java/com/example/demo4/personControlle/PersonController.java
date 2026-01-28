package com.example.demo4.personControlle;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
@RequestMapping("/product")
public class PersonController {
	@GetMapping("/test")
	public String sayHello() {
		return "Helloooo";	
	}
}

