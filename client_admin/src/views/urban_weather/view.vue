<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','date') || $check_field('add','date') || $check_field('set','date')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="日期" prop="date">
					<el-date-picker :disabled="disabledObj['date_isDisabled']" v-if="user_group === '管理员' || (form['urban_weather_id'] && $check_field('set','date')) || (!form['urban_weather_id'] && $check_field('add','date'))" id="date"
						v-model="form['date']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','date')">{{form['date']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','city_name') || $check_field('add','city_name') || $check_field('set','city_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="城市名称" prop="city_name">
					<el-input id="city_name" v-model="form['city_name']" placeholder="请输入城市名称"
							  v-if="user_group === '管理员' || (form['urban_weather_id'] && $check_field('set','city_name')) || (!form['urban_weather_id'] && $check_field('add','city_name'))" :disabled="disabledObj['city_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','city_name')">{{form['city_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','temperature') || $check_field('add','temperature') || $check_field('set','temperature')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="温度" prop="temperature">
					<el-input id="temperature" v-model="form['temperature']" placeholder="请输入温度"
							  v-if="user_group === '管理员' || (form['urban_weather_id'] && $check_field('set','temperature')) || (!form['urban_weather_id'] && $check_field('add','temperature'))" :disabled="disabledObj['temperature_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','temperature')">{{form['temperature']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','weather_details') || $check_field('add','weather_details') || $check_field('set','weather_details')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="天气详情" prop="weather_details">
					<el-input id="weather_details" v-model="form['weather_details']" placeholder="请输入天气详情"
							  v-if="user_group === '管理员' || (form['urban_weather_id'] && $check_field('set','weather_details')) || (!form['urban_weather_id'] && $check_field('add','weather_details'))" :disabled="disabledObj['weather_details_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','weather_details')">{{form['weather_details']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','remarks') || $check_field('add','remarks') || $check_field('set','remarks')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="备注" prop="remarks">
					<el-input id="remarks" v-model="form['remarks']" placeholder="请输入备注"
							  v-if="user_group === '管理员' || (form['urban_weather_id'] && $check_field('set','remarks')) || (!form['urban_weather_id'] && $check_field('add','remarks'))" :disabled="disabledObj['remarks_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','remarks')">{{form['remarks']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_btn_warp">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "urban_weather_id",
				url_add: "~/api/urban_weather/add?",
				url_set: "~/api/urban_weather/set?",
				url_get_obj: "~/api/urban_weather/get_obj?",
				url_upload: "~/api/urban_weather/upload?",

				query: {
					"urban_weather_id": 0,
				},

				form: {
					"date":'', // 日期
					"city_name":'', // 城市名称
					"temperature":'', // 温度
					"weather_details":'', // 天气详情
					"remarks":'', // 备注
					"urban_weather_id": 0, // ID

				},
				disabledObj:{
					"date_isDisabled": false,
					"city_name_isDisabled": false,
					"temperature_isDisabled": false,
					"weather_details_isDisabled": false,
					"remarks_isDisabled": false,
				},
			}
		},
		methods: {

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
        if (this.form["date"].indexOf("-")===-1){
          this.form["date"] = this.$toTime(parseInt(this.form["date"]),"yyyy-MM-dd")
        }
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
        if(this.form["date"]=="0000-00-00"){
          this.form["date"] = null;
        }
				if(parseInt(this.form["date"]) > 9999){
					this.form["date"] = this.$toTime(parseInt(this.form["date"]),"yyyy-MM-dd")
				}
			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/urban_weather/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/urban_weather/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/urban_weather/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/urban_weather/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/urban_weather/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
		},
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}
</style>
