Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B02E41C1C37
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 19:48:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 110FB6ED17;
	Fri,  1 May 2020 17:48:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 98EF66ED17;
 Fri,  1 May 2020 17:48:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 928E0A00FD;
 Fri,  1 May 2020 17:48:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 01 May 2020 17:48:01 -0000
Message-ID: <158835528157.18945.3761418499067592580@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200501170748.358135-1-matthew.d.roper@intel.com>
In-Reply-To: <20200501170748.358135-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Rocket_Lake?=
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

Series: Introduce Rocket Lake
URL   : https://patchwork.freedesktop.org/series/76826/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e0c54705a263 drm/i915/rkl: Add RKL platform info and PCI ids
-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#34: FILE: drivers/gpu/drm/i915/i915_drv.h:1522:
+#define IS_RKL_REVID(p, since, until) \
+	(IS_ROCKETLAKE(p) && IS_REVID(p, since, until))

-:101: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#101: FILE: include/drm/i915_pciids.h:609:
+#define INTEL_RKL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4C80, info), \
+	INTEL_VGA_DEVICE(0x4C8A, info), \
+	INTEL_VGA_DEVICE(0x4C8B, info), \
+	INTEL_VGA_DEVICE(0x4C8C, info), \
+	INTEL_VGA_DEVICE(0x4C90, info), \
+	INTEL_VGA_DEVICE(0x4C9A, info)

-:101: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#101: FILE: include/drm/i915_pciids.h:609:
+#define INTEL_RKL_IDS(info) \
+	INTEL_VGA_DEVICE(0x4C80, info), \
+	INTEL_VGA_DEVICE(0x4C8A, info), \
+	INTEL_VGA_DEVICE(0x4C8B, info), \
+	INTEL_VGA_DEVICE(0x4C8C, info), \
+	INTEL_VGA_DEVICE(0x4C90, info), \
+	INTEL_VGA_DEVICE(0x4C9A, info)

total: 1 errors, 0 warnings, 2 checks, 69 lines checked
247cb564856c x86/gpu: add RKL stolen memory support
75406d425834 drm/i915/rkl: Re-use TGL GuC/HuC firmware
9ba10f2f55eb drm/i915/rkl: Load DMC firmware for Rocket Lake
d3ee665e5a73 drm/i915/rkl: Add PCH support
02738c459099 drm/i915/rkl: Update memory bandwidth parameters
bebb0e020bdd drm/i915/rkl: Limit number of universal planes to 5
57e6334efb40 drm/i915/rkl: Add power well support
ee76ad50fef4 drm/i915/rkl: Program BW_BUDDY0 registers instead of BW_BUDDY1/2
-:36: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#36: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:5261:
+		min_buddy = max_buddy = 0;

total: 0 errors, 0 warnings, 1 checks, 84 lines checked
549a5ab2d68d drm/i915/rkl: RKL only uses PHY_MISC for PHY's A and B
882fcf0349c1 drm/i915/rkl: Add cdclk support
843c377d0d43 drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout
-:89: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'phy' may be better as '(phy)' to avoid precedence issues
#89: FILE: drivers/gpu/drm/i915/i915_reg.h:10166:
+#define  RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	REG_BIT(phy + 10)

-:97: WARNING:LONG_LINE: line over 100 characters
#97: FILE: drivers/gpu/drm/i915/i915_reg.h:10174:
+#define  RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(3 << RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-:98: WARNING:LONG_LINE: line over 100 characters
#98: FILE: drivers/gpu/drm/i915/i915_reg.h:10175:
+#define  RKL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	((pll) << RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

total: 0 errors, 2 warnings, 1 checks, 73 lines checked
4ae77e0bd298 drm/i915/rkl: Check proper SDEISR bits for TC1 and TC2 outputs
83600292a992 drm/i915/rkl: Setup ports/phys
456084d5a557 drm/i915/rkl: provide port/phy mapping for vbt
-:17: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#17: 
[drm:intel_dp_init_connector [i915]] Adding DP connector on [ENCODER:275:DDI A]

total: 0 errors, 1 warnings, 0 checks, 104 lines checked
a1cda3c475a6 drm/i915/rkl: Add DDC pin mapping
07088eeab0a1 drm/i915/rkl: Don't try to access transcoder D
3a7da186ddd7 drm/i915/rkl: Don't try to read out DSI transcoders
501c237f151d drm/i915/rkl: Handle comp master/slave relationships for PHYs
936464f47f15 drm/i915/rkl: Add DPLL4 support
24c8c479a130 drm/i915/rkl: Handle HTI
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
aa6f5ef1a546 drm/i915/rkl: Disable PSR2
65c6f79b9f54 drm/i915/rkl: Add initial workarounds

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
