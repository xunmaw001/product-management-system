<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 产品信息 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>产品信息</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form .layui-form-item .layui-form-select .layui-input {
						border-radius: 4px;
						padding: 0 20px 0 10px;
						margin: 0;
						color: #666;
						width: 120px;
						font-size: 14px;
						border-color: #ddd;
						border-width: 1px;
						line-height: 40px;
						border-style: solid;
						height: 40px;
					}
		
		/* lists */
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
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			
			<div id="breadcrumb">
				<span class="en">DATA SHOW</span>
				<span class="cn">产品信息展示</span>
			</div>

			<!-- 图文列表 -->
			<div class="recommend" :style='{"margin":"10px auto","flexWrap":"wrap","background":"none","display":"flex","width":"100%","position":"relative","justifyContent":"space-between"}'>

				<div class="category-2" :style='{"padding":"80px 10px 10px","margin":"20px 0 0 7%","borderColor":"#eee","flexDirection":"column","background":"url(http://codegen.caihongy.cn/20230413/2cbf353f536e42eda7e2d72126b12ce7.png) no-repeat center top","borderWidth":"1px","display":"flex","width":"240px","borderStyle":"solid","height":"auto","order":"2"}'>
					<div class="category-search" :index="-1" :style='swiperIndex == -1 ? {"cursor":"pointer","border":"0px solid #FF4040","margin":"0 0 10px 0","color":"#111","borderRadius":"4px","textAlign":"center","background":"#b5cbdc","width":"100%","fontSize":"16px","fontWeight":"500"} : {"cursor":"pointer","border":"0px solid #e6e6e6","margin":"0 0 10px","color":"#333","borderRadius":"8px","textAlign":"center","background":"#eee","width":"100%","fontSize":"15px","lineHeight":"44px","height":"44px"}'>全部</div>
					<div class="category-search" :index="index" :style='swiperIndex == index ? {"cursor":"pointer","border":"0px solid #FF4040","margin":"0 0 10px 0","color":"#111","borderRadius":"4px","textAlign":"center","background":"#b5cbdc","width":"100%","fontSize":"16px","fontWeight":"500"} : {"cursor":"pointer","border":"0px solid #e6e6e6","margin":"0 0 10px","color":"#333","borderRadius":"8px","textAlign":"center","background":"#eee","width":"100%","fontSize":"15px","lineHeight":"44px","height":"44px"}' v-for="(item,index) in categoryList" :key="index">
						{{categoryList[index]}}
					</div>
				</div>
					
				<form class="layui-form filter" :style='{"padding":"0px","margin":"20px 7% 20px","alignItems":"center","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"center","height":"auto"}'>

					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>产品名称</div>
						<input type="text" :style='{"padding":"0 10px","margin":"0","outline":"none","borderColor":"#ddd","color":"#666","borderRadius":"4px","borderWidth":"1px","width":"140px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' name="chanpinmingcheng" id="chanpinmingcheng" placeholder="产品名称" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>产品类型</div>
						<select name="chanpinleixing" id="chanpinleixing" lay-filter="chanpinleixing">
							<option value="">请选择</option>
							<option v-for="(item,index) in chanpinleixingOptions" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>
					<div :style='{"alignItems":"center","margin":"0 4px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px"}'>价格</div>
						<input type="text" :style='{"padding":"0 10px","margin":"0","outline":"none","borderColor":"#ddd","color":"#666","borderRadius":"4px","borderWidth":"1px","width":"150px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' name="pricestart" id="pricestart" placeholder="最小价格" autocomplete="off" class="layui-input">
						<span :style='{"padding":"0 6px","margin":"0","color":"#999","display":"inline-block","width":"auto","fontSize":"14px","lineHeight":"40px","height":"40px"}'>至</span>
						<input type="text" :style='{"padding":"0 10px","margin":"0","outline":"none","borderColor":"#ddd","color":"#666","borderRadius":"4px","borderWidth":"1px","width":"150px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' name="priceend" id="priceend" placeholder="最大价格" autocomplete="off" class="layui-input">
					</div>

					<button :style='{"cursor":"pointer","padding":"0px 20px","boxShadow":"inset 0px 0px 0px 0px #7e5ffb","margin":"0 8px 0 4px","borderColor":"#8bb12f","color":"#333","outline":"none","borderRadius":"4px","background":"#95b2c9","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' id="btn-search" type="button" class="layui-btn layui-btn-normal">
						<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon layui-icon-search"></i>搜索
					</button>
					<button :style='{"cursor":"pointer","padding":"0px 20px","boxShadow":"inset 0px 0px 0px 0px #f2e013","margin":"0 4px 0 0","borderColor":"#ffaf03","color":"#333","outline":"none","borderRadius":"4px","background":"#ddc8c5","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-if="isAuth('chanpinxinxi','新增')" @click="jump('../chanpinxinxi/add.jsp')" type="button" class="layui-btn btn-theme">
						<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon">&#xe654;</i>添加
					</button>
				</form>
						
				<div :style='{"width":"100%","margin":"20px 0 10px","minWidth":"1050px","background":"none","flex":"1","order":"3"}' class="lists">
					<!-- 样式一 -->
					<div :style='{"padding":"0px 7%","margin":"0","flexWrap":"wrap","background":"none","display":"block","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-1">
						<div :style='{"border":"0px solid #e6e6e6","padding":"0px","margin":"0 0 40px 2%","borderRadius":"100% 100% 0 0","flexWrap":"wrap","background":"rgba(245,245,245,.0)","display":"flex","width":"31%","position":"relative","float":"left","justifyContent":"space-between","height":"auto"}' @click="jump('../chanpinxinxi/detail.jsp?id='+item.id)" v-for="(item,index) in dataList" :key="index" class="list-item animation-box">
							<img :style='{"cursor":"pointer","border":"1px solid #e6eff6","padding":"0px","boxShadow":"0px 0px 0px 0px #999","objectFit":"contain","borderRadius":"0","display":"block","width":"100%","height":"275px"}' :src="item.tupian?baseurl+item.tupian.split(',')[0]:''">
							<div v-if="item.price" :style='{"padding":"4px 10px","color":"#c00","textAlign":"right","width":"100%","lineHeight":"24px","fontSize":"16px","order":"2"}' class="price">￥{{Number(item.price).toFixed(2)}}</div>
							<div v-if="item.vipprice&&item.vipprice>0" :style='{"padding":"4px 10px","color":"#c00","textAlign":"right","width":"100%","lineHeight":"24px","fontSize":"16px","order":"2"}' class="price">￥{{Number(item.vipprice).toFixed(2)}} 会员价</div>
							<div v-if="item.jf" :style='{"padding":"4px 10px","color":"#c00","textAlign":"right","width":"100%","lineHeight":"24px","fontSize":"16px","order":"2"}' class="price">{{Number(item.jf).toFixed(0)}}积分</div>
							<div :style='{"cursor":"pointer","padding":"4px 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","textAlign":"center","background":"#f7fbfe","display":"inline-block","width":"100%","lineHeight":"30px","fontSize":"16px","textOverflow":"ellipsis"}' class="name">产品名称:{{item.chanpinmingcheng}}</div>
						</div>
					</div>
					
				</div>
				
				
				<div class="pager" id="pager"></div>
				
			</div>
		</div>


		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					categoryList: [],

				        chanpinleixingOptions: [],
					baseurl: '',
					dataList: []
				},
				methods: {
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['form', 'layer', 'element', 'carousel', 'laypage', 'http', 'jquery','laydate', 'slider'], function() {
				var form = layui.form;
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var laypage = layui.laypage;
				var http = layui.http;
				var jquery = layui.jquery;
				var laydate = layui.laydate;
                var slider = layui.slider;
				var limit = 12;
				vue.baseurl = http.baseurl;
				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						let swiperList = [];
						res.data.list.forEach(element => {
						  if (element.value != null) {
						    swiperList.push({
						      img: http.baseurl+element.value
						    });
						  }
						});
						vue.swiperList = swiperList;
						
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
        			http.request(`option/chanpinleixing/chanpinleixing`,'get',{},(res)=>{
                			vue.chanpinleixingOptions = res.data
							vue.$nextTick(() => {form.render()})
        			});

				//类型查询
			      categoryList();
				//类型搜索
			      $(document).on("click", ".category-search", function(e){
					  vue.swiperIndex = $(this).attr('index')
				  pageList(e.target.innerText);
			      });

			      function categoryList() {
				  // 获取列表数据
				  http.request('option/chanpinleixing/chanpinleixing', 'get', {}, function(res) {
				    vue.categoryList = res.data
				  })

				}
			      var vCategory = '';


				// 分页列表
				pageList();

				// 搜索按钮
				jquery('#btn-search').click(function(e) {
					pageList();
				});

				function pageList(category) {
					var param = {
						page: 1,
						limit: limit
					}
				if(category!=null && category!='全部') {
					vCategory = category;
					if (jquery('#chanpinmingcheng').val()) {
						param['chanpinmingcheng'] = '';
					}
					if (jquery('#chanpinleixing').val()) {
						param['chanpinleixing'] = '';
					}
					if (jquery('#price').val()) {
						param['price'] = '';
					}
				}
				if(vCategory!='' && category!='全部') {
					param['chanpinleixing'] = category;
				}

			        if (jquery('#chanpinmingcheng').val()) {
			          param['chanpinmingcheng'] = jquery('#chanpinmingcheng').val() ? '%' + jquery('#chanpinmingcheng').val() + '%' : '';
			        }
			        if (jquery('#chanpinleixing').val()) {
			          param['chanpinleixing'] = jquery('#chanpinleixing').val() ? jquery('#chanpinleixing').val() : '';
			        }
			        if (jquery('#pricestart').val()) {
			            param['pricestart'] = jquery('#pricestart').val() ? jquery('#pricestart').val() : '';
			        }
			        if (jquery('#priceend').val()) {
			            param['priceend'] = jquery('#priceend').val() ?  jquery('#priceend').val() : '';
			        }



					// 获取列表数据
					http.request('chanpinxinxi/list', 'get', param, function(res) {
						vue.dataList = res.data.list
						// 分页
						laypage.render({
							elem: 'pager',
							count: res.data.total,
							limit: limit,
							groups: 5,
							layout: ["count","prev","page","next","skip"],
							prev: '上一页',
							next: '下一页',
							jump: function(obj, first) {
								param.page = obj.curr;
								//首次不执行
								if (!first) {
									http.request('chanpinxinxi/list', 'get', param, function(res) {
										vue.dataList = res.data.list
									})
								}
							}
						});
					})
				}
			});
		</script>
	</body>
</html>
