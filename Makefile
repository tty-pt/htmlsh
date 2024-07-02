LDFLAGS := -L/usr/lib -L/usr/local/lib
CFLAGS := -I/usr/include -I/usr/local/include
UNAME != uname
LD-Linux := gcc
LD-OpenBSD := clang
LD := ${LD-${UNAME}}

htmlsh: htmlsh.c
	${LD} -o $@ htmlsh.c ${LDFLAGS} ${LDLIBS} ${CFLAGS}
