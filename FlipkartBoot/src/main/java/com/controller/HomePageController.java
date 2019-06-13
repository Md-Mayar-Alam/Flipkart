package com.controller;

import java.util.List;

import org.junit.Assert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.L1Category;
import com.service.L1CategoryService;

@Controller
@RequestMapping("/")
public class HomePageController {

	@Autowired
	L1CategoryService l1CategoryService;
	
	@RequestMapping(method= RequestMethod.GET)
	public String returnHomePage(Model model) {
		L1Category l1Optional= l1CategoryService.findById(6001L).orElseThrow(() -> new RuntimeException("Not found"));
		
		System.out.println(l1Optional.getL1CategoryName());
		
		List<L1Category> l1CategoryList= l1CategoryService.findAllL1Category();
		
		if(l1CategoryList != null && l1CategoryList.size() > 0) {
			model.addAttribute("l1CategoryList", l1CategoryList);
		}
		
		return "homepage";
	}
}
