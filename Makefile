# clipper hop on makefile 
# Change <EXEC_NAME> to binary name
# Change <MAIN> to name of main file (entry point)
# Change <LIBRARY_FILES> to a list of library files seperated by a newline and \


# NAMES OF LIBRARY FILES E.G nautilus-join 
SHARED = \
<LIBRARY FILES> 

LIBS = \
-lccp4c \
-lclipper-ccp4 \
-lclipper-contrib \
-lclipper-core \
-lclipper-minimol \
-lclipper-mmdb \
-lfftw \
-lmmdb2 \
-lrfftw \
-lm \
-lstdc++ \

FLAGS = \
-std=c++11 \
-O3 \
-Wall \
-Wno-sign-compare \
-fPIC \
-ftemplate-depth-50 \
-D_GLIBCXX_USE_CXX11_ABI=0 \
-g

INCDIR = -Iinclude
LIBDIR = -L${CCP4}/lib
#LIBDIR = -Llib
CFLAGS = ${FLAGS} ${INCDIR} -c -g
LFLAGS = ${FLAGS} ${LIBDIR} ${LIBS}

SRC_DIR = src
BIN_DIR = bin

OBJS = $(SHARED:=.o)

TARGET_OBJS = $(addprefix ${BIN_DIR}/,${OBJS})
TARGET_SRC = $(addprefix ${SRC_DIR}/,${OBJS})

BUILD_PRINT = @echo "\e[1;34mBuilding $<\e[0m"
COMPLETE_PRINT = @echo "\e[1;32mBuilding complete!\e[0m"

MKDIR_P = mkdir -p
$(shell mkdir -p $(BIN_DIR))

all: <EXEC_NAME>

<EXEC_NAME>: ${TARGET_SRC} <EXEC_NAME>.o
	$(BUILD_PRINT)
	@arch -x86_64 g++ ${TARGET_OBJS} ${BIN_DIR}/cnautilus.o -o $@ ${LFLAGS}
	$(COMPLETE_PRINT)

<EXEC_NAME>.o: ${SRC_DIR}/<MAIN_FILE>.cpp
	$(BUILD_PRINT)
	@arch -x86_64 g++ ${CFLAGS} $< -o ${BIN_DIR}/$(@F)

%.o: %.cpp %.h
	$(BUILD_PRINT)
	@arch -x86_64 g++ ${CFLAGS} $< -o ${BIN_DIR}/$(@F)

clean:
	rm bin/*.o <EXEC_NAME>
