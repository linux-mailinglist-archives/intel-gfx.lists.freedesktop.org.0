Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A398C5ABADA
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Sep 2022 00:40:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D72910E92A;
	Fri,  2 Sep 2022 22:40:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 686A910E920;
 Fri,  2 Sep 2022 22:40:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22418AADD1;
 Fri,  2 Sep 2022 22:40:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Fri, 02 Sep 2022 22:40:22 -0000
Message-ID: <166215842211.22603.6806759955851971215@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220902060342.151824-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20220902060342.151824-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Initial_Meteorlake_Support_=28rev6=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Initial Meteorlake Support (rev6)
URL   : https://patchwork.freedesktop.org/series/106786/
State : warning

== Summary ==

Error: dim checkpatch failed
400c5e5c3553 drm/i915: Move display and media IP version to runtime info
-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#34: FILE: drivers/gpu/drm/i915/i915_drv.h:473:
+#define GRAPHICS_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->graphics.version.ver, \
+					       RUNTIME_INFO(i915)->graphics.version.rel)

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/i915_drv.h:479:
+#define MEDIA_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->media.version.ver, \
+					       RUNTIME_INFO(i915)->media.version.rel)

-:168: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#168: FILE: drivers/gpu/drm/i915/i915_pci.c:1284:
+	int gttmmaddr_bar = intel_info->__runtime.graphics.version.ver == 2 ? GEN2_GTTMMADR_BAR : GTTMMADR_BAR;

total: 0 errors, 1 warnings, 2 checks, 210 lines checked
96ff892a02f3 drm/i915: Read graphics/media/display arch version from hw
496446695d67 drm/i915: Parse and set stepping for platforms with GMD
590ffac3b5cd drm/i915/mtl: Define engine context layouts
-:73: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#73: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:642:
+       NOP(1),$

-:74: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#74: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:643:
+       LRI(13, POSTED),$

-:75: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#75: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:644:
+       REG16(0x244),$

-:76: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#76: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:645:
+       REG(0x034),$

-:77: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#77: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:646:
+       REG(0x030),$

-:78: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#78: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:647:
+       REG(0x038),$

-:79: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#79: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:648:
+       REG(0x03c),$

-:80: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#80: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:649:
+       REG(0x168),$

-:81: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#81: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:650:
+       REG(0x140),$

-:82: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#82: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:651:
+       REG(0x110),$

-:83: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#83: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:652:
+       REG(0x1c0),$

-:84: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#84: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:653:
+       REG(0x1c4),$

-:85: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#85: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:654:
+       REG(0x1c8),$

-:86: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#86: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:655:
+       REG(0x180),$

-:87: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#87: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:656:
+       REG16(0x2b4),$

-:89: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#89: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:658:
+       NOP(1),$

-:90: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#90: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:659:
+       LRI(9, POSTED),$

-:91: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#91: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:660:
+       REG16(0x3a8),$

-:92: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#92: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:661:
+       REG16(0x28c),$

-:93: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#93: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:662:
+       REG16(0x288),$

-:94: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#94: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:663:
+       REG16(0x284),$

-:95: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#95: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:664:
+       REG16(0x280),$

-:96: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#96: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:665:
+       REG16(0x27c),$

-:97: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#97: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:666:
+       REG16(0x278),$

-:98: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#98: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:667:
+       REG16(0x274),$

-:99: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#99: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:668:
+       REG16(0x270),$

-:101: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#101: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:670:
+       NOP(2),$

-:102: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#102: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:671:
+       LRI(2, POSTED),$

-:103: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#103: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:672:
+       REG16(0x5a8),$

-:104: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#104: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:673:
+       REG16(0x5ac),$

-:106: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#106: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:675:
+       NOP(6),$

-:107: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#107: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:676:
+       LRI(1, 0),$

-:108: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#108: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:677:
+       REG(0x0c8),$

-:110: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#110: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:679:
+       END$

total: 0 errors, 34 warnings, 0 checks, 105 lines checked
4c81250058aa drm/i915/mtl: Add gmbus and gpio support
65a57c3f9435 drm/i915/mtl: Add display power wells
-:36: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#36: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1358:
+#define XELPDP_PW_2_POWER_DOMAINS \
+	XELPD_PW_B_POWER_DOMAINS, \
+	XELPD_PW_C_POWER_DOMAINS, \
+	XELPD_PW_D_POWER_DOMAINS, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC4

-:48: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#48: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1370:
+I915_DECL_PW_DOMAINS(xelpdp_pwdoms_pw_2,
+	XELPDP_PW_2_POWER_DOMAINS,

-:52: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#52: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1374:
+I915_DECL_PW_DOMAINS(xelpdp_pwdoms_dc_off,
+	XELPDP_PW_2_POWER_DOMAINS,

-:60: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#60: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1382:
+I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc1,
+	POWER_DOMAIN_AUX_USBC1,

-:64: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#64: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1386:
+I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc2,
+	POWER_DOMAIN_AUX_USBC2,

-:68: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#68: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1390:
+I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc3,
+	POWER_DOMAIN_AUX_USBC3,

-:72: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#72: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1394:
+I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc4,
+	POWER_DOMAIN_AUX_USBC4,

-:77: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#77: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1399:
+		.instances = &I915_PW_INSTANCES(

-:83: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#83: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1405:
+		.instances = &I915_PW_INSTANCES(

-:92: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#92: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1414:
+		.instances = &I915_PW_INSTANCES(

-:100: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#100: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1422:
+		.instances = &I915_PW_INSTANCES(

-:108: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#108: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1430:
+		.instances = &I915_PW_INSTANCES(

-:116: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#116: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1438:
+		.instances = &I915_PW_INSTANCES(

-:124: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#124: FILE: drivers/gpu/drm/i915/display/intel_display_power_map.c:1446:
+		.instances = &I915_PW_INSTANCES(

total: 1 errors, 0 warnings, 13 checks, 248 lines checked
1344ad3d6614 drm/i915/mtl: Add DP AUX support on TypeC ports
3fade45a6406 drm/i915/mtl: Obtain SAGV values from MMIO instead of GT pcode mailbox
07911132425a drm/i915/mtl: Update MBUS_DBOX credits
0319593d18bd drm/i915/mtl: Update CHICKEN_TRANS* register addresses
28e053eba389 drm/i915/mtl: Do not update GV point, mask value


