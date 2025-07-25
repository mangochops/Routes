\\makefile
gen:
	@protoc \
		--proto_path= . routeguide/route_guide.proto \
		--go_out= . --go_opt= paths=source_relative \
		--go-grpc_out= . --go-grpc_opt= paths=source_relative


