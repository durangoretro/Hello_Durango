BUILD_DIR = bin
SOURCE_DIR = src

COMPILER_OPT = -I $(DDK)/inc --cpu 6502
LINKER_OPT = -C $(DDK)/cfg/durango.cfg -o main.bin  video.o durangoLib/bin/vectors.o

all: make32

$(BUILD_DIR)/example1.s: $(BUILD_DIR)/ $(SOURCE_DIR)/example1.c
	cc65 $(COMPILER_OPT) -o $(BUILD_DIR)/example1.s $(SOURCE_DIR)/example1.c

$(BUILD_DIR)/example1.o: $(BUILD_DIR)/example1.s
	ca65 -t none $(BUILD_DIR)/example1.s -o $(BUILD_DIR)/example1.o

example1.bin: $(BUILD_DIR)/example1.o
	ld65 -C $(DDK)/cfg/durango.cfg $(BUILD_DIR)/example1.o $(DDK)/bin/vectors.o $(DDK)/bin/durango.lib $(DDK)/bin/sbc.lib -o example1.bin

example1-16.bin: $(BUILD_DIR)/example1.o
	ld65 -C $(DDK)/cfg/durango16k.cfg $(BUILD_DIR)/example1.o $(DDK)/bin/vectors.o $(DDK)/bin/durango.lib $(DDK)/bin/sbc.lib -o example1-16k.bin

make32: example1.bin

make16: example1-16.bin

$(BUILD_DIR)/:
	mkdir -p $(BUILD_DIR)

clean:
	rm -Rf $(BUILD_DIR)/ example1.bin example1-16.bin