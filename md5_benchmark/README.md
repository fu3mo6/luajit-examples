
Goal:

To evaluate the time consumption of md5 library.

Reference: 

MD5 library implemented by C and Lua

Sample usage and result: 

$ gcc lua_md5.c -shared -fPIC -o libmd5.so

$ time LD_LIBRARY_PATH=. luajit -e "ffi_mode=true" run_benchmark.lua

real	0m0.548s

user	0m0.523s

sys     0m0.007s


$ time LD_LIBRARY_PATH=. luajit run_benchmark.lua

real    0m4.431s

user    0m4.407s

sys     0m0.007s

$ time LD_LIBRARY_PATH=. lua run_benchmark.lua

real    0m14.951s

user    0m14.671s

sys     0m0.059s
