
#include "lib.h"
#include "module-dir.h"

const char *empty_plugin_version = DOVECOT_VERSION;

static struct module *empty_module;

void empty_plugin_init(struct module *module)
{
    i_debug("empty_plugin_init");
    empty_module = module;
}

void empty_plugin_deinit(void)
{
    i_debug("empty_plugin_deinit");
}

const char *empty_plugin_dependencies[] = { NULL };
const char empty_plugin_binary_dependency[] = "imap";
