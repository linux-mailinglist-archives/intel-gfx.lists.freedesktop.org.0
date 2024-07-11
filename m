Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4222892E2D6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 10:57:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31A9B10E32B;
	Thu, 11 Jul 2024 08:57:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE63E10E326;
 Thu, 11 Jul 2024 08:57:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Ultrajoiner_basic_fu?=
 =?utf-8?q?nctionality_series_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2024 08:57:41 -0000
Message-ID: <172068826171.124811.1598500909350803775@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240711081441.17415-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240711081441.17415-1-stanislav.lisovskiy@intel.com>
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

Series: Ultrajoiner basic functionality series (rev5)
URL   : https://patchwork.freedesktop.org/series/133800/
State : warning

== Summary ==

Error: dim checkpatch failed
2d669c201834 drm/i915: Add some essential functionality for joiners
-:61: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#61: FILE: drivers/gpu/drm/i915/display/intel_display.c:277:
+	for (i = lsb; i < msb; i += 4)
+	{

total: 1 errors, 0 warnings, 0 checks, 160 lines checked
fe13acd29ba0 drm/i915: Split current joiner hw state readout
-:75: CHECK:SPACING: No space is necessary after a cast
#75: FILE: drivers/gpu/drm/i915/display/intel_display.c:3627:
+		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);

total: 0 errors, 0 warnings, 1 checks, 99 lines checked
c0974ac78b4e drm/i915: Add bigjoiner and uncompressed joiner hw readout sanity checks
f9f16c82cfe5 drm/i915: Implement hw state readout and checks for ultrajoiner
-:39: CHECK:SPACING: No space is necessary after a cast
#39: FILE: drivers/gpu/drm/i915/display/intel_display.c:3659:
+		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);

-:142: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#142: FILE: drivers/gpu/drm/i915/display/intel_display.c:3751:
+		return fls(primary_pipes) - 1;
+	} else {

-:168: CHECK:BRACES: braces {} should be used on all arms of this statement
#168: FILE: drivers/gpu/drm/i915/display/intel_display.c:3769:
+	if (!ultrajoiner_used) {
[...]
+		return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
[...]

-:178: CHECK:BRACES: Unbalanced braces around else statement
#178: FILE: drivers/gpu/drm/i915/display/intel_display.c:3778:
+	} else

-:203: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#203: FILE: drivers/gpu/drm/i915/display/intel_display.c:3856:
+			get_joiner_primary_pipe(crtc->pipe, primary_pipes,
+					       secondary_pipes, ultrajoiner_used);

-:223: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#223: FILE: drivers/gpu/drm/i915/display/intel_display.c:3997:
+		BIT(get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes, ultrajoiner_used)) |

total: 0 errors, 2 warnings, 4 checks, 215 lines checked
19934be097d6 drm/i915: Compute config and mode valid changes for ultrajoiner
-:66: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#66: FILE: drivers/gpu/drm/i915/display/intel_dp.c:761:
+	max_bpp_joiner = max_bpp_small_joiner_ram =

-:213: ERROR:ELSE_AFTER_BRACE: else should follow close brace '}'
#213: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1271:
+	}
+	else if (intel_dp_need_bigjoiner(intel_dp, connector,

-:214: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#214: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1272:
+	else if (intel_dp_need_bigjoiner(intel_dp, connector,
+				    mode->hdisplay, target_clock)) {

-:330: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#330: FILE: drivers/gpu/drm/i915/display/intel_dp.h:124:
+bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_bigjoiner, bool use_ultrajoiner);

-:388: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#388: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:583:
+	else if (intel_dp_need_bigjoiner(intel_dp, connector,
+				    adjusted_mode->crtc_hdisplay,

-:503: CHECK:LINE_SPACING: Please don't use multiple blank lines
#503: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2355:
+
+

-:559: WARNING:ONE_SEMICOLON: Statements terminations use 1 semicolon
#559: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:812:
+			dss_ctl1_val |= PRIMARY_ULTRA_JOINER_ENABLE;;

total: 1 errors, 2 warnings, 4 checks, 487 lines checked
87ebdb522e19 drm/i915: Add new abstraction layer to handle pipe order for different joiners
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
Ultrajoiner case requires special treatment where both reverse and staight order

-:77: CHECK:LINE_SPACING: Please don't use multiple blank lines
#77: FILE: drivers/gpu/drm/i915/display/intel_display.c:1724:
 
+

-:82: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#82: FILE: drivers/gpu/drm/i915/display/intel_display.c:1729:
+	static const enum pipe ultrajoiner_pipe_order_enable[I915_MAX_PIPES] =
+		{ PIPE_B, PIPE_D, PIPE_C, PIPE_A };

-:84: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#84: FILE: drivers/gpu/drm/i915/display/intel_display.c:1731:
+	static const enum pipe bigjoiner_pipe_order_enable[I915_MAX_PIPES] =
+		{ PIPE_B, PIPE_A, PIPE_D, PIPE_C };

-:86: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#86: FILE: drivers/gpu/drm/i915/display/intel_display.c:1733:
+	static const enum pipe nojoiner_pipe_order_enable[I915_MAX_PIPES] =
+		{ PIPE_A, PIPE_B, PIPE_C, PIPE_D };

-:98: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#98: FILE: drivers/gpu/drm/i915/display/intel_display.c:1745:
+	static const enum pipe ultrajoiner_pipe_order_disable[I915_MAX_PIPES] =
+		{ PIPE_A, PIPE_B, PIPE_D, PIPE_C };

-:100: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#100: FILE: drivers/gpu/drm/i915/display/intel_display.c:1747:
+	static const enum pipe bigjoiner_pipe_order_disable[I915_MAX_PIPES] =
+		{ PIPE_A, PIPE_B, PIPE_C, PIPE_D };

-:102: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#102: FILE: drivers/gpu/drm/i915/display/intel_display.c:1749:
+	static const enum pipe nojoiner_pipe_order_disable[I915_MAX_PIPES] =
+		{ PIPE_A, PIPE_B, PIPE_C, PIPE_D };

-:218: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#218: FILE: drivers/gpu/drm/i915/display/intel_display.h:277:
+#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
+	for_each_pipe(__dev_priv, __p) \
+		for_each_if((__mask) & BIT(__priolist[__p])) \
+			for_each_if(intel_crtc = intel_crtc_for_pipe(__dev_priv, __priolist[__p]))

-:218: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__dev_priv' - possible side-effects?
#218: FILE: drivers/gpu/drm/i915/display/intel_display.h:277:
+#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
+	for_each_pipe(__dev_priv, __p) \
+		for_each_if((__mask) & BIT(__priolist[__p])) \
+			for_each_if(intel_crtc = intel_crtc_for_pipe(__dev_priv, __priolist[__p]))

-:218: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__p' - possible side-effects?
#218: FILE: drivers/gpu/drm/i915/display/intel_display.h:277:
+#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
+	for_each_pipe(__dev_priv, __p) \
+		for_each_if((__mask) & BIT(__priolist[__p])) \
+			for_each_if(intel_crtc = intel_crtc_for_pipe(__dev_priv, __priolist[__p]))

-:218: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__priolist' - possible side-effects?
#218: FILE: drivers/gpu/drm/i915/display/intel_display.h:277:
+#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
+	for_each_pipe(__dev_priv, __p) \
+		for_each_if((__mask) & BIT(__priolist[__p])) \
+			for_each_if(intel_crtc = intel_crtc_for_pipe(__dev_priv, __priolist[__p]))

total: 7 errors, 1 warnings, 4 checks, 241 lines checked


