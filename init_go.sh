cd /tmp
wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf ./go1.4.2.linux-amd64.tar.gz
cd -
go get code.google.com/p/rog-go/exp/cmd/godef
go get golang.org/x/tools/cmd/goimports
go get code.google.com/p/go.tools/cmd/oracle
go get github.com/kisielk/errcheck 
go get github.com/golang/lint

