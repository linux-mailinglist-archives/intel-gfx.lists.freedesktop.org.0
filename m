Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB35B76048B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 03:01:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD6D710E03D;
	Tue, 25 Jul 2023 01:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD8F910E03D;
 Tue, 25 Jul 2023 01:01:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5B0EAADED;
 Tue, 25 Jul 2023 01:01:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 25 Jul 2023 01:01:17 -0000
Message-ID: <169024687785.27667.3705287211292902621@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
In-Reply-To: <20230725001312.1907319-11-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Reduce_MTL-specific_platform_checks_=28rev2=29?=
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

Series: Reduce MTL-specific platform checks (rev2)
URL   : https://patchwork.freedesktop.org/series/120943/
State : warning

== Summary ==

Error: dim checkpatch failed
270297a58c66 drm/i915: Consolidate condition for Wa_22011802037
e464ca89ccdb drm/i915/xelpmp: Don't assume workarounds extend to future platforms
6766e7143d29 drm/i915/xelpg: Call Xe_LPG workaround functions based on IP version
-:153: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#153: FILE: drivers/gpu/drm/i915/i915_drv.h:436:
+#define __GT_VER_FULL(gt) (__IS_MEDIA_GT(gt) ? \
+			   MEDIA_VER_FULL((gt)->i915) : \
+			   GRAPHICS_VER_FULL((gt)->i915))

-:167: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#167: FILE: drivers/gpu/drm/i915/i915_drv.h:450:
+#define IS_GT_IP_RANGE(type, gt, from, until) ( \
+	BUILD_BUG_ON_ZERO(from < IP_VER(2, 0)) + \
+	BUILD_BUG_ON_ZERO(until < from) + \
+	(__IS_##type##_GT(gt) && \
+	 __GT_VER_FULL(gt) >= (from) && \
+	 __GT_VER_FULL(gt) <= (until)))

-:167: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'from' - possible side-effects?
#167: FILE: drivers/gpu/drm/i915/i915_drv.h:450:
+#define IS_GT_IP_RANGE(type, gt, from, until) ( \
+	BUILD_BUG_ON_ZERO(from < IP_VER(2, 0)) + \
+	BUILD_BUG_ON_ZERO(until < from) + \
+	(__IS_##type##_GT(gt) && \
+	 __GT_VER_FULL(gt) >= (from) && \
+	 __GT_VER_FULL(gt) <= (until)))

-:167: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'from' may be better as '(from)' to avoid precedence issues
#167: FILE: drivers/gpu/drm/i915/i915_drv.h:450:
+#define IS_GT_IP_RANGE(type, gt, from, until) ( \
+	BUILD_BUG_ON_ZERO(from < IP_VER(2, 0)) + \
+	BUILD_BUG_ON_ZERO(until < from) + \
+	(__IS_##type##_GT(gt) && \
+	 __GT_VER_FULL(gt) >= (from) && \
+	 __GT_VER_FULL(gt) <= (until)))

-:167: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'until' - possible side-effects?
#167: FILE: drivers/gpu/drm/i915/i915_drv.h:450:
+#define IS_GT_IP_RANGE(type, gt, from, until) ( \
+	BUILD_BUG_ON_ZERO(from < IP_VER(2, 0)) + \
+	BUILD_BUG_ON_ZERO(until < from) + \
+	(__IS_##type##_GT(gt) && \
+	 __GT_VER_FULL(gt) >= (from) && \
+	 __GT_VER_FULL(gt) <= (until)))

-:167: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'until' may be better as '(until)' to avoid precedence issues
#167: FILE: drivers/gpu/drm/i915/i915_drv.h:450:
+#define IS_GT_IP_RANGE(type, gt, from, until) ( \
+	BUILD_BUG_ON_ZERO(from < IP_VER(2, 0)) + \
+	BUILD_BUG_ON_ZERO(until < from) + \
+	(__IS_##type##_GT(gt) && \
+	 __GT_VER_FULL(gt) >= (from) && \
+	 __GT_VER_FULL(gt) <= (until)))

total: 0 errors, 0 warnings, 6 checks, 126 lines checked
3bc429e68faa drm/i915: Eliminate IS_MTL_GRAPHICS_STEP
-:296: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#296: FILE: drivers/gpu/drm/i915/i915_drv.h:439:
+#define __GT_STEP(gt) (__IS_MEDIA_GT(gt) ? \
+		       INTEL_MEDIA_STEP((gt)->i915) : \
+		       INTEL_GRAPHICS_STEP((gt)->i915))

-:322: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#322: FILE: drivers/gpu/drm/i915/i915_drv.h:476:
+#define IS_GT_IP_STEP(type, gt, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 (__IS_##type##_GT(gt) && \
+	  __GT_VER_FULL(gt) == ipver && \
+	  __GT_STEP(gt) >= STEP_##since && \
+	  __GT_STEP(gt) <= STEP_##until))

-:322: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ipver' - possible side-effects?
#322: FILE: drivers/gpu/drm/i915/i915_drv.h:476:
+#define IS_GT_IP_STEP(type, gt, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 (__IS_##type##_GT(gt) && \
+	  __GT_VER_FULL(gt) == ipver && \
+	  __GT_STEP(gt) >= STEP_##since && \
+	  __GT_STEP(gt) <= STEP_##until))

-:322: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'ipver' may be better as '(ipver)' to avoid precedence issues
#322: FILE: drivers/gpu/drm/i915/i915_drv.h:476:
+#define IS_GT_IP_STEP(type, gt, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 (__IS_##type##_GT(gt) && \
+	  __GT_VER_FULL(gt) == ipver && \
+	  __GT_STEP(gt) >= STEP_##since && \
+	  __GT_STEP(gt) <= STEP_##until))

total: 0 errors, 0 warnings, 4 checks, 261 lines checked
4802115c5e0b drm/i915: Eliminate IS_MTL_MEDIA_STEP
3f13ddca72c4 drm/i915: Eliminate IS_MTL_DISPLAY_STEP
-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#39: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:86:
+#define IS_DISPLAY_IP_STEP(__i915, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 DISPLAY_VER_FULL(__i915) == (ipver) && \
+	 IS_DISPLAY_STEP(__i915, STEP_##since, STEP_##until))

-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ipver' - possible side-effects?
#39: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:86:
+#define IS_DISPLAY_IP_STEP(__i915, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 DISPLAY_VER_FULL(__i915) == (ipver) && \
+	 IS_DISPLAY_STEP(__i915, STEP_##since, STEP_##until))

-:39: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'ipver' may be better as '(ipver)' to avoid precedence issues
#39: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:86:
+#define IS_DISPLAY_IP_STEP(__i915, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 DISPLAY_VER_FULL(__i915) == (ipver) && \
+	 IS_DISPLAY_STEP(__i915, STEP_##since, STEP_##until))

-:138: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#138: FILE: drivers/gpu/drm/i915/i915_drv.h:490:
+#define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
+				       DISPLAY_RUNTIME_INFO(i915)->ip.rel)

total: 0 errors, 0 warnings, 4 checks, 104 lines checked
3fd78ec5b343 drm/i915/mtl: Eliminate subplatforms
-:94: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#94: FILE: include/drm/i915_pciids.h:743:
+#define INTEL_MTL_IDS(info) \
 	INTEL_VGA_DEVICE(0x7D40, info), \
 	INTEL_VGA_DEVICE(0x7D45, info), \
 	INTEL_VGA_DEVICE(0x7D55, info), \
+	INTEL_VGA_DEVICE(0x7D60, info), \
 	INTEL_VGA_DEVICE(0x7DD5, info)

-:94: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#94: FILE: include/drm/i915_pciids.h:743:
+#define INTEL_MTL_IDS(info) \
 	INTEL_VGA_DEVICE(0x7D40, info), \
 	INTEL_VGA_DEVICE(0x7D45, info), \
 	INTEL_VGA_DEVICE(0x7D55, info), \
+	INTEL_VGA_DEVICE(0x7D60, info), \
 	INTEL_VGA_DEVICE(0x7DD5, info)

total: 1 errors, 0 warnings, 1 checks, 67 lines checked
03c39d0914ba drm/i915/display: Eliminate IS_METEORLAKE checks
172d8c4c6884 drm/i915: Replace several IS_METEORLAKE with proper IP version checks


