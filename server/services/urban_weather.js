var Service = require('../core/service.js');

/**
 * 城市天气服务
 */
class Urban_weather extends Service {
	/**
	 * 构造函数
	 * @param {Object} config 配置参数
	 */
	constructor(config) {
		// 传参给父类构造函数
		super(Object.assign({
			// 操作的表
			table: "urban_weather",
			// 分页大小
			size: 1
		}, config));
	}
}

module.exports = {
Urban_weather
};
