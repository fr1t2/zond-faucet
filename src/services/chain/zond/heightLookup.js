require('module-alias/register');

const axios = require('axios');
const config = require('@config');

async function height() {
	try {
		const response = await axios.post(`http://${config.zondPubAPI}`, {
			jsonrpc: '2.0',
			method: 'zond_blockNumber',
			params: [],
			id: 1,
		}, {
			headers: {
				'Content-Type': 'application/json',
			},
		});
		return response.data.result;
	}
	catch (error)	{
		const errorMessage = `Error occurred while fetching the latest block height: ${error.message}`;
		console.error(errorMessage);
		return new Error(errorMessage);
	}
}

module.exports = { height };
