<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css" />
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* recommends */
		.recommends .list-3 .swiper-button-prev {
						padding: 30px 20px;
						left: 10px;
						background: none;
						right: auto;
					}
		
		.recommends .list-3 .swiper-button-prev::after {
						color: #84a5bf;
					}
		
		.recommends .list-3 .swiper-button-next {
						padding: 30px 20px;
						left: auto;
						background: none;
						right: 10px;
					}
		
		.recommends .list-3 .swiper-button-next::after {
						color: #84a5bf;
					}
		
		.recommends .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.recommends .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends .animation-box:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.recommends img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 0.75;
						transition: 0.3s;
					}
		/* recommends */
		
		/* news */
		.news .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-6 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-6 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .animation-box:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.news img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news img:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 0.75;
						transition: 0.3s;
					}
		/* news */
		
		/* lists */
		.lists .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-3 .swiper-button-prev::after {
						color: #5bb450;
					}
		
		.lists .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-3 .swiper-button-next::after {
						color: #5bb450;
					}
		
		.lists .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.lists .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.lists .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 0.75;
						transition: 0.3s;
					}
		/* lists */
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="baseurl+item.value" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			

			<div :style='{"padding":"0","margin":"10px auto","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between"}'>
			
				

				<!-- 推荐 -->
				<div class="recommends" :style='{"padding":"40px 0 10px","margin":"0","borderColor":"#eee","textAlign":"center","display":"block","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230413/85101389531f444fb2d7c0aa5a0ebb27.jpg) no-repeat center top / 100% 100%","borderWidth":"0px","flex":"1","width":"100%","position":"relative","borderStyle":"solid","order":"1"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230128/8ff79878bd0249ceb0ce5c2479e6212f.jpg) no-repeat center center","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 0px 10px","margin":"0px auto","borderColor":"#f6cccc","alignItems":"center","textAlign":"left","flexDirection":"initial","display":"flex","justifyContent":"center","minHeight":"50px","borderRadius":"10px 10px 0 0","background":"url(http://codegen.caihongy.cn/20230412/08758df8c5fb4e019ebfe90e1461fcf6.png) no-repeat center bottom","borderWidth":"0px","width":"86%","borderStyle":"dashed"}'>
						<span :style='{"padding":"0 10px","color":"#333","background":"none","display":"none","width":"50%","fontSize":"16px","lineHeight":"50px","order":"2","textTransform":"uppercase"}'>Recommend</span>
						<span :style='{"padding":"0 0px","margin":"0px","color":"#333","textAlign":"center","background":"none","width":"100%","fontSize":"30px","lineHeight":"50px"}'>产品信息推荐</span>
					</div>
					
					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230128/8ff79878bd0249ceb0ce5c2479e6212f.jpg) no-repeat center center","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				
					<!-- 样式三 -->
				    <div class="list list-3">
						<div :style='{"padding":"0px","margin":"40px auto 0","borderColor":"#fff","borderRadius":"0px","background":"none","borderWidth":"0px","width":"86%","borderStyle":"solid","height":"auto"}' class="swiper-container" id="recommendchanpinxinxi">
							<div class="swiper-wrapper">
								<div class="swiper-slide animation-box" :style='{"border":"0px solid #e6e6e6","cursor":"pointer","padding":"10px","borderRadius":"0","background":"none","width":"285px","fontSize":"0","position":"relative","height":"auto"}' v-for="(item,index) in chanpinxinxiRecommend" :key="index" @click="jump('../chanpinxinxi/detail.jsp?id='+item.id)">
									<img :name="item.id" :style='{"border":"0px solid #e6eff6","width":"100%","borderRadius":"0px","objectFit":"contain","background":"#fff","height":"285px"}' :src="item.tupian?baseurl+item.tupian.split(',')[0]:''" alt="" />
									<div :style='{"padding":"0 0px","margin":"0 auto","whiteSpace":"nowrap","overflow":"hidden","color":"#333","background":"#eff4f8","width":"100%","fontSize":"16px","lineHeight":"40px","textOverflow":"ellipsis"}'>产品名称:{{item.chanpinmingcheng}}</div>
								</div>
							</div>
														<!-- 如果需要导航按钮 -->
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
													</div>
				    </div>
					
					<div :style='{"cursor":"pointer","padding":"0 20px","margin":"40px auto 40px","borderColor":"#bccfde","borderRadius":"0px","textAlign":"center","background":"none","borderWidth":"0px","display":"inline-block","width":"auto","lineHeight":"44px","borderStyle":"solid"}' @click="jump('../chanpinxinxi/list.jsp')">
						<span :style='{"color":"#84a5bf","fontSize":"16px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#84a5bf","fontSize":"16px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230128/8ff79878bd0249ceb0ce5c2479e6212f.jpg) no-repeat center center","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<!-- 推荐 -->

            
					

				<!-- 新闻资讯 -->
				<div class="news" :style='{"margin":"20px 0 0px","borderColor":"#eee","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230412/2688c1e7a543404aaae29818d1b54b70.jpg) no-repeat center top / 100% 100%","borderWidth":"0px","display":"block","width":"100%","position":"relative","borderStyle":"solid","order":"10"}'>
					<div v-if="false && 3 == 1" class="news-idea" :style='{"padding":"0px","margin":"0 auto","flexWrap":"wrap","background":"none","display":"flex","width":"86%","justifyContent":"space-between"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230217/1f25c2bc566b49c4959565f1941d60ee.jpg) no-repeat center top","height":"300px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 0px 20px","margin":"50px auto 20px","borderColor":"#DF8A83","borderRadius":"0px","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230412/08758df8c5fb4e019ebfe90e1461fcf6.png) no-repeat center bottom","flexDirection":"inherit","borderWidth":"0px","display":"flex","width":"100%","borderStyle":"double","height":"60px"}'>
						<span :style='{"padding":"0 10px","color":"#999","textAlign":"left","background":"none","display":"none","width":"50%","fontSize":"16px","lineHeight":"50px","order":"2"}'>HOME NEWS</span>
						<span :style='{"padding":"0 0px 0 0px","margin":"0 0px 0 0","color":"#333","textAlign":"center","background":"none","display":"inline-block","width":"100%","fontSize":"30px","lineHeight":"50px"}'>公告信息</span>
					</div>
					
					<div v-if="false && 3 == 2" class="news-idea" :style='{"padding":"0px","margin":"0 auto","flexWrap":"wrap","background":"none","display":"flex","width":"86%","justifyContent":"space-between"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230217/1f25c2bc566b49c4959565f1941d60ee.jpg) no-repeat center top","height":"300px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
						
					<div :style='{"padding":"20px 7%","flexWrap":"wrap","textAlign":"left","background":"none","display":"block","width":"100%","justifyContent":"space-between","height":"auto"}' v-if="newsList.length" class="list list-10">
						<div v-if="newsList.length>0" @click="jump('../news/detail.jsp?id='+newsList[0].id)" :style='{"border":"0px solid #e6e6e6","cursor":"pointer","padding":"0px","margin":"0 0px","background":"#fff","width":"48%","position":"relative","float":"left","height":"auto"}' class="new10-list-item animation-box">
							<img :style='{"width":"100%","objectFit":"cover","display":"block","height":"260px"}' :src="newsList[0].picture?baseurl+newsList[0].picture:''" alt="">
							<div :style='{"padding":"10px 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#90b3ce","background":"none","width":"calc(100% - 80px)","fontSize":"16px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}' class="new9-list-item-title">{{newsList[0].title}}</div>
							<div :style='{"padding":"0 10px","overflow":"hidden","color":"#666","background":"none","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"76px"}' class="new9-list-item-descript">{{newsList[0].introduction}}</div>
							<div :style='{"fontSize":"14px","lineHeight":"24px","position":"absolute","right":"20px","color":"#999","top":"270px"}' class="new9-list-item-time">{{newsList[0].addtime.split(' ')[0]}}</div>
							<div :style='{"padding":"0 10px","margin":"0 10px 10px","color":"#999","background":"#fff","display":"none","fontSize":"12px","lineHeight":"24px"}' class="new9-list-item-identification">新闻动态</div>
						</div>
						<div v-if="newsList.length>1" :style='{"margin":"0 0 0 2%","background":"none","flexDirection":"column","display":"flex","width":"48%","position":"relative","float":"right","justifyContent":"space-between","height":"auto"}'>
							<div v-for="(item,index) in newsList" v-if="index<4 && index>0" :key="index" @click="jump('../news/detail.jsp?id='+item.id)" :style='{"border":"0px solid #e6e6e6","cursor":"pointer","margin":"0 0 12px","background":"#fff","width":"100%","position":"relative","height":"120px"}' class="new10-list-item animation-box">
								<div :style='{"padding":"4px 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#90b3ce","background":"none","width":"calc(100% - 80px)","fontSize":"16px","lineHeight":"28px","textOverflow":"ellipsis","fontWeight":"600"}' class="new9-list-item-title">{{ item.title }}</div>
								<div :style='{"padding":"0 10px","margin":"0 auto","overflow":"hidden","color":"#666","background":"none","width":"calc(100% - 0px)","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"72px"}' class="new9-list-item-descript">{{ item.introduction }}</div>
								<div :style='{"fontSize":"14px","lineHeight":"24px","position":"absolute","right":"10px","color":"#999","top":"4px"}' class="new9-list-item-time">{{ item.addtime.split(' ')[0] }}</div>
								<div :style='{"padding":"0 10px","fontSize":"12px","lineHeight":"24px","color":"#999","background":"#fff","display":"none"}' class="new9-list-item-identification">新闻动态</div>
							</div>
						</div>
					</div>
					
					<div :style='{"cursor":"pointer","padding":"0 20px","margin":"20px auto 40px","borderColor":"#ccc","borderRadius":"30px","textAlign":"center","background":"none","borderWidth":"0px","display":"inline-block","width":"86%","lineHeight":"40px","borderStyle":"solid"}' @click="jump('../news/list.jsp')">
						<span :style='{"color":"#84a5bf","fontSize":"16px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#84a5bf","fontSize":"16px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 3 == 3" class="recommend-idea" :style='{"padding":"0px","margin":"0 auto","flexWrap":"wrap","background":"none","display":"flex","width":"86%","justifyContent":"space-between"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230217/1f25c2bc566b49c4959565f1941d60ee.jpg) no-repeat center top","height":"300px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 新闻资讯 -->

			
				<!-- 关于我们 -->
				<div :style='{"padding":"50px 7% 80px 7%","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"0","borderColor":"#eee","display":"block","justifyContent":"space-between","flexWrap":"wrap","background":"#fff","borderWidth":"0px","width":"100%","position":"relative","borderStyle":"solid","height":"auto","order":"2"}'>
					<div :style='{"padding":"0 0 10px","margin":"0 auto 0px","borderColor":"#DF8A83","color":"#333","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230412/08758df8c5fb4e019ebfe90e1461fcf6.png) no-repeat center bottom","borderWidth":"0px","width":"100%","lineHeight":"50px","fontSize":"30px","borderStyle":"double","float":"left"}'>{{aboutUsDetail.title}}</div>
					<div :style='{"padding":"0 10px","margin":"0 auto 0px","borderColor":"#DF8A83","color":"#666","textAlign":"left","display":"none","float":"right","borderWidth":"0 0 0px","background":"url(http://codegen.caihongy.cn/20230117/c7da2d80c94441d584aa6c41d0f7d72a.png) no-repeat 50% center","width":"50%","lineHeight":"50px","fontSize":"16px","borderStyle":"double","textTransform":"uppercase"}'>{{aboutUsDetail.subtitle}}</div>
					<div :style='{"padding":"20px","boxShadow":"0px 26px 26px -30px #333","margin":"60px 0 0","borderRadius":"10px","flexWrap":"wrap","background":"rgba(240,240,240,1)","display":"flex","width":"48%","float":"right","justifyContent":"space-between","height":"auto"}'>
						<img :style='{"padding":"0px","boxShadow":"0px 0px 0px #eee","margin":"0 0px","borderColor":"#eee","objectFit":"cover","borderRadius":"8px","borderWidth":"0px","background":"rgba(255,255,255,0)","display":"block","width":"100%","borderStyle":"solid","height":"400px"}' :src="baseurl+aboutUsDetail.picture1">
						<img :style='{"border":"1px dashed #ccc","padding":"10px","margin":"0px 0 0","objectFit":"cover","borderRadius":"100%","top":"-20px","background":"#fff","display":"none","width":"150px","position":"absolute","right":"20px","height":"150px"}' :src="baseurl+aboutUsDetail.picture2">
						<img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseurl+aboutUsDetail.picture3">
					</div>
					<div :style='{"padding":"40px 20px 0 40px","boxShadow":"0px 26px 26px -30px #333","margin":"60px 0px 0px 0","borderColor":"#eee","color":"#333","textIndent":"2em","float":"left","overflow":"hidden","borderRadius":"8px","background":"url(http://codegen.caihongy.cn/20230413/70f1d982849f47b7ae2a78f2d86d4dc5.jpg) no-repeat center bottom / auto auto","borderWidth":"10px","width":"48%","lineHeight":"24px","fontSize":"16px","borderStyle":"solid","height":"440px"}' v-html="aboutUsDetail.content"></div>
					<div :style='{"top":"70px","left":"calc(0px)","background":"url(http://codegen.caihongy.cn/20230106/5d0a7d8d50bf45ee9001a5dc0520739f.png) no-repeat center center / 100% 100%","display":"none","width":"48%","position":"absolute","height":"250px","zIndex":"9"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>
			

				<div class="lists" :style='{"padding":"30px 0 0","margin":"0px auto 0px","borderColor":"#eee","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230413/3dc7a4e587ea46c48ba51c9de3ab9cef.jpg) no-repeat center top fixed","borderWidth":"0px","display":"block","width":"100%","position":"relative","borderStyle":"solid","order":"3"}'>
					<div v-if="false && 3 == 1" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230128/a8d21cd575c84387a6bc6cc22d354c03.jpg) no-repeat center top","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0 0 10px","margin":"20px auto 20px","borderColor":"#f6cccc","alignItems":"center","flexDirection":"inherit","display":"flex","justifyContent":"center","minHeight":"50px","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230412/08758df8c5fb4e019ebfe90e1461fcf6.png) no-repeat center bottom","borderWidth":"0px","width":"100%","borderStyle":"dashed"}'>
					  <span :style='{"padding":"0 10px","color":"#666","textAlign":"left","background":"url(http://codegen.caihongy.cn/20230117/c7da2d80c94441d584aa6c41d0f7d72a.png) no-repeat 50% center","display":"none","width":"50%","fontSize":"16px","lineHeight":"50px","order":"2"}'>DATA SHOW</span>
					  <span :style='{"padding":"0 0px","margin":"0px","color":"#111","textAlign":"center","background":"none","width":"100%","fontSize":"32px","lineHeight":"50px"}'>产品信息展示</span>
					</div>
					
					<div v-if="false && 3 == 2" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230128/a8d21cd575c84387a6bc6cc22d354c03.jpg) no-repeat center top","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<!-- 样式二 -->
				    <div :style='{"padding":"0 7%","margin":"40px 0px 0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-2">
						<div :style='{"cursor":"pointer","padding":"20px","boxShadow":"0px 0px 0px #eee","margin":"0 0 40px","borderColor":"#e6e6e6","display":"flex","justifyContent":"space-between","borderRadius":"10px","flexWrap":"wrap","background":"rgba(255,255,255,1)","borderWidth":"1px","width":"48%","position":"relative","borderStyle":"solid","height":"320px"}' v-for="(item,index) in chanpinxinxiList" :key="index" @click="jump('../chanpinxinxi/detail.jsp?id='+item.id)" class="list-item animation-box">
							<img :style='{"verticalAlign":"middle","padding":"0px","boxShadow":"0px 56px 36px -60px #999","borderColor":"#e6eff6","objectFit":"contain","borderRadius":"4px","borderWidth":"1px","display":"inline-block","width":"48%","borderStyle":"solid","height":"90%"}' :src="item.tupian?baseurl+item.tupian.split(',')[0]:''" alt="" />
							<div :style='{"width":"48%","padding":"10px 0px","verticalAlign":"middle","overflow":"hidden","display":"inline-block","height":"100%"}' class="item-info">
								<div :style='{"padding":"0px","borderColor":"#eee","margin":"0 0 10px","whiteSpace":"nowrap","color":"#333","textAlign":"center","overflow":"hidden","borderRadius":"4px","borderWidth":"0 0 1px","background":"#f8fbfe","width":"100%","lineHeight":"44px","fontSize":"14px","textOverflow":"ellipsis","borderStyle":"solid"}' class="name">产品名称:{{item.chanpinmingcheng}}</div>
							</div>
						</div>
				    </div>
				    
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"0px auto 40px","borderColor":"#ccc","textAlign":"center","display":"inline-block","borderRadius":"30px","background":"none","borderWidth":"0px","width":"auto","lineHeight":"40px","borderStyle":"dashed"}' @click="jump('../chanpinxinxi/list.jsp')">
						<span :style='{"color":"#84a5bf","fontSize":"16px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#84a5bf","fontSize":"16px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 3 == 3" class="recommend-idea" :style='{"padding":"0px","flexWrap":"wrap","background":"none","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"100%","background":"url(http://codegen.caihongy.cn/20230128/a8d21cd575c84387a6bc6cc22d354c03.jpg) no-repeat center top","height":"200px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 图文列表 -->


			
				<!-- 系统简介 -->
				<div :style='{"padding":"0 0 0px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"60px 7% 80px","borderColor":"#eee","alignItems":"flex-start","display":"block","justifyContent":"space-between","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"100%","position":"relative","borderStyle":"solid","height":"auto","order":"3"}'>
					<div :style='{"padding":"0 0 20px","margin":"0px auto 0px","borderColor":"#DF8A83","color":"#333","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230412/08758df8c5fb4e019ebfe90e1461fcf6.png) no-repeat center bottom","borderWidth":"0px","width":"100%","fontSize":"30px","borderStyle":"double","fontWeight":"500","height":"60px","order":"2"}'>{{systemIntroductionDetail.title}}</div>
					<div :style='{"padding":"0 10px","margin":"0px","color":"#666","textAlign":"left","background":"none","display":"none","width":"50%","lineHeight":"50px","fontSize":"16px","float":"left"}'>{{systemIntroductionDetail.subtitle}}</div>
					<div :style='{"padding":"0 0px","boxShadow":"-40px 20px 0px #ccc","margin":"40px 0 0 40px","flexWrap":"wrap","display":"flex","width":"40%","float":"left","justifyContent":"space-between","height":"auto","order":"1"}'>
						<img :style='{"padding":"0px","margin":"0px 0","borderColor":"#ddd","objectFit":"cover","borderRadius":"0","borderWidth":"0px","background":"rgba(255,255,255,.9)","display":"block","width":"100%","borderStyle":"solid","height":"400px"}' :src="baseurl + systemIntroductionDetail.picture1">
						<img :style='{"padding":"0px","margin":"20px 0","borderColor":"#ddd","objectFit":"cover","borderRadius":"0","borderWidth":"1px","background":"rgba(255,255,255,.9)","display":"none","width":"100%","borderStyle":"solid","height":"300px"}' :src="baseurl + systemIntroductionDetail.picture2">
						<img :style='{"border":"1px solid #ddd","padding":"20px","margin":"0px 0","objectFit":"cover","background":"rgba(255,255,255,.9)","display":"none","width":"49%","height":"300px"}' :src="baseurl + systemIntroductionDetail.picture3">
					</div>
					<div :style='{"padding":"20px 20px","boxShadow":"0px 26px 26px -30px #333","margin":"40px 0 0","borderColor":"#ddd","color":"#333","textAlign":"left","textIndent":"2em","float":"right","overflow":"hidden","background":"linear-gradient(270deg, rgba(220,233,245,1) 0%, rgba(194,215,231,1) 100%),#bccfde","borderWidth":"0px","width":"52%","lineHeight":"2","fontSize":"16px","borderStyle":"solid","height":"400px","order":"2"}' v-html="systemIntroductionDetail.content"></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>


			</div>
		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {


                    // 推荐数据
					chanpinxinxiRecommend: [],



                    chanpinxinxiList: [],


                    aboutUsDetail:{},
                    systemIntroductionDetail: {},
                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#layui-carousel',
								width: '100%',
								height: '480px',
								anim: 'fade',
								autoplay: 'true',
								interval: '6000',
								arrow: 'none',
								indicator: 'inside'
							});
						})
					}
				});

                http.request(`aboutus/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.aboutUsDetail = res.data;
                    }
                });
                http.request(`systemintro/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.systemIntroductionDetail = res.data;
                    }
                });

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
                    sort: 'addtime',
                    order: 'desc',
					limit: 7,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
					}
					
					let flag = 10;
					
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"4","speed":500,"spaceBetween":10,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						options.centeredSlides = true
						options.watchSlidesProgress = true
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', options)
						})
					}
				});

                

                // 获取推荐信息
      				var autoSortUrl = "chanpinxinxi/autoSort";
				if(localStorage.getItem('userid')!=null) {
					autoSortUrl = "chanpinxinxi/autoSort2";
				}
				http.request(autoSortUrl, 'get', {
					page: 1,
					limit: 12,
				}, function(res) {
					vue.chanpinxinxiRecommend = res.data.list
					
					let flag = 3;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"4","speed":600,"spaceBetween":20,"autoplay":{"delay":"6000","disableOnInteraction":false}}
						options.pagination = {el:'null'}
						
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
								new Swiper ('#recommendchanpinxinxi', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swiperchanpinxinxi', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				

                http.request(`chanpinxinxi/list`, 'get', {
					page: 1,
					limit: 4,
				}, function(res) {
					vue.chanpinxinxiList = res.data.list
					
					let flag = 2;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"5","speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#listschanpinxinxi', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperchanpinxinxi', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				
			});
		</script>
	</body>
</html>
