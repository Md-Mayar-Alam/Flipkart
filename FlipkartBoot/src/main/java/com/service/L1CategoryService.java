package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.L1Category;
import com.repository.L1CategoryRepository;

@Service
public class L1CategoryService {

	@Autowired
	L1CategoryRepository l1CategoryRepository;
	
	public Optional<L1Category> findById(Long l1CategoryId) {
		return l1CategoryRepository.findById(l1CategoryId);
	}
	
	public List<L1Category> findAllL1Category(){
		return l1CategoryRepository.findAll();
	}
}
