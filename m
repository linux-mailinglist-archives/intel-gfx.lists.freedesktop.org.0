Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D297B72DE
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 22:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B7B110E0A1;
	Tue,  3 Oct 2023 20:53:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7ABC010E0A1;
 Tue,  3 Oct 2023 20:53:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6CBC5A00E8;
 Tue,  3 Oct 2023 20:53:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 03 Oct 2023 20:53:48 -0000
Message-ID: <169636642841.4381.12182984986056739777@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231003200620.11633-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231003200620.11633-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Start_cleaning_up_the_DPLL_ID_mess_=28rev3=29?=
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

Series: drm/i915: Start cleaning up the DPLL ID mess (rev3)
URL   : https://patchwork.freedesktop.org/series/108827/
State : warning

== Summary ==

Error: dim checkpatch failed
af48f78e0453 drm/i915: Stop requiring PLL index == PLL ID
-:184: CHECK:SPACING: No space is necessary after a cast
#184: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:577:
+		id = (enum intel_dpll_id) crtc->pipe;

total: 0 errors, 0 warnings, 1 checks, 200 lines checked
cc7c89728d27 drm/i915: Decouple I915_NUM_PLLS from PLL IDs
231a873e02f7 drm/i915: Introduce for_each_shared_dpll()
-:162: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#162: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.h:32:
+#define for_each_shared_dpll(__i915, __pll, __i) \
+	for ((__i) = 0; (__i) < (__i915)->display.dpll.num_shared_dpll && \
+		     ((__pll) = &(__i915)->display.dpll.shared_dplls[(__i)]) ; (__i)++)

-:162: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#162: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.h:32:
+#define for_each_shared_dpll(__i915, __pll, __i) \
+	for ((__i) = 0; (__i) < (__i915)->display.dpll.num_shared_dpll && \
+		     ((__pll) = &(__i915)->display.dpll.shared_dplls[(__i)]) ; (__i)++)

total: 0 errors, 0 warnings, 2 checks, 142 lines checked
8e9c1c226f27 drm/i915: s/dev_priv/i915/ in the shared_dpll code
-:103: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!pll"
#103: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:236:
+	if (drm_WARN_ON(&i915->drm, pll == NULL))

-:774: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#774: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:1941:
+static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
 				struct intel_shared_dpll *pll)

-:906: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#906: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2042:
+static void bxt_ddi_pll_disable(struct drm_i915_private *i915,
 					struct intel_shared_dpll *pll)

-:932: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#932: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2061:
+static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 					struct intel_shared_dpll *pll,

total: 0 errors, 0 warnings, 4 checks, 2142 lines checked


