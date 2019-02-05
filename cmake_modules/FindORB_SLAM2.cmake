# - Try to find ORB_SLAM2
# Once done this will define
#  ORB_SLAM2_FOUND - System has ORB_SLAM2
#  ORB_SLAM2_INCLUDE_DIRS - The ORB_SLAM2 include directories
#  ORB_SLAM2_LIBRARIES - The libraries needed to use ORB_SLAM2
#  ORB_SLAM2_DEFINITIONS - Compiler switches required for using ORB_SLAM2

find_path(ORB_SLAM2_DIR /home/dede/source/external/ORB_SLAM2/build.sh
          NAMES build.sh
          HINTS ${ORB_SLAM2_DIR} ${ORB_SLAM2_DIRS}
          PATHS  /home/dede/source/external/ORB_SLAM2)

find_path(ORB_SLAM2_INCLUDE_DIR /home/dede/source/external/ORB_SLAM2/include/System.h
          NAMES System.h
          HINTS ${ORB_SLAM2_INCLUDEDIR} ${ORB_SLAM2_INCLUDE_DIRS}
          PATHS  /home/dede/source/external/ORB_SLAM2/include)

find_path(DBOW2_INCLUDE_DIR /home/dede/source/external/ORB_SLAM2/Thirdparty/DBoW2/DBoW2/BowVector.h
          NAMES BowVector.h
          HINTS ${DBOW2_INCLUDEDIR} ${DBOW2_INCLUDE_DIRS}
          PATHS  /home/dede/source/external/ORB_SLAM2/Thirdparty/DBoW2/DBoW2)

find_library(ORB_SLAM2_LIBRARY NAMES ORB_SLAM2
             HINTS ${ORB_SLAM2_LIBDIR} ${ORB_SLAM2_LIBRARY_DIRS}
             PATHS  /home/dede/source/external/ORB_SLAM2/lib)

#message(${ORB_SLAM2_INCLUDE_DIR})
#message(${ORB_SLAM2_LIBRARY})

mark_as_advanced(ORB_SLAM2_DIR ORB_SLAM2_INCLUDE_DIR DBOW2_INCLUDE_DIR ORB_SLAM2_LIBRARY )

set(ORB_SLAM2_FOUND TRUE)
set(ORB_SLAM2_LIBRARIES ${ORB_SLAM2_LIBRARY} )
set(ORB_SLAM2_INCLUDE_DIRS
    ${ORB_SLAM2_DIR}
    ${ORB_SLAM2_INCLUDE_DIR}
    ${DBOW2_INCLUDE_DIR})

