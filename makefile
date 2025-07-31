all: clean build

build:
	@mkdir -p build
	@cmake -B build -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON .
	@cmake --build build

clean:
	@rm -rf build
