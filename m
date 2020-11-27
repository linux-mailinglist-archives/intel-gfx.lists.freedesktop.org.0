Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A64F32C6724
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 14:46:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F37C46EDC1;
	Fri, 27 Nov 2020 13:46:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C2B676EDB9;
 Fri, 27 Nov 2020 13:46:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 851A3A47E8;
 Fri, 27 Nov 2020 13:46:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Fri, 27 Nov 2020 13:46:31 -0000
Message-ID: <160648479154.26784.2589611933069128267@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201127105041.2793779-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20201127105041.2793779-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/5=5D_drm/i915/display/psr=3A?=
 =?utf-8?q?_Calculate_selective_fetch_plane_registers?=
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

Series: series starting with [v3,1/5] drm/i915/display/psr: Calculate selective fetch plane registers
URL   : https://patchwork.freedesktop.org/series/84340/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0519f1c556bc drm/i915/display/psr: Calculate selective fetch plane registers
a394d94d01f2 drm/i915/display/psr: Calculate Trancoder's SU rect and plane's SF rect
-:42: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/display/intel_display.h:468:
+#define for_each_oldnew_intel_plane_in_state_reverse(__state, plane, old_plane_state, new_plane_state, __i) \

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/display/intel_display.h:468:
+#define for_each_oldnew_intel_plane_in_state_reverse(__state, plane, old_plane_state, new_plane_state, __i) \
+	for ((__i) = (__state)->base.dev->mode_config.num_total_plane - 1; \
+	     (__i) >= 0 && \
+		     ((plane) = to_intel_plane((__state)->base.planes[__i].ptr), \
+		      (old_plane_state) = to_intel_plane_state((__state)->base.planes[__i].old_state), \
+		      (new_plane_state) = to_intel_plane_state((__state)->base.planes[__i].new_state), 1); \
+	     (__i)--) \
+		for_each_if(plane)

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'plane' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/display/intel_display.h:468:
+#define for_each_oldnew_intel_plane_in_state_reverse(__state, plane, old_plane_state, new_plane_state, __i) \
+	for ((__i) = (__state)->base.dev->mode_config.num_total_plane - 1; \
+	     (__i) >= 0 && \
+		     ((plane) = to_intel_plane((__state)->base.planes[__i].ptr), \
+		      (old_plane_state) = to_intel_plane_state((__state)->base.planes[__i].old_state), \
+		      (new_plane_state) = to_intel_plane_state((__state)->base.planes[__i].new_state), 1); \
+	     (__i)--) \
+		for_each_if(plane)

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/display/intel_display.h:468:
+#define for_each_oldnew_intel_plane_in_state_reverse(__state, plane, old_plane_state, new_plane_state, __i) \
+	for ((__i) = (__state)->base.dev->mode_config.num_total_plane - 1; \
+	     (__i) >= 0 && \
+		     ((plane) = to_intel_plane((__state)->base.planes[__i].ptr), \
+		      (old_plane_state) = to_intel_plane_state((__state)->base.planes[__i].old_state), \
+		      (new_plane_state) = to_intel_plane_state((__state)->base.planes[__i].new_state), 1); \
+	     (__i)--) \
+		for_each_if(plane)

-:46: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_display.h:472:
+		      (old_plane_state) = to_intel_plane_state((__state)->base.planes[__i].old_state), \

-:47: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_display.h:473:
+		      (new_plane_state) = to_intel_plane_state((__state)->base.planes[__i].new_state), 1); \

-:92: CHECK:LINE_SPACING: Please don't use multiple blank lines
#92: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1277:
+
+

-:261: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#261: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1418:
+						     new_plane_state, i) {
+

total: 0 errors, 3 warnings, 5 checks, 292 lines checked
6f2d0e56e996 drm/i915/display: Split and export main surface calculation from skl_check_main_surface()
4286e9f831a3 drm/i915/display/psr: Program Plane's calculated offset to Plane SF register
968a799d4c11 HAX/DO_NOT_MERGE_IT: drm/i915/display: Enable PSR2 selective fetch for testing


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
