package eMarket.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Hibernate;
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

import eMarket.component.ShoppingCart;
import eMarket.entity.Customer;
import eMarket.entity.Order;
import eMarket.entity.OrderDetail;
import eMarket.entity.Product;

@Transactional
@Controller
@RequestMapping("user/order")
public class OrderController {
	@Autowired
	SessionFactory factory;
	
	@Autowired
	ShoppingCart cart;
	
	@RequestMapping("checkout")
	public String checkout(ModelMap model, 
			HttpSession httpSession) {
		Customer user = (Customer) httpSession.getAttribute("user");
		
		Order order = new Order();
		order.setCustomer(user);
		order.setAmount(cart.getAmount());
		order.setOrderDate(new Date());
		order.setReceiver(user.getFullname());
		
		model.addAttribute("order", order);
		
		return "user/order/checkout";
	}
	
	@RequestMapping("purchase")
	public String purchase(ModelMap model, 
			HttpSession httpSession, 
			@ModelAttribute("order") Order order) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(order);
			for(Product p : cart.getItems()){
				OrderDetail detail = new OrderDetail();
				detail.setDiscount(p.getDiscount());
				detail.setOrder(order);
				detail.setProduct(p);
				detail.setQuantity(p.getQuantity());
				detail.setUnitPrice(p.getUnitPrice());
				System.out.println("run"+cart.getItems());
				session.save(detail);
			}
			t.commit();
			cart.clear();
			
			model.addAttribute("message", "Dat hang thanh cong!");
			return "redirect:/user/order/list.php";
		} catch (Exception e) {
			System.out.println("runqq");
			e.printStackTrace();
			t.rollback();
			model.addAttribute("message", "Dat hang that bai!");
		} finally{
			session.close();
		}
		return "user/order/checkout";
	}
	
	@RequestMapping("list")
	public String list(ModelMap model, 
			HttpSession httpSession) {
		Customer user = (Customer) httpSession.getAttribute("user");
		
		Session session = factory.getCurrentSession();
		String hql = "FROM Order WHERE customer.id=:cid";
		Query query = session.createQuery(hql);
		query.setParameter("cid", user.getId());
		List<Order> list = query.list();
		
		model.addAttribute("orders", list);
		return "user/order/list";
	}
	
	@RequestMapping("detail")
	public String detail(ModelMap model, 
			@RequestParam("id") Integer id) {
		
		Session session = factory.getCurrentSession();
		Order order = (Order) session.get(Order.class, id);
		Hibernate.initialize(order.getOrderDetails());
		
		model.addAttribute("order", order);
		return "user/order/detail";
	}
	
	@RequestMapping("items")
	public String items(ModelMap model, 
			HttpSession httpSession) {
		Customer user = (Customer) httpSession.getAttribute("user");
		
		Session session = factory.getCurrentSession();
		String hql = "SELECT DISTINCT d.product " +
				"FROM OrderDetail d " +
				"WHERE d.order.customer.id=:cid";
		Query query = session.createQuery(hql);
		query.setParameter("cid", user.getId());
		List<Product> list = query.list();
		
		model.addAttribute("prods", list);
		return "user/product/list";
	}
}
