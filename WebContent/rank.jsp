<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>高校详情</title>
<script type="text/javascript">

	function remove2() {
		var tab = document.getElementById("tab2");
	    var trs = tab.getElementsByTagName("tr");
	           
	    for(var i = trs.length - 1; i > 1; i--) {
	        tab2.deleteRow(i);
	    }
	}
	
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
		var specCode = GetQueryString("specCode");
		var tab2 = document.getElementById("tab2");
		alert(tab2+" "+specCode);
		//remove2();
		var xmlHttp;
		if(window.XMLHttpRequest){
			xmlHttp=new XMLHttpRequest();
		}else{
			xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		alert(xmlHttp);
		var newTr;
		var newTd0;
		var newTd1;
		var newTd2;
		xmlHttp.onreadystatechange=function(){
			if(xmlHttp.readyState==4 && xmlHttp.status==200){
				var dataObj=eval("("+xmlHttp.responseText+")");
				for(var i=0;i<dataObj.rows.length;i++){
					var o=dataObj.rows[i];
					newTr = tab2.insertRow();
					newTd0 = newTr.insertCell();
					newTd1 = newTr.insertCell();
					newTd2 = newTr.insertCell();
					newTd0.innerHTML=o.specName;
					newTd1.innerHTML=o.univName;
					newTd2.innerHTML=o.univScore;
				}
			}
		};
		xmlHttp.open("get", "http://127.0.0.1:8080/stu/rank_query.action?rank.specCode="+specCode,true);
		xmlHttp.send();
	}
</script>
</head>
<body>
	<table id="tab2">
  		<tr>
  			<th>专业类</th><th>高校名称</th><th>高校得分</th>
  		</tr>
  	</table>
</body>
</html>