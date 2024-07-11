Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 611ED92E083
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 09:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ED8F10E103;
	Thu, 11 Jul 2024 07:04:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA75B10E103;
 Thu, 11 Jul 2024 07:04:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Make_I2C_terminology?=
 =?utf-8?q?_more_inclusive_for_I2C_Algobit_and_consumers_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Easwar Hariharan" <eahariha@linux.microsoft.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2024 07:04:04 -0000
Message-ID: <172068144495.124165.15849837026645385355@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240711052734.1273652-1-eahariha@linux.microsoft.com>
In-Reply-To: <20240711052734.1273652-1-eahariha@linux.microsoft.com>
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Make I2C terminology more inclusive for I2C Algobit and consumers (rev5)
URL   : https://patchwork.freedesktop.org/series/131867/
State : warning

== Summary ==

Error: dim checkpatch failed
4d3e28cb7aec drm/amdgpu, drm/radeon: Make I2C terminology more inclusive
-:6: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#6: 
I2C v7, SMBus 3.2, and I3C 1.1.1 specifications have replaced "master/slave"

-:107: CHECK:CAMELCASE: Avoid CamelCase: <ucTargetAddr>
#107: FILE: drivers/gpu/drm/amd/amdgpu/atombios_i2c.c:86:
+	args.ucTargetAddr = target_addr << 1;

-:116: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#116: FILE: drivers/gpu/drm/amd/amdgpu/atombios_i2c.c:162:
+void amdgpu_atombios_i2c_channel_trans(struct amdgpu_device *adev, u8 target_addr, u8 line_number, u8 offset, u8 data)

-:230: CHECK:CAMELCASE: Avoid CamelCase: <ucI2CAddr>
#230: FILE: drivers/gpu/drm/amd/display/dc/bios/bios_parser.c:1887:
+	info->i2c_target_address = record->ucI2CAddr;

-:311: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#311: FILE: drivers/gpu/drm/amd/display/include/grph_object_ctrl_defs.h:95:
+	uint32_t i2c_target_address;

-:324: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#324: FILE: drivers/gpu/drm/amd/include/atombios.h:8506:
+  UCHAR   ucTargetAddr;$

-:337: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#337: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:537:
+  uint8_t  board_i2c_feature_target_addr;$

-:337: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#337: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:537:
+  uint8_t  board_i2c_feature_target_addr;

-:346: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#346: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:565:
+  uint8_t  board_i2c_feature_target_addr;$

-:346: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#346: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:565:
+  uint8_t  board_i2c_feature_target_addr;

-:356: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#356: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:593:
+	uint8_t  board_i2c_feature_target_addr;

-:357: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#357: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:594:
+	uint8_t  ras_rom_i2c_target_addr;

-:367: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#367: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:629:
+  uint8_t  board_i2c_feature_target_addr;$

-:367: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#367: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:629:
+  uint8_t  board_i2c_feature_target_addr;

-:368: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#368: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:630:
+  uint8_t  ras_rom_i2c_target_addr;$

-:368: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#368: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:630:
+  uint8_t  ras_rom_i2c_target_addr;

-:377: WARNING:LONG_LINE_COMMENT: line length of 122 exceeds 100 columns
#377: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:833:
+  uint8_t i2c_target_addr;                   //The target address, it's 0 when the record is attached to connector for DDC

-:377: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#377: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:833:
+  uint8_t i2c_target_addr;                   //The target address, it's 0 when the record is attached to connector for DDC$

-:377: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#377: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:833:
+  uint8_t i2c_target_addr;                   //The target address, it's 0 when the record is attached to connector for DDC

-:386: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#386: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:2072:
+  uint32_t smb_target_address;$

-:386: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#386: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:2072:
+  uint32_t smb_target_address;

-:395: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#395: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:2129:
+	uint32_t smb_target_address;

-:404: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#404: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:2184:
+	uint32_t smb_target_address;

-:413: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#413: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:2395:
+  uint32_t  targetaddress;$

-:413: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#413: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:2395:
+  uint32_t  targetaddress;

-:422: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#422: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:3556:
+   uint8_t  i2c_target_addr;$

-:422: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#422: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:3556:
+   uint8_t  i2c_target_addr;

-:431: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#431: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:4198:
+  uint8_t   target_addr;$

-:431: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#431: FILE: drivers/gpu/drm/amd/include/atomfirmware.h:4198:
+  uint8_t   target_addr;

-:445: CHECK:CAMELCASE: Avoid CamelCase: <I2cControllers>
#445: FILE: drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega20_processpptables.c:787:
+		ppsmc_pptable->I2cControllers[i].TargetAddress =

-:459: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#459: FILE: drivers/gpu/drm/amd/pm/powerplay/inc/smu11_driver_if.h:290:
+  uint32_t TargetAddress;$

-:459: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#459: FILE: drivers/gpu/drm/amd/pm/powerplay/inc/smu11_driver_if.h:290:
+  uint32_t TargetAddress;

-:472: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#472: FILE: drivers/gpu/drm/amd/pm/swsmu/inc/pmfw_if/smu11_driver_if_arcturus.h:266:
+  uint32_t  TargetAddress;$

-:472: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#472: FILE: drivers/gpu/drm/amd/pm/swsmu/inc/pmfw_if/smu11_driver_if_arcturus.h:266:
+  uint32_t  TargetAddress;

-:485: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#485: FILE: drivers/gpu/drm/amd/pm/swsmu/inc/pmfw_if/smu11_driver_if_navi10.h:270:
+  uint32_t  TargetAddress;$

-:485: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#485: FILE: drivers/gpu/drm/amd/pm/swsmu/inc/pmfw_if/smu11_driver_if_navi10.h:270:
+  uint32_t  TargetAddress;

-:498: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#498: FILE: drivers/gpu/drm/amd/pm/swsmu/inc/pmfw_if/smu11_driver_if_sienna_cichlid.h:345:
+  uint8_t   TargetAddress;$

-:498: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#498: FILE: drivers/gpu/drm/amd/pm/swsmu/inc/pmfw_if/smu11_driver_if_sienna_cichlid.h:345:
+  uint8_t   TargetAddress;

-:511: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#511: FILE: drivers/gpu/drm/amd/pm/swsmu/inc/pmfw_if/smu13_driver_if_aldebaran.h:170:
+  uint8_t   TargetAddress;$

-:511: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#511: FILE: drivers/gpu/drm/amd/pm/swsmu/inc/pmfw_if/smu13_driver_if_aldebaran.h:170:
+  uint8_t   TargetAddress;

-:524: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#524: FILE: drivers/gpu/drm/amd/pm/swsmu/inc/pmfw_if/smu13_driver_if_v13_0_0.h:322:
+  uint8_t   TargetAddress;$

-:524: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#524: FILE: drivers/gpu/drm/amd/pm/swsmu/inc/pmfw_if/smu13_driver_if_v13_0_0.h:322:
+  uint8_t   TargetAddress;

-:537: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#537: FILE: drivers/gpu/drm/amd/pm/swsmu/inc/pmfw_if/smu13_driver_if_v13_0_7.h:323:
+  uint8_t   TargetAddress;$

-:537: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#537: FILE: drivers/gpu/drm/amd/pm/swsmu/inc/pmfw_if/smu13_driver_if_v13_0_7.h:323:
+  uint8_t   TargetAddress;

-:552: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#552: FILE: drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c:1960:
+		dev_info(smu->adev->dev, "                   .TargetAddress = 0x%x\n",
+				pptable->I2cControllers[i].TargetAddress);

-:567: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#567: FILE: drivers/gpu/drm/amd/pm/swsmu/smu11/sienna_cichlid_ppt.c:2998:
+		dev_info(smu->adev->dev, "                   .TargetAddress = 0x%x\n",
+				pptable->I2cControllers[i].TargetAddress);

-:578: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#578: FILE: drivers/gpu/drm/amd/pm/swsmu/smu11/sienna_cichlid_ppt.c:3637:
+		dev_info(smu->adev->dev, "                   .TargetAddress = 0x%x\n",
+				pptable->I2cControllers[i].TargetAddress);

-:591: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#591: FILE: drivers/gpu/drm/radeon/atombios.h:1837:
+  UCHAR     ucTargetAddr;        //Read from which slave$

-:600: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#600: FILE: drivers/gpu/drm/radeon/atombios.h:1861:
+  UCHAR     ucTargetAddr;        //Write to which slave$

-:609: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#609: FILE: drivers/gpu/drm/radeon/atombios.h:1870:
+  UCHAR     ucTargetAddr;        //Write to which slave$

-:618: WARNING:LONG_LINE: line length of 135 exceeds 100 columns
#618: FILE: drivers/gpu/drm/radeon/atombios.h:4744:
+	UCHAR	ucPwrSensTargetAddr;									// Target address if I2C detect

-:618: CHECK:CAMELCASE: Avoid CamelCase: <ucPwrSensTargetAddr>
#618: FILE: drivers/gpu/drm/radeon/atombios.h:4744:
+	UCHAR	ucPwrSensTargetAddr;									// Target address if I2C detect

-:627: WARNING:LONG_LINE_COMMENT: line length of 104 exceeds 100 columns
#627: FILE: drivers/gpu/drm/radeon/atombios.h:5452:
+  UCHAR		                        ucSSChipTargetAddr;      //Target Address to set up this SS chip

-:627: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#627: FILE: drivers/gpu/drm/radeon/atombios.h:5452:
+  UCHAR^I^I                        ucSSChipTargetAddr;      //Target Address to set up this SS chip$

-:627: CHECK:CAMELCASE: Avoid CamelCase: <ucSSChipTargetAddr>
#627: FILE: drivers/gpu/drm/radeon/atombios.h:5452:
+  UCHAR		                        ucSSChipTargetAddr;      //Target Address to set up this SS chip

-:636: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#636: FILE: drivers/gpu/drm/radeon/atombios.h:7232:
+  UCHAR   ucTargetAddr;$

-:646: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#646: FILE: drivers/gpu/drm/radeon/atombios.h:7602:
+  UCHAR                      ucControllerAddress;    // Address to control Controller xTMDS Chip$

-:646: CHECK:CAMELCASE: Avoid CamelCase: <ucControllerAddress>
#646: FILE: drivers/gpu/drm/radeon/atombios.h:7602:
+  UCHAR                      ucControllerAddress;    // Address to control Controller xTMDS Chip

-:647: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#647: FILE: drivers/gpu/drm/radeon/atombios.h:7603:
+  UCHAR                      ucTargetAddress;     // Address to control Target xTMDS Chip$

-:647: CHECK:CAMELCASE: Avoid CamelCase: <ucTargetAddress>
#647: FILE: drivers/gpu/drm/radeon/atombios.h:7603:
+  UCHAR                      ucTargetAddress;     // Address to control Target xTMDS Chip

-:734: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#734: FILE: drivers/gpu/drm/radeon/radeon_combios.c:2890:
+	uint8_t blocks, target_addr, rev;

-:820: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#820: FILE: drivers/gpu/drm/radeon/radeon_mode.h:412:
+	uint8_t target_addr;

total: 0 errors, 29 warnings, 33 checks, 645 lines checked
e6151d1b1a47 drm/gma500: Make I2C terminology more inclusive
-:6: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#6: 
I2C v7, SMBus 3.2, and I3C 1.1.1 specifications have replaced "master/slave"

-:49: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#49: FILE: drivers/gpu/drm/gma500/intel_bios.c:361:
+		if (p_child->target_addr != TARGET_ADDR1 &&
+			p_child->target_addr != TARGET_ADDR2) {

-:228: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#228: FILE: drivers/gpu/drm/gma500/psb_intel_sdvo.c:482:
+	msgs[i+1].addr = psb_intel_sdvo->target_addr;
 	      ^

-:234: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#234: FILE: drivers/gpu/drm/gma500/psb_intel_sdvo.c:487:
+	msgs[i+2].addr = psb_intel_sdvo->target_addr;
 	      ^

total: 0 errors, 1 warnings, 3 checks, 211 lines checked
82304be39347 drm/i915: Make I2C terminology more inclusive
-:6: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#6: 
I2C v7, SMBus 3.2, and I3C 1.1.1 specifications have replaced "master/slave"

-:332: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#332: FILE: drivers/gpu/drm/i915/display/dvo_sil164.c:157:
+		DRM_DEBUG_KMS("sil164 not detected got %d: from %s Target %d.\n",
+			  ch, adapter->name, dvo->target_addr);

-:343: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#343: FILE: drivers/gpu/drm/i915/display/dvo_sil164.c:166:
+		DRM_DEBUG_KMS("sil164 not detected got %d: from %s Target %d.\n",
+			  ch, adapter->name, dvo->target_addr);

-:735: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#735: FILE: drivers/gpu/drm/i915/display/intel_sdvo.c:502:
+	msgs[i+1].addr = intel_sdvo->target_addr;
 	      ^

-:741: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#741: FILE: drivers/gpu/drm/i915/display/intel_sdvo.c:507:
+	msgs[i+2].addr = intel_sdvo->target_addr;
 	      ^

total: 0 errors, 1 warnings, 4 checks, 783 lines checked
100f80232ae0 sfc: falcon: Make I2C terminology more inclusive
-:6: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#6: 
I2C v7, SMBus 3.2, and I3C 1.1.1 specifications have replaced "master/slave"

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
b5906eb240aa fbdev/smscufx: Make I2C terminology more inclusive
-:6: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#6: 
I2C v7, SMBus 3.2, and I3C 1.1.1 specifications have replaced "master/slave"

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
0e9f63acc39c fbdev/viafb: Make I2C terminology more inclusive
-:6: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#6: 
I2C v7, SMBus 3.2, and I3C 1.1.1 specifications have replaced "master/slave"

-:87: CHECK:SPACING: No space is necessary after a cast
#87: FILE: drivers/video/fbdev/via/dvi.c:147:
+			   (u8) viaparinfo->chip_info->tmds_chip_info.tmds_chip_target_addr,

-:96: CHECK:SPACING: No space is necessary after a cast
#96: FILE: drivers/video/fbdev/via/dvi.c:155:
+			    (u8) viaparinfo->chip_info->tmds_chip_info.tmds_chip_target_addr,

-:174: CHECK:SPACING: No space is necessary after a cast
#174: FILE: drivers/video/fbdev/via/lcd.c:330:
+			(u8) viaparinfo->chip_info->lvds_chip_info.lvds_chip_target_addr,

-:209: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#209: FILE: drivers/video/fbdev/via/via_i2c.c:118:
+	msgs[0].addr = msgs[1].addr = target_addr / 2;

-:245: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#245: FILE: drivers/video/fbdev/via/via_i2c.c:162:
+	msgs[0].addr = msgs[1].addr = target_addr / 2;

total: 0 errors, 1 warnings, 5 checks, 219 lines checked


