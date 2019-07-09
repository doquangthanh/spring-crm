package com.aitech.springapp.dao;

import java.util.List;

import com.aitech.springapp.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);
	
	public List<Customer> getCustomersByPage(int pageNumber);
	
	public long getCustomersCount();

	List<Customer> searchCustomers(String theSearchName);
	
}
