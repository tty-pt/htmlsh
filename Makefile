DESTDIR ?= ../../
PREFIX ?= usr
LDFLAGS := -L/usr/lib -L/usr/local/lib
CFLAGS := -I/usr/include -I/usr/local/include
UNAME != uname
LD-Linux := gcc
LD-OpenBSD := clang
LD := ${LD-${UNAME}}

htmlsh: htmlsh.c
	${LD} -o $@ htmlsh.c ${LDFLAGS} ${LDLIBS} ${CFLAGS}

install: ${DESTDIR}${PREFIX}/bin/htmlsh

${DESTDIR}${PREFIX}/bin/htmlsh: htmlsh
	install -m 755 htmlsh $@

list:
	@echo ${PREFIX}/bin/htmlsh

.PHONY: list install
