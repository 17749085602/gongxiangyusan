<template>
  <div class="page_search">
	<div class="warp">
	  <div class="container">
		<div class="row">
		  <div class="col-12">
			<div class="card_result_search">
			  <div class="title">搜索结果</div>
				<!-- 文章搜索结果 -->
			  <list_result_search
				:list="result_article"
				title="新闻资讯"
				source_table="article"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/member_user/list', 'get')"
				:list="result_member_user_full_name"
				title="会员用户姓名"
				source_table="member_user"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/umbrella_borrowing_order/list', 'get')"
				:list="result_umbrella_borrowing_order_order_number"
				title="借伞订单订单编号"
				source_table="umbrella_borrowing_order"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/umbrella_borrowing_order/list', 'get')"
				:list="result_umbrella_borrowing_order_lease_date"
				title="借伞订单租借日期"
				source_table="umbrella_borrowing_order"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/umbrella_return_order/list', 'get')"
				:list="result_umbrella_return_order_order_number"
				title="还伞订单订单编号"
				source_table="umbrella_return_order"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/umbrella_return_order/list', 'get')"
				:list="result_umbrella_return_order_return_date_"
				title="还伞订单归还日期"
				source_table="umbrella_return_order"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/recharge_order/list', 'get')"
				:list="result_recharge_order_order_number"
				title="充值订单订单编号"
				source_table="recharge_order"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/recharge_order/list', 'get')"
				:list="result_recharge_order_recharge_date"
				title="充值订单充值日期"
				source_table="recharge_order"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/urban_weather/list', 'get')"
				:list="result_urban_weather_date"
				title="城市天气日期"
				source_table="urban_weather"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/urban_weather/list', 'get')"
				:list="result_urban_weather_city_name"
				title="城市天气城市名称"
				source_table="urban_weather"
			  ></list_result_search>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </div>
</template>

<script>
import mixin from "../../mixins/page.js";
import list_result_search from "../../components/diy/list_result_search.vue";

export default {
  mixins: [mixin],
  data() {
	return {
	  "query": {
		word: "",
	  },
	  "result_article": [],
			"result_member_user_full_name":[],
			"result_umbrella_borrowing_order_order_number":[],
			"result_umbrella_borrowing_order_lease_date":[],
			"result_umbrella_return_order_order_number":[],
			"result_umbrella_return_order_return_date_":[],
			"result_recharge_order_order_number":[],
			"result_recharge_order_recharge_date":[],
			"result_urban_weather_date":[],
			"result_urban_weather_city_name":[],
	};
  },
  methods: {
	/**
	 * 获取文章
	 */
	get_article() {
	  this.$get("~/api/article/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_article = json.result.list;
		}
	  });
	},
	/**
	 * 获取full_name
	 */
	get_member_user_full_name(){
		this.$get("~/api/member_user/get_list?like=0", { page: 1, size: 10, "full_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_member_user_full_name = json.result.list;
			result_member_user_full_name.map(o => o.title = o['full_name'])
	  			this.result_member_user_full_name = result_member_user_full_name
		 	}
		});
	},
	/**
	 * 获取order_number
	 */
	get_umbrella_borrowing_order_order_number(){
		this.$get("~/api/umbrella_borrowing_order/get_list?like=0", { page: 1, size: 10, "order_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_umbrella_borrowing_order_order_number = json.result.list;
			result_umbrella_borrowing_order_order_number.map(o => o.title = o['order_number'])
	  			this.result_umbrella_borrowing_order_order_number = result_umbrella_borrowing_order_order_number
		 	}
		});
	},
	/**
	 * 获取lease_date
	 */
	get_umbrella_borrowing_order_lease_date(){
		this.$get("~/api/umbrella_borrowing_order/get_list?like=0", { page: 1, size: 10, "lease_date": this.query.word }, (json) => {
		  if (json.result) {
			var result_umbrella_borrowing_order_lease_date = json.result.list;
			result_umbrella_borrowing_order_lease_date.map(o => o.title = o['lease_date'])
	  			this.result_umbrella_borrowing_order_lease_date = result_umbrella_borrowing_order_lease_date
		 	}
		});
	},
	/**
	 * 获取order_number
	 */
	get_umbrella_return_order_order_number(){
		this.$get("~/api/umbrella_return_order/get_list?like=0", { page: 1, size: 10, "order_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_umbrella_return_order_order_number = json.result.list;
			result_umbrella_return_order_order_number.map(o => o.title = o['order_number'])
	  			this.result_umbrella_return_order_order_number = result_umbrella_return_order_order_number
		 	}
		});
	},
	/**
	 * 获取return_date_
	 */
	get_umbrella_return_order_return_date_(){
		this.$get("~/api/umbrella_return_order/get_list?like=0", { page: 1, size: 10, "return_date_": this.query.word }, (json) => {
		  if (json.result) {
			var result_umbrella_return_order_return_date_ = json.result.list;
			result_umbrella_return_order_return_date_.map(o => o.title = o['return_date_'])
	  			this.result_umbrella_return_order_return_date_ = result_umbrella_return_order_return_date_
		 	}
		});
	},
	/**
	 * 获取order_number
	 */
	get_recharge_order_order_number(){
		this.$get("~/api/recharge_order/get_list?like=0", { page: 1, size: 10, "order_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_recharge_order_order_number = json.result.list;
			result_recharge_order_order_number.map(o => o.title = o['order_number'])
	  			this.result_recharge_order_order_number = result_recharge_order_order_number
		 	}
		});
	},
	/**
	 * 获取recharge_date
	 */
	get_recharge_order_recharge_date(){
		this.$get("~/api/recharge_order/get_list?like=0", { page: 1, size: 10, "recharge_date": this.query.word }, (json) => {
		  if (json.result) {
			var result_recharge_order_recharge_date = json.result.list;
			result_recharge_order_recharge_date.map(o => o.title = o['recharge_date'])
	  			this.result_recharge_order_recharge_date = result_recharge_order_recharge_date
		 	}
		});
	},
	/**
	 * 获取date
	 */
	get_urban_weather_date(){
		this.$get("~/api/urban_weather/get_list?like=0", { page: 1, size: 10, "date": this.query.word }, (json) => {
		  if (json.result) {
			var result_urban_weather_date = json.result.list;
			result_urban_weather_date.map(o => o.title = o['date'])
	  			this.result_urban_weather_date = result_urban_weather_date
		 	}
		});
	},
	/**
	 * 获取city_name
	 */
	get_urban_weather_city_name(){
		this.$get("~/api/urban_weather/get_list?like=0", { page: 1, size: 10, "city_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_urban_weather_city_name = json.result.list;
			result_urban_weather_city_name.map(o => o.title = o['city_name'])
	  			this.result_urban_weather_city_name = result_urban_weather_city_name
		 	}
		});
	},

  },
  components: { list_result_search },
	created(){
    this.query.word = this.$route.query.word || "";
  },
  mounted() {
	this.get_article();
		this.get_member_user_full_name();
		this.get_umbrella_borrowing_order_order_number();
		this.get_umbrella_borrowing_order_lease_date();
		this.get_umbrella_return_order_order_number();
		this.get_umbrella_return_order_return_date_();
		this.get_recharge_order_order_number();
		this.get_recharge_order_recharge_date();
		this.get_urban_weather_date();
		this.get_urban_weather_city_name();
  },
  watch: {
	$route() {
	  $.push(this.query, this.$route.query);
	  this.get_article();
	  this.get_member_user_full_name();
	  this.get_umbrella_borrowing_order_order_number();
	  this.get_umbrella_borrowing_order_lease_date();
	  this.get_umbrella_return_order_order_number();
	  this.get_umbrella_return_order_return_date_();
	  this.get_recharge_order_order_number();
	  this.get_recharge_order_recharge_date();
	  this.get_urban_weather_date();
	  this.get_urban_weather_city_name();
	},
  },
};
</script>

<style scoped>
.card_search {
  text-align: center;
}
.card_result_search>.title {
  text-align: center;
  padding: 10px 0;
}
</style>
