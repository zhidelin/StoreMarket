package com.huangyuan3h.StoreMarket.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.huangyuan3h.StoreMarket.DAO.AccountDAO;

@Controller
public class RealTimeStore {
	
    @Autowired
    private AccountDAO memberDao;
    
	@RequestMapping(value = "/reslTime", method = RequestMethod.GET)
	public String realTimeStore(Model model){		
		model.addAttribute("member", memberDao.findAllOrderedByName());
		return "RealTimeWeb";
	}

}
