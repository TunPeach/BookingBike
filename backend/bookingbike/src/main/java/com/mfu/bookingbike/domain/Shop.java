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

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	 public Set<Bike> getBikes() {
	    return this.bikes;
	}
}