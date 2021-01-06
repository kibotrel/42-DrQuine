# 42-DrQuine
[![CodeFactor](https://www.codefactor.io/repository/github/kibotrel/42-drquine/badge)](https://www.codefactor.io/repository/github/kibotrel/42-drquine) ![GitHub](https://img.shields.io/github/license/kibotrel/42-DrQuine?color=blue)

This project aims to teach how [quines](https://en.wikipedia.org/wiki/Quine_(computing)) are made and work.

## Install

The project is divided in three parts, each one in a different language but achieve the exact same result, namely : C, Assembly and Javascript. Here's what you need for each part:

- C only needs [make](https://www.gnu.org/software/make/)
    ```Shell
    $> sudo apt-get install make
- Assembly needs make as-well but also [nasm](https://www.nasm.us/) to compile the code (we'll use `elf64` format in this project to use it under any **x86_64 Linux distribution**)
    ```Shell
    $> sudo apt-get install nasm
- Javascript needs [nodeJS](https://nodejs.org/en/download/) to run in a console as we want.
    ```Shell
    $> curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
    $> sudo apt-get install -y nodejs

Once everything is installed you only have to clone then compile C and Assembly code to get started!

```Shell
$> git clone https://github.com/kibotrel/42-DrQuine
$> cd 42-DrQuine ; make -C C ; make -C ASM
```

## Usage

You only have to select a quine between **Colleen**, **Grace** and **Sully** in the language you want and run it to see that the source-code of each program outputs itself in some way. For **C** and **ASM** use `./Quinename` to run it and `node Quinename.js` for **Javascript**.

> You can use the shell command [diff](https://man7.org/linux/man-pages/man1/diff.1.html) to compare the output and the original source-code