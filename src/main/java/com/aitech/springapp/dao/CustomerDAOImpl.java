package com.aitech.springapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

import com.aitech.springapp.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	@PersistenceContext
	private EntityManager entityManager;
	
	// inject page size from props	
	@Value("10")
	private int pageSize;
	
	@Override
	public List<Customer> getCustomers() {
		
		//create a query ... sort by last name
		Query<Customer> theQuery = 
				entityManager.unwrap(Session.class).createQuery("FROM Customer ORDER BY lastName", 
										    Customer.class);
		
		//execute query and get result list
		List<Customer> customers = theQuery.getResultList();
		
		
		//return the list of customers		
		return customers;
	}

	@Override
	public void saveCustomer(Customer theCustomer) {
		
		//save/update the customer
		entityManager.unwrap(Session.class).saveOrUpdate(theCustomer);
	}

	@Override
	public Customer getCustomer(int theId) {
		
		//now retrieve/read the object from the database using the primary key
		Customer theCustomer = entityManager.unwrap(Session.class).get(Customer.class, theId);
		
		return theCustomer;
	}

	@Override
	public void deleteCustomer(int theId) {
				
		//delete the object using primary key
		Query<?> theQuery = 
				entityManager.unwrap(Session.class).createQuery("DELETE FROM Customer WHERE id=:customerId");
		theQuery.setParameter("customerId", theId);
		
		theQuery.executeUpdate();
	}

	@Override
    public List<Customer> searchCustomers(String theSearchName) {

        
        Query<Customer> theQuery = null;
        
        //
        // only search by name if theSearchName is not empty
        //
        if (theSearchName != null && theSearchName.trim().length() > 0) {

            // search for firstName or lastName ... case insensitive
            theQuery = 
            		entityManager.unwrap(Session.class).createQuery(
            				"from Customer where lower(firstName) like :theName or lower(lastName) like :theName"
            				, Customer.class);
            theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");

        }
        else {
            // theSearchName is empty, return null for higher level redirection
            return null;            
        }
        
        // execute query and get result list                
        // return the results        
        return theQuery.getResultList();
        
    }
	
	@Override
	public List<Customer> getCustomersByPage(int pageNumber) {
		

		Query<Customer> query = entityManager.unwrap(Session.class).createQuery("From Customer order by lastName", Customer.class);
		query.setFirstResult((pageNumber-1) * pageSize);
		query.setMaxResults(pageSize);
		
		List<Customer> customers = query.getResultList();
		
		return customers;
	}

	@Override
	public long getCustomersCount() {
		
		Query<Long> countQuery = entityManager.unwrap(Session.class).createQuery("select count(1) from Customer", Long.class);
		long count = countQuery.getSingleResult().longValue();
		
		return count;
	}
	
}
