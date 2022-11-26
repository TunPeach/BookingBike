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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
public class ShopController {
  
  @Autowired
  private ShopRepository shopRepo;
  
  @GetMapping("/shop")
  public ResponseEntity<List<Shop>> getAllShops() {
	  try {
		  List<Shop> shopList = new ArrayList<>();
		  shopRepo.findAll().forEach(shopList::add);
		  
		  if(shopList.isEmpty()) {
			  return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		  }
		  return new ResponseEntity<>(shopList, HttpStatus.OK);
	  }catch(Exception e) {
		  return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	  }
  }
  
  @GetMapping("/shop/{id}")
  public ResponseEntity<Shop> getShopById(@PathVariable Long id) {
	  Optional<Shop> shopData = shopRepo.findById(id);
	  
	  if(shopData.isPresent()) {
		  return new ResponseEntity<>(shopData.get(), HttpStatus.OK);
	  }
	  return new ResponseEntity<>(HttpStatus.NOT_FOUND);
  }
  
  @PostMapping("/shop")
  public ResponseEntity<Shop> addShop(@RequestBody Shop shop) {
	  Shop shopObj = shopRepo.save(shop);
	  
	  return new ResponseEntity<>(shopObj, HttpStatus.OK);
  }
  
  @PostMapping("/shop/{id}")
  public ResponseEntity<Shop> updateShopById(@PathVariable Long id, @RequestBody Shop newShopData) {
	  Optional<Shop> oldShopData = shopRepo.findById(id);
	  
	  if(oldShopData.isPresent()) {
		  Shop updatedShopData = oldShopData.get();
		  updatedShopData.setName(newShopData.getName());
		  
		  Shop shopObj = shopRepo.save(updatedShopData);
		  return new ResponseEntity<>(shopObj, HttpStatus.OK);
	  }
	  return new ResponseEntity<>(HttpStatus.NOT_FOUND);
  }
  
  @DeleteMapping("/shop/{id}")
  public ResponseEntity<HttpStatus> deleteShopById(@PathVariable Long id) {
	  shopRepo.deleteById(id);
	  return new ResponseEntity<>(HttpStatus.OK);
  }
}