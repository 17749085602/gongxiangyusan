var Controller = require('../core/Controller.js');

/**
 * 充值订单控制器
 */
class Recharge_order extends Controller {
	/**
	 * 构造函数
	 * @param {Object} config 配置参数
	 */
	constructor(config) {
		// 传参给父类构造函数
		super(Object.assign({
			// 选择的模板那路径模板
			tpl: './recharge_order/',
			// 选择的服务
			service: 'recharge_order',
			// 互动
			interact: [undefined],
		}, config));
	}
}
/**
 * 重写增加方法
 * @param {Object} ctx
 * @return {Object} 返回json-rpc格式结果
 */ Recharge_order.prototype.add = async function(ctx) {
	var result = await this.service.add(ctx.request.body, this.config);
	
	if (this.service.error) {
		return {
			error: this.service.error,
		};
	}
	var max = await $.services["recharge_order"].get_list({}, {
		orderby: "`recharge_order_id` desc"
	});
	max = max[0]['recharge_order_id'];
	await this.service.run("UPDATE `user_balance` INNER JOIN `recharge_order` ON user_balance.user=recharge_order.user SET user_balance.balance = user_balance.balance + recharge_order.recharge_limit WHERE recharge_order.recharge_order_id=" + max);
	
	return {
		result,
	};
}

module.exports = Recharge_order;
