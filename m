Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB38A7E69D
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 18:33:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF46610E515;
	Mon,  7 Apr 2025 16:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08B6610E514;
 Mon,  7 Apr 2025 16:33:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_DPLL_framework_redes?=
 =?utf-8?q?ign_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 07 Apr 2025 16:33:45 -0000
Message-ID: <174404362502.44500.4513766429020062892@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <20250407081654.2013680-1-suraj.kandpal@intel.com>
In-Reply-To: <20250407081654.2013680-1-suraj.kandpal@intel.com>
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

Series: DPLL framework redesign (rev3)
URL   : https://patchwork.freedesktop.org/series/145381/
State : warning

== Summary ==

Error: dim checkpatch failed
d888e55ce6d1 drm/i915/dpll: Rename intel_dpll
7b95348ca36b drm/i915/dpll: Rename intel_dpll_funcs
7c9ba56408c3 drm/i915/dpll: Rename intel_shared_dpll_state
45ae24f9a38c drm/i915/dpll: Rename macro for_each_shared_dpll
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
3fe75033b50b drm/i915/dpll: Rename intel_shared_dpll_funcs
3d8dd3500064 drm/i915/dpll: Rename intel_shared_dpll
f7e8ae28a459 drm/i915/dpll: Move away from using shared dpll
930f82c5dbf8 drm/i915/dpll: Rename crtc_get_shared_dpll
cffe147003db drm/i915/dpll: Change argument for enable hook in intel_dpll_funcs
903f0e6cba85 drm/i915/drm: Rename disable hook in intel_dpll_global_func
4c69d57d5df9 drm/i915/dpll: Introduce new hook in intel_dpll_funcs
23b5e756af7d drm/i915/dpll: Add intel_encoder argument to get_hw_state hook
0fb2ee273b73 drm/i915/dpll: Change arguments for get_freq hook
25ab15f68e87 drm/i915/dpll: Rename intel_[enable/disable]_dpll
bd931011cc54 drm/i915/dpll: Rename intel_unreference_dpll__crtc
75611d64be01 drm/i915/dpll: Rename intel_<release/reserve>_dpll
663b5dcd188c drm/i915/dpll: Rename intel_compute_dpll
66e10f953fc9 drm/i915/dpll: Rename intel_update_active_dpll


