package com.mfu.bookingbike.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "BIKE")
public class Bike {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="BIKE_ID")
	private Long id;

	@Column(name="BIKE_NAME")
	private String name;
	
	@Column(name="BIKE_DESC")
	private String desc;
	
	@JsonIgnore
	@OneToMany(mappedBy = "bookBike")
    private Set<Booking> bookingIn;
	
	@JsonIgnore
	@ManyToOne
	@JoinColumn(name="SHOP_ID")
	private Shop shop;
	
	public Bike() {}

	public Bike(Long id, String name, String desc) {
		this.id = id;
		this.name = name;
		this.desc = desc;
	}
	
	public Bike(String name, String desc) {
		this(null,name,desc);
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

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	public Set<Booking> getBookingIn() {
		return bookingIn;
	}

	public void bookingBike(Booking booking) {
		bookingIn.add(booking);
	}
	
	public Shop getShop() {
        return shop;
    }

    public void setShop(Shop shop) {
        this.shop = shop;
    }
}