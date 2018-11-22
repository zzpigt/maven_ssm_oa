<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/skin_/table.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/jquery.grid.css" />

<title>表格</title>
</head>

<body>
	<div id="container">
		<div id="hd"></div>
		<div id="bd">
			<div id="main">
				<div class="search-box ue-clear">
					<div class="search-area">
						<div class="kv-item ue-clear">
							<label>选择时间：</label>
							<div class="kv-item-content ue-clear">
								<span class="choose"> <span class="checkboxouter">
										<input type="radio" name="time" /> <span class="radio"></span>
								</span> <span class="text">全部</span>
								</span> <span class="choose"> <span class="checkboxouter">
										<input type="radio" name="time" /> <span class="radio"></span>
								</span> <span class="text">近3天</span>
								</span> <span class="choose"> <span class="checkboxouter">
										<input type="radio" name="time" /> <span class="radio"></span>
								</span> <span class="text">近一周</span>
								</span> <span class="choose"> <span class="checkboxouter">
										<input type="radio" name="time" /> <span class="radio"></span>
								</span> <span class="text">近一月</span>
								</span> <span class="choose"> <span class="checkboxouter">
										<input type="radio" name="time" data-define="define" /> <span
										class="radio"></span>
								</span> <span class="text">自定义</span>
								</span> <span class="define-input"> <input type="text"
									placeholder="开始时间" /> <span class="division"></span> <input
									type="text" placeholder="结束时间" />
								</span>
							</div>
						</div>
						<div class="kv-item ue-clear">
							<label>选择类型:</label>
							<div class="kv-item-content">
								<select>
									<option>全部</option>
									<option>全部</option>
									<option>全部</option>
								</select>
							</div>
						</div>
					</div>
					<div class="search-button">
						<input class="button" type="button" value="搜索一下" />
					</div>
				</div>

				<div class="table">
					<div class="opt ue-clear">
						<span class="sortarea"> <span class="sort"> <label>排序：</label>
								<span class="name"> <i class="icon"></i> <span
									class="text">名称</span>
							</span>
						</span> <i class="list"></i> <i class="card"></i>
						</span> <span class="optarea"> <a href="javascript:;" class="add">
								<i class="icon"></i> <span class="text">添加</span>
						</a> <a href="javascript:;" class="delete"> <i class="icon"></i> <span
								class="text">删除</span>
						</a> <a href="javascript:;" class="statistics"> <i class="icon"></i>
								<span class="text">统计</span>
						</a> <a href="javascript:;" class="config"> <i class="icon"></i> <span
								class="text">配置</span>
						</a>
						</span>
					</div>

					<div class="grid"></div>

					<div class="pagination2">
						<nav aria-label="Page navigation">
						<ul class="pagination">
							<li><a href="${pageContext.request.contextPath}/user/list.action?pageNum=${pageBean.pageNum-1}&department.departmentid=${queryVo.department.departmentid}" aria-label="Previous"> <span
									aria-hidden="true">上一页</span>
							</a></li>
							
							<c:forEach begin="1" end="${pageBean.totalPage}" varStatus="i">
							<li><a href="${pageContext.request.contextPath}/user/list.action?pageNum=${i.count}&department.departmentid=${queryVo.department.departmentid}">${i.count}</a></li>
							</c:forEach>
							
							
							<li><a href="${pageContext.request.contextPath}/user/list.action?pageNum=${pageBean.pageNum>=pageBean.totalPage?pageBean.pageNum:pageBean.pageNum+1}&department.departmentid=${queryVo.department.departmentid}" aria-label="Next"> 
							<span aria-hidden="true">下一页</span>
							</a></li>
						</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/global.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.select.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/core.js"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.pagination.js"></script>
 --%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.grid.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/WdatePicker.js"></script>
<script type="text/javascript">
	


	$('select').select();
	var head = [ {
		label : 'ID',
		width : 100,
		sortable : 'default',
		name : 'id'
	}, {
		label : '用户名',
		width : 150,
		sortable : 'default',
		name : 'name'
	}, {
		label : '昵称',
		width : 110
	}, {
		label : '领导人姓名',
		width : 100
	}, {
		label : '所在部门',
		minWidth : 120
	}, {
		label : '所属角色',
		width : 180
	}, {
		label : '是否审核',
		width : 100
	} ];

	var oper = [ {
		label : '删除',
		onclick : function() {
			alert('删除');
		}
	}, {
		label : '编辑',
		onclick : function() {
			alert('编辑')
		}
	} ]
	var tbody = [
			<c:forEach items="${pageBean.list}" var="userVo"  >

			[
					"${userVo.userid}",
					"${userVo.uname}",
					"${userVo.nickname}",
					"${userVo.leaderid.nickname}",
					"${userVo.department.departmentname}",

					" <c:forEach items="${userVo.roleList}" var="role"  > ${role.rolename}  </c:forEach>	",
					"已审核", oper], </c:forEach> ]

	$('.grid').Grid({
		thead : head,
		tbody : null,
		height : 400,
		checkbox : {
			single : true
		},
		operator : {
			type : "normal",
			width : 100
		},
		sortCallBack : function(name, index, type) {
			alert(name + "," + index + ',' + type);
		}

	});

	$('.grid').Grid('addLoading');

	/// 模拟异步
	setTimeout(function() {
		$('.grid').Grid('setData', tbody, head);
	}, 500)

	$('.pagination').pagination(100, {
		callback : function(page) {
			alert(page);
		},
		display_msg : false
	});

	$('.search-box input[type=radio]').click(function(e) {
		if ($(this).prop('checked')) {
			if ($(this).attr('data-define') === 'define') {
				$('.define-input').show();
			} else {
				$('.define-input').hide();
			}
		}
	});
</script>
</html>
