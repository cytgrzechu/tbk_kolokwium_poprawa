#include <iostream>
#include <fstream>
#include <vector>

int main(int argc, char* argv[]) {
    int n = std::stoi(argv[1]);
    std::ifstream file(argv[2]);
    std::vector<int> numbers;
    int number, sum = 0;
    while (file >> number && n > 0) {
        numbers.push_back(number);
        sum += number;
        n--;
    }
    std::cout << "Sum of numbers in the file: " << sum << std::endl;
    return 0;
}