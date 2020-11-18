Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F097E2B73BE
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 02:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D13496E151;
	Wed, 18 Nov 2020 01:28:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 351546E12C;
 Wed, 18 Nov 2020 01:28:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C6E2A0BA8;
 Wed, 18 Nov 2020 01:28:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Wed, 18 Nov 2020 01:28:18 -0000
Message-ID: <160566289814.24800.11051746240591466083@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201117185029.22078-1-aditya.swarup@intel.com>
In-Reply-To: <20201117185029.22078-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Alderlake-S_=28rev2=29?=
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

Series: Introduce Alderlake-S (rev2)
URL   : https://patchwork.freedesktop.org/series/82917/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b9c32f37d365 drm/i915/dg1: Enable ports
022d6eeef421 drm/i915/tgl: Fix macros for TGL SOC based WA
d26e247df015 drm/i915/adl_s: Add ADL-S platform info and PCI ids
-:90: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#90: FILE: drivers/gpu/drm/i915/i915_drv.h:1620:
+#define IS_ADLS_DISP_REVID(p, since, until) \
+	(IS_ALDERLAKE_S(p) && \
+	 adls_revids[INTEL_REVID(p)].disp_stepping >= (since) && \
+	 adls_revids[INTEL_REVID(p)].disp_stepping <= (until))

-:95: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#95: FILE: drivers/gpu/drm/i915/i915_drv.h:1625:
+#define IS_ADLS_GT_REVID(p, since, until) \
+	(IS_ALDERLAKE_S(p) && \
+	 adls_revids[INTEL_REVID(p)].gt_stepping >= (since) && \
+	 adls_revids[INTEL_REVID(p)].gt_stepping <= (until))

-:166: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#166: FILE: include/drm/i915_pciids.h:638:
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

-:166: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#166: FILE: include/drm/i915_pciids.h:638:
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

total: 1 errors, 0 warnings, 3 checks, 107 lines checked
3db2935953f0 x86/gpu: add ADL_S stolen memory support
59b86438365e drm/i915/adl_s: Add PCH support
51af91e98816 drm/i915/adl_s: Add Interrupt Support
2248efb63de6 drm/i915/adl_s: Add PHYs for Alderlake S
4e420980faab drm/i915/adl_s: Configure DPLL for ADL-S
8ae3c608c0d5 drm/i915/adl_s: Configure Port clock registers for ADL-S
d7994db4541b drm/i915/adl_s: Add HTI support and initialize display for ADL-S
ad1a87bbd43c drm/i915/adl_s: Add adl-s ddc pin mapping
17a523c28460 drm/i915/adl_s: Add vbt port and aux channel settings for adls
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
- ADL-S driver internal mapping uses PORT D, E, F, G for Combo phy B, C, D and E.

total: 0 errors, 1 warnings, 0 checks, 81 lines checked
aa5734095dbb drm/i915/adl_s: Update combo PHY master/slave relationships
3927a843ff1e drm/i915/adl_s: Update PHY_MISC programming
707aff1b0892 drm/i915/adl_s: Add display, gt, ctx and ADL-S
-:130: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#130: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:717:
+		wa_add(wal,
+			FF_MODE2,

total: 0 errors, 0 warnings, 1 checks, 208 lines checked
0074777509e7 drm/i915/adl_s: MCHBAR memory info registers are moved
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

-:85: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email name mismatch: 'From: Caz Yokoyama <caz.yokoyama@intel.com>' != 'Signed-off-by: Yokoyama, Caz <caz.yokoyama@intel.com>'

total: 0 errors, 1 warnings, 6 checks, 52 lines checked
6f031f0b15b7 drm/i915/adl_s: Add power wells
95ce70b633b1 drm/i915/adl_s: Re-use TGL GuC/HuC firmware
0078b410bdcf drm/i915/display: Add HAS_D12_PLANE_MINIMIZATION
-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#44: FILE: drivers/gpu/drm/i915/i915_drv.h:1773:
+#define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
+					      IS_ALDERLAKE_S(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 33 lines checked
0ac2f51c26c7 drm/i915/adl_s: Load DMC
8a6db152da02 drm/i915/adl_s: Update memory bandwidth parameters


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
