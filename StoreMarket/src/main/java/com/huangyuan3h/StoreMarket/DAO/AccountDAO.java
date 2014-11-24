package com.huangyuan3h.StoreMarket.DAO;

import java.util.List;
import com.huangyuan3h.StoreMarket.model.Account;

public interface AccountDAO {

	
	//basic function
	public Account FindByID(Long ID);
	
	public List<Account> FindByName(String UserName);
	
	public List<Account> FindByEmail(String Email);
	
	public List<Account> findAllOrderedByName(); 
	
	
	//
	public void register(Account account); 
	
	public List<Account> Login(String UserName,String Password);
	
}
