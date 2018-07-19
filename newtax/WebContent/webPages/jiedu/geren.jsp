<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<base href="<%=basePath%>">
<title>安徽省国家税务局税企互助交流平台</title>
<meta name="viewport" content="width=device-width" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/register2.css">
<link rel="stylesheet" href="css/head.css">
<link rel="icon" href="image/home/favicon.gif" type="image/x-icon" />
<link rel="stylesheet" href="css/zeroModal.css" />
<link rel="stylesheet" href="css/ScreenChange.css" />

<script type="text/javascript">
    function changeValiImage(img){
	img.src = "yzmServlet?time=" + new Date().getTime();
    }
</script>
<style type="text/css">
li {
	list-style: none;
}

body {
	min-height: 900px;
	background: #eee;
}
</style>
</head>
<body>
	<div class="top" style="display: flex; justify-content: space-around;">
		<div class="logo"></div>
		<div class="daohang">
			<ul id="tabs_nav"
				style="display: flex; justify-content: space-around;">
				<li id="oneplus"><a href="webPages/NewFile.jsp" id="one">首页</a><span
					class="underline"></span></li>
				<li id="twoplus"><a href="webPages/zixun/zixun.jsp" id="two">咨询</a></li>
				<li id="threeplus"><a href="webPages/jingyan1/jingyan1.jsp"
					id="three">经验分享</a></li>
				<li id="fourplus"><a href="webPages/jiedu/jiedu.jsp" id="four">专业解读</a></li>
				<li id="fiveplus"><a href="webPages/userarea/userarea.jsp"
					id="five">用户专区</a></li>
				<form action="">
					<li class="top_search">
						<div class="search">
							<a href="webPages/zixun/find.jsp"> <img alt="" src="image/icon/fdj.png"
								class="fangdajing">
							</a> <input type="text" id="sousuo" name="title" class="find"
								value="搜索问题…" />
						</div>
					</li>
				</form>

			</ul>
		</div>
		<!--   用户登录     -->
		<div class="user">
			<div class="user_content">

				<a href="webPages/jiedu/login.jsp" style="padding: 0 50px;"> <img
					src="image/header/u198.png" class="person">
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


	<script>
        $(function(){
           $(".user_text").hover(function(){
               var width_a = $(this).width();
               var width_b = $(this).find(".user_id").width();
               var indent_px = width_a - width_b;
               if( width_a <= width_b ){
                   $(this).css("text-indent",indent_px);
               }
           },function(){
               $(this).css("text-indent","0");
           });
        });
    </script>
	<!-- input点击清除value值 -->
	<script type="text/javascript">
		wap_val = [];
		$(".ssearch").each(function(i) {
			wap_val[i] = $(this).val();
			$(this).focusin(function() {
				if ($(this).val() == wap_val[i]) {
					$(this).val("");
				}
			}).focusout(function() {
				if ($.trim($(this).val()) == "") {
					$(this).val(wap_val[i]);
				}
			});
		});
		//  用户名显示
		 $(".user_id").each(function(){
		  var maxwidth=4;
		  if($(this).text().length > maxwidth){
		    $(this).text($(this).text().substring(0,maxwidth));
		    $(this).html($(this).html()+'...');
		  }
		}); 
	</script>
</body>
</html>
<div class="content">
	<div class="path_nav">
		<span class="touch">当前位置：<a href="webPages/jiedu/register.jsp"
			class="nav_style">注册</a></span> <span class="touch">&nbsp;&gt;&nbsp;</span>
		<span class="touch"><a href="" class="nav_style">个人注册</a></span>
	</div>
	<div class="content_main">
		<div class="content_top">
			<div class="personal_left">个人资料</div>
		</div>
		<div class="content_middle">
			<div class="content_middle_m">
				<form id="addUser" action="/shuiwu/geren" method="post"
					enctype="multipart/form-data" onsubmit="return checkUser();">
					<input type="hidden" name="type" value="0">
					<table style="margin: 0 auto;">
						<tr>
							<td style="width: 25%;">用户名</td>
							<td style="width: 75%;"><input id="userName" type="text"
								name="userName" placeholder="请输入用户名" value="" /></td>
							<td><span id="userName1" class="yanzheng"></span></td>
						</tr>
						<tr>
							<td style="width: 25%;">邮箱</td>
							<td style="width: 75%;"><input id="mail" type="text"
								name="mail" placeholder="请输入邮箱" value=""></td>
							<td><span id="mail1" class="yanzheng"></span></td>
						</tr>
						<tr>
							<td style="width: 25%;">电话</td>
							<td style="width: 75%;"><input id="userTelephone"
								type="text" name="userTelephone" placeholder="请输入电话" value="">
							</td>
							<td><span id="userTelephone1" class="yanzheng"></span></td>
						</tr>
						<tr>
							<td style="width: 25%;">密码</td>
							<td style="width: 75%;"><input id="pwd" type="password"
								name="userPassword" placeholder="请输入密码" value=""></td>
							<td><span id="pwd1" class="yanzheng"></span></td>
						</tr>
						<tr>
							<td style="width: 25%;">确认密码</td>
							<td style="width: 75%;"><input id="confirmPwd"
								type="password" name="pwd" placeholder="请确认密码" value="">
							</td>
							<td><span id="confirmPwd1" class="yanzheng"></span></td>
						</tr>
						<tr>
								<td style="width:25%;">验证码</td>
								<td style="width:75%;">
									<input data-ok="0" id="yanzhengma" type="text" style="width:235px" placeholder="验证码">
									<a><img onclick="changeValiImage(this);" class="Img" src="yzmServlet" alt=""></a>
								</td>
							</tr>
						<tr>
							<td colspan="2">
								<div class="content_middle_btn">
									<button class="save_btn" type="submit">注册</button>
								</div>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- footer start -->


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
/* 底部 */
.shuiwu_footers {
	width: 100%;
	height: 110px;
	background: #1B55A9;
	overflow: hidden;
	min-width: 1200px;
}

.shuiwu_footers_content {
	width: 1200px;
	height: 150px;
	text-align: center;
	margin: -2px auto;
}

.shuiwu_footers_content ul {
	margin: 25px 0;
	color: #fff;
	font-size: 14px;
}

.shuiwu_footers_content ul li {
	height: 20px;
	line-height: 20px;
}

.shuiwu_footers_content ul li a {
	color: #fff;
	text-decoration: none;
}

.shuiwu_footers_content ul:nth-child(1) {
	height: 50px;
	width: 450px;
	margin: 0 auto;
	text-align: center;
}

.shuiwu_footers_content ul:nth-child(2) {
	width: 505px;
	margin: 0 auto;
	text-align: center;
}

.shuiwu_footers_content ul:nth-child(1) li {
	width: 130px;
	height: 50px;
	text-align: right;
	margin: 0 10px;
	line-height: 50px;
}

.shuiwu_footers_content ul:nth-child(1) li:nth-child(1) {
	float: left;
	background: url(image/home/footer_notice.png) left 30px center no-repeat;
	background-size: 25% 61%;
}

.shuiwu_footers_content ul:nth-child(1) li:nth-child(2) {
	float: left;
	background: url(image/home/footer_proposal.png) left 28px center
		no-repeat;
	background-size: 25% 61%;
}

.shuiwu_footers_content ul:nth-child(1) li:nth-child(3) {
	float: left;
	background: url(image/home/footer_contact.png) left 28px center
		no-repeat;
	background-size: 25% 61%;
}

.shuiwu_use {
	display: flex;
}
</style>
<body>
	<div class="shuiwu_footers" id="footer">
		<div class="shuiwu_footers_content">
			<ul class="shuiwu_use">
				<li><a href="webPages/zixun/UseKnow.jsp" target="_blank">使用须知</a></li>
				<li><a href="webPages/zixun/UseHelp.jsp" target="_blank">网站帮助</a></li>
				<li><a href="webPages/zixun/ContactUs.jsp" target="_blank">联系我们</a></li>
			</ul>
			<ul>

				<!-- <li>技术服务由科大讯飞股份有限公司提供</li>
				<li>地址：合肥市xx区xx路xxxx号 邮编：xxxxxx</li>
				<li>传真：xxxxx 电子邮件：xxxxx</li> -->
				<li>安徽省国家税务局主办 ICP备案号********</li>
				<li>技术服务由科大讯飞股份有限公司提供</li>
				<li>通讯地址：合肥市包河区中山路3398号 联系电话：0551-12366</li>
				<!-- <li>建议使用IE9以上浏览器，分辨率大于1024*768</li> -->
			</ul>
		</div>
	</div>
</body>
</html>
<!-- footer end -->
<script>
	
	
		$("#userName").blur(function() {
			var userName = $("#userName").val();
			if (userName.length != 0 && userName !="") {
				$.post('/lagsms/register/volidationUser', {
					userName : $("#userName").val()
				}, function(data) {
					console.log(data);
					if (data.userName == 100) {
					} else {
						$("#userName1").html('用户名已存在!');
					}
				});
			}
		});
		$("#userTelephone").blur(function(){
			var userTelephone = $("#userTelephone").val();
			if (userTelephone.length != 0 && userTelephone != "") {
				$.post('/lagsms/register/volidationUser', {
					userTelephone : $("#userTelephone").val()
				}, function(data) {
					console.log(data);
					if (data.userTelephone == 300) {
					} else {
						$("#userTelephone1").html('手机号已存在!');
					}
				});
			}
		});
		
		$('#userName').bind('input propertychange', function() {
			var userName = $("#userName").val();

			console.log("document--", userName);
			if (userName.length === 0) {
				$("#userName1").html('用户名不能为空!');
				return;
			} else {
				$("#userName1").html('');
			}
		});
		$('#mail').bind('input propertychange', function() {
			var mail = $("#mail").val();

			console.log("document--", mail);
			if (mail.length === 0) {
				$("#mail1").html('邮箱不能为空!');
				return;
			} else {
				$("#mail1").html('');
			}
		});
		$('#userTelephone').bind('input propertychange', function() {
			var userTelephone = $("#userTelephone").val();

			console.log("document--", userTelephone);
			if (userTelephone.length === 0) {
				$("#userTelephone1").html('电话号不能为空!');
				return;
			} else {
				$("#userTelephone1").html('');
			}
		});
		$('#pwd').bind('input propertychange', function() {
			var pwd = $("#pwd").val();

			console.log("document--", pwd);
			if (pwd.length === 0) {
				$("#pwd1").html('密码不能为空!');
				return;
			} else {
				$("#pwd1").html('');
			}
		});
		$('#confirmPwd').bind('input propertychange', function() {
			var confirmPwd = $("#confirmPwd").val();

			console.log("document--", confirmPwd);
			if (confirmPwd.length === 0) {
				$("#confirmPwd1").html('密码不能为空!');
				return;
			} else {
				$("#confirmPwd1").html('');
			}
		});
		$('#verifyCode').bind('input propertychange', function() {
			var confirmPwd = $("#verifyCode").val();

			console.log("document--", confirmPwd);
			if (verifyCode.length === 0) {
				$("#code1").html('验证码不能为空!');
				return;
			} else {
				$("#code1").html('');
			}
		});
		function updateVerifyCode() {
			event.target.src = event.target.src + "?t=" + Date.now();
		}

		function checkUser() {
			var userName = $("#userName").val();
			var mail = $("#mail").val();
			var userTelephone = $("#userTelephone").val();
			var pwd = $("#pwd").val();
			var confirmPwd = $("#confirmPwd").val();
			var verifyCode = $("#verifyCode").val();

			if (userName.length == 0) {
				$("#userName1").html('用户名不能为空!');
				return false;
			}

			if (mail.length == 0) {
				$("#mail1").html('邮箱不能为空!');
				return false;
			}
			var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
			if (!re.test(mail)) {
				$("#mail1").html('邮箱格式错误!');
				return false;
			}
			if (userTelephone.length == 0) {
				$("#userTelephone1").html('电话号不能为空!');
				return false;
			}
			var req = /^(?:13\d|14\d|15\d|17\d|18\d)-?\d{5}(\d{3}|\*{3})$/;
			if (!req.test(userTelephone)) {
				$("#userTelephone1").html('您输入的电话号码格式错误!');
				return false;
			}
			if (pwd.length == 0) {
				$("#pwd1").html('密码不能为空!');
				return false;
			}
			if (pwd.length > 15 || pwd.length < 6) {
				$("#pwd1").html('请输入6-15位密码!');
				return false;
			}
			if (confirmPwd.length == 0) {
				$("#confirmPwd1").html('密码不能为空!');
				return false;
			}
			if (pwd != confirmPwd) {
				$("#confirmPwd1").html('两次密码输入不一致!');
				return false;
			}
			if (verifyCode.length == 0) {
				$("#code1").html('验证码不能为空!');
				return false;
			}
			if ($("#verifyCode").data('ok') == '1') {
				return true;
			}
			if (verifyCode != null) {
				$.post('/lagsms/verifyCode', {
					verifyCode : $('#verifyCode').val()
				}, function(data) {
					console.log(data);

					if (data.code == 200) {
						alert("注册成功！请登录！");
						$("#verifyCode").data('ok', '1');
						$('#addUser').submit();
					} else {
						//alert(1);
						$("#code1").html('验证码错误!');
					}
				});
			}
			return false;
		}
	</script>


</body>
</html>