add_executable(ar_demo_app ar_demo_app.cpp)

target_link_libraries(ar_demo_app
  ${OpenCV_LIBS}
  ${ORB_SLAM2_LIBRARIES}
  ${Pangolin_LIBRARIES}) 
