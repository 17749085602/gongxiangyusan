import Vue from 'vue';
import VueRouter from 'vue-router';
import index from '../views/index.vue'
import login from '../views/account/login.vue';

Vue.use(VueRouter)

const routes = [
	// 主页ss
	{
		path: '/',
		name: 'index',
		component: index
	},
	// 登录
	{
		path: '/account/login',
		name: 'login',
		component: login
	},
	// 忘记密码
	{
		path: '/account/forgot',
		name: 'forgot',
		component: () => import('../views/account/forgot.vue')
	},
	// 注册账号
	{
		path: '/account/register',
		name: 'register',
		component: () => import('../views/account/register.vue')
	},
	// 媒体图片
	{
		path: '/media/image',
		name: 'media_image',
		component: () => import('../views/media/image.vue')
	},
	// 音乐
	{
		path: '/media/music',
		name: 'media_music',
		component: () => import('../views/media/music.vue')
	},
	// 媒体视频
	{
		path: '/media/video',
		name: 'media_video',
		component: () => import('../views/media/video.vue')
	},
	// 文章路由
	{
		path: '/article/list',
		name: 'article_list',
		component: () => import('../views/article/list.vue')
	},
	{
		path: '/article/details',
		name: 'article_details',
		component: () => import('../views/article/details.vue')
	},
	// 浏览网站
	// 收藏路由
	{
		path: '/user/collect',
		name: 'collect_list',
		component: () => import('../views/user/collect.vue')
	},
	// 公告路由
	{
		path: '/notice/list',
		name: 'notice_list',
		component: () => import('../views/notice/list.vue')
	},
	{
		path: '/notice/details',
		name: 'notice_details',
		component: () => import('../views/notice/details.vue')
	},
	//借还伞点列表路由
	{
		path: '/borrow_and_return_umbrella_points/list',
		name: '/borrow_and_return_umbrella_points_list',
		component: () => import('../views/borrow_and_return_umbrella_points/list.vue')
	},
	//借还伞点详情路由
	{
		path: '/borrow_and_return_umbrella_points/details',
		name: '/borrow_and_return_umbrella_points_details',
		component: () => import('../views/borrow_and_return_umbrella_points/details.vue')
	},
	//借伞订单添加路由
	{
		path: '/umbrella_borrowing_order/edit',
		name: '/umbrella_borrowing_order_edit',
		component: () => import('../views/umbrella_borrowing_order/edit.vue')
	},
	//还伞订单添加路由
	{
		path: '/umbrella_return_order/edit',
		name: '/umbrella_return_order_edit',
		component: () => import('../views/umbrella_return_order/edit.vue')
	},
	//城市天气列表路由
	{
		path: '/urban_weather/list',
		name: '/urban_weather_list',
		component: () => import('../views/urban_weather/list.vue')
	},
	//城市天气详情路由
	{
		path: '/urban_weather/details',
		name: '/urban_weather_details',
		component: () => import('../views/urban_weather/details.vue')
	},

	// 用户路由
	{
		path: '/user/index',
		name: 'user_index',
		component: () => import('../views/user/index.vue')
	},
	// 基本信息
	{
		path: '/user/info',
		name: 'user_info',
		component: () => import('../views/user/info.vue')
	},
	// 找回密码
	{
		path: '/user/password',
		name: 'user_password',
		component: () => import('../views/user/password.vue')
	},

	// 搜索
	{
		path: '/search',
		name: 'search',
		component: () => import('../views/search/index.vue')
	},
	// 局部搜索
	{
		path: '/search/details',
		name: 'search_details',
		component: () => import('../views/search/details.vue')
	}
]

const router = new VueRouter({
	mode: 'history',
	base: process.env.BASE_URL,
	routes
})

router.afterEach((to, from, next) => {
	let title = "共享雨伞系统-home";
	document.title = title;
	document.logo = "共享雨伞系统"
})

export default router
