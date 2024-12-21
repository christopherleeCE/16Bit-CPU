#include <iostream>
#include <string>
#include <algorithm>
#include <cctype> // For std::isspace

std::string trim(const std::string& str) {
    // Find the first non-whitespace character
    auto start = std::find_if_not(str.begin(), str.end(), [](unsigned char c) { return std::isspace(c); });

    // Find the last non-whitespace character
    auto end = std::find_if_not(str.rbegin(), str.rend(), [](unsigned char c) { return std::isspace(c); }).base();

    // Create a trimmed string if valid range exists
    return (start < end) ? std::string(start, end) : std::string();
}

int main() {
    std::string text = "      ";
    std::cout << "Original: [" << text << "]" << std::endl;

    std::string trimmed = trim(text);
    std::cout << "Trimmed: [" << trimmed << "]" << std::endl;

    return 0;
}
