package com.huangyuan3h.StoreMarket.controller;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.huangyuan3h.StoreMarket.DAO.AccountDAO;
import com.huangyuan3h.StoreMarket.model.Account;

@Controller
public class HomeController {

	@Autowired
	private AccountDAO accountDao;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute("Login", new Account()); 
		
		return "home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String Login( @ModelAttribute("Login") Account account,
			Model model) {		
		
		List<Account> list= accountDao.Login(account.getUserName(), account.getPassword());
	
		
		return "redirect:/";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String addAccount(@Valid @ModelAttribute("register") Account account,
			Model model, BindingResult result) {		
		if (!result.hasErrors()) {
			accountDao.register(account);
		}
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model)
	{
		model.addAttribute("register", new Account()); 
		
		return "register";
	}

}
