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
				//alert(xmlHttp.responseText);
				for(var i=0;i<dataObj.rows.length;i++){
					var o=dataObj.rows[i];
					append(o.majorCode);
				}
			}
		};
		
		xmlHttp.open("get", "http://127.0.0.1:8080/stu/bri_queryMajorOfUniv.action?bridge.univCode="+univCode,true);
		xmlHttp.send();
	}
	
	function append(majorCode){
		var xmlHttp;
		if(window.XMLHttpRequest){
			xmlHttp=new XMLHttpRequest();
		}else{
			xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		xmlHttp.onreadystatechange=function(){
			if(xmlHttp.readyState==4 && xmlHttp.status==200){
				var dataObj=eval("("+xmlHttp.responseText+")");
				//alert(xmlHttp.responseText);
				for(var i=0;i<dataObj.rows.length;i++){
					var o=dataObj.rows[i];
					switch(o.disName)
					{
						case "哲学":
							document.getElementById("zhexue").appendChild(document.createTextNode(o.majorName+" "));
							break;
						case "经济学":
							document.getElementById("jingji").appendChild(document.createTextNode(o.majorName+" "));
							break;
						case "法学类":
							document.getElementById("faxue").appendChild(document.createTextNode(o.majorName+" "));
							break;
						case "教育学":
							document.getElementById("jiaoyu").appendChild(document.createTextNode(o.majorName+" "));
							break;
						case "文学":
							document.getElementById("wenxue").appendChild(document.createTextNode(o.majorName+" "));
							break;
						case "历史学":
							document.getElementById("lishi").appendChild(document.createTextNode(o.majorName+" "));
							break;
						case "理学":
							document.getElementById("lixue").appendChild(document.createTextNode(o.majorName+" "));
							break;
						case "工学":
							document.getElementById("gongxue").appendChild(document.createTextNode(o.majorName+" "));
							break;
						case "农学":
							document.getElementById("nongxue").appendChild(document.createTextNode(o.majorName+" "));
							break;
						case "医学":
							document.getElementById("yixue").appendChild(document.createTextNode(o.majorName+" "));
							break;
						case "管理学":
							document.getElementById("guanli").appendChild(document.createTextNode(o.majorName+" "));
							break;
						case "艺术学":
							document.getElementById("yishu").appendChild(document.createTextNode(o.majorName+" "));
							break;
					}
				}
			}
		};
		
		xmlHttp.open("get", "http://127.0.0.1:8080/stu/major_query.action?major.majorCode="+majorCode,true);
		xmlHttp.send();
	}
</script>
</head>
<body>
	<div>
		<p><b>哲学</b></p>
		<div id="zhexue">
		</div>
		<p><b>经济学</b></p>
		<div id="jingji">
		</div>
		<p><b>法学类</b></p>
		<div id="faxue">
		</div>
		<p><b>教育学</b></p>
		<div id="jiaoyu">
		</div>
		<p><b>文学</b></p>
		<div id="wenxue">
		</div>
		<p><b>历史学</b></p>
		<div id="lishi">
		</div>
		<p><b>理学</b></p>
		<div id="lixue">
		</div>
		<p><b>工学</b></p>
		<div id="gongxue">
		</div>
		<p><b>农学</b></p>
		<div id="nongxue">
		</div>
		<p><b>医学</b></p>
		<div id="yixue">
		</div>
		<p><b>管理学</b></p>
		<div id="guanli">
		</div>
		<p><b>艺术学</b></p>
		<div id="yishu">
		</div>
	</div>
</body>
</html>