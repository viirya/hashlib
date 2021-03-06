build:
	node-waf configure build

install:
	@mkdir -p ~/.node_libraries && cp ./build/Release/hashlib.node ~/.node_libraries/hashlib.node

all: build install

tests:
	@node ./test.js
  
clean:
	@rm -rf ./build
