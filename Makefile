# this will compile all the files
all: MakeFileTest

MakeFileTest: main.o pcrecpp.o pcre.o pcrecpparg.o pcreposix.o pcre_internal.o pcre_stringpiece.o config.o ucp.o
	g++ main.o pcrecpp.o pcre.o pcrecpparg.o pcreposix.o pcre_internal.o pcre_stringpiece.o config.o ucp.o -o MakeFileTest

main.o: main.cpp pcrecpp.h
	g++ -c main.cpp pcrecpp.h

pcrecpp.o: pcrecpp.h pcre.h pcrecpparg.h pcre_stringpiece.h
	g++ -c pcrecpp.h pcre.h pcrecpparg.h pcre_stringpiece.h

pcre.o: pcre.h
	g++ -c pcre.h

pcrecpparg.o: pcrecpparg.h pcre.h
	g++ -c pcrecpparg.h pcre.h

pcreposix.o: pcreposix.h
	g++ -c pcreposix.h

pcre_internal.o: pcre_internal.h ucp.h
	g++ -c pcre_internal.h

pcre_stringpiece.o: pcre_stringpiece.h
	g++ -c pcre_stringpiece.h

config.o: config.h
	g++ -c config.h

ucp.o: ucp.h 
	g++ -c ucp.h