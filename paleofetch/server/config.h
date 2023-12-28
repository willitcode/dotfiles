#include "logos/arch.h"
#define COLOR "\e[1;31m"

#define CONFIG \
{ \
   /* name            function                 cached */\
    { "",             get_title,             false }, \
    { "",             get_bar,               false }, \
    { "OS: ",         get_os,                true  }, \
    { "Host: ",       get_host,              true  }, \
    { "Kernel: ",     get_kernel,            true  }, \
    { "Uptime: ",     get_uptime,            false }, \
    { "Packages: ",   get_packages_pacman,   false }, \
    { "Shell: ",      get_shell,             false }, \
    { "Terminal: ",   get_terminal,          false }, \
    { "CPU: ",        get_cpu,               true  }, \
    { "Memory: ",     get_memory,            false }, \
    { "",             get_colors1,           false }, \
    { "",             get_colors2,           false }, \
}

#define CPU_CONFIG \
{ \
   REMOVE("(R)"), \
   REMOVE("(TM)"), \
   REMOVE("Dual-Core"), \
   REMOVE("Quad-Core"), \
   REMOVE("Six-Core"), \
   REMOVE("Eight-Core"), \
   REMOVE("Core"), \
   REMOVE("CPU"), \
}

#define GPU_CONFIG \
{ \
    REMOVE("Corporation"), \
}
