<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>MyBlog</title>

	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/index.css">
<link type="text/css" rel="stylesheet" href="css/main.css" />
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
  </head>

  <body>

  	<!-- 右下角按钮 -->
  	<!-- <button class="btn btn-default btn_right_bottom">写</button> -->
  	<!-- 图片轮播 -->
  	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  		<!-- Indicators -->
  		<ol class="carousel-indicators">
  			<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
  			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
  			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
  			<li data-target="#carousel-example-generic" data-slide-to="3"></li>
  			<li data-target="#carousel-example-generic" data-slide-to="4"></li>
  			<li data-target="#carousel-example-generic" data-slide-to="5"></li>
  		</ol>

  		<!-- Wrapper for slides -->
  		<div class="carousel-inner" role="listbox">
  			<div class="item active">
  				<img src="img/ic_p4.jpg">
  				<p class="carousel-caption">
  					
  				</p>
  			</div>
  			<div class="item">
  				<img src="img/ic_p5.jpg">
  				<p class="carousel-caption">
  					
  				</p>
  			</div>
  			<div class="item">
  				<img src="img/ic_p6.jpg">
  				<p class="carousel-caption">
  					
  				</p>
  			</div>
  			<div class="item">
  				<img src="img/ic_p7.jpg">
  				<p class="carousel-caption">
  					
  				</p>
  			</div>
  			<div class="item">
  				<img src="img/ic_p8.jpg">
  				<p class="carousel-caption">
  					
  				</p>
  			</div>
  			<div class="item">
  				<img src="img/ic_p9.jpg">
  				<p class="carousel-caption">
  					
  				</p>
  			</div>
  		</div>

  		<!-- Controls -->
  		<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
  			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
  			<span class="sr-only">Previous</span>
  		</a>
  		<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
  			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
  			<span class="sr-only">Next</span>
  		</a>
  	</div>
  	<!-- 功能模块 -->
  	<div class="row div_function">
  		<div class="col-xs-4">
  			<div class="panel panel-default" id="pFunc1">
  				<a href="<%=request.getContextPath() %>/FangkeServlet?method=tofangketotal&currentPage=1">
  					<div class="panel-body">
  						<strong>MyBlog</strong>
  						<img class="iv_function" src="img/ic_store.svg">
  					</div>
  				</a>
  			</div>
  		</div>
  		<div class="col-xs-4">
  			<div class="panel panel-default"  id="pFunc2">
  				<a href="#" onclick="fun()">
  					<div class="panel-body">
  						<strong>私人角落</strong>
  						<img class="iv_function" src="img/ic_remeber.svg">
  					</div>
  				</a>
  			</div>
  		</div>
  		<div class="col-xs-4">
  			<div class="panel panel-default"  id="pFunc3">
  				<a href="#" onclick="fun()">
	  				<div class="panel-body">
	  					<strong>个人中心</strong>
	  					<img class="iv_function" src="img/ic_personal.svg">
	  				</div>
  				</a>
  			</div>
  		</div>
  	</div>
  	<!-- 技术日记 -->
  	<div class="container div_divider">
  		<!-- 分割线 -->
  		<hr class="hr_1">Bigname Technology World !<hr class="hr_2">
  		<div class="row">
  			<!-- 文章列表 -->
  			<div class="col-xs-9">
  				<div class="list-group div_article">
  					<!-- 子头栏 -->
  					<a href="#" class="list-group-item active item_article_first">
  						<h4 class="list-group-item-heading">
  							My Life, Like Sun!
  						</h4>
  					</a>
  					<!-- 文章列表 -->
  					<c:forEach items="${requestScope.randomArticle }" var="Article" varStatus="s">
  					<div class="list-group-item item_article">
  						<div class="row">
  							<div class="div_center col-xs-9">
  								<div class="list-group-item-heading div_article_title">
  									<strong>
  										${Article.article_title }
  									</strong>
  								</div>
  								<p class="list-group-item-text div_article_content">
  										${Article.article_content }
  								</p>
  							</div>
  							<!-- 右侧图片，信息 -->
  							<c:choose>
  								<c:when test="${Article.article_images==null }">
  									<div class="col-xs-3 div_right_info">
  										
  									</div>
  								</c:when>
  								<c:otherwise>
  									<div class="col-xs-3 div_right_info">
  										<img class="iv_article img-rounded" src="/images/${Article.article_images }">
  									</div>
  								</c:otherwise>
  							</c:choose>
  						</div>
  					</div>
  				</c:forEach>
  					
  				</div>
  			</div>
  			<!-- 右侧 -->
  			<div class="col-xs-3 div_record">
  				<!-- 用户信息 -->
  				<div class="jumbotron div_userinfo">
  					<img class="iv_user_head img-circle" src="img/ic_p5.jpg">
  					<div style="display: inline-block; margin-left: 12px;font-size: 18px;">MyBlog</div>
  				</div>
  				<!-- 随手记录 -->
  				<div style="display: flex;">
  					<div style="flex: 1"><hr></div>
  					<div style="text-align: center;line-height: 48px;color: #34374C">记录美好的心情</div>
  					<div style="flex: 1"><hr></div>
  				</div>
  				<input type="text" class="form-control" placeholder="标题:美好的一天...">
  				<br>
  				<textarea class="form-control" rows="3" name=textarea placeholder="内容:今天捡到一分钱！！！^_^"></textarea>
  				<br>
  				<div class="div_save">
  					<button type="button" class="btn btn-primary btn_save_record">save</button>
  				</div>
  				<hr>
  				<!-- 小功能列表 -->
  				<div class="row div_little_func">
  					<div class="col-xs-4">
  						<a href="login.jsp"><button class="btn btn-default btn-cricle btn_login">登</button></a>
  					</div>
  					<div class="col-xs-4">
  						
  					</div>
  					<div class="col-xs-4" >
  						<button class="btn btn-default btn-cricle btn_write" onclick="fun()">写</button>
  					</div>
  				</div>
  			</div>
  		</div>
  		
  		<div class="foot_line"></div>
			</div><!-- container -->
		<div id="footer">
		<div>
			<a href="<%=request.getContextPath()%>/FangkeServlet?method=tofangkeindex" style="font-size: 20px;"><img src="img/logo.png"width="45px" height="45px" class="img-circle">&nbsp;&nbsp;MyBlog&nbsp;|</a>
			
			<a href="https://www.csdn.net/" style="font-size: 20px;">&nbsp;&nbsp;CSDN</a>
			<br/>
			copyright © 2018
		</div>		
		
		<div class="r_div">
		<a href="#"><input  class="btn btn-default"   value="返回顶部"  style="width:50%;"/></a>
		<h6> </h6>
		<h6> </h6>    
		</div>
		
		</div><!-- footer -->
 


  	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  	<script src="js/jquery-3.3.1.min.js"></script>
  	<!-- Include all compiled plugins (below), or include individual files as needed -->
  	<script src="js/bootstrap.min.js"></script>
  	<script src="js/init.js" type="text/script"></script>
  	<script src="js/util.js"></script>
  	<script type="text/javascript">
		function fun(){
			alert("您还未登录");
		}
	</script>
  </body>
  </html>