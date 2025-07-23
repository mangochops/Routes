PROTOC        = protoc
PROTO_FILE    = routeguide/route_guide.proto
PROTO_PATH    = .
GO_OUT        = .
GO_OPTIONS    = paths=source_relative

gen:
	@$(PROTOC) \
		--proto_path=$(PROTO_PATH) $(PROTO_FILE) \
		--go_out=$(GO_OUT) --go_opt=$(GO_OPTIONS) \
		--go-grpc_out=$(GO_OUT) --go-grpc_opt=$(GO_OPTIONS)

clean:
	@rm -f routeguide/*.pb.go
