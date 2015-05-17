package com.huangyuan3h.StoreMarket.Rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huangyuan3h.StoreMarket.DAO.AccountDAO;
import com.huangyuan3h.StoreMarket.model.Account;

@Controller
public class AccountREST {

	@Autowired
	AccountDAO accountDao;

	@RequestMapping(value = "/rest/account/{id}", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody Account lookupAccountById(@PathVariable("id") long id) {
		return accountDao.FindByID(id);
	}

	@RequestMapping(value = "/rest/account/add", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody boolean addAccount(Account account) {
		List<Account> temp = accountDao.FindByName(account.getUserName());

		if (temp.isEmpty() && !account.getUserName().isEmpty() && !account.getPassword().isEmpty() && !account.getEmail().isEmpty()) {
			accountDao.register(account);
			return true;

		}

		return false;

	}
	
	@RequestMapping(value = "/rest/account/update", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody void updateAccount(Account account) {
		accountDao.update(account);
	}
	
	@RequestMapping(value = "/rest/account/delete", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody void deleteAccount(@PathVariable("id") long id) {
		accountDao.delete(id);		
	}
	
	

}
