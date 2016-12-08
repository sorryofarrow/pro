<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>高校库</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/common.css">
<script src="js/jquery-3.1.1.min.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
<style>
 .mbtn{
	margin-top:30px;
 }
 .myrow{
	margin-bottom:10px;
 }
 .jsda{
   margin:30px 0px 0px 135px;
 }
 .jsdb{
   margin:0px 0px 20px 25px;
 }
 .myul li.key{
	float:left;
 }
 .myul li.time{
    margin-right:2px;
	list-style-type:none;
	text-align:right;
	clear:right;
 }
</style>

</head>

<body>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">登录</h4>
				</div>
				<div class="modal-body">
					<div class="row">
					  <input type="hidden" value="index_nav" name="source">
						 <div class="col-md-3">
							
						 </div>
						 <div class="col-md-6">
							<form class="form-horizontal" role="form">
							  <div class="form-group">
								<label for="userName" class="col-sm-3 control-label">帐 号</label>
								<div class="col-sm-8">
								  <input type="text" class="form-control" id="userName" placeholder="name">
								</div>
							  </div>
							  <div class="form-group">
								<label for="userPassword" class="col-sm-3 control-label">密 码</label>
								<div class="col-sm-8">
								  <input type="password" class="form-control" id="userPassword" placeholder="Password">
								</div>
							  </div>
							  <div class="form-group">
								<div class="col-sm-2">
								  <button type="submit" class="btn btn-default">登录</button>
								</div>
							  </div>
							</form>
							<!--
							<div class="item item-account">
								<input type="text" name="form_email" id="form_email" value="" class="inp" placeholder="邮箱 / 手机号" tabindex="1">
							</div>
							<div class="item item-passwd">
								<input name="form_password" placeholder="密码" id="form_password" class="inp" type="password" tabindex="2">						
								<a href="#">帮助</a>						
							</div>
							-->
						 </div>
						 <div class="col-md-3">
							
						 </div>				 
					</div>
				</div>						
				<div class="modal-footer">			    
					<!-- 转接注册modal -->
				</div>			
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div><!-- /.modal -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-3 logo">
				<img src="img/logo.png" class="img-responsive" alt="Responsive image">
			</div>
			<div class="col-md-2">
			</div>
			<div class="col-md-3 feature">
			
				<div class="jsd">	
				
				<a data-toggle="modal" href="#myModal">登录
				
				</a>&nbsp;|&nbsp;
				<a href="" target="_blank">注册
				</a>
				</div>			    
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">
						<span class="glyphicon glyphicon-search"></span> 搜索
					</button>
				</form>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<div class="row">
			<div class="col-md-2 column">
			</div>
			<div class="col-md-8 column">
				<div class="row">
					<div class="col-md-1">
						<img src="img/<s:property value="university.univCode"/>.jpg"  width="70" height="70" alt="PKU image">
					</div>
					<div class="col-md-3 column">
						<div class="jsdb">
							<h2><s:property value="university.univName"/></h2>
						</div>
					</div>
					<div class="col-md-2 column">
						<div class="row">
							<div class="col-md-2 column">
								<div class="mbtn">
								<button type="button" class="btn btn-info btn-xs">关注</button>
								</div>
							</div>
							<div class="col-md-10 column">									
							</div>							
						</div>
					</div>
					<div class="col-md-6 column">
						<div class="jsda">					
							<h4>关注量：90					
							</h4>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2 column">
			</div>
		</div>
		<div class="row">		
			<div class="col-md-2 column">
			</div>
			<div class="col-md-8 column">
				<ul class="breadcrumb">
					<li>
						 <a href="#">首页</a>
					</li>
					<li>
						 <a href="#">高校库</a>
					</li>
					<li class="active">
						高校详情
					</li>
				</ul>
			</div>
			<div class="col-md-2 column">
			</div>
		</div>
		<div class="row">
			<div class="col-md-2 column">
			</div>
			<div class="col-md-8 column">
				<ul id="myTab" class="nav nav-tabs">
				   <li class="active"><a href="#basicInfo" data-toggle="tab">
					  基本信息</a>
				   </li>
				   <li><a href="#intro" data-toggle="tab">简介</a></li>
				   <li class="dropdown">
					  <a href="#" id="myTabDrop1" class="dropdown-toggle" 
						 data-toggle="dropdown">其它 <b class="caret"></b>
					  </a>
					  <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
						 <li><a href="#univ_key_discipline" tabindex="-1" data-toggle="tab">
							重点学科</a>
						 </li>
						 <li><a href="#univ_faculty" tabindex="-1" data-toggle="tab">
							师资力量</a>
						 </li>
						 <li><a href="#univ_award" tabindex="-1" data-toggle="tab">
							奖励资助</a>
						 </li>
						 <li><a href="#univ_student" tabindex="-1" data-toggle="tab">
							在校生信息</a>
						 </li>
						 <li><a href="#univ_schoolmate" tabindex="-1" data-toggle="tab">
							知名校友</a>
						 </li>
						 <li><a href="#univ_specialty" tabindex="-1" data-toggle="tab">
							知名专业</a>
						 </li>
					  </ul>
				   </li>
				</ul>
				<div id="myTabContent" class="tab-content">
				   <div style="padding:15px 0 0 5px" class="tab-pane fade in active" id="basicInfo">
						<div class="row myrow">
							<div class="col-md-1 column">
								<span class="label label-default">院校代码</span>
							</div>
							<div class="col-md-2 column">
								<span id="univCode" class="text-primary"><s:property value="university.univCode"/></span>
							</div>
							<div class="col-md-1 column">
								<span class="label label-default">创建时间</span>
							</div>
							<div class="col-md-2 column">
								<span class="text-primary"><s:property value="university.univCtime"/></span>
							</div>
							<div class="col-md-1 column">
								<span class="label label-default">所在省份</span>
							</div>
							<div class="col-md-2 column">
								<span class="text-primary"><s:property value="university.univProvince"/></span>
							</div>
							<div class="col-md-1 column">
								<span class="label label-default">隶属</span>
							</div>
							<div class="col-md-2 column">
								<span class="text-primary"><s:property value="university.univSubjection"/></span>
							</div>
						</div>
						<div class="row myrow">
							<div class="col-md-1 column">
								<span class="label label-default">院校类型</span>
							</div>
							<div class="col-md-2 column">
								<span class="text-primary"><s:property value="university.univType"/></span>
							</div>
							<div class="col-md-1 column">
								<span class="label label-default">学历层次</span>
							</div>
							<div class="col-md-2 column">
								<span class="text-primary"><s:property value="university.univLevel"/></span>
							</div>
							<div class="col-md-1 column">
								<span class="label label-default">招办电话</span>
							</div>
							<div class="col-md-2 column">
								<span class="text-primary"><s:property value="university.univPhone"/></span>
							</div>
							<div class="col-md-1 column">
								<span class="label label-default">招生网址</span>
							</div>
							<div class="col-md-2 column">
								<span class="text-primary"><s:property value="university.univWebsite"/></span>
							</div>
						</div>
						<div class="row myrow">
							<div class="col-md-1 column">
								<span class="label label-default">院校地址</span>
							</div>
							<div class="col-md-2 column">
								<span class="text-primary"><s:property value="university.univAddress"/></span>
							</div>
							<div class="col-md-1 column">
								<span class="label label-default">院士数</span>
							</div>
							<div class="col-md-2 column">
								<span class="text-primary"><s:property value="university.univNas"/></span>
							</div>
							<div class="col-md-1 column">
								<span class="label label-default">博士点</span>
							</div>
							<div class="col-md-2 column">
								<span class="text-primary"><s:property value="university.univPhds"/></span>
							</div>
							<div class="col-md-1 column">
								<span class="label label-default">硕士点</span>
							</div>
							<div class="col-md-2 column">
								<span class="text-primary"><s:property value="university.univMasters"/></span>
							</div>
						</div>
				   </div>
				   <div style="padding:15px 0 0 5px" class="tab-pane fade" id="intro">
					  <p><s:property value="university.univIntro"/></p>
				   </div>
				   <div style="padding:15px 0 0 5px" class="tab-pane fade" id="univ_key_discipline">
					  <p>重点学科</p>
				   </div>
				   <div style="padding:15px 0 0 5px" class="tab-pane fade" id="univ_faculty">
					  <p>师资力量</p>
				   </div>
				   <div style="padding:15px 0 0 5px" class="tab-pane fade" id="univ_award">
					  <p>奖励资助</p>
				   </div>
				   <div style="padding:15px 0 0 5px" class="tab-pane fade" id="univ_student">
					  <p>在校生信息</p>
				   </div>
				   <div style="padding:15px 0 0 5px" class="tab-pane fade" id="univ_schoolmate">
					  <p>知名校友</p>
				   </div>
				   <div style="padding:15px 0 0 5px" class="tab-pane fade" id="univ_specialty">
					  <p>知名专业</p>
				   </div>
				</div>
			</div>
			<div class="col-md-2 column">
			</div>
		</div>
		<div class="row">
			<div class="col-md-2 column">
			</div>
			<div class="col-md-8 column">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="row">
						  <div class="col-md-8">
							<h3 class="panel-title">开设专业</h3>
						  </div>
						  <div class="col-md-4">
						  </div>
						</div>
					</div>
					<div class="panel-body">
						<div class="row">
						  <div class="col-md-2">
							<select id="dis" class="form-control">
							<option value="-1" selected="selected">学科门类</option>
							<s:iterator value="univDis" id="dis" status="st">
								<option value=<s:property value="#dis.disCode"/>><s:property value="#dis.disName" /></option>
							</s:iterator>
							</select>
						  </div>
						  <div class="col-md-3">
						  	<select id="spec" class="form-control">
							<option value="-1" selected="selected">专业小类</option>
							</select>
						  </div>
						  <div class="col-md-7">
						  	<button id="search" type="button" class="btn btn-default btn-info">查询</button>
						  </div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<table id="majorTable" class="table">
									<thead>
										<tr>
											<th>
												专业名称
											</th>
											<th>
												专业代码
											</th>
											<th>
												学制
											</th>
											<th>
												学位
											</th>
										</tr>
									</thead>
									<tbody>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>	
			</div>
			<div class="col-md-2 column">
			</div>
		</div>
	</div>
<script type="text/javascript">
	$(document).ready(function(){
		$("#dis").change(function(){
			$("#spec").empty();
			var disCode = $("#dis option:selected").val();
			var univCode = $("#univCode").text();
			$.getJSON("http://127.0.0.1:8080/pro/univAction_querySpecOfUniv?university.univCode="+univCode+"&dis.disCode="+disCode,function(data){
				$.each(data.rows,function(i,item){
					$("#spec").append("<option value="+item.specCode+">"+item.specName+"</option>");
				});
			});
		});
	});
	$("#search").click(function(){
		$("#majorTable tbody").empty();
		var univCode = $("#univCode").text();
		var specCode = $("#spec option:selected").val();
		$.getJSON("http://127.0.0.1:8080/pro/univAction_queryMajorOfUniv?university.univCode="+univCode+"&spec.specCode="+specCode,function(data){
			$.each(data.rows,function(i,item){
				var row = $("<tr></tr>");
				var td_1 = $("<td><a href='#'>"+item.majorName+"</a></td>");
				var td_2 = $("<td><a href='#'>"+item.majorCode+"</a></td>");
				var td_3 = $("<td><a href='#'>"+item.majorLength+"</a></td>");
				var td_4 = $("<td><a href='#'>"+item.majorDegree+"</a></td>");
				row.append(td_1);
				row.append(td_2);
				row.append(td_3);
				row.append(td_4);
				$("#majorTable tbody").append(row);
			});
		});
	});
</script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>