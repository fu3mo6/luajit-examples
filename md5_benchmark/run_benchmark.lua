
-- Sample String
local sample_str = "Just A Random String"

-- Load
local md5 = require "md5"

-- Currently support "lua", or "ffi" if luajit == true
local luajit = true

local ffi = nil
local libmd5 = nil
if ffi_mode == true then
    ffi = require "ffi"
    libmd5 = ffi.load("libmd5.so")
    ffi.cdef[[
        const char * md5_hash_string(const char *str);
    ]]
end

function process(input_str)
    if ffi_mode == true then
        md5_hash = ffi.string(libmd5.md5_hash_string(input_str))
    else
        md5_hash = md5.sumhexa(input_str)
    end
    return md5_hash
end

-- Start
for i=1,100000 do
    process(sample_str)
end