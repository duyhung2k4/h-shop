# system design
- https://app.diagrams.net/#G1A-9TFFnGy8NXwxnC-S6B6XwrPHYgjE8h#%7B%22pageId%22%3A%222W9LU7hzEF7Wa8VymPOl%22%7D

# submodule: 
- git submodule init
- git submodule update --remote --merge
- git submodule update --init --recursive
- git pull --recurse-submodules

# keys:
gen_grpc_protoc:
	protoc \
	--go_out=grpc \
	--go_opt=paths=source_relative \
	--go-grpc_out=grpc \
	--go-grpc_opt=paths=source_relative \
	proto/*.proto
export_path:
	export PATH=$PATH:$(go env GOPATH)/bin
gen_key:
	openssl \
		req -x509 \
		-nodes \
		-days 365 \
		-newkey rsa:2048 \
		-keyout keys/folder-key/private.pem \
		-out keys/folder-key/public.pem \
		-config keys/folder-key/san.cfg

# docker:
    sudo sysctl -w vm.max_map_count=262144