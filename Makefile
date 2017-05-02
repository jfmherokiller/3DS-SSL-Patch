#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------

.PHONY: assemble all clean

all:
	@ctrtool -t exefs --exefsdir=./exe exefs.bin --decompresscode
	@mv exe/code.bin code.bin
	@rmdir exe
	@armips patch.s
