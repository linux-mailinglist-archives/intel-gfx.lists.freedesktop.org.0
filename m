Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A9A5EB667
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 02:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD84110E01F;
	Tue, 27 Sep 2022 00:42:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E555B10E01F;
 Tue, 27 Sep 2022 00:42:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB58AAA0EA;
 Tue, 27 Sep 2022 00:42:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 27 Sep 2022 00:42:00 -0000
Message-ID: <166423932086.24580.6722017709965970456@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220926191341.5495-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Start_cleaning_up_the_DPLL_ID_mess_=28rev2=29?=
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

Series: drm/i915: Start cleaning up the DPLL ID mess (rev2)
URL   : https://patchwork.freedesktop.org/series/108827/
State : warning

== Summary ==

Error: dim checkpatch failed
490086d775df drm/i915: Stop requiring PLL index == PLL ID
-:172: CHECK:SPACING: No space is necessary after a cast
#172: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:538:
+		id = (enum intel_dpll_id) crtc->pipe;

total: 0 errors, 0 warnings, 1 checks, 196 lines checked
15d742afc5e2 drm/i915: Decouple I915_NUM_PLLS from PLL IDs
89dba9f4cb15 drm/i915: Introduce for_each_shared_dpll()
-:161: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#161: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.h:39:
+#define for_each_shared_dpll(__i915, __pll, __i) \
+	for ((__i) = 0; (__i) < (__i915)->display.dpll.num_shared_dpll && \
+		     ((__pll) = &(__i915)->display.dpll.shared_dplls[(__i)]); (__i)++)

-:161: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#161: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.h:39:
+#define for_each_shared_dpll(__i915, __pll, __i) \
+	for ((__i) = 0; (__i) < (__i915)->display.dpll.num_shared_dpll && \
+		     ((__pll) = &(__i915)->display.dpll.shared_dplls[(__i)]); (__i)++)

total: 0 errors, 0 warnings, 2 checks, 142 lines checked
d8e137cbf543 drm/i915: s/dev_priv/i915/ in the shared_dpll code
-:98: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!pll"
#98: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:230:
+	if (drm_WARN_ON(&i915->drm, pll == NULL))

total: 0 errors, 0 warnings, 1 checks, 2184 lines checked


