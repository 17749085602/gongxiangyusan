var Service = require('../core/service.js');

/**
 * 用户余额服务
 */
class User_balance extends Service {
	/**
	 * 构造函数
	 * @param {Object} config 配置参数
	 */
	constructor(config) {
		// 传参给父类构造函数
		super(Object.assign({
			// 操作的表
			table: "user_balance",
			// 分页大小
			size: 1
		}, config));
	}
}

module.exports = {
User_balance
};
