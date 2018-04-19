package eMarket.controller;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import eMarket.entity.Category;
import eMarket.entity.Product;
import eMarket.entity.SubCategory;
import eMarket.util.HibernateUtils;

@Transactional
@Controller
@RequestMapping("user/home")
public class HomeController {

	@Autowired
	SessionFactory factory;

	@RequestMapping("index")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();

		String hql2 = "From Product";
		Query query2 = session.createQuery(hql2);
		List<Product> list2 = query2.list();
		model.addAttribute("prods", list2);

		// Hiện hàng đặc biệt Special
		String hql3 = "From Product WHERE special=true";
		Query query3 = session.createQuery(hql3);
		List<Product> list3 = query3.list();

		model.addAttribute("specials", list3);
		return "user/home/index";
	}

}
