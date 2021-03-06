CFLAGS=-O2 -g
CC=gcc
#CFLAGS=-g

OBJS=closure.o web.o count.o session.o forest.o random.o
#LIBS=-la -ltsdb -lace
DELPHIN_LIBS=-L ${LOGONROOT}/lingo/lkb/lib/linux.x86.64 -Wl,-Bstatic -litsdb -lpvm3 -Wl,-Bdynamic
LIBS=-Wl,-Bstatic -la -ltsdb -lace -lrepp -lboost_regex -lstdc++ -lutil -Wl,-Bdynamic -lm -ldl -lpthread ${DELPHIN_LIBS} -z muldefs

fftb: ${OBJS}
	gcc ${CFLAGS} ${OBJS} -o fftb ${LIBS}

clean:
	rm -f ${OBJS}
