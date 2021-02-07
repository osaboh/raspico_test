# Raspberry Pi Pico build test

LICENSE: MIT

Start OpenOCD

```
cd raspico_test
openocd_run.sh
```

build sample

```
cd hello_usb
./build.sh clean
./build.sh debug    # with debug info
arm-none-eabi-gdb
(gdb) target remote localhost:3333
(gdb) load build/hello_usb.elf
(gdb) c
```

Open Console ttyACM0 or ttyACM1
