#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = -Iinclude -Iautogen -Ishared
CFLAGS = -Wnon-virtual-dtor -Winit-self -Wcast-align -Wundef -Wfloat-equal -Wunreachable-code -Wmissing-include-dirs -Weffc++ -Wzero-as-null-pointer-constant -std=c++14 -fexceptions
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = 

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -Wredundant-decls -Winline -Wswitch-default -Wmain -Wall -g -DDEBUG
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = bin/Debug/onmi

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -march=core2 -fomit-frame-pointer -O3
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = bin/Release/onmi

OBJ_DEBUG = $(OBJDIR_DEBUG)/autogen/cmdline.o $(OBJDIR_DEBUG)/onmi.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/autogen/cmdline.o $(OBJDIR_RELEASE)/onmi.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG)/autogen || mkdir -p $(OBJDIR_DEBUG)/autogen
	test -d $(OBJDIR_DEBUG) || mkdir -p $(OBJDIR_DEBUG)

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/autogen/cmdline.o: autogen/cmdline.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c autogen/cmdline.c -o $(OBJDIR_DEBUG)/autogen/cmdline.o

$(OBJDIR_DEBUG)/onmi.o: onmi.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c onmi.cpp -o $(OBJDIR_DEBUG)/onmi.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)/autogen
	rm -rf $(OBJDIR_DEBUG)

before_release: 
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE)/autogen || mkdir -p $(OBJDIR_RELEASE)/autogen
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/autogen/cmdline.o: autogen/cmdline.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c autogen/cmdline.c -o $(OBJDIR_RELEASE)/autogen/cmdline.o

$(OBJDIR_RELEASE)/onmi.o: onmi.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c onmi.cpp -o $(OBJDIR_RELEASE)/onmi.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)/autogen
	rm -rf $(OBJDIR_RELEASE)

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

