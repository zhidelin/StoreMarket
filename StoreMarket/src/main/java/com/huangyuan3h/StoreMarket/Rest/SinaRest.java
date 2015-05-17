package com.huangyuan3h.StoreMarket.Rest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class SinaRest {
	
	
	@RequestMapping(value = "/rest/store/{id}", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody void deleteAccount(@PathVariable("id") String  id) {
		
	}
	

}
