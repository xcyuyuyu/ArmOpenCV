#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>

int main() {
    cv::Mat image;
    image = cv::imread("./Picture1.png");

    std::cout << "Image width: " << image.cols << std::endl;
    std::cout << "Image height: " << image.rows << std::endl;
    std::cout << "Read image successful!!!" << std::endl;
    return 0;
}
