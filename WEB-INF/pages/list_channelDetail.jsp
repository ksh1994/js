<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-us">
<head>
<%@ include file="/common/header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>全民创业</title>
<meta name="description" content="">
<meta name="author" content="">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Basic Styles -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${ctx}/static/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${ctx}/static/css/font-awesome.min.css">

<!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
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

<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<!-- Startup image for web apps -->
<link rel="apple-touch-startup-image"
	href="${ctx}/static/img/splash/ipad-landscape.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
<link rel="apple-touch-startup-image"
	href="${ctx}/static/img/splash/ipad-portrait.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
<link rel="apple-touch-startup-image"
	href="${ctx}/static/img/splash/iphone.png"
	media="screen and (max-device-width: 320px)">
<script src="${ctx}/static/js/libs/jquery-2.0.2.min.js"></script>
<script src="${ctx}/static/js/libs/jquery-ui-1.10.3.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/js/fancy/source/jquery.fancybox.css?v=2.1.5"
	media="screen" />
<!-- PAGE RELATED PLUGIN(S) -->
<script
	src="${ctx}/static/js/plugin/datatables/jquery.dataTables-cust.min.js"></script>
<script src="${ctx}/static/js/plugin/datatables/ColReorder.min.js"></script>
<script src="${ctx}/static/js/plugin/datatables/FixedColumns.min.js"></script>
<script src="${ctx}/static/js/plugin/datatables/ColVis.min.js"></script>
<script src="${ctx}/static/js/plugin/datatables/ZeroClipboard.js"></script>
<script
	src="${ctx}/static/js/plugin/datatables/media/js/TableTools.min.js"></script>
<script src="${ctx}/static/js/plugin/datatables/DT_bootstrap.js"></script>
<script src="${ctx}/static/js/app.js"></script>


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
</head>
<body>
	<div class="row" id="data_list">
		<!-- NEW WIDGET START -->
		<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<!-- Widget ID (each widget will need unique ID)-->
			<div class="jarviswidget jarviswidget-color-white" id="wid-id-10"
				data-widget-editbutton="false" data-widget-colorbutton="false">

				<header>
					<span class="widget-icon"> <i class="fa fa-table"></i>
					</span>
					<h2>Log List</h2>

				</header>

				<!-- widget div-->
				<div>
					<!-- end widget edit box -->

					<!-- widget content -->
					<div class="widget-body no-padding">
						<div class="widget-body-toolbar">
							<div class="text-align-right">
								<form id="f" action="${ctx}/getdata?action=search" method="post">
									<input type="text" id="d" name="d" class="input-sm"
										placeholder="地区" value="${d}" /> <select type="text" id="q"
										name="q" class="input-sm" placeholder="渠道">
										<option <c:if test ="${q eq ''}">selected="selected" </c:if>
											value="">请选择渠道类型</option>
										<option
											<c:if test ="${q eq '商圈' }">selected="selected" </c:if>
											value="商圈">商圈</option>
										<option
											<c:if test ="${q eq '高校' }">selected="selected" </c:if>
											value="高校">高校</option>
										<option
											<c:if test ="${q eq '社区' }">selected="selected" </c:if>
											value="社区">社区</option>
									</select> <input type="text" id="s" name="s" class="input-sm"
										placeholder="属性" value="${s}" /> <input type="submit"
										class="btn btn-sm btn-success" value="查询" />
								</form>
								<!--  <a href="#" class="btn btn-sm btn-success"> <i class="fa fa-plus"></i> 新增 </a> -->
							</div>
						</div>

						<table id="dt_basic"
							class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>ID</th>
									<th>负责人</th>
									<th>地区</th>
									<th>渠道类型</th>
									<th>联系方式</th>
									<th>每日量级</th>
									<th>团队属性</th>
									<th>团队规模</th>
									<th>推广方式</th>
									<th>其他说明</th>
									<th>创建时间</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${list }" var="l">
									<tr>
										<td>${l.userId }</td>
										<td>${l.userName }</td>
										<td>${l.city }</td>
										<td>${l.channelType }</td>
										<td>${l.tel }</td>
										<td>${l.dailyCount }</td>
										<td>${l.team_property }</td>
										<td>${l.team_scale }</td>
										<td>${l.method }</td>
										<td>${l.other_instruction }</td>
										<td>${l.createTime }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

					</div>
					<!-- end widget content -->

				</div>
				<!-- end widget div -->

			</div>
			<!-- end widget -->
		</article>
		<!-- WIDGET END -->

		<script>
			$(document)
					.ready(
							function() {
								pageSetUp();
								$('.fancybox').fancybox();
								/*
								 * BASIC
								 */
								if ($('#dt_basic').length > 0) {
									$('#dt_basic')
											.dataTable(
													{
														"sPaginationType" : "bootstrap_full",
														"aaSorting" : [ [ 7,
																'desc' ] ],
																"sDom" : "R<'dt-top-row'f>r<'dt-wrapper't><'dt-row dt-bottom-row'<'row'<'col-sm-6'i><'col-sm-6 text-right'p>>",
													});
												}
								
								
								$('#a').click(function(){
									$('#f1').submit();
								});
											});
		</script>
		<form action="${ctx}/getdata?action=add" id="f1" method="post">
			<div style="text-align: center;">
				<div class="btn-group">
					<a  id="a" class="btn  btn-success"
						style="padding: 10px 40px 10px; font-size: 18px; line-height: 1.5;">
						<i class="fa fa-plus"></i> 新增
					</a>
				</div>
			</div>
		</form>

	</div>


</body>
</html>