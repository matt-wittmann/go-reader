package main

import (
	"fmt"
	"log"
	"math/rand"
	"net/http"
	"time"
)

func main() {
	rand.Seed(time.Now().UnixNano())
	randomValue := rand.Int()
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprint(w, "Value: ", randomValue)
	})
	log.Fatal(http.ListenAndServe(":8080", nil))
}
