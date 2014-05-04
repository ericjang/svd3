#include <cuda.h>

#if defined(__CUDA_ARCH__) && (__CUDA_ARCH__ < 200)
  # error printf is only supported on devices of compute capability 2.0 and higher, please compile with -arch=sm_20 or higher
#endif

__global__ void svd3_test()
{
    int tid = blockIdx.x;
    int particleIdx = blockIdx.y*gridDim.x*blockDim.x + blockIdx.x*blockDim.x + threadIdx.x;
    if ( particleIdx >= numParticles ) return;


}
__global__ void svd3_CUDA_test(glm::vec3 v)
{
    int tid = blockIdx.x;

}

void runCudaPart()
{
    // all your cuda code here
    helloCUDA<<<5,1>>>(); // 5 blocks, 1 GPU thread each
    cudaDeviceSynchronize();
}
