# eswin_ecr_6600U
ESWIN 6600U (or ESWIN ECR 6600U) WiFi driver for Linux supoprted for Linux version 6.x

![ESWIN ECR 6600U](/assets/images.jpeg)

This was a loosely written driver for ESWIN ECR6600U WiFi module (which usually ships with visionfive 2 RISC-V chip). THere can be many bugs in this driver (not to mention the coding style issues according to latest C language compiler conventions)

I have applied some changes and refactored the source code to work with linux version 6.8. This is still work in progress but it "works" with linux version 6.8 tested on x86. You can check the master branch.

## Steps to build and install

1. Copy the file `firmware/ECR6600U_transport.bin` to `/lib/firmware` directory

2. Build the driver with `make`

3. Load the driver with `sudo insmod ./wlan_ecr6600.ko` while in the directory where you built the driver

4. Plug in the USB adapter of eswin 6600U

You may want to disable your primary wifi driver if you are testing on a machine with in-build wifi