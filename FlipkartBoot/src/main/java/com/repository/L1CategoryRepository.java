package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.model.L1Category;

@Repository
public interface L1CategoryRepository extends JpaRepository<L1Category, Long>{
	
}
