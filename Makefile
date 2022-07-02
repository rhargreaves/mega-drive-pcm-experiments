SGDK=/sgdk
MAKE=make

all: release out/rom.s

include $(SGDK)/makefile.gen

release: FLAGS= $(DEFAULT_FLAGS) -O3 -fuse-linker-plugin -fno-web -fno-gcse \
    -fno-unit-at-a-time -fomit-frame-pointer
release: LIBMD= $(LIB)/libmd.a
release: pre-build out/rom.bin out/symbol.txt

out/rom.s: out/rom.out
	m68k-elf-objdump -S $^ > $@