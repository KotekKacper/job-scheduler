chmod +x *
g++ ./src/common.cpp ./inc/common.hpp ./inc/server/* ./src/server/* -o server.exe;
g++ ./src/common.cpp ./inc/common.hpp ./inc/client/* ./src/client/* -o client.exe;