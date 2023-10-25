#!/bin/bash

rm -rf dtbo_out/*

dd if=dtbo_in/dtbo.PARTITION of=dtbo_out/header_dtbo bs=64 count=1

dtc -@ -O dtb -o dtbo_out/f2_max.dtbo -b 0 dts/dtbo.dts

cat dtbo_out/header_dtbo dtbo_out/f2_max.dtbo > burn/dtbo.PARTITION
