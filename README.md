# itel VistaTab 30GT (P1102GT)

TWRP device tree for the itel VistaTab 30GT tablet (model P1102GT).

## Device overview

- **Marketing name:** itel VistaTab 30GT  
- **Hardware model:** P1102GT  
- **Form factor:** 11-inch Android tablet

## Hardware specifications

| Category | Details |
| --- | --- |
| **Platform** | MediaTek Helio G99 Ultimate (MT6789) 6 nm SoC with octa-core CPU (2x 2.2 GHz Cortex-A76 + 6x 2.0 GHz Cortex-A55) and Mali-G57 MC2 GPU |
| **Memory** | 4/6 GB LPDDR4X RAM |
| **Storage** | 128 GB UFS 2.2 internal storage, microSDXC support |
| **Display** | 11 in IPS LCD, 1200x1920 (16:10), ~206 ppi, 90 Hz, 450 nits |
| **Rear camera** | 8 MP CMOS sensor with LED flash, 1080p30 video |
| **Front camera** | 8 MP CMOS sensor, 1080p30 video |
| **Battery** | 7000 mAh Li-Ion (non-removable) with 18 W (9 V / 2 A) fast charging |
| **Dimensions** | 7 mm thickness, metal chassis |
| **Connectivity** | Dual nano-SIM (or nano-SIM + microSD), LTE, WCDMA, GSM quad-band, Wi-Fi 802.11a/b/g/n/ac (2.4 & 5 GHz), Bluetooth, USB Type-C, stylus support |

## Build instructions

```bash
# 1. Sync the minimal TWRP manifest
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync

# 2. Prepare the build environment
source build/envsetup.sh

# 3. Lunch and build
lunch twrp_P1102GT-eng
m vendorbootimage
```

The recovery image will be created at `out/target/product/P1102GT/vendor_boot.img`.

## Flashing instructions

```bash
fastboot flash vendor_boot out/target/product/P1102GT/vendor_boot.img
fastboot reboot recovery
```
