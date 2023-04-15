var Service = require('../core/service.js');

/**
 * 借还伞点服务
 */
class Borrow_and_return_umbrella_points extends Service {
	/**
	 * 构造函数
	 * @param {Object} config 配置参数
	 */
	constructor(config) {
		// 传参给父类构造函数
		super(Object.assign({
			// 操作的表
			table: "borrow_and_return_umbrella_points",
			// 分页大小
			size: 1
		}, config));
	}
}

module.exports = {
Borrow_and_return_umbrella_points
};
