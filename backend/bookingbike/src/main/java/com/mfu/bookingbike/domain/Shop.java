package com.mfu.bookingbike.domain;

import java.util.Set;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "SHOP")
public class Shop {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="SHOP_ID")
	private Long id;

	@Column(name="SHOP_NAME")
	private String name;
	
	//@JsonIgnore
	@OneToMany(mappedBy = "shop")
	private Set<Bike> bikes;
	
	public Shop() {}

	public Shop(Long id, String name) {
		this.id = id;
		this.name = name;
	}
	
	public Shop(String name) {
		this(null,name);
	}

	public Long getShopId() {
		return id;
	}

	public void setShopId(Long id) {
		this.id = id;
	}

	public String getShopName() {
		return name;
	}

	public void setShopName(String name) {
		this.name = name;
	}
	
	public Set<Bike> getBikes() {
	    return this.bikes;
	}
}