Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D11A2F024
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 15:47:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B63F310E576;
	Mon, 10 Feb 2025 14:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD6FF10E216;
 Mon, 10 Feb 2025 14:47:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=5Fi915=5Fprivate?=
 =?utf-8?q?_to_intel=5Fdisplay_cleanup?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Feb 2025 14:47:14 -0000
Message-ID: <173919883483.352309.1410455339246574750@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250210123950.3476620-1-suraj.kandpal@intel.com>
In-Reply-To: <20250210123950.3476620-1-suraj.kandpal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm_i915_private to intel_display cleanup
URL   : https://patchwork.freedesktop.org/series/144588/
State : warning

== Summary ==

Error: dim checkpatch failed
32c4709d5b05 drm/i915/display_debug_fs: Use intel_display wherever possible
-:50: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 63)
#50: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:95:
+	if (DISPLAY_VER(display) >= 9)
 		/* no global SR status; inspect per-plane WM */;

total: 0 errors, 1 warnings, 0 checks, 506 lines checked
e1e6d78a31d4 drm/i915/display_debug_fs: Prefer using display->platform
1287b80ea795 drm/i915/dpll: Change param to intel_display in for_each_shared_dpll
-:141: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#141: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.h:33:
+#define for_each_shared_dpll(__display, __pll, __i) \
+	for ((__i) = 0; (__i) < (__display)->dpll.num_shared_dpll && \
+		     ((__pll) = &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)

-:141: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#141: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.h:33:
+#define for_each_shared_dpll(__display, __pll, __i) \
+	for ((__i) = 0; (__i) < (__display)->dpll.num_shared_dpll && \
+		     ((__pll) = &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)

total: 0 errors, 0 warnings, 2 checks, 218 lines checked
287807d6272c drm/i915/dpll: Use intel_display for dpll dump and compare hw state
7cdf02a408e5 drm/i915/dpll: Use intel_display possible in shared_dpll_mgr hooks
c58283fbb668 drm/i915/dpll: Use intel_display for asserting pll
56c83139b247 drm/i915/dpll: Use intel_display for update_refclk hook
3a05c299ceb6 drm/i915/dpll: Accept intel_display as argument for shared_dpll_init
af43425ee3a0 drm/i915/dpll: Replace all other leftover drm_i915_private


