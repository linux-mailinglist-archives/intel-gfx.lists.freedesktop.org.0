Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C75D758916
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 01:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C5B10E3E3;
	Tue, 18 Jul 2023 23:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1075410E3E3;
 Tue, 18 Jul 2023 23:37:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0D33A73C7;
 Tue, 18 Jul 2023 23:37:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 18 Jul 2023 23:37:27 -0000
Message-ID: <168972344795.22206.7437667976074997005@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
In-Reply-To: <20230718222753.1075713-10-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Reduce_MTL-specific_platform_checks?=
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

Series: Reduce MTL-specific platform checks
URL   : https://patchwork.freedesktop.org/series/120943/
State : warning

== Summary ==

Error: dim checkpatch failed
c3afd0a4c654 drm/i915: Consolidate condition for Wa_22011802037
448c3a48c6f6 drm/i915/xelpg: Call Xe_LPG workaround functions based on IP version
-:154: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#154: FILE: drivers/gpu/drm/i915/i915_drv.h:434:
+#define GT_GRAPHICS_RANGE(gt, from, until) \
+	(BUILD_BUG_ON_ZERO(from < IP_VER(2, 0)) + \
+	 ((gt)->type != GT_MEDIA && \
+	  (GRAPHICS_VER_FULL((gt)->i915) >= (from) && GRAPHICS_VER_FULL((gt)->i915) <= (until))))

-:154: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'from' - possible side-effects?
#154: FILE: drivers/gpu/drm/i915/i915_drv.h:434:
+#define GT_GRAPHICS_RANGE(gt, from, until) \
+	(BUILD_BUG_ON_ZERO(from < IP_VER(2, 0)) + \
+	 ((gt)->type != GT_MEDIA && \
+	  (GRAPHICS_VER_FULL((gt)->i915) >= (from) && GRAPHICS_VER_FULL((gt)->i915) <= (until))))

-:154: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'from' may be better as '(from)' to avoid precedence issues
#154: FILE: drivers/gpu/drm/i915/i915_drv.h:434:
+#define GT_GRAPHICS_RANGE(gt, from, until) \
+	(BUILD_BUG_ON_ZERO(from < IP_VER(2, 0)) + \
+	 ((gt)->type != GT_MEDIA && \
+	  (GRAPHICS_VER_FULL((gt)->i915) >= (from) && GRAPHICS_VER_FULL((gt)->i915) <= (until))))

total: 0 errors, 0 warnings, 3 checks, 116 lines checked
e99db64725a5 drm/i915: Eliminate IS_MTL_GRAPHICS_STEP
-:292: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__gt' - possible side-effects?
#292: FILE: drivers/gpu/drm/i915/i915_drv.h:695:
+#define IS_GFX_IPVER_STEP(__gt, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 (__gt->type != GT_MEDIA && \
+	  GRAPHICS_VER_FULL(__gt->i915) == ipver && \
+	  IS_GRAPHICS_STEP(__gt->i915, since, until)))

-:292: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '__gt' may be better as '(__gt)' to avoid precedence issues
#292: FILE: drivers/gpu/drm/i915/i915_drv.h:695:
+#define IS_GFX_IPVER_STEP(__gt, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 (__gt->type != GT_MEDIA && \
+	  GRAPHICS_VER_FULL(__gt->i915) == ipver && \
+	  IS_GRAPHICS_STEP(__gt->i915, since, until)))

-:292: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ipver' - possible side-effects?
#292: FILE: drivers/gpu/drm/i915/i915_drv.h:695:
+#define IS_GFX_IPVER_STEP(__gt, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 (__gt->type != GT_MEDIA && \
+	  GRAPHICS_VER_FULL(__gt->i915) == ipver && \
+	  IS_GRAPHICS_STEP(__gt->i915, since, until)))

-:292: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'ipver' may be better as '(ipver)' to avoid precedence issues
#292: FILE: drivers/gpu/drm/i915/i915_drv.h:695:
+#define IS_GFX_IPVER_STEP(__gt, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 (__gt->type != GT_MEDIA && \
+	  GRAPHICS_VER_FULL(__gt->i915) == ipver && \
+	  IS_GRAPHICS_STEP(__gt->i915, since, until)))

total: 0 errors, 0 warnings, 4 checks, 227 lines checked
57e068abc2d6 drm/i915: Eliminate IS_MTL_MEDIA_STEP
-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__gt' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/i915_drv.h:701:
+#define IS_MEDIA_IPVER_STEP(__gt, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(13, 0)) + \
+	 (__gt && __gt->type == GT_MEDIA && \
+	  MEDIA_VER_FULL(__gt->i915) == ipver && \
+	  IS_MEDIA_STEP(__gt->i915, since, until)))

-:46: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '__gt' may be better as '(__gt)' to avoid precedence issues
#46: FILE: drivers/gpu/drm/i915/i915_drv.h:701:
+#define IS_MEDIA_IPVER_STEP(__gt, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(13, 0)) + \
+	 (__gt && __gt->type == GT_MEDIA && \
+	  MEDIA_VER_FULL(__gt->i915) == ipver && \
+	  IS_MEDIA_STEP(__gt->i915, since, until)))

-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ipver' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/i915_drv.h:701:
+#define IS_MEDIA_IPVER_STEP(__gt, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(13, 0)) + \
+	 (__gt && __gt->type == GT_MEDIA && \
+	  MEDIA_VER_FULL(__gt->i915) == ipver && \
+	  IS_MEDIA_STEP(__gt->i915, since, until)))

-:46: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'ipver' may be better as '(ipver)' to avoid precedence issues
#46: FILE: drivers/gpu/drm/i915/i915_drv.h:701:
+#define IS_MEDIA_IPVER_STEP(__gt, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(13, 0)) + \
+	 (__gt && __gt->type == GT_MEDIA && \
+	  MEDIA_VER_FULL(__gt->i915) == ipver && \
+	  IS_MEDIA_STEP(__gt->i915, since, until)))

total: 0 errors, 0 warnings, 4 checks, 56 lines checked
5fbebe56cfed drm/i915: Eliminate IS_MTL_DISPLAY_STEP
-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:74:
+#define IS_DISPLAY_IPVER_STEP(__i915, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 DISPLAY_VER_FULL(__i915) == ipver && \
+	 IS_DISPLAY_STEP(__i915, since, until))

-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ipver' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:74:
+#define IS_DISPLAY_IPVER_STEP(__i915, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 DISPLAY_VER_FULL(__i915) == ipver && \
+	 IS_DISPLAY_STEP(__i915, since, until))

-:23: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'ipver' may be better as '(ipver)' to avoid precedence issues
#23: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:74:
+#define IS_DISPLAY_IPVER_STEP(__i915, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 DISPLAY_VER_FULL(__i915) == ipver && \
+	 IS_DISPLAY_STEP(__i915, since, until))

-:122: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#122: FILE: drivers/gpu/drm/i915/i915_drv.h:446:
+#define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
+				       DISPLAY_RUNTIME_INFO(i915)->ip.rel)

total: 0 errors, 0 warnings, 4 checks, 92 lines checked
d5a4c97b8df3 drm/i915/mtl: Eliminate subplatforms
-:92: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#92: FILE: include/drm/i915_pciids.h:743:
+#define INTEL_MTL_IDS(info) \
 	INTEL_VGA_DEVICE(0x7D40, info), \
 	INTEL_VGA_DEVICE(0x7D45, info), \
 	INTEL_VGA_DEVICE(0x7D55, info), \
+	INTEL_VGA_DEVICE(0x7D60, info), \
 	INTEL_VGA_DEVICE(0x7DD5, info)

-:92: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#92: FILE: include/drm/i915_pciids.h:743:
+#define INTEL_MTL_IDS(info) \
 	INTEL_VGA_DEVICE(0x7D40, info), \
 	INTEL_VGA_DEVICE(0x7D45, info), \
 	INTEL_VGA_DEVICE(0x7D55, info), \
+	INTEL_VGA_DEVICE(0x7D60, info), \
 	INTEL_VGA_DEVICE(0x7DD5, info)

total: 1 errors, 0 warnings, 1 checks, 67 lines checked
42b7ddbd88d6 drm/i915/display: Eliminate IS_METEORLAKE checks
-:52: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'phy < PHY_C'
#52: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:34:
+	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0) && (phy < PHY_C))

total: 0 errors, 0 warnings, 1 checks, 40 lines checked
eca499562098 drm/i915: Replace several IS_METEORLAKE with proper IP version checks


