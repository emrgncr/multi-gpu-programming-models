#include <cstdio>
#include <iostream>
#include <sstream>

int main(int argc, char* argv[]) {
    int devcount;
    cudaGetDeviceCount(&devcount);

    printf("================Available Devices==============\n\n");
    for (int i = 0; i < devcount; i++) {
        cudaDeviceProp prop;
        cudaGetDeviceProperties(&prop, i);
        printf("device:%d : %s, compute: %d_%d\n", i, prop.name, prop.major, prop.minor);
    }
    printf("===============================================\n\n");
}