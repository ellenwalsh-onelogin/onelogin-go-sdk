run:
	go run './cmd/main.go'

build:
	go build './...'

test:
	go test -v ./v4/tests/...

secure:
	# or install it into ./bin/
	curl -sfL https://raw.githubusercontent.com/securego/gosec/master/install.sh | sh -s
	./bin/gosec -exclude=G104 ./...

link:
	ln -s ${GOPATH}/src/github.com/onelogin/onelogin-go-sdk/v4 v4/
