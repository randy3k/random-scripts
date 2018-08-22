export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
export PKG_CONFIG_PATH="/usr/local/opt/qt/lib/pkgconfig"

cmake .. -DRSTUDIO_TARGET=Desktop -DCMAKE_BUILD_TYPE=Release -DRSTUDIO_USE_SYSTEM_BOOST=Yes -DBOOST_ROOT=/usr/local/opt/boost-rstudio-server -DBOOST_INCLUDEDIR=/usr/local/opt/boost-rstudio-server/include -DBOOST_LIBRARYDIR=/usr/local/opt/boost-rstudio-server/lib -DCMAKE_CXX_FLAGS="-I/usr/local/opt/openssl/include -I/usr/local/opt/qt/include" -DCMAKE_EXE_LINKER_FLAGS="-L/usr/local/opt/openssl/lib -L/usr/local/opt/boost-rstudio-server/lib -L/usr/local/opt/qt/lib" -DQT_QMAKE_EXECUTABLE="/usr/local/opt/qt/bin/qmake"
