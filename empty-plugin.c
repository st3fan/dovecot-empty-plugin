
#include "lib.h"
#include "module-dir.h"
#include "module-context.h"
#include "imap-common.h"
#include "imap-commands.h"
#include "mail-storage-private.h"

const char *empty_plugin_version = DOVECOT_VERSION;

struct empty_client {
  union imap_module_context module_ctx;
  int something;
};

static struct module *empty_module;

static MODULE_CONTEXT_DEFINE_INIT(empty_imap_module, &imap_module_register);

void empty_plugin_init(struct module *module ATTR_UNUSED)
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
