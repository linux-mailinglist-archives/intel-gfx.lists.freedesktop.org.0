Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6878C1C4A0A
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 01:11:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A91926E4D4;
	Mon,  4 May 2020 23:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 19CDF6E4F1;
 Mon,  4 May 2020 23:10:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 121B2A47DF;
 Mon,  4 May 2020 23:10:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 04 May 2020 23:10:57 -0000
Message-ID: <158863385704.5818.3219638168519352538@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
In-Reply-To: <20200504225227.464666-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Rocket_Lake_=28rev4=29?=
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

Series: Introduce Rocket Lake (rev4)
URL   : https://patchwork.freedesktop.org/series/76826/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e6bef4e2c937 drm/i915/rkl: Add RKL platform info and PCI ids
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
803b4f04888a x86/gpu: add RKL stolen memory support
630f1d4d8718 drm/i915/rkl: Re-use TGL GuC/HuC firmware
90f79585717f drm/i915/rkl: Load DMC firmware for Rocket Lake
1c85ab4847be drm/i915/rkl: Add PCH support
dc4048963014 drm/i915/rkl: Update memory bandwidth parameters
a445dde7ad9f drm/i915/rkl: Limit number of universal planes to 5
f02fc9990788 drm/i915/rkl: Add power well support
fda2d4b25173 drm/i915/rkl: Program BW_BUDDY0 registers instead of BW_BUDDY1/2
-:36: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#36: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:5261:
+		min_buddy = max_buddy = 0;

total: 0 errors, 0 warnings, 1 checks, 84 lines checked
7846d1a805b9 drm/i915/rkl: RKL only uses PHY_MISC for PHY's A and B
02aa4c0c4f8f drm/i915/rkl: Handle new DPCLKA_CFGCR0 layout
1c3381316fe1 drm/i915/rkl: Check proper SDEISR bits for TC1 and TC2 outputs
a8c3d67dc688 drm/i915/rkl: Setup ports/phys
196dbf07dad1 drm/i915/rkl: provide port/phy mapping for vbt
-:17: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#17: 
[drm:intel_dp_init_connector [i915]] Adding DP connector on [ENCODER:275:DDI A]

total: 0 errors, 1 warnings, 0 checks, 104 lines checked
3c2d8a199e89 drm/i915/rkl: Add DDC pin mapping
b8b1dbd88b20 drm/i915/rkl: Don't try to access transcoder D
6906840e8b24 drm/i915/rkl: Don't try to read out DSI transcoders
5018930e1944 drm/i915/rkl: Handle comp master/slave relationships for PHYs
69bfbb9c7a02 drm/i915/rkl: Add DPLL4 support
8b97223a1c60 drm/i915/rkl: Handle HTI
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
0126c509f30f drm/i915/rkl: Disable PSR2
9b58f54fa37e drm/i915/rkl: Add initial workarounds

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
