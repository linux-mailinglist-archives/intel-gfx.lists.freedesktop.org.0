Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A81C1C7D61
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 00:31:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 559776E8FA;
	Wed,  6 May 2020 22:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA0A66E8FA;
 Wed,  6 May 2020 22:31:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3766A47E6;
 Wed,  6 May 2020 22:31:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 06 May 2020 22:31:41 -0000
Message-ID: <158880430189.11898.8602227654153628928@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
In-Reply-To: <20200504225227.464666-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Rocket_Lake_=28rev5=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Introduce Rocket Lake (rev5)
URL   : https://patchwork.freedesktop.org/series/76826/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
992fe0e5bf6f drm/i915/rkl: Add RKL platform info and PCI ids
-:35: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#35: FILE: drivers/gpu/drm/i915/i915_drv.h:1522:
+#define IS_RKL_REVID(p, since, until) \
+	(IS_ROCKETLAKE(p) && IS_REVID(p, since, until))

-:102: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#102: FILE: include/drm/i915_pciids.h:609:
+#define INTEL_RKL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4C80, info), \
+	INTEL_VGA_DEVICE(0x4C8A, info), \
+	INTEL_VGA_DEVICE(0x4C8B, info), \
+	INTEL_VGA_DEVICE(0x4C8C, info), \
+	INTEL_VGA_DEVICE(0x4C90, info), \
+	INTEL_VGA_DEVICE(0x4C9A, info)

-:102: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#102: FILE: include/drm/i915_pciids.h:609:
+#define INTEL_RKL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4C80, info), \
+	INTEL_VGA_DEVICE(0x4C8A, info), \
+	INTEL_VGA_DEVICE(0x4C8B, info), \
+	INTEL_VGA_DEVICE(0x4C8C, info), \
+	INTEL_VGA_DEVICE(0x4C90, info), \
+	INTEL_VGA_DEVICE(0x4C9A, info)

total: 1 errors, 0 warnings, 2 checks, 69 lines checked
15e40d80e929 x86/gpu: add RKL stolen memory support
294ed2fa7047 drm/i915/rkl: Re-use TGL GuC/HuC firmware
5077d28b310e drm/i915/rkl: Load DMC firmware for Rocket Lake
a828a46df1e1 drm/i915/rkl: Add PCH support
79d1afd4876a drm/i915/rkl: Update memory bandwidth parameters
baec83a0ef12 drm/i915/rkl: Limit number of universal planes to 5
d2f8442de5ae drm/i915/rkl: Add power well support
58ad52c714dd drm/i915/rkl: Program BW_BUDDY0 registers instead of BW_BUDDY1/2
-:36: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#36: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:5261:
+		min_buddy = max_buddy = 0;

total: 0 errors, 0 warnings, 1 checks, 84 lines checked
c601db6a20fd drm/i915/rkl: RKL only uses PHY_MISC for PHY's A and B
cbc732494a17 drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout
ffcedfb908db drm/i915/rkl: Check proper SDEISR bits for TC1 and TC2 outputs
aa69de72e7ad drm/i915/rkl: Setup ports/phys
c3f23b36db92 drm/i915/rkl: provide port/phy mapping for vbt
-:17: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#17: 
[drm:intel_dp_init_connector [i915]] Adding DP connector on [ENCODER:275:DDI A]

total: 0 errors, 1 warnings, 0 checks, 104 lines checked
06afd0a313fb drm/i915/rkl: Add DDC pin mapping
907417b5599f drm/i915/rkl: Don't try to access transcoder D
01eeaee24e99 drm/i915/rkl: Don't try to read out DSI transcoders
f53b5ed86243 drm/i915/rkl: Handle comp master/slave relationships for PHYs
0728f1c7d53c drm/i915/rkl: Add DPLL4 support
a31143c0e350 drm/i915/rkl: Handle HTI
-:92: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#92: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:274:
+{
+

-:154: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#154: FILE: drivers/gpu/drm/i915/i915_reg.h:2903:
+#define   HDPORT_PHY_USED_DP(phy)	REG_BIT(2*phy + 2)
                                  	         ^

-:154: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'phy' may be better as '(phy)' to avoid precedence issues
#154: FILE: drivers/gpu/drm/i915/i915_reg.h:2903:
+#define   HDPORT_PHY_USED_DP(phy)	REG_BIT(2*phy + 2)

-:155: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#155: FILE: drivers/gpu/drm/i915/i915_reg.h:2904:
+#define   HDPORT_PHY_USED_HDMI(phy)	REG_BIT(2*phy + 1)
                                    	         ^

-:155: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'phy' may be better as '(phy)' to avoid precedence issues
#155: FILE: drivers/gpu/drm/i915/i915_reg.h:2904:
+#define   HDPORT_PHY_USED_HDMI(phy)	REG_BIT(2*phy + 1)

total: 0 errors, 0 warnings, 5 checks, 116 lines checked
b71b6be89206 drm/i915/rkl: Disable PSR2
a956d64b8996 drm/i915/rkl: Add initial workarounds

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
