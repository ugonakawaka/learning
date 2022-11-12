package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	counts := make(map[string]map[string]int)
	files := os.Args[1:]
	if len(files) == 0 {
		countLines(os.Stdin, counts)
	} else {
		for _, arg := range files {
			f, err := os.Open(arg)
			if err != nil {
				fmt.Fprintf(os.Stderr, "dup2: %v\n", err)
				continue
			}
			countLines(f, counts)
			f.Close()

		}

	}
	// fmt.Printf("%v", counts)
	for line, m := range counts {
		c := 0
		s := ""
		for fname, n := range m {
			c += n
			s = s + " " + fname
			
		}
		if c > 1 {
			fmt.Printf("%d\t%s\t%s\n", c, line, s)
		}

	}
}
func countLines(f *os.File, counts map[string]map[string]int) {
	input := bufio.NewScanner(f)
	fname := f.Name() 
	
	for input.Scan() {

		if _, ok := counts[input.Text()]; !ok {
			counts[input.Text()] = make(map[string]int)
		}
		counts[input.Text()][fname]++
	}
}
