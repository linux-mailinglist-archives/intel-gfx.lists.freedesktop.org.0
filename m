Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C16A78AC2
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 11:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8709C10E70A;
	Wed,  2 Apr 2025 09:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DC1410E70A;
 Wed,  2 Apr 2025 09:12:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_DPLL_framework_redes?=
 =?utf-8?q?ign_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 02 Apr 2025 09:12:04 -0000
Message-ID: <174358512444.26680.10832840963274200925@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
In-Reply-To: <20250402083204.1523470-1-suraj.kandpal@intel.com>
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

Series: DPLL framework redesign (rev2)
URL   : https://patchwork.freedesktop.org/series/145381/
State : warning

== Summary ==

Error: dim checkpatch failed
e72173af8e62 drm/i915/dpll: Rename intel_shared_dpll_state
3d9b9f9e9370 drm/i915/dpll: Rename macro for_each_shared_dpll
-:102: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#102: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.h:33:
+#define for_each_dpll(__display, __pll, __i) \
 	for ((__i) = 0; (__i) < (__display)->dpll.num_shared_dpll && \
 		     ((__pll) = &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)

-:102: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#102: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.h:33:
+#define for_each_dpll(__display, __pll, __i) \
 	for ((__i) = 0; (__i) < (__display)->dpll.num_shared_dpll && \
 		     ((__pll) = &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)

total: 0 errors, 0 warnings, 2 checks, 81 lines checked
0155e141adbc drm/i915/dpll: Rename intel_shared_dpll_funcs
30ba91a860b2 drm/i915/dpll: Rename intel_shared_dpll
6d9fc44054c1 drm/i915/dpll: Move away from using shared dpll
c07845f9816d drm/i915/dpll: Rename crtc_get_shared_dpll
bea8205fb4ec drm/i915/dpll: Change argument for enable hook in intel_global_dpll_funcs
7ccb67c0b970 drm/i915/drm: Rename disable hook in intel_dpll_global_func
88641b6060f0 drm/i915/dpll: Introduce new hook in intel_dpll_global_func
a4f4fa2e9381 drm/i915/dpll: Add intel_encoder argument to get_hw_state hook
ffc85fdb6942 drm/i915/dpll: Change arguments for get_freq hook
1e9dbaf8d003 drm/i915/dpll: Rename intel_[enable/disable]_global_dpll
5b9bd872fd29 drm/i915/dpll: Rename intel_unreference_dpll_global_crtc
50100aa8abf5 drm/i915/dpll: Rename intel_<release/reserve>_dpll_globals
4e037f2ef042 drm/i915/dpll: Rename intel_compute_dpll_globals
b9d2294a7f2d drm/i915/dpll: Rename intel_update_active_dpll


