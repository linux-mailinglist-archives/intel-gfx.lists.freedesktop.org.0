Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 611F52CF88C
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Dec 2020 02:20:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A60AA6E235;
	Sat,  5 Dec 2020 01:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 703776E220;
 Sat,  5 Dec 2020 01:20:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68222A3ECB;
 Sat,  5 Dec 2020 01:20:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Sat, 05 Dec 2020 01:20:39 -0000
Message-ID: <160713123940.22630.13572479053191586504@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201205010844.361880-1-aditya.swarup@intel.com>
In-Reply-To: <20201205010844.361880-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Alderlake-S_=28rev3=29?=
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

Series: Introduce Alderlake-S (rev3)
URL   : https://patchwork.freedesktop.org/series/82917/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d90e9bb9cd0e drm/i915/tgl: Fix REVID macros for TGL to fetch correct stepping
deb53d194dbb drm/i915/tgl: Add bound checks and simplify TGL REVID macros
75d8d0e1ed7d drm/i915/adl_s: Add ADL-S platform info and PCI ids
-:239: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#239: FILE: drivers/gpu/drm/i915/i915_drv.h:1646:
+#define IS_ADLS_DISP_REVID(p, since, until) \
+	(IS_ALDERLAKE_S(p) && \
+	 tgl_revids_get(p)->disp_stepping >= (since) && \
+	 tgl_revids_get(p)->disp_stepping <= (until))

-:244: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#244: FILE: drivers/gpu/drm/i915/i915_drv.h:1651:
+#define IS_ADLS_GT_REVID(p, since, until) \
+	(IS_ALDERLAKE_S(p) && \
+	 tgl_revids_get(p)->gt_stepping >= (since) && \
+	 tgl_revids_get(p)->gt_stepping <= (until))

-:329: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#329: FILE: include/drm/i915_pciids.h:638:
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

-:329: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#329: FILE: include/drm/i915_pciids.h:638:
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

total: 1 errors, 0 warnings, 3 checks, 241 lines checked
150a0b30604f x86/gpu: add ADL_S stolen memory support
130950398722 drm/i915/adl_s: Add PCH support
ca0a9e7d58c5 drm/i915/adl_s: Add Interrupt Support
d1bd8b907825 drm/i915/adl_s: Add PHYs for Alderlake S
114e7efe0b1a drm/i915/adl_s: Configure DPLL for ADL-S
2591c7399649 drm/i915/adl_s: Configure Port clock registers for ADL-S
8982e3cd419c drm/i915/adl_s: Initialize display for ADL-S
241ce3db14df drm/i915/adl_s: Add adl-s ddc pin mapping
fbd148aa96fd drm/i915/adl_s: Add vbt port and aux channel settings for adls
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
- ADL-S driver internal mapping uses PORT D, E, F, G for Combo phy B, C, D and E.

total: 0 errors, 1 warnings, 0 checks, 81 lines checked
b3310f98c834 drm/i915/adl_s: Update combo PHY master/slave relationships
cc24f634335a drm/i915/adl_s: Update PHY_MISC programming
b2ac95cad0d1 drm/i915/adl_s: Add display WAs for ADL-S
ea3c5de02c7f drm/i915/adl_s: Add GT and CTX WAs for ADL-S
7363cd5f8d3f drm/i915/adl_s: MCHBAR memory info registers are moved
3c42824c88e1 drm/i915/adl_s: Add power wells
e234d322b07f drm/i915/adl_s: Re-use TGL GuC/HuC firmware
75bb40138464 drm/i915/display: Add HAS_D12_PLANE_MINIMIZATION
-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#45: FILE: drivers/gpu/drm/i915/i915_drv.h:1799:
+#define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
+					      IS_ALDERLAKE_S(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 33 lines checked
fceb5bcdc2e0 drm/i915/adl_s: Load DMC
4550beb694af drm/i915/adl_s: Update memory bandwidth parameters


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
