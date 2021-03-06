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
				<img src="../img/logo.png" class="img-responsive" alt="Responsive image">
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
						<img src="../img/xiaohui-pekinguniversity.jpg" width="70" height="70" alt="PKU image">
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
				<div class="row">
					<div class="col-md-8 column">
						<div class="panel panel-info">
							<div class="panel-heading">
								<div class="row">
								  <div class="col-md-8">
									<h3 class="panel-title">基本信息</h3>
								  </div>
								  <div class="col-md-4">
								  </div>
								</div>
							</div>
							<div class="panel-body">
								  <div class="row myrow">
									<div class="col-md-3 column">
										<span class="label label-default">院校代码</span>
									</div>
									<div class="col-md-3 column">
										<span class="text-primary"><s:property value="university.univCode"/></span>
									</div>
									<div class="col-md-3 column">
										<span class="label label-default">所在地区</span>
									</div>
									<div class="col-md-3 column">
										<span class="text-primary"><s:property value="university.univProvince"/></span>
									</div>
								</div>
								<div class="row myrow">
									<div class="col-md-3 column">
										<span class="label label-default">院校类型</span>
									</div>
									<div class="col-md-3 column">
										<span class="text-primary"><s:property value="university.univType"/></span>
									</div>
									<div class="col-md-3 column">
										<span class="label label-default">院校隶属</span>
									</div>
									<div class="col-md-3 column">
										<span class="text-primary"><s:property value="university.univSubjection"/></span>
									</div>
								</div>
								<div class="row myrow">
									<div class="col-md-3 column">
										<span class="label label-default">院校简介</span>
									</div>
									<div class="col-md-9 column">
										北京大学创办于1898年，初名京师大学堂，是中国第一所国立综合性大学，也是当时中国最高教育行政机关。辛亥革命后，于1912年改为现名。
							
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-info">
							<div class="panel-heading">
								<div class="row">
								  <div class="col-md-8">
									<h3 class="panel-title">高校资讯</h3>
								  </div>
								  <div class="col-md-4">
								  </div>
								</div>
							</div>
							<div class="panel-body">
								
								<ul class="myul">
									<li class="key">
										<a href="#">[北京大学]</a>
										<a href="#">三成大学毕业生工作半年就跳槽 缺少职业规划</a>
									</li>
									<li class="time">
										‎2016‎年‎10‎月‎12‎日
									</li>
								</ul>								
								
								
									<ul class="myul">
										<li class="key">
											<a href="#">[北京大学]</a>
											<a href="#">2017江苏高中学业水平测试必修科目考试时间公布</a>											
										</li>
										<li class="time">
											‎2016‎年‎10‎月‎12‎日
										</li>
									</ul>	
								
								
									<ul class="myul">
										<li class="key">
											<a href="#">[北京大学]</a>
											<a href="#">重庆实施居住证办法 子女满足条件可就地高考</a>
										</li>
										<li class="time">
											‎2016‎年‎10‎月‎12‎日
										</li>
									</ul>
			
								<ul class="pagination">
									<li>
										 <a href="#">Prev</a>
									</li>
									<li>
										 <a href="#">1</a>
									</li>
									<li>
										 <a href="#">2</a>
									</li>
									<li>
										 <a href="#">3</a>
									</li>
									<li>
										 <a href="#">4</a>
									</li>
									<li>
										 <a href="#">5</a>
									</li>
									<li>
										 <a href="#">Next</a>
									</li>
								</ul>
							</div>
						</div>				
					</div>
					<div class="col-md-4 column">
						<div class="panel panel-info">
						   <div class="panel-heading">
							  <div class="row">
								  <div class="col-md-8">
									<h3 class="panel-title">开设专业</h3>
								  </div>
								  <div class="col-md-4">
								  <button type="submit" class="btn btn-default btn-xs" >
									<span class="glyphicon glyphicon-plus"></span> 更多
								  </button>
								  </div>
							  </div>
						   </div>
						   <div class="panel-body">
								<div class="panel-group" id="panel-636230">
									<div class="panel panel-default">
										<div class="panel-heading">
											 <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-636230" href="#panel-element-172239">哲学</a>
										</div>
										<div id="panel-element-172239" class="panel-collapse collapse">
											<div class="panel-body">
												哲学类
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											 <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-636230" href="#panel-element-744004">经济学</a>
										</div>
										<div id="panel-element-744004" class="panel-collapse collapse">
											<div class="panel-body">
												经济学类 财政学类
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											 <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-636230" href="#panel-element-000001">法学</a>
										</div>
										<div id="panel-element-000001" class="panel-collapse collapse">
											<div class="panel-body">
												法学类 政治学类 社会学类 民族学类 马克思主义理论类 公安学类
											</div>
										</div>
									</div>
								</div>
						   </div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2 column">
			</div>
		</div>
</div>

<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>