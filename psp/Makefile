# -x assembler-with-cpp
# gpSP makefile
# Gilead Kutnick - Exophase

# Global definitions

PSPSDK          = ${shell psp-config --pspsdk-path}
PREFIX          = ${shell psp-config --psp-prefix}
PSPDEV		= ${shell psp-config --pspdev-path}

OBJS            = main.o cpu.o video.o memory.o sound.o input.o \
 	          cpu_threaded.o gui.o zip.o cheats.o mips_stub.o

TARGET          = gpSP

VPATH           += ..
CFLAGS          += -O3 -DPSP_BUILD -G0 -funsigned-char
CFLAGS          += ${shell ${PSPDEV}/psp/bin/sdl-config --cflags}
ASFLAGS         = ${CFLAGS}

BUILD_PRX       = 1
PSP_FW_VERSION  = 500
PSP_EBOOT_TITLE = gpSP v0.9
PSP_EBOOT_ICON  = ICON0.PNG
PSP_EBOOT_PIC1  = PIC1.PNG
EXTRA_TARGETS   = EBOOT.PBP

LIBS            = ${shell ${PSPDEV}/psp/bin/sdl-config --libs} -lpspgu -lpsprtc -lpspaudio -lz -lpspctrl -lpsppower

include ${PSPSDK}/lib/build.mak

