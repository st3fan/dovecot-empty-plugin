#ifndef EMPTY_PLUGIN_H
#define EMPTY_PLUGIN_H

extern const char *empty_plugin_dependencies[];
extern const char empty_plugin_binary_dependency[];

void empty_plugin_init(struct module *module);
void empty_plugin_deinit(void);

#endif
