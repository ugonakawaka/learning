package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {

	counts := make(map[string]int)
	input := bufio.NewScanner(os.Stdin)
	for input.Scan() {
		counts[input.Text()]++

	}
// コントロール＋d すると結果でるよ
	for line, n := range counts {
		if n > 1 {
			fmt.Println("%d\t%s\n", n, line)
		}

	}
}
