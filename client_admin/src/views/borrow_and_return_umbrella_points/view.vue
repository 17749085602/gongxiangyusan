<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','service_name') || $check_field('add','service_name') || $check_field('set','service_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="服务名称" prop="service_name">
					<el-input id="service_name" v-model="form['service_name']" placeholder="请输入服务名称"
							  v-if="user_group === '管理员' || (form['borrow_and_return_umbrella_points_id'] && $check_field('set','service_name')) || (!form['borrow_and_return_umbrella_points_id'] && $check_field('add','service_name'))" :disabled="disabledObj['service_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','service_name')">{{form['service_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','customer_service_hotline') || $check_field('add','customer_service_hotline') || $check_field('set','customer_service_hotline')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="客服热线" prop="customer_service_hotline">
					<el-input id="customer_service_hotline" v-model="form['customer_service_hotline']" placeholder="请输入客服热线"
							  v-if="user_group === '管理员' || (form['borrow_and_return_umbrella_points_id'] && $check_field('set','customer_service_hotline')) || (!form['borrow_and_return_umbrella_points_id'] && $check_field('add','customer_service_hotline'))" :disabled="disabledObj['customer_service_hotline_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','customer_service_hotline')">{{form['customer_service_hotline']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','corporate_name') || $check_field('add','corporate_name') || $check_field('set','corporate_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="公司名称" prop="corporate_name">
					<el-input id="corporate_name" v-model="form['corporate_name']" placeholder="请输入公司名称"
							  v-if="user_group === '管理员' || (form['borrow_and_return_umbrella_points_id'] && $check_field('set','corporate_name')) || (!form['borrow_and_return_umbrella_points_id'] && $check_field('add','corporate_name'))" :disabled="disabledObj['corporate_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','corporate_name')">{{form['corporate_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','service_fee') || $check_field('add','service_fee') || $check_field('set','service_fee')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="服务费用" prop="service_fee">
					<el-input-number id="service_fee" v-model.number="form['service_fee']"
						v-if="user_group === '管理员' || (form['borrow_and_return_umbrella_points_id'] && $check_field('set','service_fee')) || (!form['borrow_and_return_umbrella_points_id'] && $check_field('add','service_fee'))" :disabled="disabledObj['service_fee_isDisabled']"></el-input-number>
					<div v-else-if="$check_field('get','service_fee')">{{form['service_fee']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','service_cover') || $check_field('add','service_cover') || $check_field('set','service_cover')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="服务封面" prop="service_cover">
					<el-upload :disabled="disabledObj['service_cover_isDisabled']" id="service_cover" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_service_cover"
						:show-file-list="false" v-if="user_group === '管理员' || (form['borrow_and_return_umbrella_points_id'] && $check_field('set','service_cover')) || (!form['borrow_and_return_umbrella_points_id'] && $check_field('add','service_cover'))">
						<img v-if="form['service_cover']" :src="$fullUrl(form['service_cover'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','service_cover')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['service_cover'])" :preview-src-list="[$fullUrl(form['service_cover'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','service_introduction') || $check_field('add','service_introduction') || $check_field('set','service_introduction')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="服务介绍" prop="service_introduction">
					<el-input type="textarea" id="service_introduction" v-model="form['service_introduction']" placeholder="请输入服务介绍"
						v-if="user_group === '管理员' || (form['borrow_and_return_umbrella_points_id'] && $check_field('set','service_introduction')) || (!form['borrow_and_return_umbrella_points_id'] && $check_field('add','service_introduction'))" :disabled="disabledObj['service_introduction_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','service_introduction')">{{form['service_introduction']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="二维码图片" prop="qrcode_img">
					<el-upload :disabled="disabledObj['qrcode_img_isDisabled']" id="qrcode_img" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_qrcode"
						:show-file-list="false" v-if="user_group === '管理员' || (form['borrow_and_return_umbrella_points_id'] && $check_field('set','qrcode_img')) || (!form['borrow_and_return_umbrella_points_id'] && $check_field('add','qrcode_img'))">
						<img v-if="form['qrcode_img']" :src="$fullUrl(form['qrcode_img'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','qrcode_img')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['qrcode_img'])" :preview-src-list="[$fullUrl(form['qrcode_img'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="二维码标题" prop="qrcode_title">
					<el-input id="qrcode_title" v-model="form['qrcode_title']" placeholder="请输入二维码标题"
							  v-if="user_group === '管理员' || (form['borrow_and_return_umbrella_points_id'] && $check_field('set','qrcode_title')) || (!form['borrow_and_return_umbrella_points_id'] && $check_field('add','qrcode_title'))" :disabled="disabledObj['qrcode_title_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','qrcode_title')">{{form['qrcode_title']}}</div>
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
				field: "borrow_and_return_umbrella_points_id",
				url_add: "~/api/borrow_and_return_umbrella_points/add?",
				url_set: "~/api/borrow_and_return_umbrella_points/set?",
				url_get_obj: "~/api/borrow_and_return_umbrella_points/get_obj?",
				url_upload: "~/api/borrow_and_return_umbrella_points/upload?",

				query: {
					"borrow_and_return_umbrella_points_id": 0,
				},

				form: {
					"service_name":'', // 服务名称
					"customer_service_hotline":'', // 客服热线
					"corporate_name":'', // 公司名称
					"service_fee":0, // 服务费用
					"service_cover":'', // 服务封面
					"service_introduction":'', // 服务介绍
					"borrow_and_return_umbrella_points_id": 0, // ID
					"qrcode_img":'', // 图片
					"qrcode_title":'', // 二维码标题

				},
				disabledObj:{
					"service_name_isDisabled": false,
					"customer_service_hotline_isDisabled": false,
					"corporate_name_isDisabled": false,
          "service_fee_isDisabled": false,
					"service_cover_isDisabled": false,
					"service_introduction_isDisabled": false,
					"qrcode_img_isDisabled": false,
					"qrcode_title_isDisabled": false,
				},
			}
		},
		methods: {
			/**
			 * 上传服务封面
			 * @param {Object} param图片参数
			 */
			upload_service_cover(param){
				this.uploadFile(param.file, "service_cover");
			},

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
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/borrow_and_return_umbrella_points/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/borrow_and_return_umbrella_points/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/borrow_and_return_umbrella_points/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/borrow_and_return_umbrella_points/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/borrow_and_return_umbrella_points/view','get');
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
			/**
			 * 上传二维码
			 * @param {Object} param图片参数
			 */
			upload_qrcode(param){
				this.uploadFile(param.file, "qrcode_img");
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
