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
import com.mfu.bookingbike.domain.*;

@RestController
public class BikeController {
  
  @Autowired
  private BikeRepository bikeRepo;
  
  @Autowired
  private BookingRepository bookingRepo;
  
  @Autowired
  private ShopRepository shopRepo;
  
  @GetMapping("/bikes")
  public ResponseEntity<List<Bike>> getAllBikes() {
	  try {
		  List<Bike> bikeList = new ArrayList<>();
		  bikeRepo.findAll().forEach(bikeList::add);
		  
		  if(bikeList.isEmpty()) {
			  return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		  }
		  return new ResponseEntity<>(bikeList, HttpStatus.OK);
	  }catch(Exception e) {
		  return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	  }
  }
  
  @GetMapping("/bikes/{id}")
  public ResponseEntity<Bike> getBikeById(@PathVariable Long id) {
	  Optional<Bike> bikeData = bikeRepo.findById(id);
	  
	  if(bikeData.isPresent()) {
		  return new ResponseEntity<>(bikeData.get(), HttpStatus.OK);
	  }
	  return new ResponseEntity<>(HttpStatus.NOT_FOUND);
  }
  
  @PostMapping("/bikes")
  public ResponseEntity<Bike> addBike(@RequestBody Bike bike) {
	  Bike bikeObj = bikeRepo.save(bike);
	  
	  return new ResponseEntity<>(bikeObj, HttpStatus.OK);
  }
  
  @PostMapping("/bikes/{id}")
  public ResponseEntity<Bike> updateBikeById(@PathVariable Long id, @RequestBody Bike newBikeData) {
	  Optional<Bike> oldBikeData = bikeRepo.findById(id);
	  
	  if(oldBikeData.isPresent()) {
		  Bike updatedBikeData = oldBikeData.get();
		  updatedBikeData.setName(newBikeData.getName());
		  updatedBikeData.setDesc(newBikeData.getDesc());
		  
		  Bike bikeObj = bikeRepo.save(updatedBikeData);
		  return new ResponseEntity<>(bikeObj, HttpStatus.OK);
	  }
	  return new ResponseEntity<>(HttpStatus.NOT_FOUND);
  }
  
  @PutMapping("/bikes/{bikeId}/booking/{bookingId}")
  Bike addBikeToBooking(@PathVariable Long bikeId, @PathVariable Long bookingId) {
	  Bike bike = bikeRepo.findById(bikeId).get();
      Booking booking = bookingRepo.findById(bookingId).get();
      bike.bookingBike(booking);
      return bikeRepo.save(bike);
  }
  
  @PutMapping("/bikes/{bikeId}/shop/{shopId}")
  Bike addShopToBike(@PathVariable Long bikeId, @PathVariable Long shopId) {
      Bike bike = bikeRepo.findById(bikeId).get();
      Shop shop = shopRepo.findById(shopId).get();
      bike.setShop(shop);
      return bikeRepo.save(bike);
  }
  
  @DeleteMapping("/bikes/{id}")
  public ResponseEntity<HttpStatus> deleteBikeById(@PathVariable Long id) {
	  bikeRepo.deleteById(id);
	  return new ResponseEntity<>(HttpStatus.OK);
  }
}