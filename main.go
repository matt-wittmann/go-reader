package main

import "fmt"
import "log"
import "net/http"

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprint(w, "Hello, world!")
	})
	log.Fatal(http.ListenAndServe(":8080", nil))
}
