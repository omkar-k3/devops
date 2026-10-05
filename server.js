const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('<h1>🚀 Azure Pipeline Docker Build Success!</h1><p>Your image is working perfectly.</p>');
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
