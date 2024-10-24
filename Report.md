<!-- {% raw %} -->
# Build Files: build-files-010

## Source

Space: `·` Tab: `-` [EOL](https://en.wikipedia.org/wiki/Newline) `$`

```C++
 1 # Build for srccomplexity$
 2 $
 3 .PHONY: all$
 4 all : srccomplexity srcMLXPathCountTest$
 5 $
 6 srccomplexity : srcComplexity.o srcMLXPathCount.o$
 7 ――――――――g++ -std=c++17 $^ -lxml2 -o $@$
 8 $
 9 srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp$
10 ――――――――g++ -std=c++17 -c $<$
11 $
12 srcMLXPathCount.o : srcMLXPathCount.cpp srcMLXPathCount.hpp$
13 ――――――――g++ -std=c++17 -I/usr/include/libxml2 -c $<$
14 $
15 srcMLXPathCountTest : srcMLXPathCount.o srcMLXPathCountTest.o$
16 ――――――――g++ -std=c++17 $^ -lxml2 -o $@$
17 $
18 srcMLXPathCountTest.o : srcMLXPathCountTest.cpp srcMLXPathCount.hpp$
19 ――――――――g++ -std=c++17 -c $<$
20 $
21 .PHONY: test$
22 test : srcMLXPathCountTest$
23 ――――――――./srcMLXPathCountTest$
24 $
25 .PHONY: run$
26 run : srccomplexity$
27 ――――――――./srccomplexity srcMLXPathCount.cpp.xml$
28 $
29 .PHONY: clean$
30 clean :$
31 ――――――――rm -f srcMLXPathCount.o srcComplexity.o srccomplexity srcMLXPathCountTest.o srcMLXPathCountTest$

```

## Build
% make

% ls -lh

```console
total 40K
-rw-rw-r-- 1 root root  791 Oct 15 13:11 Makefile
-rw-rw-r-- 1 root root  293 Oct 15 13:11 README.md
-rw-rw-r-- 1 root root  280 Oct 15 13:11 srcComplexity.1.md
-rw-rw-r-- 1 root root 1.3K Oct 15 13:11 srcComplexity.cpp
-rw-rw-r-- 1 root root 2.1K Oct 15 13:11 srcMLXPathCount.cpp
-rw-rw-r-- 1 root root 8.2K Oct 15 13:11 srcMLXPathCount.cpp.xml
-rw-rw-r-- 1 root root  664 Oct 15 13:11 srcMLXPathCount.hpp
-rw-rw-r-- 1 root root  130 Oct 15 13:11 srcMLXPathCountTest.cpp
```

% make

```console
g++ -std=c++17 -c srcComplexity.cpp
g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o srccomplexity
g++ -std=c++17 -c srcMLXPathCountTest.cpp
g++ -std=c++17 srcMLXPathCount.o srcMLXPathCountTest.o -lxml2 -o srcMLXPathCountTest
```

% make run

```console
./srccomplexity srcMLXPathCount.cpp.xml
7
```

% make clean

```console
rm -f srcMLXPathCount.o srcComplexity.o srccomplexity srcMLXPathCountTest.o srcMLXPathCountTest
```


## Commit Messages

```console
a3e4a6f Initial commit
3cb6b54 Add header comment to the Makefile
ec907fd Add srcComplexity.cpp to the build
1e7e778 Add srcMLXPathCount.cpp to the build
7d9c4a9 Add executable srccomplexity to the build
299005d Add srcMLXPathCountTest to the build
d62a0cc Add executable srcMLXPathCountTest to the build
dd7827e Set default for both executables
bff349e Add standard target clean to the build
a16af40 Add standard target run to the build
091da03 Add standard target test to the build
a57ab33 Use automatic variable for target in build
b28dce9 Use automatic variable for first dependency in the build
3785fb2 Use automatic variable for all dependencies in the build
```

## Commits
## git checkout 3cb6b5


% git show 3cb6b5

```console
commit 3cb6b54621ae756a4a11b691447c00dfc57be8f2
Author: Michael L. Collard <collard@uakron.edu>
Date:   Tue Oct 15 12:30:41 2024

    Add header comment to the Makefile

diff --git a/Makefile b/Makefile
index e69de29..7a4266b 100644
--- a/Makefile
+++ b/Makefile
@@ -0,0 +1 @@
+# Build for srccomplexity
```

% make

```console
make: *** No targets.  Stop.
```

% make run

```console
make: *** No rule to make target 'run'.  Stop.
```

## git checkout ec907f


% git show ec907f

```console
commit ec907fd32d9519aee050834158fb62e25dfeb3ed
Author: Michael L. Collard <collard@uakron.edu>
Date:   Tue Oct 15 12:38:25 2024

    Add srcComplexity.cpp to the build

diff --git a/Makefile b/Makefile
index 7a4266b..fe37f4d 100644
--- a/Makefile
+++ b/Makefile
@@ -1 +1,4 @@
 # Build for srccomplexity
+
+srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp
+	g++ -std=c++17 -c srcComplexity.cpp
```

% make

```console
g++ -std=c++17 -c srcComplexity.cpp
```

% make run

```console
make: *** No rule to make target 'run'.  Stop.
```

## git checkout 1e7e77


% git show 1e7e77

```console
commit 1e7e778b197694fab6fab6fb614f813e21253954
Author: Michael L. Collard <collard@uakron.edu>
Date:   Tue Oct 15 12:40:29 2024

    Add srcMLXPathCount.cpp to the build

diff --git a/Makefile b/Makefile
index fe37f4d..01d8725 100644
--- a/Makefile
+++ b/Makefile
@@ -2,3 +2,6 @@
 
 srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp
 	g++ -std=c++17 -c srcComplexity.cpp
+
+srcMLXPathCount.o : srcMLXPathCount.cpp srcMLXPathCount.hpp
+	g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
```

% make

```console
g++ -std=c++17 -c srcComplexity.cpp
```

% make run

```console
make: *** No rule to make target 'run'.  Stop.
```

## git checkout 7d9c4a


% git show 7d9c4a

```console
commit 7d9c4a98be74e68309de7d1b036d0c6dcd47a2e9
Author: Michael L. Collard <collard@uakron.edu>
Date:   Tue Oct 15 12:45:01 2024

    Add executable srccomplexity to the build

diff --git a/Makefile b/Makefile
index 01d8725..5ef1c36 100644
--- a/Makefile
+++ b/Makefile
@@ -1,5 +1,8 @@
 # Build for srccomplexity
 
+srccomplexity : srcComplexity.o srcMLXPathCount.o
+	g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o srccomplexity
+
 srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp
 	g++ -std=c++17 -c srcComplexity.cpp
 
```

% make

```console
g++ -std=c++17 -c srcComplexity.cpp
g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o srccomplexity
```

% make run

```console
make: *** No rule to make target 'run'.  Stop.
```

## git checkout 299005


% git show 299005

```console
commit 299005d02752fd2ea037ffbd68df4914e5faec84
Author: Michael L. Collard <collard@uakron.edu>
Date:   Tue Oct 15 12:47:41 2024

    Add srcMLXPathCountTest to the build

diff --git a/Makefile b/Makefile
index 5ef1c36..3573e33 100644
--- a/Makefile
+++ b/Makefile
@@ -8,3 +8,6 @@ srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp
 
 srcMLXPathCount.o : srcMLXPathCount.cpp srcMLXPathCount.hpp
 	g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
+
+srcMLXPathCountTest.o : srcMLXPathCountTest.cpp srcMLXPathCount.hpp
+	g++ -std=c++17 -c srcMLXPathCountTest.cpp
```

% make

```console
g++ -std=c++17 -c srcComplexity.cpp
g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o srccomplexity
```

% make run

```console
make: *** No rule to make target 'run'.  Stop.
```

## git checkout d62a0c


% git show d62a0c

```console
commit d62a0cc0814eaf83245f9dc3b1983d46cb2ad003
Author: Michael L. Collard <collard@uakron.edu>
Date:   Tue Oct 15 12:49:56 2024

    Add executable srcMLXPathCountTest to the build

diff --git a/Makefile b/Makefile
index 3573e33..9e15eb2 100644
--- a/Makefile
+++ b/Makefile
@@ -9,5 +9,8 @@ srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp
 srcMLXPathCount.o : srcMLXPathCount.cpp srcMLXPathCount.hpp
 	g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
 
+srcMLXPathCountTest : srcMLXPathCount.o srcMLXPathCountTest.o
+	g++ -std=c++17 srcMLXPathCount.o srcMLXPathCountTest.o -lxml2 -o srcMLXPathCountTest
+
 srcMLXPathCountTest.o : srcMLXPathCountTest.cpp srcMLXPathCount.hpp
 	g++ -std=c++17 -c srcMLXPathCountTest.cpp
```

% make

```console
g++ -std=c++17 -c srcComplexity.cpp
g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o srccomplexity
```

% make run

```console
make: *** No rule to make target 'run'.  Stop.
```

## git checkout dd7827


% git show dd7827

```console
commit dd7827e376afd2c4729829c441e37d9b043dc960
Author: Michael L. Collard <collard@uakron.edu>
Date:   Tue Oct 15 12:52:26 2024

    Set default for both executables

diff --git a/Makefile b/Makefile
index 9e15eb2..af450a6 100644
--- a/Makefile
+++ b/Makefile
@@ -1,5 +1,8 @@
 # Build for srccomplexity
 
+.PHONY: all
+all : srccomplexity srcMLXPathCountTest
+
 srccomplexity : srcComplexity.o srcMLXPathCount.o
 	g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o srccomplexity
 
```

% make

```console
g++ -std=c++17 -c srcComplexity.cpp
g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o srccomplexity
g++ -std=c++17 -c srcMLXPathCountTest.cpp
g++ -std=c++17 srcMLXPathCount.o srcMLXPathCountTest.o -lxml2 -o srcMLXPathCountTest
```

% make run

```console
make: *** No rule to make target 'run'.  Stop.
```

## git checkout bff349


% git show bff349

```console
commit bff349e7a548a2aafb0c1d3a559c509037fb38ab
Author: Michael L. Collard <collard@uakron.edu>
Date:   Tue Oct 15 12:55:50 2024

    Add standard target clean to the build

diff --git a/Makefile b/Makefile
index af450a6..f97f4ff 100644
--- a/Makefile
+++ b/Makefile
@@ -17,3 +17,7 @@ srcMLXPathCountTest : srcMLXPathCount.o srcMLXPathCountTest.o
 
 srcMLXPathCountTest.o : srcMLXPathCountTest.cpp srcMLXPathCount.hpp
 	g++ -std=c++17 -c srcMLXPathCountTest.cpp
+
+.PHONY: clean
+clean :
+	rm -f srcMLXPathCount.o srcComplexity.o srccomplexity srcMLXPathCountTest.o srcMLXPathCountTest
```

% make

```console
g++ -std=c++17 -c srcComplexity.cpp
g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o srccomplexity
g++ -std=c++17 -c srcMLXPathCountTest.cpp
g++ -std=c++17 srcMLXPathCount.o srcMLXPathCountTest.o -lxml2 -o srcMLXPathCountTest
```

% make run

```console
make: *** No rule to make target 'run'.  Stop.
```

## git checkout a16af4


% git show a16af4

```console
commit a16af406a16a2f0a31a03f4676401eb50fb86688
Author: Michael L. Collard <collard@uakron.edu>
Date:   Tue Oct 15 12:58:38 2024

    Add standard target run to the build

diff --git a/Makefile b/Makefile
index f97f4ff..1767d93 100644
--- a/Makefile
+++ b/Makefile
@@ -18,6 +18,10 @@ srcMLXPathCountTest : srcMLXPathCount.o srcMLXPathCountTest.o
 srcMLXPathCountTest.o : srcMLXPathCountTest.cpp srcMLXPathCount.hpp
 	g++ -std=c++17 -c srcMLXPathCountTest.cpp
 
+.PHONY: run
+run : srccomplexity
+	./srccomplexity srcMLXPathCount.cpp.xml
+
 .PHONY: clean
 clean :
 	rm -f srcMLXPathCount.o srcComplexity.o srccomplexity srcMLXPathCountTest.o srcMLXPathCountTest
```

% make

```console
g++ -std=c++17 -c srcComplexity.cpp
g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o srccomplexity
g++ -std=c++17 -c srcMLXPathCountTest.cpp
g++ -std=c++17 srcMLXPathCount.o srcMLXPathCountTest.o -lxml2 -o srcMLXPathCountTest
```

% make run

```console
./srccomplexity srcMLXPathCount.cpp.xml
7
```

## git checkout 091da0


% git show 091da0

```console
commit 091da03821f1ccd6ba64a2d3869684953fbeb649
Author: Michael L. Collard <collard@uakron.edu>
Date:   Tue Oct 15 13:00:37 2024

    Add standard target test to the build

diff --git a/Makefile b/Makefile
index 1767d93..9a83c10 100644
--- a/Makefile
+++ b/Makefile
@@ -18,6 +18,10 @@ srcMLXPathCountTest : srcMLXPathCount.o srcMLXPathCountTest.o
 srcMLXPathCountTest.o : srcMLXPathCountTest.cpp srcMLXPathCount.hpp
 	g++ -std=c++17 -c srcMLXPathCountTest.cpp
 
+.PHONY: test
+test : srcMLXPathCountTest
+	./srcMLXPathCountTest
+
 .PHONY: run
 run : srccomplexity
 	./srccomplexity srcMLXPathCount.cpp.xml
```

% make

```console
g++ -std=c++17 -c srcComplexity.cpp
g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o srccomplexity
g++ -std=c++17 -c srcMLXPathCountTest.cpp
g++ -std=c++17 srcMLXPathCount.o srcMLXPathCountTest.o -lxml2 -o srcMLXPathCountTest
```

% make run

```console
./srccomplexity srcMLXPathCount.cpp.xml
7
```

## git checkout a57ab3


% git show a57ab3

```console
commit a57ab335d94fea1ac620e0e82a1e0a34edff1b6e
Author: Michael L. Collard <collard@uakron.edu>
Date:   Tue Oct 15 13:07:50 2024

    Use automatic variable for target in build

diff --git a/Makefile b/Makefile
index 9a83c10..69caf2f 100644
--- a/Makefile
+++ b/Makefile
@@ -4,7 +4,7 @@
 all : srccomplexity srcMLXPathCountTest
 
 srccomplexity : srcComplexity.o srcMLXPathCount.o
-	g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o srccomplexity
+	g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o $@
 
 srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp
 	g++ -std=c++17 -c srcComplexity.cpp
@@ -13,7 +13,7 @@ srcMLXPathCount.o : srcMLXPathCount.cpp srcMLXPathCount.hpp
 	g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
 
 srcMLXPathCountTest : srcMLXPathCount.o srcMLXPathCountTest.o
-	g++ -std=c++17 srcMLXPathCount.o srcMLXPathCountTest.o -lxml2 -o srcMLXPathCountTest
+	g++ -std=c++17 srcMLXPathCount.o srcMLXPathCountTest.o -lxml2 -o $@
 
 srcMLXPathCountTest.o : srcMLXPathCountTest.cpp srcMLXPathCount.hpp
 	g++ -std=c++17 -c srcMLXPathCountTest.cpp
```

% make

```console
g++ -std=c++17 -c srcComplexity.cpp
g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o srccomplexity
g++ -std=c++17 -c srcMLXPathCountTest.cpp
g++ -std=c++17 srcMLXPathCount.o srcMLXPathCountTest.o -lxml2 -o srcMLXPathCountTest
```

% make run

```console
./srccomplexity srcMLXPathCount.cpp.xml
7
```

## git checkout b28dce


% git show b28dce

```console
commit b28dce990957fd086b947ad24c547c7eb21d401d
Author: Michael L. Collard <collard@uakron.edu>
Date:   Tue Oct 15 13:09:55 2024

    Use automatic variable for first dependency in the build

diff --git a/Makefile b/Makefile
index 69caf2f..1b01178 100644
--- a/Makefile
+++ b/Makefile
@@ -7,16 +7,16 @@ srccomplexity : srcComplexity.o srcMLXPathCount.o
 	g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o $@
 
 srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp
-	g++ -std=c++17 -c srcComplexity.cpp
+	g++ -std=c++17 -c $<
 
 srcMLXPathCount.o : srcMLXPathCount.cpp srcMLXPathCount.hpp
-	g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
+	g++ -std=c++17 -I/usr/include/libxml2 -c $<
 
 srcMLXPathCountTest : srcMLXPathCount.o srcMLXPathCountTest.o
 	g++ -std=c++17 srcMLXPathCount.o srcMLXPathCountTest.o -lxml2 -o $@
 
 srcMLXPathCountTest.o : srcMLXPathCountTest.cpp srcMLXPathCount.hpp
-	g++ -std=c++17 -c srcMLXPathCountTest.cpp
+	g++ -std=c++17 -c $<
 
 .PHONY: test
 test : srcMLXPathCountTest
```

% make

```console
g++ -std=c++17 -c srcComplexity.cpp
g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o srccomplexity
g++ -std=c++17 -c srcMLXPathCountTest.cpp
g++ -std=c++17 srcMLXPathCount.o srcMLXPathCountTest.o -lxml2 -o srcMLXPathCountTest
```

% make run

```console
./srccomplexity srcMLXPathCount.cpp.xml
7
```

## git checkout 3785fb


% git show 3785fb

```console
commit 3785fb2f3224c252c35af8389373a25d4f06cda7
Author: Michael L. Collard <collard@uakron.edu>
Date:   Tue Oct 15 13:11:13 2024

    Use automatic variable for all dependencies in the build

diff --git a/Makefile b/Makefile
index 1b01178..02cdcb3 100644
--- a/Makefile
+++ b/Makefile
@@ -4,7 +4,7 @@
 all : srccomplexity srcMLXPathCountTest
 
 srccomplexity : srcComplexity.o srcMLXPathCount.o
-	g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o $@
+	g++ -std=c++17 $^ -lxml2 -o $@
 
 srcComplexity.o : srcComplexity.cpp srcMLXPathCount.hpp
 	g++ -std=c++17 -c $<
@@ -13,7 +13,7 @@ srcMLXPathCount.o : srcMLXPathCount.cpp srcMLXPathCount.hpp
 	g++ -std=c++17 -I/usr/include/libxml2 -c $<
 
 srcMLXPathCountTest : srcMLXPathCount.o srcMLXPathCountTest.o
-	g++ -std=c++17 srcMLXPathCount.o srcMLXPathCountTest.o -lxml2 -o $@
+	g++ -std=c++17 $^ -lxml2 -o $@
 
 srcMLXPathCountTest.o : srcMLXPathCountTest.cpp srcMLXPathCount.hpp
 	g++ -std=c++17 -c $<
```

% make

```console
g++ -std=c++17 -c srcComplexity.cpp
g++ -std=c++17 -I/usr/include/libxml2 -c srcMLXPathCount.cpp
g++ -std=c++17 srcComplexity.o srcMLXPathCount.o -lxml2 -o srccomplexity
g++ -std=c++17 -c srcMLXPathCountTest.cpp
g++ -std=c++17 srcMLXPathCount.o srcMLXPathCountTest.o -lxml2 -o srcMLXPathCountTest
```

% make run

```console
./srccomplexity srcMLXPathCount.cpp.xml
7
```


<!-- {% endraw %} -->
