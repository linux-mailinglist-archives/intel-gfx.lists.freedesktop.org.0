Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB24A30B3D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 13:10:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C7DB10E199;
	Tue, 11 Feb 2025 12:10:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9083510E199;
 Tue, 11 Feb 2025 12:10:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=5Fi915=5Fprivate?=
 =?utf-8?q?_to_intel=5Fdisplay_cleanup_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2025 12:10:34 -0000
Message-ID: <173927583458.894011.16710830172383071851@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250211104857.3501566-1-suraj.kandpal@intel.com>
In-Reply-To: <20250211104857.3501566-1-suraj.kandpal@intel.com>
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

Series: drm_i915_private to intel_display cleanup (rev2)
URL   : https://patchwork.freedesktop.org/series/144588/
State : warning

== Summary ==

Error: dim checkpatch failed
37f096e9961c drm/i915/display_debug_fs: Use intel_display wherever possible
-:54: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 63)
#54: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:95:
+	if (DISPLAY_VER(display) >= 9)
 		/* no global SR status; inspect per-plane WM */;

total: 0 errors, 1 warnings, 0 checks, 507 lines checked
a052eb583c24 drm/i915/display_debug_fs: Prefer using display->platform
56335358a845 drm/i915/dpll: Change param to intel_display in for_each_shared_dpll
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
f35ee0e7dd2c drm/i915/dpll: Use intel_display for dpll dump and compare hw state
b06cd75b3507 drm/i915/dpll: Use intel_display possible in shared_dpll_mgr hooks
d6e03bdf8b64 drm/i915/dpll: Use intel_display for asserting pll
5082d7956254 drm/i915/dpll: Use intel_display for update_refclk hook
4df213d2a364 drm/i915/dpll: Accept intel_display as argument for shared_dpll_init
547b40419030 drm/i915/dpll: Replace all other leftover drm_i915_private


