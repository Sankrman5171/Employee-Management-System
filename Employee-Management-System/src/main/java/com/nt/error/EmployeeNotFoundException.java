package com.nt.error;

public class EmployeeNotFoundException extends RuntimeException 
{

	public EmployeeNotFoundException() 
	{
		
	}
	
	public EmployeeNotFoundException(String msg) 
	{
		super(msg);
	}
	
}
