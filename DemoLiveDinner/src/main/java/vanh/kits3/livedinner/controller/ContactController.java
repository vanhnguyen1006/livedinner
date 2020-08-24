package vanh.kits3.livedinner.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import vanh.kits3.livedinner.dao.ContactDAO;
import vanh.kits3.livedinner.service.ContactService;
import vanh.kits3.livedinner.vo.Contact;

@Controller
public class ContactController {
	ContactService service = new ContactService();
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String Contact(Model model) {
		List<Contact> list = service.findAll();
		String show = service.show(list);
		model.addAttribute("list", show);
		return "contact";
	}
	
	
	@RequestMapping(value = "/contact-add", method = RequestMethod.GET)
	public String adContact() {
		return "contact-add";
	}
	
	@RequestMapping(value = "/contact-add/add", method = RequestMethod.GET)
	public String addContact(@RequestParam("coname") String name,
											@RequestParam("priphone") String priphone,
											@RequestParam("subphone") String subphone,
											@RequestParam("email") String email,
											@RequestParam("address") String address,
											@RequestParam("unused") Boolean unused,
											@RequestParam("opening") String open,
											@RequestParam("weekday") String weekday,
											@RequestParam("weekend") String weekend,
											@RequestParam("aboutus") String about,
											@RequestParam("latitude") Double lati,
											@RequestParam("logitude") Double logi,
											HttpServletResponse response) {
		Contact cont = new Contact();
		cont.setConame(name);
		cont.setPriphone(priphone);
		cont.setSubphone(subphone);
		cont.setEmail(email);
		cont.setAddress(address);
		cont.setUnused(unused);
		cont.setOpening(open);
		cont.setWeekday(weekday);
		cont.setWeekend(weekend);
		cont.setAboutus(about);
		cont.setLatitude(lati);
		cont.setLogitude(logi);

		service.add(cont);
		
		return "redirect:/contact";
	}
	
	@RequestMapping(value = "/contact/edit/{id}", method = RequestMethod.GET)
	public String editCont(Model model, @PathVariable("id") String id) {
		Contact cont = service.findOne(Integer.parseInt(id));
		model.addAttribute("contact",cont);
		return "contact-update";
	}
	@RequestMapping(value = "/contact/update/{id}", method = RequestMethod.GET)
	public String updateCont(@RequestParam("coname") String name,
											@RequestParam("priphone") String priphone,
											@RequestParam("subphone") String subphone,
											@RequestParam("email") String email,
											@RequestParam("address") String address,
											@RequestParam("unused") Boolean unused,
											@RequestParam("opening") String open,
											@RequestParam("weekday") String weekday,
											@RequestParam("weekend") String weekend,
											@RequestParam("aboutus") String about,
											@RequestParam("latitude") Double lati,
											@RequestParam("logitude") Double logi,
											@PathVariable("id") String id) {
		
		Contact cont = new Contact();
		cont.setConame(name);
		cont.setPriphone(priphone);
		cont.setSubphone(subphone);
		cont.setEmail(email);
		cont.setAddress(address);
		cont.setUnused(unused);
		cont.setOpening(open);
		cont.setWeekday(weekday);
		cont.setWeekend(weekend);
		cont.setAboutus(about);
		cont.setLatitude(lati);
		cont.setLogitude(logi);
		System.out.println(name);
		service.edit(cont);
		return "redirect:/contact";
	}
	
	@RequestMapping(value = "/contact/delete/{id}", method = RequestMethod.GET)
	public String delContact(@PathVariable("id") String id) {
		service.delete(Integer.parseInt(id));
		return "redirect:/contact";
	}
}













