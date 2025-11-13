package com.nt.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nt.service.IEmployeeMgmtService;
import com.nt.vo.EmployeeVO;

@Controller
public class EmployeeOperationController 
{
	@Autowired
	private IEmployeeMgmtService empService;
	
	@GetMapping("/")
	public String showHomePage()
	{
		// return LVN
		return "welcome";
	}
	
	@GetMapping("/report")
	public String showReport(Map<String, Object>map)
	{
		try
		{
			System.out.println("showReport Method ");
			// use service
			List<EmployeeVO> listVO = empService.showAllEmployee();
			// keep the result in model attribute
			map.put("empsList", listVO);
			// return LVN
			return "show_report";
		}
		catch(Exception e)
		{
			return "error";
		}
	}
	
	@GetMapping("/add")
	public String showAddEmployeeFormPage(@ModelAttribute("emp") EmployeeVO empVO)
	{
		// return LVN
		return "register_employee";
	}
	
	@PostMapping("/add")
	public String processAddEmployeeFormPageSubmission(RedirectAttributes attrs,
			@ModelAttribute("emp") EmployeeVO empVO)
	{
		try
		{
			// use service
			String resultMsg = empService.registerEmployee(empVO);
			// keep the result in model attribute
			attrs.addFlashAttribute("resultMsg", resultMsg);
			// return LVN
			return "redirect:report";
		}
		catch(Exception e)
		{
			return "error";
		}
	}
	
	@GetMapping("/edit")
	public String showEditEmployeeFormPage(@ModelAttribute("emp")EmployeeVO empVO,@RequestParam("no")int no)
	{
		try
		{
		
			// use service
			EmployeeVO empVO1 = empService.showEmployeeById(no);
			// Copy empVO1 obj to empVo obj
			BeanUtils.copyProperties(empVO1, empVO);
			// return LVN
			return "edit_employee_form";
		}
		catch(Exception e)
		{
			return "error";
		}
	}
	
	@PostMapping("/edit")
	public String editEmployee(@ModelAttribute("emp")EmployeeVO vo,RedirectAttributes attrs)
	{
		try
		{
			// use service
			String msg = empService.editEmployee(vo);
			// keep result in Flash Attribute
			attrs.addFlashAttribute("resultMsg", msg);
			// Redirect the request
			return "redirect:report";
		}
		catch(Exception e)
		{
			return "error";
		}
	}
	
	@GetMapping("/delete")
	public String removeEmployee(@RequestParam("no")int no,RedirectAttributes attrs)
	{
		try
		{
			// use service
			String msg = empService.removeEmployeeById(no);
			// keep result in flash attribute
			attrs.addFlashAttribute("resultMsg", msg);
			// redirect the request
			return "redirect:report";
		}
		catch(Exception e)
		{
			return "error";
		}
	}
	
}
