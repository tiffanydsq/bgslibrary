# Install script for directory: /home/ilim/Project/BS/bgslibrary

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "runtime")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/ilim/Project/BS/bgslibrary/build/libbgs.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/package_bgs" TYPE FILE FILES
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBP_MRF.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBP_MRF/graph.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBP_MRF/block.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LOBSTER.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/TwoPoints/two_points.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBAdaptiveSOM.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/StaticFrameDifference.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBSimpleGaussian.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/WeightedMovingVariance.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/SigmaDelta.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/ViBe.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/T2FGMM_UM.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBFuzzyGaussian.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/VuMeter.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBFuzzyAdaptiveSOM.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/SuBSENSE.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/VuMeter/TBackgroundVuMeter.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/VuMeter/TBackground.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/_template_/Amber.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/_template_/amber/amber.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/_template_/MyBGS.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/T2FMRF_UV.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/TwoPoints.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/SigmaDelta/sdLaMa091.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/MultiCue.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/IndependentMultimodal.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/PBAS/PBAS.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/FuzzyChoquetIntegral.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBSP/RandUtils.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBSP/BackgroundSubtractorLOBSTER.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBSP/BackgroundSubtractorLBSP_.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBSP/LBSP_.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBSP/DistanceUtils.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBSP/BackgroundSubtractorSuBSENSE.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBSP/BackgroundSubtractorPAWCS.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBSP/LBSP.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBSP/BackgroundSubtractorLBSP.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/KDE.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/ViBe/vibe-background-sequential.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/GMG.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/lb/BGModelFuzzySom.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/lb/BGModel.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/lb/Types.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/lb/BGModelGauss.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/lb/BGModelFuzzyGauss.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/lb/BGModelMog.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/lb/BGModelSom.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/MultiLayer/OpenCvLegacyIncludes.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/MultiLayer/BGS.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/MultiLayer/OpenCvDataConversion.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/MultiLayer/CMultiLayerBGS.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/MultiLayer/BlobExtraction.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/MultiLayer/BlobLibraryConfiguration.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/MultiLayer/BlobResult.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/MultiLayer/LocalBinaryPattern.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/MultiLayer/BackgroundSubtractionAPI.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/MultiLayer/blob.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/DPTexture.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/CodeBook.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/T2FMRF_UM.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/IBGS.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/DPAdaptiveMedian.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/DPZivkovicAGMM.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/WeightedMovingMean.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/MultiLayer.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/KNN.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/AdaptiveBackgroundLearning.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/DPPratiMediod.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/bgslibrary.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/T2F/MRF.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/T2F/FuzzyUtils.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/T2F/T2FGMM.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/T2F/T2FMRF.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/DPWrenGA.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/KDE/KernelTable.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/KDE/NPBGSubtractor.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/KDE/NPBGmodel.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/DPEigenbackground.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/MixtureOfGaussianV1.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/FrameDifference.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/DPGrimsonGMM.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/LBMixtureOfGaussians.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/AdaptiveSelectiveBackgroundLearning.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/FuzzySugenoIntegral.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/PAWCS.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/T2FGMM_UV.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/MixtureOfGaussianV2.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/DPMean.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/PixelBasedAdaptiveSegmenter.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/dp/Eigenbackground.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/dp/Image.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/dp/GrimsonGMM.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/dp/WrenGA.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/dp/BgsParams.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/dp/TextureBGS.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/dp/MeanBGS.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/dp/Bgs.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/dp/ZivkovicAGMM.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/dp/AdaptiveMedianBGS.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/dp/PratiMediodBGS.h"
    "/home/ilim/Project/BS/bgslibrary/package_bgs/dp/Error.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "app")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/bgslibrary" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/bgslibrary")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/bgslibrary"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/ilim/Project/BS/bgslibrary/build/bgslibrary")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/bgslibrary" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/bgslibrary")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/bgslibrary"
         OLD_RPATH "/usr/local/cuda/lib64:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/bgslibrary")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ilim/Project/BS/bgslibrary/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
