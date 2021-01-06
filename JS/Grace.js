(function () {
  // This is a comment.

  const fs = require('fs')

  FILENAME = 'Grace_kid.js'
  DATA = `(${arguments.callee.toString()}())\n`
  ERROR = 'Woops!'

  fs.writeFile(FILENAME, DATA, (error) => { if (error) console.log(ERROR) })
}())
