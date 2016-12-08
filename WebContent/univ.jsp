<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>高校详情</title>
<script type="text/javascript">

	function GetQueryString(name)
	{
	     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	     var r = window.location.search.substr(1).match(reg);
	     if(r!=null)return  unescape(r[2]); return null;
	}
	window.onload=function(){
		init();
	};
	function init(){
		var univCode = GetQueryString("univCode");
		var xmlHttp;
		if(window.XMLHttpRequest){
			xmlHttp=new XMLHttpRequest();
		}else{
			xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		xmlHttp.onreadystatechange=function(){
			if(xmlHttp.readyState==4 && xmlHttp.status==200){
				var dataObj=eval("("+xmlHttp.responseText+")");

				for(var i=0;i<dataObj.rows.length;i++){
					var o=dataObj.rows[i];
					document.getElementById("left").innerHTML="<img src=\"/stu/img_res/"+o.univCode+".jpg\">";
					document.getElementById("name").innerHTML="<h1>"+o.univName+"</h1>";
					document.getElementById("majorSet").innerHTML="<a href=\"majorSet.jsp?univCode="+univCode+"\">开设专业</a>";
					/**
					newTr = tab1.insertRow();
					newTd0 = newTr.insertCell();
					newTd1 = newTr.insertCell();
					newTd2 = newTr.insertCell();
					newTd0.innerHTML=o.univCode;
					newTd1.innerHTML=o.univProvince;
					newTd2.innerHTML=o.univSubjection;
					
					newTr = tab2.insertRow();
					newTd0 = newTr.insertCell();
					newTd1 = newTr.insertCell();
					newTd2 = newTr.insertCell();
					newTd0.innerHTML=o.univType;
					newTd1.innerHTML=o.univHost;
					newTd2.innerHTML=o.univLevel;
					**/
					document.getElementById("detail").innerHTML="<table><tr><td><b>院校代码：</b></td><td>"+o.univCode+"</td><td><b>院校省份：</b></td><td>"+o.univProvince+"</td><td><b>院校隶属：</b></td><td>"+o.univSubjection+"</td></tr><tr><td><b>院校类型：</b></td><td>"+o.univType+"</td><td><b>院校举办：</b></td><td>"+o.univHost+"</td><td><b>办学层次：</b></td><td>"+o.univLevel+"</td></tr></table>";
					document.getElementById("buttom").innerHTML=o.univIntro;
				}
			}
		};
		
		xmlHttp.open("get", "http://127.0.0.1:8080/stu/univ_query.action?university.univCode="+univCode,true);
		xmlHttp.send();
	}
</script>
</head>
<body>
	<div style="">
		<div id="head">
			<div id="left" style="float: left"></div>
			<div id="right" style="height: 197px">
				<div id="name" style="padding-top:20px;height: 100px">
				</div>
				<div id="majorSet">
				</div>
				<div id="detail">
				</div>
			</div>
		</div>
		<h3>院校简介</h3>
		<div id="buttom" style="">
		</div>
	</div>
</body>
</html>