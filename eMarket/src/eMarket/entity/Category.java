package eMarket.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Categories")
public class Category {
	@Id
	Integer id;
	String nameVN;
	String name;

	@OneToMany(mappedBy = "category")
	Collection<Product> products;
	
	@OneToMany(mappedBy = "category")
	Collection<SubCategory> subCategories;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNameVN() {
		return nameVN;
	}

	public void setNameVN(String nameVN) {
		this.nameVN = nameVN;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Collection<Product> getProducts() {
		return products;
	}

	public void setProducts(Collection<Product> products) {
		this.products = products;
	}

	public Collection<SubCategory> getSubCategories() {
		return subCategories;
	}

	public void setSubCategories(Collection<SubCategory> subCategories) {
		this.subCategories = subCategories;
	}

	

	

}
