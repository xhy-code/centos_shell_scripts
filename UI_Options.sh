#!/bin/bash

## License: GPL
## This is the magically modified version of the one-click reload script.
## It can reinstall CentOS, Debian, Ubuntu and other Linux systems (continuously added) over the network in one click.
## It can reinstall Windwos 2003, 7, 2008R2, 2012R2, 2016, 2019 and other Windows systems (continuously added) via the network in one click.
## Support GRUB or GRUB2 for installing a clean minimal system.
## Technical support is provided by the CXT (CXTHHHHH.com). (based on the original version of Vicer)

## Magic Modify version author:
## Default root password: cxthhhhh.com
## WebSite: https://www.cxthhhhh.com
## Written By CXT (CXTHHHHH.com)

wget -N --no-check-certificate https://github.com/ylx2016/reinstall/raw/master/Network-Reinstall-System-Modify.sh && chmod a+x Network-Reinstall-System-Modify.sh

echo -e "\n\n\n"
clear
echo -e "\n"
echo "                                                           "
echo "================================================================"
echo "=                                                              ="
echo "=           一键网络重装系统 - 魔改版（图形化安装）            ="
echo "=        Network-Reinstall-System-Modify (Graphical Install)   ="
echo "=                                                              ="
echo "=             V4.1.0             https://www.cxthhhhh.com      ="
echo "=                                                              ="
echo "================================================================"
echo "                                                                "
echo "您想安装哪个系统(Which System want to Install):"
echo "                                                                "
echo "  00) Latest 【Bare-metal System Deployment Platform】(Recommend)"
echo "  00) Latest 【CXT裸机系统部署平台】(推荐极客使用，小白勿扰)"
echo "                                                                "
echo "  11) Latest 【CentOS 8】(Recommend)"
echo "  12) Latest 【CentOS 7】"
echo "                                                                "          
echo "  ======下面是ylx增加的DD方案，非cxthhhhh版本      默认密码 Pwd@CentOS"
echo "  15) CentOS 7.9 By dansnow                        默认密码 Pwd@CentOS"
echo "  16) CentOS 7.6 (ServerSpeeder 可用) By dansnow   默认密码 Pwd@CentOS"
echo "  ======ylx增加的DD方案结束                                     "
echo "                                                                "
echo "  21) Latest 【Debian 10】(Recommend)"
echo "  22) Latest 【Debian 9】"
echo "                                                                "
echo "  31) Latest 【Ubuntu 20.04】(Recommend)"
echo "  32) Latest 【Ubuntu 18.04】"
echo "                                                                "
echo "  41) Latest 【OpenWRT】"
echo "  42) Latest 【OpenWRT UEFI】支持UEFI启动模式"
echo "                                                                "
echo "  51) Microsoft 【Windows Server 2019】(Recommend)"
echo "  52) Microsoft 【Windows Server 2019 UEFI】支持UEFI启动"
echo "  53) Microsoft 【Windows Server 2016】"
echo "  54) Microsoft 【Windows Server 2012】"
echo "  55) Microsoft 【Windows Server 2012 UEFI】支持UEFI启动"
echo "                                                                "
echo "  ======以下系统生命周期已经结束，失去官方支持，不推荐使用。======  "
echo "  ====== The system is outdated and is not recommended. ======  "
echo "                                                                "
echo "  13) Latest 【CentOS 6】"
echo "  23) Latest 【Debian 8】"
echo "  24) Latest 【Debian 7】"
echo "  33) Latest 【Ubuntu 16.04】"
echo "  34) Latest 【Ubuntu 14.04】"
echo "  56) Microsoft 【Windows 10 Lite】"
echo "  57) Microsoft 【Windows 10 Lite UEFI】支持UEFI启动"
echo "  58) Microsoft 【Windows Server 2008R2】"
echo "  59) Microsoft 【Windows_Server_2003R2】"
echo "                                                                "
echo '  Custom DD System：bash Network-Reinstall-System-Modify.sh -DD "%URL%" '
echo "                                                                "
echo "================================================================"
echo "                                                                "
echo -n "Enter the System Identification Nnumber (for example: 00)"
read Num
case $Num in
  00) bash Network-Reinstall-System-Modify.sh -CXT_Bare-metal_System_Deployment_Platform ;;

  11) bash Network-Reinstall-System-Modify.sh -CentOS_8 ;;
  12) bash Network-Reinstall-System-Modify.sh -CentOS_7 ;;
  
  15) bash Network-Reinstall-System-Modify.sh -CentOS_79 ;;
  16) bash Network-Reinstall-System-Modify.sh -CentOS_76 ;;

  21) bash Network-Reinstall-System-Modify.sh -Debian_10 ;;
  22) bash Network-Reinstall-System-Modify.sh -Debian_9 ;;

  31) bash Network-Reinstall-System-Modify.sh -Ubuntu_20.04 ;;
  32) bash Network-Reinstall-System-Modify.sh -Ubuntu_18.04 ;;

  41) bash Network-Reinstall-System-Modify.sh -OpenWRT ;;
  42) bash Network-Reinstall-System-Modify.sh -OpenWRT_UEFI ;;

  51) bash Network-Reinstall-System-Modify.sh -Windows_Server_2019;;
  51) bash Network-Reinstall-System-Modify.sh -Windows_Server_2019_UEFI;;
  52) bash Network-Reinstall-System-Modify.sh -Windows_Server_2016 ;;
  53) bash Network-Reinstall-System-Modify.sh -Windows_Server_2012R2 ;;
  51) bash Network-Reinstall-System-Modify.sh -Windows_Server_2012R2_UEFI;;
  
  13) bash Network-Reinstall-System-Modify.sh -CentOS_6 ;;
  23) bash Network-Reinstall-System-Modify.sh -Debian_8 ;;
  24) bash Network-Reinstall-System-Modify.sh -Debian_7 ;;
  33) bash Network-Reinstall-System-Modify.sh -Ubuntu_16.04;;
  34) bash Network-Reinstall-System-Modify.sh -Ubuntu_14.04 ;;
  56) bash Network-Reinstall-System-Modify.sh -Windows_10_Lite ;;
  57) bash Network-Reinstall-System-Modify.sh -Windows_10_Lite_UEFI ;;
  58) bash Network-Reinstall-System-Modify.sh -Windows_Server_2008R2 ;;
  59) bash Network-Reinstall-System-Modify.sh -Windows_Server_2003R2 ;;

  *) echo "Wrong input, please enter again!" ;;
esac