Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E815170F62
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 05:08:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F28C6E3DF;
	Thu, 27 Feb 2020 04:08:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8AB3A6E3DF;
 Thu, 27 Feb 2020 04:08:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85885A0099;
 Thu, 27 Feb 2020 04:08:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 27 Feb 2020 04:08:09 -0000
Message-ID: <158277648952.29658.12963051840572810032@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226203455.23032-1-imre.deak@intel.com>
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Clean_up_DPLL_output/refclock_tracking?=
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

Series: drm/i915: Clean up DPLL output/refclock tracking
URL   : https://patchwork.freedesktop.org/series/73977/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3ad933d04ce1 drm/i915: Fix bounds check in intel_get_shared_dpll_id()
649c52ce9987 drm/i915: Move DPLL HW readout/sanitize fns to intel_dpll_mgr.c
0d005a5d024f drm/i915: Keep the global DPLL state in a DPLL specific struct
-:311: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#311: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:3835:
+	BUG_ON(dev_priv->dpll.num_shared_dpll > I915_NUM_PLLS);

-:400: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#400: FILE: drivers/gpu/drm/i915/i915_drv.h:1057:
+		struct mutex lock;

total: 0 errors, 1 warnings, 1 checks, 339 lines checked
75d78cadd4ca drm/i915: Move the DPLL vfunc inits after the func defines
c6344edea0b3 drm/i915/hsw: Use the DPLL ID when calculating DPLL clock
60a8609aa55a drm/i915: Move DPLL frequency calculation to intel_dpll_mgr.c
-:607: CHECK:CAMELCASE: Avoid CamelCase: <SPLL_FREQ_810MHz>
#607: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:1024:
+		if (pll == SPLL_FREQ_810MHz)

-:607: CHECK:BRACES: braces {} should be used on all arms of this statement
#607: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:1024:
+		if (pll == SPLL_FREQ_810MHz)
[...]
+		else if (pll == SPLL_FREQ_1350MHz)
[...]
+		else if (pll == SPLL_FREQ_2700MHz)
[...]
+		else {
[...]

-:609: CHECK:CAMELCASE: Avoid CamelCase: <SPLL_FREQ_1350MHz>
#609: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:1026:
+		else if (pll == SPLL_FREQ_1350MHz)

-:611: CHECK:CAMELCASE: Avoid CamelCase: <SPLL_FREQ_2700MHz>
#611: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:1028:
+		else if (pll == SPLL_FREQ_2700MHz)

-:613: CHECK:BRACES: Unbalanced braces around else statement
#613: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:1030:
+		else {

-:645: CHECK:LINE_SPACING: Please don't use multiple blank lines
#645: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:1558:
+
+

-:787: CHECK:LINE_SPACING: Please don't use multiple blank lines
#787: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2593:
+
+

-:1001: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1001: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:4339:
+
+

total: 0 errors, 0 warnings, 8 checks, 968 lines checked
fcb70a2a2063 drm/i915/skl: Parametrize the DPLL ref clock instead of open-coding it
b20cdae29985 drm/i915/hsw: Rename the get HDMI/DP DPLL funcs to get WRPLL/LCPLL
08a1ec87a9d9 drm/i915/hsw: Split out the SPLL parameter calculation
-:29: CHECK:CAMELCASE: Avoid CamelCase: <SPLL_FREQ_1350MHz>
#29: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:969:
+	crtc_state->dpll_hw_state.spll = SPLL_PLL_ENABLE | SPLL_FREQ_1350MHz |

total: 0 errors, 0 warnings, 1 checks, 51 lines checked
713fb8dc5a64 drm/i915/hsw: Split out the WRPLL, LCPLL, SPLL frequency calculation
cd28115faa3a drm/i915/skl, cnl: Split out the WRPLL/LCPLL frequency calculation
-:519: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_i915_private *' should also have an identifier name
#519: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.h:378:
+int intel_dpll_get_freq(struct drm_i915_private *,

-:519: WARNING:FUNCTION_ARGUMENTS: function definition argument 'const struct intel_shared_dpll *' should also have an identifier name
#519: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.h:378:
+int intel_dpll_get_freq(struct drm_i915_private *,

total: 0 errors, 2 warnings, 0 checks, 479 lines checked
fcda3e44c96b drm/i915/hsw: Use the read-out WRPLL/SPLL state instead of reading out again
a5e019011c6b drm/i915: Unify the DPLL ref clock frequency tracking

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
