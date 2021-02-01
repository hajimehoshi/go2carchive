#include <stdarg.h>

#define stderr ((void*)2)

int fprintf(void *stream, const char *format, ...);
int vfprintf(void *stream, const char *format, va_list arg);
