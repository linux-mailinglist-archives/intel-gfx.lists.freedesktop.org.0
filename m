Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C9837587B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 18:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F57F6ECC0;
	Thu,  6 May 2021 16:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95DE06ECC0;
 Thu,  6 May 2021 16:32:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D4EEA47E2;
 Thu,  6 May 2021 16:32:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 06 May 2021 16:32:43 -0000
Message-ID: <162031876354.15690.6294859618313606380@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210506161930.309688-1-imre.deak@intel.com>
In-Reply-To: <20210506161930.309688-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/adl=5Fp=3A_Add_support_for_Display_Page_Tables_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915/adl_p: Add support for Display Page Tables (rev2)
URL   : https://patchwork.freedesktop.org/series/89078/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ff3b7dc8f685 drm/i915/xelpd: add XE_LPD display characteristics
a319d966c549 drm/i915/adl_p: Add PCI Devices IDs
-:26: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#26: FILE: include/drm/i915_pciids.h:651:
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

-:26: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#26: FILE: include/drm/i915_pciids.h:651:
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
a35b4326f650 drm/i915/adl_p: ADL_P device info enabling
9c9b86ac6d1f drm/i915/xelpd: First stab at DPT support
-:589: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#589: FILE: drivers/gpu/drm/i915/display/skl_universal_plane.c:946:
+		return offset >> 9;
+	} else {

total: 0 errors, 1 warnings, 0 checks, 591 lines checked
c248682ab7f3 drm/i915/xelpd: Fallback to plane stride limitations when using DPT
c14a9051e424 drm/i915/xelpd: Support 128k plane stride
c55b96cff231 drm/i915/adl_p: Add stride restriction when using DPT
f86259ff5f81 drm/i915/adl_p: Disable support for 90/270 FB rotation
6cc7df9cf93e drm/i915/adl_p: Require a minimum of 8 tiles stride for DPT FBs
e83dba92cd47 drm/i915/adl_p: Enable remapping to pad DPT FB strides to POT


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
