# gpSP by Exophase

TARGET = gpSP

PREFIX    = /usr
#OBJS      = main.o cpu.o memory.o video.o input.o \
	    sound.o cpu_threaded.o gui.o x86_stub.o
OBJS = 	main.o   	 	  \
		cpu.o     	      \
		memory.o  	      \
		video.o       	  \
		input.o           \
		sound.o       	  \
		gui.o          	  \
		psp/mips_stub.o

#BIN       = gpsp.exe # deprecated, used for PC build

# Platform specific definitions 

CFLAGS   = -O2 -G0
INCLUDES   =
LIBS       = -lSDL -lSDL_gfx -lSDL_image -lSDL_mixer -lpsphprm -lpspgu -lpspgum -lpsprtc -lpspaudiolib -lpspaudio -lpspaudiocodec -lz -lstdc++ -lpspctrl -lm -lpspvfpu -lpspsdk -lpsppower

EXTRA_TARGETS    = EBOOT.PBP
PSP_EBOOT_TITLE  = gpSP
PSP_FW_VERSION   = 500
#PSP_EBOOT_ICON   =
#PSP_EBOOT_PIC1   =
BUILD_PRX        = 1
PSP_LARGE_MEMORY = 0

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
