GO?=go
BUILD_DIR="./bin/poke-ledger"
MAIN_FILE="./cmd/main.go"

dependecies:
	$(GO) mod download
	$(GO) mod tidy

cli:
	$(GO) build -o $(BUILD_DIR) $(MAIN_FILE)

run: dependecies cli
	$(BUILD_DIR)