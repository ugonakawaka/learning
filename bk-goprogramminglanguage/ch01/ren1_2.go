package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {

	s, sep := "", ""
	for idx, arg := range os.Args[1:] {
		fmt.Println(strconv.Itoa(idx) + ":" + arg)
		s += sep + arg
		sep = " "

	}

	fmt.Println(s)

}
