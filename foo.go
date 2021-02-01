package main

import "C"

//export Foo
func Foo() C.int {
	return 42
}

func main() {
}
