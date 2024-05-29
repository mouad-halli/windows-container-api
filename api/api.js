const express = require('express')
const app = express()
const port = 3000
const fs = require('fs')

app.get('/', (req, res) => {
    fs.readFile('../shared/items.json', (err, data) => {
        if (err)
            return res.status(500).send('Error reading file')
        res.json(JSON.parse(data))
    })
})

app.listen(port, () => {
    console.log(`Server is listening at http://localhost:${port}`)
})