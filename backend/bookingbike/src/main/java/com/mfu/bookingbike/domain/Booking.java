package com.mfu.bookingbike.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "BOOKING")
public class Booking {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="BOOKING_ID")
	private Long id;

	@Column(name="DATE_DAY")
	private String day;
	
	@Column(name="DATE_MONTH")
	private String month;
	
	@Column(name="DATE_YEAR")
	private String year;
	
	@ManyToOne
	@JoinColumn(name="USER_ID")
	private User user;
	
	@ManyToOne
	@JoinColumn(name="BIKE_ID")
	private Bike bookBike;
	
	public Booking(){}
	
	public Booking(Long id, String day, String month, String year){
		this.id = id;
		this.day = day;
		this.month = month;
		this.year = year;
	}
	
	public Booking(String day, String month, String year){
		this(null,day, month, year);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}


	
	public Bike getBookBike() {
		return bookBike;
	}

	public void setBookBike(Bike bookBike) {
		this.bookBike = bookBike;
	}

	public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}