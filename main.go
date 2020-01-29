package main

import (
	"log"
	"net/http"
)

func exampleServer(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "text/plain")
	w.Write([]byte("<html>\n<body>\n"))
	w.Write([]byte("<p>Dockerfile build strategy example.</p>\n"))
	w.Write([]byte("</body>\n</html>\n"))
}

func main() {
	http.HandleFunc("/", exampleServer)
	log.Println("Starting http server")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
