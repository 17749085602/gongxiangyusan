var Service = require('../core/service.js');

/**
 * 借伞订单服务
 */
class Umbrella_borrowing_order extends Service {
	/**
	 * 构造函数
	 * @param {Object} config 配置参数
	 */
	constructor(config) {
		// 传参给父类构造函数
		super(Object.assign({
			// 操作的表
			table: "umbrella_borrowing_order",
			// 分页大小
			size: 1
		}, config));
	}
}

module.exports = {
Umbrella_borrowing_order
};
