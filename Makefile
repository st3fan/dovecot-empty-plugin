

PLUGIN_NAME = empty_plugin.so

DOVECOT_MODULES = /usr/lib/dovecot/modules
DOVECOT_INCLUDES = /usr/include/dovecot

#

SOURCES := $(wildcard *.c)

.PHONY: all build install configure clean

all: build

build: ${PLUGIN_NAME}

${PLUGIN_NAME}: ${SOURCES}
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -fPIC -shared -Wall -I${DOVECOT_INCLUDES} -DHAVE_CONFIG_H $< -o $@

install: install_plugin
	install $< ${DOVECOT_MODULES}

configure:
	install -d ${DESTDIR}/${DOVECOT_CONFIG_PATH}
	install -m 644 ${PLUGIN_CONFIG_FILE} ${DESTDIR}/${DOVECOT_CONFIG_PATH}

clean:
	$(RM) ${PLUGIN_NAME}
