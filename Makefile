# Makefile

PLUGIN_NAME = empty_plugin.so

DOVECOT_MODULES = /usr/lib/dovecot/modules
DOVECOT_INCLUDES = /usr/include/dovecot

#

SOURCES := $(wildcard *.c)

.PHONY: all build install clean

all: build

build: ${PLUGIN_NAME}

${PLUGIN_NAME}: ${SOURCES}
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -fPIC -shared -Wall -I${DOVECOT_INCLUDES} -DHAVE_CONFIG_H $< -o $@

install:
	install ${PLUGIN_NAME} ${DOVECOT_MODULES}

clean:
	$(RM) ${PLUGIN_NAME}
