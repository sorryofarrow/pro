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
		var majorCode = GetQueryString("majorCode");
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
					document.getElementById("name").innerHTML="<h1>"+o.majorName+"</h1>";
					document.getElementById("prop").innerHTML="<table><tr><td><b>专业代码:</b></td><td>"+o.majorCode+"</td><td><b>专业类:</b></td><td>"+o.specName+"</td><td><b>学科门类:</b></td><td>"+o.disName+"</td></tr><tr><td><b>学制:</b></td><td>"+o.majorLength+"</td><td><b>授予学位:</b></td><td>"+o.majorDegree+"</td></tr></table>";
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
					document.getElementById("intro").innerHTML=o.majorIntro;
				}
			}
		};
		
		xmlHttp.open("get", "http://127.0.0.1:8080/stu/major_query.action?major.majorCode="+majorCode,true);
		xmlHttp.send();
	}
</script>
</head>
<body>
	<div style="">
		<div id="name" style=""></div>
		<div id="prop" style="text-align: center">
		</div>
		<h3>专业介绍</h3>
		<div id="intro" style=""></div>
	</div>
</body>
</html>