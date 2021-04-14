Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6FB35F9AF
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 19:22:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364F36E4C9;
	Wed, 14 Apr 2021 17:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6AEE76E4CB;
 Wed, 14 Apr 2021 17:22:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 605C2A00CC;
 Wed, 14 Apr 2021 17:22:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 14 Apr 2021 17:22:01 -0000
Message-ID: <161842092136.4306.2146424132964498368@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210414155208.3161335-1-imre.deak@intel.com>
In-Reply-To: <20210414155208.3161335-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/adl=5Fp=3A_Add_support_for_Display_Page_Tables?=
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

Series: drm/i915/adl_p: Add support for Display Page Tables
URL   : https://patchwork.freedesktop.org/series/89078/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fae46e1c4858 drm/i915: Pass intel_framebuffer instad of drm_framebuffer to intel_fill_fb_info()
-:156: CHECK:LINE_SPACING: Please don't use multiple blank lines
#156: FILE: drivers/gpu/drm/i915/display/intel_fb.h:49:
 
+

total: 0 errors, 0 warnings, 1 checks, 129 lines checked
ee88b73d7f94 drm/i915/xelpd: add XE_LPD display characteristics
c9f4c699d4b4 drm/i915/adl_p: Add PCI Devices IDs
-:25: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#25: FILE: include/drm/i915_pciids.h:649:
+#define INTEL_ADLP_IDS(info) \
+	INTEL_VGA_DEVICE(0x46A0, info), \
+	INTEL_VGA_DEVICE(0x46A1, info), \
+	INTEL_VGA_DEVICE(0x46A2, info), \
+	INTEL_VGA_DEVICE(0x46A3, info), \
+	INTEL_VGA_DEVICE(0x46A6, info), \
+	INTEL_VGA_DEVICE(0x46A8, info), \
+	INTEL_VGA_DEVICE(0x46AA, info), \
+	INTEL_VGA_DEVICE(0x462A, info), \
+	INTEL_VGA_DEVICE(0x4626, info), \
+	INTEL_VGA_DEVICE(0x4628, info), \
+	INTEL_VGA_DEVICE(0x46B0, info), \
+	INTEL_VGA_DEVICE(0x46B1, info), \
+	INTEL_VGA_DEVICE(0x46B2, info), \
+	INTEL_VGA_DEVICE(0x46B3, info), \
+	INTEL_VGA_DEVICE(0x46C0, info), \
+	INTEL_VGA_DEVICE(0x46C1, info), \
+	INTEL_VGA_DEVICE(0x46C2, info), \
+	INTEL_VGA_DEVICE(0x46C3, info)

-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#25: FILE: include/drm/i915_pciids.h:649:
+#define INTEL_ADLP_IDS(info) \
+	INTEL_VGA_DEVICE(0x46A0, info), \
+	INTEL_VGA_DEVICE(0x46A1, info), \
+	INTEL_VGA_DEVICE(0x46A2, info), \
+	INTEL_VGA_DEVICE(0x46A3, info), \
+	INTEL_VGA_DEVICE(0x46A6, info), \
+	INTEL_VGA_DEVICE(0x46A8, info), \
+	INTEL_VGA_DEVICE(0x46AA, info), \
+	INTEL_VGA_DEVICE(0x462A, info), \
+	INTEL_VGA_DEVICE(0x4626, info), \
+	INTEL_VGA_DEVICE(0x4628, info), \
+	INTEL_VGA_DEVICE(0x46B0, info), \
+	INTEL_VGA_DEVICE(0x46B1, info), \
+	INTEL_VGA_DEVICE(0x46B2, info), \
+	INTEL_VGA_DEVICE(0x46B3, info), \
+	INTEL_VGA_DEVICE(0x46C0, info), \
+	INTEL_VGA_DEVICE(0x46C1, info), \
+	INTEL_VGA_DEVICE(0x46C2, info), \
+	INTEL_VGA_DEVICE(0x46C3, info)

total: 1 errors, 0 warnings, 1 checks, 25 lines checked
9c24583b5bbd drm/i915/adl_p: ADL_P device info enabling
4a28c5ef22b0 drm/i915/xelpd: First stab at DPT support
-:583: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#583: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:945:
+		return offset >> 9;
+	} else {

total: 0 errors, 1 warnings, 0 checks, 586 lines checked
c4779e2af5ce drm/i915/xelpd: Fallback to plane stride limitations when using DPT
ae0259160293 drm/i915/xelpd: Support 128k plane stride
3ab439b2e61b drm/i915/adl_p: Add stride restriction when using DPT
dd8b2c31734c drm/i915/adl_p: Disable support for 90/270 FB rotation
a48fcda970df drm/i915/adl_p: Require a minimum of 8 tiles stride for DPT FBs
a992015218bc drm/i915/adl_p: Enable remapping to pad DPT FB strides to POT


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
