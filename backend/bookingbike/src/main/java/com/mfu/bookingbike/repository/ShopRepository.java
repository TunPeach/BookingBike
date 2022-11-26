package com.mfu.bookingbike.repository;

import com.mfu.bookingbike.domain.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ShopRepository extends JpaRepository<Shop, Long> {

  List<Shop> findById(long id);
}
