package main

import "fmt"

const boilingF = 212.0

func main() {
	const freezingF, boilingF = 32.0, 212.0
	fmt.Printf("%g°F =r %g°C\n", freezingF, fToC(freezingF))
	fmt.Printf("%g°F =r %g°C\n", boilingF, fToC(boilingF))
}

func fToC(f float64) float64 {
	return (f - 32) * 5 / 9

}
