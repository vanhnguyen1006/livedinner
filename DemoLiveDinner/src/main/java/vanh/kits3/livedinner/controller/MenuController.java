package vanh.kits3.livedinner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MenuController {
	
	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public String Menu() {
		return "menu";
	}
}
