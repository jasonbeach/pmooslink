
INCLUDES=-I. -I$(MOOS_INSTALL_ROOT)/include

MOOSLD=-L$(MOOS_INSTALL_ROOT)/lib -lMOOS -lrt -lpthread

SRCS=pMOOSLinkMain.cpp pMOOSLink.cpp

PMOOSLINK=pMOOSLink

all: $(PMOOSLINK)

$(PMOOSLINK) : $(SRCS)
	g++ $(INCLUDES) $(SRCS) -o $(PMOOSLINK) $(MOOSLD)

clean:
	rm -f *.o $(PMOOSLINK)
