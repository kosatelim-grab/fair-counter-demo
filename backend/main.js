const express = require('express')
const path = require('path')
const fs = require('fs').promises
const app = express()
const port = 3000

app.get('/home.json', async (req, res) => {
  var content = await fs.readFile(path.resolve(__dirname, '../build/fair/lib_home_page.fair.json'))
  res.send(content.toString())
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})