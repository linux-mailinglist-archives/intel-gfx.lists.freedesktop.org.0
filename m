Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D9BAB7F49
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 09:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CEC910E7AB;
	Thu, 15 May 2025 07:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BB6910E7A8;
 Thu, 15 May 2025 07:51:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_DPLL_framework_redes?=
 =?utf-8?q?ign?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 15 May 2025 07:51:49 -0000
Message-ID: <174729550916.83340.3746980741445942830@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250515071801.2221120-1-suraj.kandpal@intel.com>
In-Reply-To: <20250515071801.2221120-1-suraj.kandpal@intel.com>
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

Series: DPLL framework redesign
URL   : https://patchwork.freedesktop.org/series/149052/
State : warning

== Summary ==

Error: dim checkpatch failed
c8fd0a76fae2 drm/i915/dpll: Rename intel_dpll
f2f768c37475 drm/i915/dpll: Rename intel_dpll_funcs
62446e56b431 drm/i915/dpll: Rename intel_shared_dpll_state
be6f1f619ffc drm/i915/dpll: Rename macro for_each_shared_dpll
-:103: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#103: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.h:33:
+#define for_each_dpll(__display, __pll, __i) \
 	for ((__i) = 0; (__i) < (__display)->dpll.num_shared_dpll && \
 		     ((__pll) = &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)

-:103: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#103: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.h:33:
+#define for_each_dpll(__display, __pll, __i) \
 	for ((__i) = 0; (__i) < (__display)->dpll.num_shared_dpll && \
 		     ((__pll) = &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)

total: 0 errors, 0 warnings, 2 checks, 81 lines checked
fdb7eb744fc2 drm/i915/dpll: Rename intel_shared_dpll_funcs
30f7b1e101da drm/i915/dpll: Rename intel_shared_dpll
9b2e11873e90 drm/i915/dpll: Move away from using shared dpll
495e129328ba drm/i915/dpll: Rename crtc_get_shared_dpll
b46019338007 drm/i915/dpll: Rename intel_[enable/disable]_dpll
bad908ede2e9 drm/i915/dpll: Rename intel_unreference_dpll_crtc
dad4e80c80f4 drm/i915/dpll: Rename intel_reference_dpll_crtc
4ccaa1997e75 drm/i915/dpll: Rename intel_<release/reserve>_dpll
4ff1c7ce6d10 drm/i915/dpll: Rename intel_compute_dpll
2cf687ea9faf drm/i915/dpll: Rename intel_update_active_dpll


