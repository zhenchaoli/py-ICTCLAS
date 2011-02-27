all:
	swig -c++ -python cnseg.i
	g++ -O2 -fPIC -c cnseg_wrap.cxx -I/usr/include/python2.6
	g++ -shared -L. -lICTCLAS50 cnseg_wrap.o -o _cnseg.so
