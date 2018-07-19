<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import ="java.util.*,com.tax.controller.*,com.tax.dao.*,com.tax.vo.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username =(String)request.getSession().getAttribute("username");
boolean hasLogined = false;
if(username!=null){
	hasLogined = true;
}

System.out.println(hasLogined);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
 <base href="<%=basePath%>">
<title>安徽省国家税务局税企互助交流平台</title>
<link rel="stylesheet" type="text/css" href="css/head.css" />
<link rel="stylesheet" type="text/css" href="css/paging.css" />
<link rel="stylesheet" type="text/css" href="css/question.css" />
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
	
</body>

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

<div class="Center">
			<div class="headerContent" >
				<div class="zixun_main_search">
					<form action="">
						<input name="title" placeholder="请输入您所需要的内容"  
						onfocus="if(this.value == this.defaultValue) this.value = ''" 
						onblur="if(this.value == '') this.value = this.defaultValue" />
						<button type="submit" class="searchbtn"></button>
					</form>
					<button onClick="ques();" class="consultation">我要咨询</button>
				</div>
				<div class="choice" id="choice" style="height: 40px;">
					<ul>
						
							<li >
							<a href="webPages/zixun/find.jsp">发票系统故障及操作指导</a>
							</li>
						
							<li >
							<a href="webPages/zixun/find.jsp">发票领购</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">发票代开</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">发票开具</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">红字增值税发票开具</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">申报有误能否作废</a>
							</li>
							<li>
							<a href="webPages/zixun/find.jsp">一般纳税人资格</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">辅导期一般纳税人</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">专用发票认证抵扣</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">小规模纳税人增值税起征点是否有调整</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">认定为一般纳税人之后是否可以转为小规模纳税人</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">小规模纳税人自行开具的增值税专用发票如何填写申报表</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">注销登记</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">发票检查</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">专用发票丢失</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">征收率</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">非国税业务</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">信用等级</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">营改增</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">金税管理</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">进出口税收</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">征收管理</a>
							</li>
						
							<li>
							<a href="webPages/zixun/find.jsp">发票保管</a>
							</li>
						
					</ul>
					<div class="choice_open" ></div>
					<div class="choice_close" ></div>
				</div>
			</div>
			<div class="center">
				<div class="aa" id="b" style="height:920px;">
				  	            <ul class="classify" id="class_one">		    			
				    				<li><button id="button1" onClick="show1()" style="font-size:20px;  border:0px;">最新咨询</button></li>
				    				<li><button id="button2" onClick="show2()" style="font-size:16px; border:0px;" >热门咨询</button></li>
				    				<li><button id="button3"  onClick="show3()" style="font-size:16px; border:0px;" >悬赏咨询</button></li>				
					             </ul>
				  	
				  	<form id="quesForm" action="" style="display:none">
				  		<input name="type" type="hidden" value="latest"/>
						<input name="page" value="1" type="hidden"/>
				  	</form>
				  	
			  		<div class="question" >
				    		<div id="zuixinzixun" style="display: block">
					    		<div><p class="question_title"><b >最新咨询</b></p>	</div>
				    			<div id="quesContent" class="quesContent">
					    			<div class="gary">
									<div class="pink"></div>
								</div>
									<ul style="border-bottom:1px dashed #ccc;height: 70px;">
										<li>
											<a href="webPages/zixun/question_model.jsp"> 想了解个人所得税流程</a>
										</li>
										<li>
											<span>2017-12-20</span>
										</li>
										<li>
											<span>浏览：</span>
											<span>273</span>
										</li>
										<li>
											<span>回答：</span>
											<span>5</span>
										</li>
										<li style="width:110px;">
											<span>收藏：</span>
											<span class="starCount">4</span>
										</li>
										<li>
											<span>分类：</span>
											<span>发票系统故障及操作指导,发票领购</span>
										</li>
										<li	onClick="star(this)" style="float:right;cursor:pointer;display:"block"">
										<span class="star" >收藏</span>
										<span class="has_star" style="display: none">已收藏</span></li>
									</ul>
							</div>
							
								<div id="quesPaging_1" class="box">
								<button type="button" id="firstPage" class="turnPage first-page">首页</button>
								<button class="turnPage" id="prePage">上一页</button>
								<div class="pageWrap" style="width:120px">
									  <ul id="pageSelect" style="transition:all 600ms">
										  <li class="sel-page">1</li>
										  <li class="selpage">2</li>
									  </ul>
								</div>
								<button class="turnPage" id="nextPage">下一页</button>
								<button type="button" id="lastPage" class="last-page">尾页</button>
								<input type="text" placeholder="1" class="jump-text" id="jumpText">
								<button type="button" class="jump-button" id="jumpBtn">跳转</button>
								<p class="total-pages">共&nbsp;2&nbsp;页</p>
								<p class="total-count">合计 15条数据</p>
							</div>
						</div>
							<div id="hot" style="display: none">
					    		<div><p class="question_title"><b>热门咨询</b></p>	</div>
				    			<div id="quesContent_2" class="quesContent_2">
					    			<div class="gary">
									<div class="pink"></div>
								</div>
				    				
									<ul style="border-bottom:1px dashed #ccc;height: 70px;">
										<li>
											<a href="webPages/zixun/question_model.jsp"> 想了解个人所得税流程</a>
										</li>
										<li>
											<span>2017-12-20</span>
										</li>
										
										<li>
											<span>浏览：</span>
											<span>310</span>
										</li>
										<li>
											<span>回答：</span>
											<span>7</span>
										</li>
										<li style="width:110px;">
											<span>收藏：</span>
											<span class="starCount">6</span>
										</li>
										<li>
											<span>分类：</span>
											<span>发票系统故障及操作指导,发票领购</span>
										</li>
										<li	onClick="star(this)" style="float:right;cursor:pointer;">
										<span class="star">收藏</span>
										<span class="has_star" style="display: none">已收藏</span></li>
									</ul>								
							</div>
								<div id="quesPaging_2" class="box_2">
								<button type="button" id="firstPage_2" class="turnPage first-page_2">首页</button>
								<button class="turnPage_2" id="prePage_2">上一页</button>
								<div class="pageWrap_2" style="width:60px">
									  <ul id="pageSelect_2" style="transition:all 600ms">
										  <li class="sel-page_2">1</li>
									  </ul>
								</div>
								<button class="turnPage_2" id="nextPage_2">下一页</button>
								<button type="button" id="lastPage_2" class="last-page_2">尾页</button>
								<input type="text" placeholder="1" class="jump-text_2" id="jumpText_2">
								<button type="button" class="jump-button_2" id="jumpBtn_2">跳转</button>
								<p class="total-pages_2">共&nbsp;1&nbsp;页</p>
								<p class="total-count_2">合计  10条数据</p>
							</div>
						</div>
							<div id="xuanshang" style="display: none">
					    		<div><p class="question_title"><b>悬赏咨询</b></p></div>
				    			<div id="quesContent_3" class="quesContent_3">
					    			<div class="gary">
									    <div class="pink"></div>
								    </div>
				    				
									<ul style="border-bottom:1px dashed #ccc;height: 70px;">
										<li>
											<a href="webPages/zixun/question_model.jsp"> 电子税务的一些知识</a>
										</li>
										<li>
											<span>2017-12-20</span>
										</li>
										
											<li>
												<span>悬赏：</span>
												<span>3</span>
											</li>
										
										<li>
											<span>浏览：</span>
											<span>41</span>
										</li>
										<li>
											<span>回答：</span>
											<span>1</span>
										</li>
										<li style="width:110px;">
											<span>收藏：</span>
											<span class="starCount">1</span>
										</li>
										<li>
											<span>分类：</span>
											<span>发票系统故障及操作指导,发票领购</span>
										</li>
										<li	onClick="star(this)" style="float:right;cursor:pointer;">
										<span class="star" style="display: block">收藏</span>
										<span class="has_star" style="display: none">已收藏</span></li>
									</ul>								
							</div>
								<div id="quesPaging_3" class="box_3">
								<button type="button" id="firstPage_3" class="turnPage first-pagev_3">首页</button>
								<button class="turnPage_3" id="prePage_3">上一页</button>
								<div class="pageWrap_3" style="width:60px">
									  <ul id="pageSelect_3" style="transition:all 600ms">
										  <li class="sel-page_3">1</li>
									  </ul>
								</div>
								<button class="turnPage_3" id="nextPage_3">下一页</button>
								<button type="button" id="lastPage_3" class="last-page_3">尾页</button>
								<input type="text" placeholder="1" class="jump-text_3" id="jumpText_3">
								<button type="button" class="jump-button_3" id="jumpBtn_3">跳转</button>
								<p class="total-pages_3">共&nbsp;1&nbsp;页</p>
								<p class="total-count_3">合计 1条数据</p>
							</div>
						</div>
			    		</div>
		    		</div>
			</div>
			<!-- 分页 end -->
		</div>
  <script type="text/javascript">
 //   /*选择*/
	$('.choice_open').click(function(){
		$('.choice').animate({height:"180px"});
		$('.choice_close').css('display','block');
		$('.choice_open').css('display','none');
	})
	$('.choice_close').click(function(){
		$('.choice').animate({height:"40px"});
		$('.choice_open').css('display','block');
		$('.choice_close').css('display','none');
	})
	

</script>

<script type="text/javascript">
function show1(){
document.getElementById("zuixinzixun").style.display="block";
document.getElementById("hot").style.display="none";
document.getElementById("xuanshang").style.display="none";
}
function show2()
{
document.getElementById("zuixinzixun").style.display="none";
document.getElementById("hot").style.display="block";
document.getElementById("xuanshang").style.display="none";
}
function show3()
{
document.getElementById("zuixinzixun").style.display="none";
document.getElementById("hot").style.display="none";
document.getElementById("xuanshang").style.display="block";
}


function ques(){
		 
	var x=<%=hasLogined%>;
	if(x==false){
		$(".mask").css("opacity","0.3").show(); 
		//制作对话框 
		showDialog(); 
		//展现css的特效 
		$(".dialog").show(); 
	}

	else{
		window.location.href='webPages/zixun/Wo_Yao_Zi_Xun.jsp';
		
	    }
			};
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
	     $(obj).find('.star').css("display","none");
	     $(obj).find('.has_star').css("display","block");
     }
       else{
    	 $(obj).find('.has_star').css("display","none");
    	 $(obj).find('.star').css("display","block");
     };
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
</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="css/bottom.css" />
</head>

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