package vanh.kits3.livedinner.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vanh.kits3.livedinner.dao.ContactDAO;
import vanh.kits3.livedinner.vo.Contact;

@Service
public class ContactService {
	ContactDAO dao = new ContactDAO();
	
	public List<Contact> findAll() {
		List<Contact> list = dao.selectAll();
		return list;
	}
	
	public Contact findOne(int id) {
		Contact cont = dao.selectOne(id);
		return cont;
	}
	
	public void add(Contact cont) {
		dao.insert(cont);
	}
	
	public void update(Contact cont) {
		dao.update(cont);
	}
	
	public void delete(int id) {
		dao.delete(id);
	}
	
	public String show(List<Contact> list) {
		String form ="";
		for (int i = 0; i < list.size(); ++i) {
			form += "<tr>";
			form += "<td>"+list.get(i).getCoid()+"</td>";
			form += "<td>"+list.get(i).getConame()+"</td>";
			form += "<td>"+list.get(i).getPriphone()+"</td>";
			form += "<td>"+list.get(i).getSubphone()+"</td>";
			form += "<td>"+list.get(i).getEmail()+"</td>";
			form += "<td>"+list.get(i).getAddress()+"</td>";
			form += "<td>"+list.get(i).getUnused()+"</td>";
			form += "<td>"+list.get(i).getOpening()+"</td>";
			form += "<td>"+list.get(i).getWeekday()+"</td>";
			form += "<td>"+list.get(i).getWeekend()+"</td>";
			form += "<td>"+list.get(i).getAboutus()+"</td>";
			form += "<td>"+list.get(i).getLatitude()+"</td>";
			form += "<td>"+list.get(i).getLogitude()+"</td>";
			form += "<td><a href='contact/edit/"+list.get(i).getCoid()+"' class='btn btn-primary'><i class='fas fa-user-edit ml-2'></i></a></td>";
			form += "<td><a href='contact/delete/"+list.get(i).getCoid()+"' class='btn btn-primary'><i class='fas fa-user-times ml-2'></i></a></td>";
			form += "</tr>";
		}
		
		return form;
	}
	
	
}
