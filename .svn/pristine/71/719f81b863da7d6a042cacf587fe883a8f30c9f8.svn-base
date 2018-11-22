package cn.zzpigt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import cn.zzpigt.bean.Department;
import cn.zzpigt.service.DepartmentService;

@Controller
@RequestMapping("department")
public class DepartmentController {
	
	@Autowired
	private DepartmentService ds;
	
	/**
	 * 进入这个list有几种情况：1）点击右侧的链接，get方式提交部门Id 2）分页和搜索，这个可能是表单提交post
	 * @param departmentid
	 * @return
	 *//*
	@RequestMapping(value="/list.action",method=RequestMethod.GET)
	public String list(Integer departmentid){
		//去业务逻辑层拿数据,1）点击右侧的链接，get方式提交部门Id
		
		return "/jsp/department/list.jsp";
	}*/
	
	
	@RequestMapping(value="/getDepartment.action", produces="application/json; charset=utf-8")
	@ResponseBody
	public String getDepartment(){
		List<Department> list = ds.getAllDepartment();
		String json = new Gson().toJson(list);
		System.out.println(json);
		return json;
	}

}
