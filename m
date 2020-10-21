Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750B7294E5A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 16:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4957B6E175;
	Wed, 21 Oct 2020 14:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 082A66E175;
 Wed, 21 Oct 2020 14:16:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00464A47E9;
 Wed, 21 Oct 2020 14:16:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Wed, 21 Oct 2020 14:16:34 -0000
Message-ID: <160328979497.17470.3582983749998276026@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201021133213.328994-1-aditya.swarup@intel.com>
In-Reply-To: <20201021133213.328994-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Alderlake-S?=
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

Series: Introduce Alderlake-S
URL   : https://patchwork.freedesktop.org/series/82917/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
37adab61ebad drm/i915/adl_s: Add ADL-S platform info and PCI ids
-:54: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#54: FILE: drivers/gpu/drm/i915/i915_drv.h:1622:
+#define IS_ADLS_REVID(p, since, until) \
+       (IS_ALDERLAKE_S(p) && IS_REVID(p, since, until))

-:55: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#55: FILE: drivers/gpu/drm/i915/i915_drv.h:1623:
+       (IS_ALDERLAKE_S(p) && IS_REVID(p, since, until))$

-:123: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#123: FILE: include/drm/i915_pciids.h:639:
+#define INTEL_ADLS_IDS(info) \
+	INTEL_VGA_DEVICE(0x4680, info), \
+	INTEL_VGA_DEVICE(0x4681, info), \
+	INTEL_VGA_DEVICE(0x4682, info), \
+	INTEL_VGA_DEVICE(0x4683, info), \
+	INTEL_VGA_DEVICE(0x4690, info), \
+	INTEL_VGA_DEVICE(0x4691, info), \
+	INTEL_VGA_DEVICE(0x4692, info), \
+	INTEL_VGA_DEVICE(0x4693, info), \
+	INTEL_VGA_DEVICE(0x4698, info), \
+	INTEL_VGA_DEVICE(0x4699, info)

-:123: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#123: FILE: include/drm/i915_pciids.h:639:
+#define INTEL_ADLS_IDS(info) \
+	INTEL_VGA_DEVICE(0x4680, info), \
+	INTEL_VGA_DEVICE(0x4681, info), \
+	INTEL_VGA_DEVICE(0x4682, info), \
+	INTEL_VGA_DEVICE(0x4683, info), \
+	INTEL_VGA_DEVICE(0x4690, info), \
+	INTEL_VGA_DEVICE(0x4691, info), \
+	INTEL_VGA_DEVICE(0x4692, info), \
+	INTEL_VGA_DEVICE(0x4693, info), \
+	INTEL_VGA_DEVICE(0x4698, info), \
+	INTEL_VGA_DEVICE(0x4699, info)

total: 1 errors, 1 warnings, 2 checks, 76 lines checked
3f14bf129a7d x86/gpu: add ADL_S stolen memory support
9541e1b5d9c5 drm/i915/adl_s: Add PCH support
0cdf50266822 drm/i915/adl_s: Add Interrupt Support
8426881fd08d drm/i915/adl_s: Add PHYs for Alderlake S
eec312e2d54c drm/i915/adl_s: Configure DPLL for ADL-S
cf0751c1b462 drm/i915/adl_s: Configure Port clock registers for ADL-S
919fedfd3bf3 drm/i915/adl_s: Setup display outputs and HTI support for ADL-S
adec6f0e64aa drm/i915/adl_s: Add adl-s ddc pin mapping
5e3a85cbe54a drm/i915/adl_s: Add vbt port and aux channel settings for adls
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
- ADL-S driver internal mapping uses PORT D, E, F, G for Combo phy B, C, D and E.

total: 0 errors, 1 warnings, 0 checks, 61 lines checked
7fe0b1ea22d2 drm/i915/adl_s: Update combo PHY master/slave relationships
9f3a0b45ebec drm/i915/adl_s: Update PHY_MISC programming
1ad9fe655cde drm/i915/adl_s: Add display, gt, ctx and ADL-S whitelist WA
-:163: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Anusha Srivatsa <anusha.srivatsa@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 110 lines checked
f3ca8144e558 drm/i915/adl_s: MCHBAR memory info registers are moved
-:56: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#56: FILE: drivers/gpu/drm/i915/intel_dram.c:189:
+		val = intel_uncore_read(&i915->uncore,
+				ADLS_MAD_DIMM_CH0_0_0_0_MCHBAR);

-:59: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#59: FILE: drivers/gpu/drm/i915/intel_dram.c:192:
+		val = intel_uncore_read(&i915->uncore,
 				SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);

-:67: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#67: FILE: drivers/gpu/drm/i915/intel_dram.c:199:
+		val = intel_uncore_read(&i915->uncore,
+				ADLS_MAD_DIMM_CH1_0_0_0_MCHBAR);

-:70: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#70: FILE: drivers/gpu/drm/i915/intel_dram.c:202:
+		val = intel_uncore_read(&i915->uncore,
 				SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN);

-:80: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#80: FILE: drivers/gpu/drm/i915/intel_dram.c:244:
+		val = intel_uncore_read(&i915->uncore,
+				ADLS_MAD_INTER_CHANNEL_0_0_0_MCHBAR);

-:83: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#83: FILE: drivers/gpu/drm/i915/intel_dram.c:247:
+		val = intel_uncore_read(&i915->uncore,
 				SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN);

total: 0 errors, 0 warnings, 6 checks, 52 lines checked
e3638c808f9e drm/i915/adl_s: Re-use TGL GuC/HuC firmware
1a52773c70d3 drm/i915/display: Add HAS_D12_PLANE_MINIMIZATION
-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#44: FILE: drivers/gpu/drm/i915/i915_drv.h:1768:
+#define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
+					      IS_ALDERLAKE_S(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 33 lines checked
8da8a7726ee0 drm/i915/adl_s: Update memory bandwidth parameters
7f707777a91f drm/i915/adl_s: Load DMC


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
