package eMarket.admin.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import eMarket.entity.Order;

@Transactional
@Controller("adminOrderController")
@RequestMapping("admin/order")
public class OrderController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("index")
	public String index(ModelMap model) {
		Order order = new Order();
		model.addAttribute("model", order);
		model.addAttribute("list", getItems());
		return "admin/order";
	}
	
	@RequestMapping("insert")
	public String insert(ModelMap model, 
			@ModelAttribute("model") Order order) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(order);
			t.commit();
			model.addAttribute("message", "Insert Successfully !");
			model.addAttribute("model", new Order());
		} 
		catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Insert fail !");
		}
		finally{
			session.close();
		}
		model.addAttribute("list", getItems());
		return "admin/order";
	}
	
	@RequestMapping("update")
	public String update(ModelMap model, 
			@ModelAttribute("model") Order order) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(order);
			t.commit();
			model.addAttribute("message", "Update Successfully !");
		} 
		catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Update fail !");
		}
		finally{
			session.close();
		}
		model.addAttribute("list", getItems());
		return "admin/order";
	}
	
	@RequestMapping("delete")
	public String delete(ModelMap model, 
			@ModelAttribute("model") Order order) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(order);
			t.commit();
			model.addAttribute("message", "Xoa thanh cong");
			model.addAttribute("model", new Order());
		} 
		catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Xoa that bai");
		}
		finally{
			session.close();
		}
		model.addAttribute("list", getItems());
		return "admin/order";
	}

	@RequestMapping("edit")
	public String edit(ModelMap model, 
			@RequestParam("id") Integer id) {
		Session session = factory.getCurrentSession();
		Order order = (Order) session.get(Order.class, id);
		model.addAttribute("model", order);
		model.addAttribute("list", getItems());
		return "admin/order";
	}
	public List<Order> getItems() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Order";
		Query query = session.createQuery(hql);
		List<Order> list = query.list();
		return list;
	}
}
