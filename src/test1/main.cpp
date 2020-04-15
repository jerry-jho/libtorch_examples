#include <torch/torch.h>
#include <iostream>

int main() {
    auto t1 = torch::rand({ 2, 2 });
    auto t2 = torch::rand({ 2, 2 });
    std::cout << t1 << std::endl;
    std::cout << t2 << std::endl;
    if (torch::cuda::is_available()) {
        t1 = t1.to(torch::kCUDA);
        t2 = t2.to(torch::kCUDA);
    }
    auto t3 = torch::add(t1,t2);
    std::cout << t3 << std::endl;
}
