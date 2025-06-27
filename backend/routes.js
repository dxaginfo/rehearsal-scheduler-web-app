const express = require('express');
const router = express.Router();
// Example route: healthcheck
router.get('/health', (req, res) => res.json({ok: true}));
module.exports = router;