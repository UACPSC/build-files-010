# Build for srccomplexity

.PHONY: all
all : srccomplexity srcMLXPathCountTest

srccomplexity : srcComplexity.o srcMLXPathCount.o
	g++ -std=c++17 $^ -lxml2 -o $@

srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp
	g++ -std=c++17 -c $<

srcMLXPathCount.o : srcMLXPathCount.cpp srcMLXPathCount.hpp
	g++ -std=c++17 -I/usr/include/libxml2 -c $<

srcMLXPathCountTest : srcMLXPathCount.o srcMLXPathCountTest.o
	g++ -std=c++17 $^ -lxml2 -o $@

srcMLXPathCountTest.o : srcMLXPathCountTest.cpp srcMLXPathCount.hpp
	g++ -std=c++17 -c $<

.PHONY: test
test : srcMLXPathCountTest
	./srcMLXPathCountTest

.PHONY: run
run : srccomplexity
	./srccomplexity srcMLXPathCount.cpp.xml

.PHONY: clean
clean :
	rm -f srcMLXPathCount.o srcComplexity.o srccomplexity srcMLXPathCountTest.o srcMLXPathCountTest
