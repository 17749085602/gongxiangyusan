var Controller = require('../core/Controller.js');

/**
 * 还伞订单控制器
 */
class Umbrella_return_order extends Controller {
	/**
	 * 构造函数
	 * @param {Object} config 配置参数
	 */
	constructor(config) {
		// 传参给父类构造函数
		super(Object.assign({
			// 选择的模板那路径模板
			tpl: './umbrella_return_order/',
			// 选择的服务
			service: 'umbrella_return_order',
			// 互动
			interact: [undefined],
		}, config));
	}
}
/**
 * 重写增加方法
 * @param {Object} ctx
 * @return {Object} 返回json-rpc格式结果
 */ Umbrella_return_order.prototype.add = async function(ctx) {
	var result = await this.service.add(ctx.request.body, this.config);
	
	if (this.service.error) {
		return {
			error: this.service.error,
		};
	}
	var max = await $.services["umbrella_return_order"].get_list({}, {
		orderby: "`umbrella_return_order_id` desc"
	});
	max = max[0]['umbrella_return_order_id'];
	var select = await this.service.run("SELECT count(*) count FROM `user_balance` INNER JOIN `umbrella_return_order` ON user_balance.user=umbrella_return_order.user WHERE user_balance.balance &#60; umbrella_return_order.service_fee AND umbrella_return_order.umbrella_return_order_id=".replace("&#60;","<")+max);
	if(select[0]['count'] > 0){
		var sql = "delete from "+"umbrella_return_order"+" WHERE "+"umbrella_return_order_id"+" =" + max;
		select = await this.service.run(sql);
		return {
			error: {message: "余额不足!"},
		};
	}
	await this.service.run("UPDATE `user_balance` INNER JOIN `umbrella_return_order` ON user_balance.user=umbrella_return_order.user SET user_balance.balance = user_balance.balance - umbrella_return_order.service_fee WHERE umbrella_return_order.umbrella_return_order_id=" + max);
	
	return {
		result,
	};
}

module.exports = Umbrella_return_order;
