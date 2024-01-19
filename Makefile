default:
	g++ src/*.cpp -o bin/main.exe -Iinclude -Llib -lglfw3 -lglad -lwinmm -lgdi32 -lopengl32 -lpthread -static -static-libgcc -static-libstdc++
	bin/main.exe

compile-glad:
	g++ -c src/vendor/glad/*.c -o bin/glad.o -Iinclude
	ar rvs lib/libglad.a bin/glad.o
	del bin\glad.o