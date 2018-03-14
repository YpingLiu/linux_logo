#! /bin/bash

# build.sh
# (c) Copyright 2017
# T-road Technology Co., Ltd. <www.t-road.cn>
# Yiping Liu <liuyiping@t-road.cn>
#
# This program is used to make the linux boot logo


logofile="logo.png"

if [ -f "$logofile" ]; then
	echo "make the linux LOGO start!"
	pngtopnm logo.png > linuxlogo.pnm
	pnmquant 224 linuxlogo.pnm > linuxlogo224.pnm
	pnmtoplainpnm linuxlogo224.pnm > logo_linux_clut224.ppm
	echo "make the linux LOGO succeed!"
else
	echo "logo.png not exist!"
fi
