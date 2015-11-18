<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-us">
<head>
<%@ include file="/common/header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>渠道管理 - 全民创业</title>
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- Basic Styles -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${ctx}/static/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${ctx}/static/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${ctx}/static/css/smartadmin-production.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${ctx}/static/css/smartadmin-skins.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${ctx}/static/css/your_style.css">
<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${ctx}/static/css/demo.css">
<!-- FAVICONS -->
<link rel="shortcut icon" href="${ctx}/static/img/favicon/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="${ctx}/static/img/favicon/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${ctx}/static/img/splash/sptouch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="${ctx}/static/img/splash/touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="${ctx}/static/img/splash/touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="${ctx}/static/img/splash/touch-icon-ipad-retina.png">

<script src="${ctx}/static/js/libs/jquery-2.0.2.min.js"></script>
<script src="${ctx}/static/js/libs/jquery-ui-1.10.3.min.js"></script>
</head>
<body
	class="desktop-detected smart-style-1 pace-done fixed-header fixed-ribbon fixed-navigation">


	<div id="copy" style="display: none; width: 1000px">
		<div class="jumbotron cc1" style="margin-bottom: 0px;">
			<h2>Branch Path:</h2>
			<p id="branch_path" style="color: highlight;"></p>
		</div>
	</div>

	<script>
		$(document).ready(function() {
			$("body").on('click', '.svn-path-heard', function() {
				var i = $(this).attr('data-internal');
				$("#branch_path").text(i);
			})
		});
	</script>


	<!-- MAIN PANEL -->
	<div>

		<div id="content">
			<div class="row"></div>
			<div id="msg_box"></div>

			<div class="jarviswidget jarviswidget-sortable" id="wid-id-1"
				data-widget-colorbutton="false" data-widget-editbutton="false"
				data-widget-custombutton="false" role="widget" style="">

				<header role="heading">
					<span class="widget-icon"> <i class="fa fa-edit"></i>
					</span>
					<h2>新增</h2>
				</header>

				<!-- widget div-->
				<div role="content">

					<!-- widget edit box -->
					<div class="jarviswidget-editbox">
						<!-- This area used as dropdown edit box -->
					</div>
					<!-- end widget edit box -->

					<!-- widget content -->
					<div class="widget-body no-padding">

						<form method="post" id='form' class="smart-form"
							action="${ctx}/getdata?action=addchannel">
							<header> New Attr </header>

							<fieldset>

									<section class="col-3">
										<label class="label">用户ID</label>
										<input type="text" id="i1" name="id" class="input-sm" placeholder="用户ID" onchange="getInfo()" />
									</section>
									<section class="col-3">
										<label class="label">负责人</label>
										<input type="text" id="i2" name="username" class="input-sm" placeholder="负责人" />
									</section>
									
									<section class="col-3">
										<label class="label">联系方式</label>
										<input type="text" id="i4" name="tel" class="input-sm" placeholder="联系方式" />
									</section>
									<section class="col-3">
										<label class="label">地区</label>
										<input type="text" id="i3" name="city" class="input-sm" placeholder="地区"  />
									</section>
									<section class="col-3">
										<label class="label">渠道类型</label> 
										
										<label><input id="c1" name="channel" type="checkbox" value="商圈" />商圈 </label> 
										<label><input id="c2" name="channel" type="checkbox" value="高校" />高校</label> 
										<label><input id="c3" name="channel" type="checkbox" value="社区" />社区</label> 
									</section>
									
									<section class="col-3">
										<label class="label">推广方式</label> 
										<label><input id="m1" name="method" type="checkbox" value="路演" />路演</label> 
										<label><input id="m2" name="method" type="checkbox" value="扫街" />扫街</label> 
										<label><input id="m3" name="method" type="checkbox" value="扫楼" />扫楼</label> 
									</section>
									<section class="col-3">
										<label class="label">团队属性</label> 
										<label><input id="t1" name="team_property" type="checkbox" value="在校学生" />在校学生</label> 
										<label><input id="t2" name="team_property" type="checkbox" value="兼职团队" />兼职团队</label> 
										<label><input id="t3" name="team_property" type="checkbox" value="公司团队" />公司团队</label> 
									</section>
									<section class="col-3">
										<label class="label">每日量级</label>
										<input type="number" id="count" name="count" class="input-sm" placeholder="每日量级"  />
									</section>
									
									<section class="col-3">
										<label class="label">团队规模</label>
										<input type="number" id="team_scale" name="team_scale" class="input-sm" placeholder="团队规模"  />
									</section>
									
									<section class="col-3">
										<label class="label">其他说明</label>
										<input type="text" id="other_instruction" name="other_instruction" class="input-sm" placeholder="其他说明"  />
									</section>
									

							</fieldset>

							<footer>
								<button type="button" class="btn btn-primary" onclick="sub()">Save</button>
								<button type="button" class="btn btn-default"
									onclick="window.location.href='${ctx}/getdata?action=search'">Back</button>
							</footer>
						</form>

					</div>
					<!-- end widget content -->

				</div>
				<!-- end widget div -->
			</div>

			<script src="${ctx}/static/js/plugin/jquery-form/jquery-form.min.js"></script>
			<script type="text/javascript">
			function getInfo(){
				var uid = $("#i1").val();
				if(uid==''){
					alert('请输入id');
					return;
				}
				$.post("${ctx}/getdata?action=searchmember", { id: uid},
						   function(data){
					var result = eval(data);
					if(result.code==0){
						$("#i1").val('');
						alert(result.msg);
						return false;
					}else{
						var d =  eval(result.data);
						$("#i2").val(d.nickname);
						$("#i4").val(d.tel);
					}},'json');
			}
			
			
			function sub(){
	 			if($("#i1").val()==''){
					alert("请输入id号");
					return;
				}
				if($("#i3").val()==''){
					alert("请输入地区");
					return;
				}
				if(document.getElementById("c1").checked==false && 
						document.getElementById("c2").checked==false &&
						document.getElementById("c3").checked==false){
					alert("请选择渠道类型");
					return;
				}
				var channel = '';
				if(document.getElementById("c1").checked==true){
					channel = $("#c1").val()+',';
				}
				if(document.getElementById("c2").checked==true){
					channel = $("#c2").val()+',';
				}
				if(document.getElementById("c3").checked==true){
					channel = $("#c3").val()+',';
				}
				if(document.getElementById("m1").checked==false && 
						document.getElementById("m2").checked==false &&
						document.getElementById("m3").checked==false){
					alert("请选择推广方式");
					return;
				}
				
				var method = '';
				if(document.getElementById("m1").checked==true){
					method = $("#m1").val()+',';
				}
				if(document.getElementById("m2").checked==true){
					method = $("#m2").val()+',';
				}
				if(document.getElementById("m3").checked==true){
					method = $("#m3").val()+',';
				}
				if(document.getElementById("t1").checked==false && 
						document.getElementById("t2").checked==false &&
						document.getElementById("t3").checked==false){
					alert("请选择团队属性");
					return;
				} 
				if($("#count").val()==''){
					alert("请输入量级");
					return;
				}
				if($("#team_scale").val()==''){
					alert("请输团队规模");
					return;
				}
				
				 $.post("${ctx}/getdata?action=searchchanneldetail",
						 { id: $("#i1").val(),city:$("#i3").val(),count:$("#count").val(),method:method,channel:channel},
						   function(data){
					if(data==0){
						$("#i1").val('');
						alert("此数据已经存在");
						return false;
					}else{
						$("#form").submit();
					}},'json'); 
				
			}
			</script>
		</div>
		<!-- END MAIN CONTENT -->
	</div>
	<!-- END MAIN PANEL -->
	<!-- ==========================CONTENT ENDS HERE ========================== -->
	<!--================================================== -->

	<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
	<script data-pace-options='{ "restartOnRequestAfter": true }'
		src="${ctx}/static/js/plugin/pace/pace.min.js"></script>

	<!-- JS TOUCH : include this plugin for mobile drag / drop touch events
		<script src="${ctx}/static/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

	<!-- BOOTSTRAP JS -->
	<script src="${ctx}/static/js/bootstrap/bootstrap.min.js"></script>

	<!-- CUSTOM NOTIFICATION -->
	<script src="${ctx}/static/js/notification/SmartNotification.min.js"></script>

	<!-- JARVIS WIDGETS -->
	<script src="${ctx}/static/js/smartwidgets/jarvis.widget.min.js"></script>

	<!-- EASY PIE CHARTS -->
	<script
		src="${ctx}/static/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

	<!-- SPARKLINES -->
	<script src="${ctx}/static/js/plugin/sparkline/jquery.sparkline.min.js"></script>

	<!-- JQUERY VALIDATE -->
	<script
		src="${ctx}/static/js/plugin/jquery-validate/jquery.validate.min.js"></script>

	<!-- JQUERY MASKED INPUT -->
	<script
		src="${ctx}/static/js/plugin/masked-input/jquery.maskedinput.min.js"></script>

	<!-- JQUERY SELECT2 INPUT -->
	<script src="${ctx}/static/js/plugin/select2/select2.min.js"></script>

	<!-- JQUERY UI + Bootstrap Slider -->
	<script
		src="${ctx}/static/js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

	<!-- browser msie issue fix -->
	<script src="${ctx}/static/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

	<!-- FastClick: For mobile devices -->
	<script src="${ctx}/static/js/plugin/fastclick/fastclick.js"></script>
	<!--[if IE 7]>

		<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

		<![endif]-->

	<!-- Demo purpose only -->
	<script src="${ctx}/static/js/demo.js"></script>

	<!-- MAIN APP JS FILE -->
	<script src="${ctx}/static/js/app.js"></script>
	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript"
		src="${ctx}/static/js/fancy/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css"
		href="${ctx}/static/js/fancy/source/jquery.fancybox.css?v=2.1.5"
		media="screen" />
	<script type="text/javascript">
		$(document).ready(function() {
			pageSetUp();
			/*
			 *  Simple image gallery. Uses default settings
			 */
			$('.fancybox').fancybox();
		})
	</script>

	<script type="text/javascript"
		src="${ctx}/static/js/fancy/lib/jquery.mousewheel-3.0.6.pack.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/common.js"></script>


</body>
</html>