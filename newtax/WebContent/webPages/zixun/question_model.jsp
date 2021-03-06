<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username =(String)request.getSession().getAttribute("username");
boolean hasLogined = false;
if(username!=null){
	hasLogined = true;
}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
 <base href="<%=basePath%>">
<title>安徽省国家税务局税企互助交流平台</title>
<link rel="stylesheet" type="text/css" href="css/head.css" />
<link rel="stylesheet" type="text/css" href="css/paging.css" />
<link rel="stylesheet" type="text/css" href="css/question_model.css" />
<link rel="stylesheet" type="text/css" href="css/bottom.css" />
<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script> 
<link rel="stylesheet" href="css/tips.css" />
<link rel="stylesheet" href="css/ScreenChange.css" /> 

<style type="text/css">

	body {
	min-height: 900px;
	background:rgba(236,236,236,1.00);	
	
}
</style>

</head>
<body>
<div class="top" style="display:flex;justify-content:space-around;">
		<div class="logo"  style=""></div>
		<div class="daohang">
			<ul id="tabs_nav" style="display:flex;justify-content:space-around;">
				<li id="shouye"><a href="webPages/NewFile.jsp" id="one">首页</a><span
					class="underline"></span></li>
				<li id="zixun"><a href="webPages/zixun/zixun.jsp" id="two">咨询</a></li>
				<li id="jingyan"><a href="webPages/jingyan1/jingyan1.jsp"
					id="three">经验分享</a></li>
				<li id="zhuanye"><a href="webPages/jiedu/jiedu.jsp" id="four">专业解读</a></li>
				<li id="user"><a href="webPages/userarea/userarea.jsp"
					id="five">用户专区</a></li>
				<form action="">
					<li class="top_search">
						<div class="search">
						    <a href="webPages/zixun/find.jsp">
						   	 <img alt="" src="image/icon/fdj.png" class="fangdajing">
						    </a>
							<input type="text" id="sousuo" name="title" class="find" value="搜索问题…"/>
						</div>
					</li>
				</form>
			</ul>
		</div>
		<div class="user">
			<div class="user_content">	
						<a style="padding: 0 50px;">
							<img alt="" src="image/header/u198.png" class="person">
						</a>
						<div style="position: absolute; left: 20px; line-height: 0px;">
							<div style="line-height: 13px;">
								<a href="webPages/jiedu/login.jsp">登录</a>
							</div>
							<div style="line-height: 13px;">&nbsp;/&nbsp;</div>
							<div style="text-align: left; line-height: 13px;">
								<a href="webPages/jiedu/register.jsp">注册</a>
							</div>
						</div>				
			</div>
		</div>
	</div>
	<div class="mask"></div> 
<div class="dialog"> 
  
<div class="title"> 
<img alt="点击可以关闭" src="image/icon/closepopwinbtn.png" width="20px" height="20px;"> 
</div> 
  
<div class="tips_content"> 
<img alt="" src="image/tips.png" width="115px" height="115px" style="position: absolute; margin-left: 80px;margin-right: 80px;margin-top: 0px;"> 
	<div class="content_wenzi" ><span >请先登录用户</span> </div>
</div> 
<div class="bottom"> 
<input type="button" id="ok" value="确定" class="ok_btn" style=" "> 
</div>  
</div> 

<div class="jubao" style="left: 400px;top: 200px;"> 
  
<div class="ju_title"> 
<img alt="点击可以关闭" src="image/icon/closepopwinbtn.png" width="20px" height="20px;"> 
</div> 
  
<div class="ju_content"> 
	<div class="ju_content_wenzi" ><span >举报详细信息</span> </div>
	<textarea  class="ju_text"></textarea>
</div> 
<div class="ju_bottom"> 
<input type="button" id="submit" value="提交" class="sub_btn" > 
</div>  
</div> 


	<div class="ques_content_wrapall">
		<!-- path -->
		<div class="path_nav">
			
			<span class="fl">当前位置：<a style="color:black;" href="webPages/zixun/question_model.jsp" class="nav_style">咨询</a></span>
			<span class="fl">&nbsp;&gt;&nbsp;</span>
			<span class="fl" style="width:300px;overflow: hidden;text-overflow:ellipsis;white-space: nowrap;">
			   <a href="webPages/zixun/question_model.jsp" class="nav_style"> 想了解个人所得税流程 </a>
			</span>
		</div>
		<div class="ques_content">
			<div class="notsolved">
				<!-- 头部 start -->
				<div class="mark">
					<img src="image/questionmark.png">
					<span>未解决</span>
				</div>
				<div class="mark_content">
					<ul>
						<li><p>问题：想了解个人所得税流程</p></li>
						<li><span>2017-12-20</span></li>
					</ul>
				</div>
				<!-- 头部 end -->
				<div class="user_messageone">
					<!-- 问题详情 start -->
					<div class="user_messageone_list_content">
						<span>内容：</span>
						<span id="hidden"><p>个人说的税是怎么计算的，流程是什么？</p>
</span>
					</div>
					<!-- 问题详情 end -->
				</div>
			</div>
		<!-- 我的答案 start -->
		<div class="ques_content_three">
			<div class="ques_content_three_nav">
				<ul>
					<li><span>浏览：</span><span>415</span></li>
					<li><span>回答：</span><span>13</span></li>
						
					
					<li  style="cursor:pointer;float:right;cursor:pointer;" onclick="report();" class="report">举报</li>
					<li class="star"  onclick="star();" style="cursor: pointer;float:right;">
						收藏
					</li>
				</ul>
			</div>
			<!-- 最佳回答 -->
			
			<!-- 我的答案 end -->
			<!--其他回答 start -->
			<h1>全部回答</h1>
			<div class="gary">
				<div class="pink"></div>
			</div>
			<div class="user_messageTwo">
				<div class="user_messageTwo_list" id="user_messageTwo_list">
					<div id="answerContent" class="user_messageTwo_list_content"></div>
					<div id=answersPaging class="box"></div>
				</div>
			</div>
		</div>
		<!--其他回答 end -->
		<div style=" margin-top: 51px;">
			<p class="ques_content_three_p">我要回答</p>
			
				
				
					<span style="float:left;line-height:40px;font-size:18px;margin:20px 0">请先</span>
					<div style="
							width:120px;
							height:40px;
							line-height:40px;
							text-align:center;
							float:left;
							margin:20px 10px;
							background:rgb(26,86,169)">
						<a href="webPages/jiedu/login.jsp" 
							style="
								width:100%;
								height:100%;
								color:#fff;
								text-decoration: none;
								font-weight:bold">登录</a>
					</div>
				
			
		</div>
	</div>
	</div>
	<!-- 弹出举报详细信息窗口 start -->
	<div class="ex_ques_PopWinbg">
		<div class="ex_ques_PopWinContent">
			<form method="GET" id="sunmitTable">
				<table cellspacing="0" cellpadding="0">
					<tr>
						<td colspan="6">举报详细信息</td>
						<td><input type="hidden" name="target" id="target" style="height:0;width:0;"></td>
						<td><input type="hidden" name="targetId" id="targetId" style="height:0;width:0;"></td>
					</tr>
					<tr><td colspan="6" style="height:5px;"></td></tr>
					<tr>
						<td colspan="6">
						<textarea name="description"></textarea> 
						
						</td>
					</tr>
					<tr><td colspan="6"><button type="submit">提交</button></td></tr>
				</table>
			</form>
			<div class="ex_ques_Close_PopWin" onclick="closePopWin()"></div>
		</div>
	</div>
	<!-- 弹出举报详细信息窗口 end -->
	<!-- 弹出修改详细信息窗口 start -->
		<div class="ex_ques_PopWinbgdel">
			<div class="ex_ques_PopWinContentdel">
				<form method="POST" id="editQuestion">
					<input type="hidden" value="ques_1513737987706" name="id">
					<table cellspacing="0" cellpadding="0" style="height:330px;width:600px;">
						<tr>
							<td align="center" colspan="6">修改详细信息</td>
						</tr>
						<tr>
							<td style="width:50px;height:75px;">标题：</td>
							<td>
								<input type="text" value="想了解个人所得税流程" name="title" style="width:100%;height:45%;font-size:20px;">
							</td>
						</tr>
						<tr>
							<td style="width:50px;">内容：</td>
							<td>
								<textarea id="quescontent" name="content"><p>个人说的税是怎么计算的，流程是什么？</p>
</textarea> 
							</td>
						</tr>
					</table>
				</form>
				<div class="ex_ques_buttondel">
					<input class="fl" type="button" onclick="subEdit()" value="提交">
					<input class="fr" type="button" value="返回" onclick="closePopWindel()">
				</div>
				<div class="ex_ques_Close_PopWindel" onclick="closePopWindel()"></div>
			</div>
		</div>

</body>
<script type="text/javascript">
var i=0;
function star(obj){
	var x=<%=hasLogined%>;
	if(x==false){
	$(".mask").css("opacity","0.3").show(); 
		//制作对话框 
	showDialog(); 
		//展现css的特效 
	$(".dialog").show(); 
			}
     else{
     i=i+1;
       if(i%2!=0){
	     $(".star").text("已收藏");
     }
       else{
    	   $(".star").text("收藏");
     };
    }
};
var j=0;
function report(obj){
	var x=<%=hasLogined%>;
	if(x==false){
	$(".mask").css("opacity","0.3").show(); 
		//制作对话框 
	showDialog(); 
		//展现css的特效 
	$(".dialog").show(); 
			}
     else{
     j=j+1;
     $(".mask").css("opacity","0.3").show(); 
		//制作对话框 
	showReport(); 
		//展现css的特效 
	$(".jubao").show(); 
    }
};

function showDialog(){ 
				var objw=$(window);//获取当前窗口 
				var objc=$(".dialog");//获取当前对话框 
				var brsw=objw.width(); //获取页面宽度 
				var brsh=objw.height(); //获取页面高度 
				var sclL=objw.scrollLeft(); //获取页面左滑动条信息 
				var sclT=objw.scrollTop(); 
				var curw=objc.width(); //获取对话框宽度 
				var curh=objc.height(); //获取对话框高度 
				  
				var left=sclL+(brsw -curw)/2; //计算对话框居中时的左边距 
				var top=sclT+(brsh-curh)/2; //计算对话框居中时的上边距 
				  
				  
				objc.css({"left":left,"top":top}); //设置对话框居中 
			}
			
			
function showReport(){ 
	var objw=$(window);//获取当前窗口 
	var objc=$(".jubao");//获取当前对话框 
	var brsw=objw.width(); //获取页面宽度 
	var brsh=objw.height(); //获取页面高度 
	var sclL=objw.scrollLeft(); //获取页面左滑动条信息 
	var sclT=objw.scrollTop(); 
	var curw=objc.width(); //获取对话框宽度 
	var curh=objc.height(); //获取对话框高度 
	  
	var left=sclL+(brsw -curw)/2; //计算对话框居中时的左边距 
	var top=sclT+(brsh-curh)/2; //计算对话框居中时的上边距 
	  
	  
	objc.css({"left":left,"top":top}); //设置对话框居中 
}
$(".title img").click(function(){ 
	//隐藏效果 
	$(".dialog").hide(); 
	$(".mask").hide(); 
	  
	}); 
	//取消按钮事件 
	$("#noOk").click(function(){ 
	$(".dialog").hide(); 
	$(".mask").hide(); 
	}); 
	  
	//确定按钮事假 
	$("#ok").click(function(){ 
	$(".dialog").hide(); 
	$(".mask").hide(); 
	});
	$(".ju_title img").click(function(){ 
		//隐藏效果 
		$(".jubao").hide(); 
		$(".mask").hide(); 
		  
		});  		  
		//确定按钮事假 
		$("#submit").click(function(){ 
		$(".jubao").hide(); 
		$(".mask").hide(); 
		});
</script>
<body>
	<div class="zixun_footers" id="footer">
		<div class="zixun_footers_content">
			<ul class="bottom_choice">
				<li><a href="webPages/zixun/UseKnow.jsp" target="_blank">使用须知</a></li>
				<li><a href="webPages/zixun/UseHelp.jsp" target="_blank">网站帮助</a></li>
				<li><a href="webPages/zixun/ContactUs.jsp" target="_blank">联系我们</a></li>
			</ul>
			<ul>
				
				<li>安徽省国家税务局主办 ICP备案号********</li>
				 <li>技术服务由科大讯飞股份有限公司提供</li> 
				<li>通讯地址：合肥市包河区中山路3398号 联系电话：0551-12366</li>
			</ul>
		</div>
	</div>
</body>
</html>