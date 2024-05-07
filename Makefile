.PHONY: all run_backends

all: run_backends

run_backends:
	@echo "Running backends..."
	( cd h-shop-be-account && go run .) & \
	( cd h-shop-be-api-gateaway && go run .) & \
	( cd h-shop-be-file && go run .) & \
	( cd h-shop-be-order && go run .) & \
	( cd h-shop-be-product && go run .) & \
	( cd h-shop-be-search && go run .) & \
	( cd h-shop-be-shop && go run .) & \
	( cd h-shop-be-warehouse && go run .) & \
	( cd h-shop-fe && yarn dev) & \
	wait
