cmake_minimum_required(VERSION 3.13)

# initialize the SDK based on PICO_SDK_PATH
# note: this must happen before project()
include(pico_sdk_import.cmake)
include(EnableCcache.cmake)

project(my_project)
# initialize the Raspberry Pi Pico SDK
pico_sdk_init()




add_executable(hello_serial
        hello_serial.c
        )

# Pull in our pico_stdlib which aggregates commonly used features
target_link_libraries(hello_serial pico_stdlib)

# enable usb output, disable uart output
#pico_enable_stdio_usb(hello_serial 1)
#pico_enable_stdio_uart(hello_serial 0)

# create map/bin/hex/uf2 file etc.
pico_add_extra_outputs(hello_serial)
