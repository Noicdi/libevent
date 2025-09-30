all: clean build

build:
        @mkdir -p build
        cmake -S . -B build -G "Unix Makefiles" \
                -DCMAKE_BUILD_TYPE=Debug \
                -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
                -DCMAKE_C_STANDARD=99
        cmake --build build

clean:
        @rm -rf build
