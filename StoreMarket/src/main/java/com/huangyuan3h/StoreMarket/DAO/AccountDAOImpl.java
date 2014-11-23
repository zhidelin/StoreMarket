package com.huangyuan3h.StoreMarket.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.huangyuan3h.StoreMarket.model.Account;

@Repository
@Transactional
public class AccountDAOImpl implements AccountDAO{
	
	@Autowired
	private EntityManager em;

	@Override
	public Account FindByID(Long ID) {
		return em.find(Account.class, ID);
	}

	@Override
	public List<Account> findAllOrderedByName() {
		CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Account> criteria = cb.createQuery(Account.class);
        Root<Account> account = criteria.from(Account.class);
        criteria.select(account).orderBy(cb.asc(account.get("UserName")));
        return em.createQuery(criteria).getResultList();
	}

	@Override
	public void register(Account account) {
		em.persist(account);
        return;
	}

	@Override
	public List<Account> FindByName(String UserName) {
		CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Account> criteria = cb.createQuery(Account.class);
        Root<Account> account = criteria.from(Account.class);
        Predicate condition=cb.equal(account.get("UserName"), UserName);
        criteria.select(account).where(condition).orderBy(cb.asc(account.get("UserName")));
		return em.createQuery(criteria).getResultList();
	}

	@Override
	public Account FindByEmail(String Email) {
		return em.find(Account.class, Email);
	}

}
