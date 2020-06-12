
Goal:

To evaluate the call time between Luajit and C.

Reference: 

https://gist.github.com/mkfmnn/3726661

https://stackoverflow.com/questions/12329128/luajit-ffi-callback-performance

Usage: 

gcc callback.c -shared -o callback.so

luajit callback-bench.lua
