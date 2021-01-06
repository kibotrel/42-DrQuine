// This is the first comment.

const quine = () => {
  console.log(`// This is the first comment.\n\nconst quine = ${quine.toString()}\n\nconst main = ${main.toString()}\n\nmain()`)
}

const main = () => {
  // This is the second comment.

  quine()
}

main()
