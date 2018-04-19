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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import eMarket.entity.security.Role;

@Transactional
@Controller
@RequestMapping("admin/role")
public class RoleMgrController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("delete")
	public String delete(ModelMap model, Role role) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(role);
			t.commit();
			model.addAttribute("message", "Delete Secessfully !");
			model.addAttribute("model", new Role());
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Delete fail !");
			model.addAttribute("model", role);
		} finally {
			session.close();
		}
		model.addAttribute("items", getRoles());
		return "admin/role";
	}

	@RequestMapping("update")
	public String update(ModelMap model, Role role) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(role);
			t.commit();
			model.addAttribute("message", "Update Secessfully!!");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Update fail!!");
		} finally {
			session.close();
		}
		model.addAttribute("model", role);
		model.addAttribute("items", getRoles());
		return "admin/role";
	}

	@RequestMapping("edit/{id}")
	public String edit(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.getCurrentSession();
		Role role = (Role) session.get(Role.class, id);

		model.addAttribute("model", role);
		model.addAttribute("items", getRoles());
		return "admin/role";
	}

	@RequestMapping("insert")
	public String insert(ModelMap model, Role role) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(role);
			t.commit();
			model.addAttribute("message", "Insert Secessfully !");
			model.addAttribute("model", new Role());
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Insert fail !");
			model.addAttribute("model", role);
		} finally {
			session.close();
		}
		model.addAttribute("items", getRoles());
		return "admin/role";
	}

	@RequestMapping("index")
	public String index(ModelMap model) {
		Role role = new Role();
		model.addAttribute("model", role);

		model.addAttribute("items", getRoles());
		return "admin/role";
	}

	@SuppressWarnings("unchecked")
	private List<Role> getRoles() {
		String hql = "FROM Role";
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<Role> list = query.list();
		return list;
	}
}
