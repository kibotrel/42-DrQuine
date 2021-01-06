let i = 5

const main = () => {
  const fs = require('fs')
  const exec = require('child_process').exec

  if (i > 0 && __filename.indexOf('Sully.js') === -1) { i-- }

  fs.writeFile(`Sully_${i}.js`, `let i = ${i}\n\nconst main = ${main.toString()}\n\nmain()\n`, (error) => { if (error) throw error })
  exec(`node Sully_${i}.js`, (error) => { if (error) throw error })
}

main()
