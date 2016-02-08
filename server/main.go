package main

import (
	"flag"
	_ "fmt"
)

var (
	// BuildVersion sets vestion string or commit hash of git
	BuildVersion string

	// BuildDate sets date of built datetime
	BuildDate string
)

func main() {
	var versionFlag bool
	flag.BoolVar(&versionFlag, "version", false, "version flag")
	flag.BoolVar(&versionFlag, "v", false, "version flag")
	flag.Parse()

	if versionFlag {
		var msg = "version: " + BuildVersion + ":" + BuildDate
		println(msg)
		return
	}

	println(BuildVersion + " build at " + BuildDate + ".")
	println("*** done.")
}
