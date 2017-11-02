/*
This file is part of BGSLibrary.

BGSLibrary is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

BGSLibrary is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with BGSLibrary.  If not, see <http://www.gnu.org/licenses/>.
*/
#include <iostream>
#include <opencv2/opencv.hpp>
#include "opencv2/videoio.hpp"
#include "package_bgs/bgslibrary.h"
// using namespace cv;

int main(int argc, char **argv)
{
  std::cout << "Using OpenCV " << CV_MAJOR_VERSION << "." << CV_MINOR_VERSION << "." << CV_SUBMINOR_VERSION << std::endl;

  VideoCapture capture;
  

  if (argc > 1)
  {
    std::cout << "Openning: " << argv[1] << std::endl;
    capture.open(argv[1]);
  }
  else
    capture.open(0);

  if (!capture.isOpened())
  {
    std::cerr << "Cannot initialize video!" << std::endl;
    return -1;
  }

  
  VideoWriter video_mask(argv[1]+string("_fg.avi"),
    CV_FOURCC('M','J','P','G'), 
    capture.get(CV_CAP_PROP_FPS), 
    Size(capture.get(CV_CAP_PROP_FRAME_WIDTH),capture.get(CV_CAP_PROP_FRAME_HEIGHT))
  );

  /* Background Subtraction Methods */
  IBGS *bgs;

  // bgs = new FrameDifference;
  //bgs = new StaticFrameDifference;
  //bgs = new WeightedMovingMean;
  //bgs = new WeightedMovingVariance;
  //bgs = new MixtureOfGaussianV1; // only on OpenCV 2.x
  //bgs = new MixtureOfGaussianV2;
  //bgs = new AdaptiveBackgroundLearning;
  //bgs = new AdaptiveSelectiveBackgroundLearning;
  //bgs = new GMG; // only on OpenCV 2.x
  //bgs = new KNN; // only on OpenCV 3.x
  //bgs = new DPAdaptiveMedian;
  //bgs = new DPGrimsonGMM;
  //bgs = new DPZivkovicAGMM;
  //bgs = new DPMean;
  //bgs = new DPWrenGA;
  //bgs = new DPPratiMediod;
  //bgs = new DPEigenbackground;
  //bgs = new DPTexture;
  //bgs = new T2FGMM_UM;
  //bgs = new T2FGMM_UV;
  //bgs = new T2FMRF_UM;
  //bgs = new T2FMRF_UV;
  //bgs = new FuzzySugenoIntegral;
  //bgs = new FuzzyChoquetIntegral;
  bgs = new MultiLayer;
  //bgs = new PixelBasedAdaptiveSegmenter;
  //bgs = new LBSimpleGaussian;
  //bgs = new LBFuzzyGaussian;
  //bgs = new LBMixtureOfGaussians;
  //bgs = new LBAdaptiveSOM;
  //bgs = new LBFuzzyAdaptiveSOM;
  //bgs = new LBP_MRF;
  //bgs = new VuMeter;
  //bgs = new KDE;
  //bgs = new IndependentMultimodal;
  //bgs = new MultiCue;
  //bgs = new SigmaDelta;
  //bgs = new SuBSENSE;
  //bgs = new LOBSTER;
  //bgs = new PAWCS;
  //bgs = new TwoPoints;
  //bgs = new ViBe;
  //bgs = new CodeBook;
  
  // namedWindow("Input", WINDOW_NORMAL );
  // resizeWindow("Input",600, 800);

  // namedWindow("FG mask", cv::WINDOW_NORMAL );
  // resizeWindow("FG mask",1200, 800);

  int key = 0;
  cv::Mat img_input;
  int cnt=0;
  while (key != 'q')
  {
    capture >> img_input;
    if (img_input.empty()) break;

    // cv::imshow("Input", img_input);
    

    cv::Mat img_mask;
    cv::Mat img_bkgmodel;

    bgs->process(img_input, img_mask, img_bkgmodel); // by default, it shows automatically the foreground mask image
    //if(!img_mask.empty())
    //  cv::imshow("FG mask", img_mask);

    cv::Mat white;
    findNonZero	(img_mask,white);
    cout<< white.cols << "  " << white.rows << endl;

    //  process 
    cv::Mat mask;
    cvtColor(img_mask, mask, cv::COLOR_GRAY2BGR);
    video_mask<<mask;



    cnt++;
    if(!(cnt%50))
      cout<<"Frame No."<<cnt<<endl;

    key = cvWaitKey(33);
  }

  delete bgs;

  capture.release();
  cvDestroyAllWindows();

  return 0;
}
