package cn.zzpigt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.zzpigt.bean.Department;
import cn.zzpigt.mybatis.mapper.DepartmentMapper;
import cn.zzpigt.service.DepartmentService;

@Service
public class DepartmentServiceImpl implements DepartmentService {

	@Autowired
	private DepartmentMapper departmentMapper;
	
	@Override
	public List<Department> getAllDepartment() {
		return departmentMapper.selectByExample(null);
	}

}
