package vanh.kits3.livedinner.dao;

import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

import vanh.kits3.livedinner.vo.Book;
import vanh.kits3.livedinner.vo.Contact;

@Repository
public class ContactDAO {
private static SqlSessionFactory factory = null;
	
	private static SqlSessionFactory getInstance() {
		if(factory == null) {
			try {
				Reader resource = Resources.getResourceAsReader("mybatis/mybatis-config.xml");
				factory = new SqlSessionFactoryBuilder().build(resource);
				resource.close(); // close file
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return factory;
	} // end getInstance
	
	public List<Contact> selectAll() {
		SqlSession session = getInstance().openSession();// connecting DB 
		return session.selectList("mappers.contactMapper.selectAll");
	}
	
	public Contact selectOne(int id) {
		SqlSession session = getInstance().openSession();// connecting DB 
		return (Contact) session.selectOne("mappers.contactMapper.selectOne", id);
	}
	
	public void insert(Contact cont) {
		SqlSession session = getInstance().openSession();// connecting DB 
		session.insert("mappers.contactMapper.insert", cont);
		session.commit();
	}
	
	public void update(Contact cont) {
		SqlSession session = getInstance().openSession();// connecting DB 
		session.update("mappers.contactMapper.update", cont);
		session.commit();
	}
	
	public void delete(int id) {
		SqlSession session = getInstance().openSession();// connecting DB 
		session.delete("mappers.contactMapper.delete", id);
		session.commit();
	}
	
}
