var Service = require('../core/service.js');

/**
 * 会员用户服务
 */
class Member_user extends Service {
	/**
	 * 构造函数
	 * @param {Object} config 配置参数
	 */
	constructor(config) {
		// 传参给父类构造函数
		super(Object.assign({
			// 操作的表
			table: "member_user",
			// 分页大小
			size: 1
		}, config));
	}
}

module.exports = {
Member_user
};
