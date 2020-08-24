package vanh.kits3.livedinner.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BookController {
	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String Menu() {
		return "book";
	}
	
	@RequestMapping(value = "/reservation/add", method = RequestMethod.GET)
	public String formMenu() {
		return "book";
	}
	@RequestMapping(value = "/reservation/add", method = RequestMethod.POST)
	public String addMenu(HttpServletRequest request, HttpServletResponse response) {
		return "book";
	}
}
