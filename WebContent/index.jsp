<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>stu</title>
    <script type="text/javascript">
    	
	    function loadxx(url,cfunc)
	    {
		    if (window.XMLHttpRequest)
		      {// code for IE7+, Firefox, Chrome, Opera, Safari
		      xmlhttp=new XMLHttpRequest();
		      }
		    else
		      {// code for IE6, IE5
		      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		      }
		    xmlhttp.onreadystatechange=cfunc;
		    xmlhttp.open("GET",url,true);
		    xmlhttp.send();
	    }
    
    	function loadUniv() {
			var provin=document.getElementById("provin").value;
			univ.options.length=0;
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
						univ.options.add(new Option(o.univName, o.univCode));
					}
				}
			};
			
			xmlHttp.open("get", "http://127.0.0.1:8080/mvntest/univ_query.action?university.univProvince="+provin,true);
			xmlHttp.send();
		}
    	
    	function loadSpec() {
			var dis=document.getElementById("dis").value;
			spec.options.length=1;
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
						spec.options.add(new Option(o.specName, o.specCode));
					}
				}
			};
			
			xmlHttp.open("get", "http://127.0.0.1:8080/stu/spec_query.action?spec.disCode="+dis,true);
			xmlHttp.send();
		}
    	
    	function loadMajor() {
    		var specCode = document.getElementById("spec").value;
    		var tab = document.getElementById("tab");
    		remove();
			var xmlHttp;
			if(window.XMLHttpRequest){
				xmlHttp=new XMLHttpRequest();
			}else{
				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			var newTr;
			var newTd0;
			var newTd1;
			var newTd2;
			xmlHttp.onreadystatechange=function(){
				if(xmlHttp.readyState==4 && xmlHttp.status==200){
					var dataObj=eval("("+xmlHttp.responseText+")");
					for(var i=0;i<dataObj.rows.length;i++){
						var o=dataObj.rows[i];
						newTr = tab.insertRow();
						newTd0 = newTr.insertCell();
						newTd1 = newTr.insertCell();
						newTd2 = newTr.insertCell();
						newTd0.innerHTML=o.majorCode;
						newTd1.innerHTML=o.majorName;
						newTd2.innerHTML="<a href=\"major.jsp?majorCode="+o.majorCode+"\">查看详情</a>";
					}
				}
			};
			
			xmlHttp.open("get", "http://127.0.0.1:8080/stu/major_query.action?major.specCode="+specCode,true);
			xmlHttp.send();
		}
    	
    	function queryUniv() {
			var univCode = document.getElementById("univ").value;
			window.location.href = "univ.jsp?univCode="+univCode;
		}
    	
    	function remove2() {
    		var tab = document.getElementById("tab2");
    	    var trs = tab.getElementsByTagName("tr");
    	           
    	    for(var i = trs.length - 1; i > 0; i--) {
    	        tab2.deleteRow(i);
    	    }
    	}
    	
    	function queryRank() {
    		var specCode = document.getElementById("spec2").value;
			//window.location.href = "rank.jsp?specCode="+specCode;
    		//var specCode = GetQueryString("specCode");
    		var tab2 = document.getElementById("tab2");
    		//alert(tab2+" "+specCode);
    		remove2();
    		var xmlHttp;
    		if(window.XMLHttpRequest){
    			xmlHttp=new XMLHttpRequest();
    		}else{
    			xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
    		}
    		//alert(xmlHttp);
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
    	
    	function remove() {
    		var tab = document.getElementById("tab");
    	    var trs = tab.getElementsByTagName("tr");
    	           
    	    for(var i = trs.length - 1; i > 1; i--) {
    	        tab.deleteRow(i);
    	    }
    	}
    	
    	function disInfo(){
    		var disCode = document.getElementById("dis2").value;
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
						document.getElementById("disIntro").innerHTML=o.disIntro;
						document.getElementById("disAim").innerHTML=o.disAim;
					}
				}
			};
			
			xmlHttp.open("get", "http://127.0.0.1:8080/stu/dis_query.action?dis.disCode="+disCode,true);
			xmlHttp.send();
    	}
    	
    	function loadSpec2() {
			var dis=document.getElementById("dis3").value;
			spec2.options.length=1;
			var xmlHttp;
			if(window.XMLHttpRequest){
				xmlHttp=new XMLHttpRequest();
			}else{
				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			
			xmlHttp.onreadystatechange=function(){
				//alert(xmlHttp.readyState+" "+xmlHttp.status);
				if(xmlHttp.readyState==4 && xmlHttp.status==200){
					var dataObj=eval("("+xmlHttp.responseText+")");
					for(var i=0;i<dataObj.rows.length;i++){
						var o=dataObj.rows[i];
						spec2.options.add(new Option(o.specName, o.specCode));
					}
				}
			};
			
			xmlHttp.open("get", "http://127.0.0.1:8080/stu/spec_query.action?spec.disCode="+dis,true);
			xmlHttp.send();
		}
    	
    </script>
  </head>
  <body>
  	<h3>高校库</h3>
  	<select id="provin" onchange="loadUniv()">
  		<option value="-1" selected="selected">请选择省份</option>
  		<option value="北京">北京</option>
  		<option value="天津">天津</option>
  		<option value="河北">河北</option>
  		<option value="山西">山西</option>
  		<option value="内蒙古">内蒙古</option>
  		<option value="辽宁">辽宁</option>
  		<option value="吉林">吉林</option>
  		<option value="黑龙江">黑龙江</option>
  		<option value="上海">上海</option>
  		<option value="江苏">江苏</option>
  		<option value="浙江">浙江</option>
  		<option value="安徽">安徽</option>
  		<option value="福建">福建</option>
  		<option value="江西">江西</option>
  		<option value="山东">山东</option>
  		<option value="河南">河南</option>
  		<option value="湖北">湖北</option>
  		<option value="湖南">湖南</option>
  		<option value="广东">广东</option>
  		<option value="广西">广西</option>
  		<option value="海南">海南</option>
  		<option value="四川">四川</option>
  		<option value="重庆">重庆</option>
  		<option value="贵州">贵州</option>
  		<option value="云南">云南</option>
  		<option value="西藏">西藏</option>
  		<option value="陕西">陕西</option>
  		<option value="甘肃">甘肃</option>
  		<option value="青海">青海</option>
  		<option value="宁夏">宁夏</option>
  		<option value="新疆">新疆</option>
  		<option value="武汉">武汉</option>
  	</select>
  	
  	<select id="univ">
  	</select>
  	
  	<input type="button" value="查询" onclick="queryUniv()"/>
  	<hr>
  	<h3>专业库</h3>
  	<select id="dis" onchange="loadSpec()">
  		<option value="-1" selected="selected">学科门类</option>
  		<option value="01">哲学</option>
  		<option value="02">经济学</option>
  		<option value="03">法学类</option>
  		<option value="04">教育学</option>
  		<option value="05">文学</option>
  		<option value="06">历史学</option>
  		<option value="07">理学</option>
  		<option value="08">工学</option>
  		<option value="09">农学</option>
  		<option value="10">医学</option>
  		<option value="12">管理学</option>
  		<option value="13">艺术学</option>
  	</select>
  	
  	<select id="spec" onchange="loadMajor()">
  		<option value="-1" selected="selected">专业类</option>
  	</select>
  	
  	<br><br>
  	
  	<table id="tab">
  		<tr>
  			<th>专业代码</th>
  			<th>专业名称</th>
  			<th>专业详情</th>
  		</tr>
  	</table>
  	
  	<hr>
  	<h3>学科门类介绍</h3>
  	<select id="dis2">
  		<option value="-1" selected="selected">学科门类</option>
  		<option value="01">哲学</option>
  		<option value="02">经济学</option>
  		<option value="03">法学类</option>
  		<option value="04">教育学</option>
  		<option value="05">文学</option>
  		<option value="06">历史学</option>
  		<option value="07">理学</option>
  		<option value="08">工学</option>
  		<option value="09">农学</option>
  		<option value="10">医学</option>
  		<option value="12">管理学</option>
  		<option value="13">艺术学</option>
  	</select>
  	<input type="button" onclick="disInfo()" value="学科门类详情"/> 
  	<div>
  		<p><b>门类介绍</b></p>
  		<div id="disIntro">
  		</div>
  		<p><b>培养目标</b></p>
  		<div id="disAim">
  		</div>
  	</div>
  	
  	<hr>
  	<h3>教育部2012学科排名</h3>
  	<select id="dis3" onchange="loadSpec2()">
  		<option value="-1" selected="selected">学科门类</option>
  		<option value="01">哲学</option>
  		<option value="02">经济学</option>
  		<option value="03">法学类</option>
  		<option value="04">教育学</option>
  		<option value="05">文学</option>
  		<option value="06">历史学</option>
  		<option value="07">理学</option>
  		<option value="08">工学</option>
  		<option value="09">农学</option>
  		<option value="10">医学</option>
  		<option value="12">管理学</option>
  		<option value="13">艺术学</option>
  	</select>
  	
  	<select id="spec2" onchange="queryRank()">
  		<option value="-1" selected="selected">专业类</option>
  	</select>
  	
  	
  	
  	<table id="tab2">
  		<tr>
  			<th>专业类</th><th>高校名称</th><th>高校得分</th>
  		</tr>
  	</table>
  	
  </body>
</html>
