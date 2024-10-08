require('module-alias/register');
const express = require('express');

const { height } = require('@zond-chain/heightLookup');

const router = express.Router();

/**
 * @swagger
 * /v1/zond-height:
 *   get:
 *     summary: Get the current Zond block height
 *     tags: [Zond]
 *     responses:
 *       200:
 *         description: Successful response with the current Zond block height
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 success:
 *                   type: boolean
 *                   example: true
 *                 block:
 *                   type: string
 *                   description: The current Zond block height in hexadecimal format
 *                   example: "0x17a64"
 *       500:
 *         description: Internal server error
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 success:
 *                   type: boolean
 *                   example: false
 *                 error:
 *                   type: string
 *                   example: Failed to fetch block height
 */

router.get('/zond-height', async (req, res) => {
	try {
		// fetch the current block height
		const currentBlock = await height();
		res.status(200).json({ success: true, block: currentBlock });
	}
	catch (error) {
		// Handle any errors
		console.error('Error in fetching block height:', error);
		res.status(500).json({ success: false, error: 'Failed to fetch block height' });
	}
});

module.exports = router;
