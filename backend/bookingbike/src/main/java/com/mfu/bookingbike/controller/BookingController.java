package com.mfu.bookingbike.controller;

import com.mfu.bookingbike.repository.*;
import com.mfu.bookingbike.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
public class BookingController {
  
  @Autowired
  private BookingRepository bookingRepo;
  
  @Autowired
  private BikeRepository bikeRepo;
  
  @Autowired
  private UserRepository userRepo;
  
  @GetMapping("/booking")
  public ResponseEntity<List<Booking>> getAllBookings() {
	  try {
		  List<Booking> bookingList = new ArrayList<>();
		  bookingRepo.findAll().forEach(bookingList::add);
		  
		  if(bookingList.isEmpty()) {
			  return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		  }
		  return new ResponseEntity<>(bookingList, HttpStatus.OK);
	  }catch(Exception e) {
		  return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	  }
  }
  
  @GetMapping("/booking/{id}")
  public ResponseEntity<Booking> getBookingById(@PathVariable Long id) {
	  Optional<Booking> bookingData = bookingRepo.findById(id);
	  
	  if(bookingData.isPresent()) {
		  return new ResponseEntity<>(bookingData.get(), HttpStatus.OK);
	  }
	  return new ResponseEntity<>(HttpStatus.NOT_FOUND);
  }
  
  @PostMapping("/booking")
  public ResponseEntity<Booking> addBooking(@RequestBody Booking booking) {
	  Booking bookingObj = bookingRepo.save(booking);
	  
	  return new ResponseEntity<>(bookingObj, HttpStatus.OK);
  }
  
  @PostMapping("/booking/{id}")
  public ResponseEntity<Booking> updateBookingById(@PathVariable Long id, @RequestBody Booking newBookingData) {
	  Optional<Booking> oldBookingData = bookingRepo.findById(id);
	  
	  if(oldBookingData.isPresent()) {
		  Booking updatedBookingData = oldBookingData.get();
		  updatedBookingData.setDay(newBookingData.getDay());
		  updatedBookingData.setMonth(newBookingData.getMonth());
		  updatedBookingData.setYear(newBookingData.getYear());
		  
		  Booking bookingObj = bookingRepo.save(updatedBookingData);
		  return new ResponseEntity<>(bookingObj, HttpStatus.OK);
	  }
	  return new ResponseEntity<>(HttpStatus.NOT_FOUND);
  }

  
  /*@PutMapping("/booking/{bookingId}/bikes/{bikeId}")
  Booking addBookingToBike(@PathVariable Long bookingId, @PathVariable Long bikeId) {
	  Booking booking = bookingRepo.findById(bookingId).get();
      Bike bike = bikeRepo.findById(bikeId).get();
      booking.bookBikes(bike);
      return bookingRepo.save(booking);
  }*/
  
  @PutMapping("/booking/{bookingId}/user/{userId}")
  Booking addUserToBooking(@PathVariable Long bookingId, @PathVariable Long userId) {
      Booking booking = bookingRepo.findById(bookingId).get();
      User user = userRepo.findById(userId).get();
      booking.setUser(user);
      return bookingRepo.save(booking);
  }
  
  @DeleteMapping("/booking/{id}")
  public ResponseEntity<HttpStatus> deleteBookingById(@PathVariable Long id) {
	  bookingRepo.deleteById(id);
	  return new ResponseEntity<>(HttpStatus.OK);
  }
}