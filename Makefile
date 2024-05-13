.PHONY: all run_backends

all: run_backends

run_backends:
	@echo "Running backends..."
	( cd h-shop-be-account && go run . -host 172.30.48.1 ) & \
	( cd h-shop-be-api-gateaway && go run . -host 172.30.48.1 ) & \
	( cd h-shop-be-file && go run . -host 172.30.48.1 ) & \
	( cd h-shop-be-order && go run . -host 172.30.48.1 ) & \
	( cd h-shop-be-product && go run . -host 172.30.48.1 ) & \
	( cd h-shop-be-search && go run . -host 172.30.48.1 ) & \
	( cd h-shop-be-shop && go run . -host 172.30.48.1 ) & \
	( cd h-shop-be-warehouse && go run . -host 172.30.48.1 ) & \
	( cd h-shop-be-consumer-product && go run . -host 172.30.48.1 ) & \
	# ( cd h-shop-fe && yarn dev ) & \
	wait
