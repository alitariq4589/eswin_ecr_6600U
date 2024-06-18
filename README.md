A Linux driver for ESWIN 6600u chip as found in abandoned Chinese Wi-Fi dongle,
originally bundled with StarFive VisionFive 2 board.

A $10 paperweight - it's slow, buggy, lock-ups after little use and then oops the kernel.
Suggest a different [well supported USB stick](https://github.com/morrownr/USB-WiFi/blob/main/home/USB_WiFi_Adapters_that_are_supported_with_Linux_in-kernel_drivers.md)
that has in-tree driver, such as [Mediatek mt7921au](https://www.aliexpress.us/item/1005005935638503.html), or a wire. 

Still here?

## **Wifi host driver编译指南**

## Wifi host driver框架

Wifi host driver文件目录如下所示；

- ├── ble_netconfig
- ├── compile_test.sh
- ├── ecrnx_bfmer.c
- ├── ecrnx_bfmer.h
- ├── ecrnx_cfgfile.c
- ├── ecrnx_cfgfile.h
- ├── ecrnx_cmds.c
- ├── ecrnx_cmds.h
- ├── ecrnx_compat.h
- ├── ecrnx_debugfs.c
- ├── ecrnx_debugfs.h
- ├── ecrnx_events.h
- ├── ecrnx_fw_dump.c
- ├── ecrnx_fw_trace.c
- ├── ecrnx_fw_trace.h
- ├── ecrnx_iwpriv.c
- ├── ecrnx_mod_params.c
- ├── ecrnx_mod_params.h
- ├── ecrnx_msg_rx.c
- ├── ecrnx_msg_rx.h
- ├── ecrnx_msg_tx.c
- ├── ecrnx_msg_tx.h
- ├── ecrnx_mu_group.c
- ├── ecrnx_mu_group.h
- ├── ecrnx_platform.c
- ├── ecrnx_platform.h
- ├── ecrnx_prof.h
- ├── ecrnx_radar.c
- ├── ecrnx_radar.h
- ├── ecrnx_strs.c
- ├── ecrnx_strs.h
- ├── ecrnx_testmode.c
- ├── ecrnx_testmode.h
- ├── ecrnx_txq.c
- ├── ecrnx_txq.h
- ├── ecrnx_utils.c
- ├── ecrnx_utils.h
- ├── ecrnx_version.h
- ├── eswin_port
- ├── feature_config
- ├── fullmac
- ├── fw_head_check.c
- ├── fw_head_check.h
- ├── hal_desc.c
- ├── hal_desc.h
- ├── ipc_compat.h
- ├── ipc_host.c
- ├── ipc_host.h
- ├── ipc_shared.h
- ├── lmac_mac.h
- ├── lmac_msg.h
- ├── lmac_types.h
- ├── Makefile
- ├── reg_access.h
- ├── reg_ipc_app.h
- ├── sdio
- ├── softmac
- └── usb


Wifi host driver 主要目录结构说明如下表所示；

| **文件路径** | **说明**                          |
| ------------ | :-------------------------------- |
| eswin_port   | Host Driver相关的适配接口         |
| fullmac      | fullmac模式下相关的配置文件和源码 |
| softmac      | softmac模式下相关的配置文件和源码 |
| sdio         | sdio相关的驱动文件                |
| usb          | usb相关的驱动文件                 |

## **Wifi host driver 编译参数说明**

​     6600U host driver 目前时有两个参数可选，描述如下：

​     product：product 参数分为 6600 和 6600u，用来区分芯片平台，默认为 6600；

​     os：os 参数为 ceva，意思为是否使用 ceva 的 os，该参数只针对 6600 有效，6600u 不需要 os 参数；默认为不使用 ceva os；

## **6600（SDIO）透传版本编译指令**

​    slave 使用 6600 iot 仓库的 6600 透传版本时，host driver 编译命令如下：

​    sudo make os=true（或者 sudo make product=6600 os=true）

​    slave 使用 6600U 合仓仓库的 develop 分支时，host driver 的编译命令如下：

​    sudo make（或者 sudo make product=6600）

​    sdio 版本 host driver ko 加载时，如果需要下载固件的话，则要带下载固件和固件名称的参数（默认不下载固件）， 如下所示：

​    sudo insmod wlan_ecr6600.ko dl_fw=1 fw_name="transport.bin"; 固件使用firmware/ECR6600S_transport.bin

## **6600U（USB）透传版本编译指令**

​    6600U slave 侧统一使用 6600U 仓库下的 6600U 透传版本，host driver 编译命令如下：

​    sudo make product=6600u (不需要带 os 参数，6600U 默认带 CEVA_OS)

​    6600U host ko 加载命令如下所示：

​    sudo insmod wlan_ecr6600u_usb.ko（6600U host ko 加载时默认会下载固件，默认加载固件名称为：ECR6600U_transport.bin，如果不需要固件下载则使用 dl_fw=0， 如果要自定义下载固件名称则使用：fw_name="filename.bin" ）；固件使用firmware/ECR6600U_transport.bin

## cfg文件使用说明

将 wifi_ecr6600u.cfg 拷贝到 /lib/firmware 路径下，修改 cfg 文件里的参数值，即可修改 host 和 slave 的相关参数，修改完成后重新卸载、加载 ko 即可生效；目前可支持的参数如下：

DRIVER_LOG_LEVEL=0x10800f  //host driver log 等级，该值为 32bit 的 16 进制数，每个 bit 代表一类 debug 类型，debug 类型如下所示，可以将相应 bit 设置为 1 打开对应模块的 debug 功能；
```
enum
{
    ECRNX_DBG_BIT_ERR,
    ECRNX_DBG_BIT_WARN,
    ECRNX_DBG_BIT_INIT,
    ECRNX_DBG_BIT_EXIT,
    ECRNX_DBG_BIT_TRANS,
    ECRNX_DBG_BIT_SCAN,
    ECRNX_DBG_BIT_P2P,
    ECRNX_DBG_BIT_MGMT,
    ECRNX_DBG_BIT_AGG,
    ECRNX_DBG_BIT_AP,
    ECRNX_DBG_BIT_STA,
    ECRNX_DBG_BIT_TX,
    ECRNX_DBG_BIT_RX,
    ECRNX_DBG_BIT_BH,
    ECRNX_DBG_BIT_MSG,
    ECRNX_DBG_BIT_CFG80211,
    ECRNX_DBG_BIT_WEXT,
    ECRNX_DBG_BIT_PM,
    ECRNX_DBG_BIT_PLATFROM,
    ECRNX_DBG_BIT_DEBUGFFS,
    ECRNX_DBG_BIT_FW_DOWNLOAD,
    ECRNX_DBG_BIT_AMT,
    ECRNX_DBG_BIT_DEBUG
};
```


FW_LOG_LEVEL=2  //slave log 等级，取值范围为 0-4

FW_LOG_TYPE=0  // slave log 输出方式， 0 为通过 slave 端串口输出；1 为通过 host debugfs 保存； 2 为通过 host 侧文件保存；
	       // 不依赖debugfs时， 0 为通过 slave 端串口输出 ；1 为只通过 host kernel 打印； 2 为同时在 slave 和 host 打印；
