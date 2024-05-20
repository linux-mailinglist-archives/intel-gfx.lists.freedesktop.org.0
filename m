Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5FE8C9B47
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 12:29:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E25E10E4FE;
	Mon, 20 May 2024 10:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A2310E4F6;
 Mon, 20 May 2024 10:29:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Ultrajoiner_basic_fu?=
 =?utf-8?q?nctionality_series?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 20 May 2024 10:29:34 -0000
Message-ID: <171620097415.2146420.8869671199739169693@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240520073839.23881-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240520073839.23881-1-stanislav.lisovskiy@intel.com>
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

Series: Ultrajoiner basic functionality series
URL   : https://patchwork.freedesktop.org/series/133800/
State : warning

== Summary ==

Error: dim checkpatch failed
f1c5de795401 drm/i915: Rename all bigjoiner to joiner
-:200: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#200: FILE: drivers/gpu/drm/i915/display/intel_display.c:2320:
+static void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_state,
 					   struct drm_display_mode *mode)

-:299: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#299: FILE: drivers/gpu/drm/i915/display/intel_display.c:3496:
+static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				    u8 *master_pipes, u8 *slave_pipes)

-:415: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#415: FILE: drivers/gpu/drm/i915/display/intel_display.c:4501:
+copy_joiner_crtc_state_nomodeset(struct intel_atomic_state *state,
 				    struct intel_crtc *slave_crtc)

-:424: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#424: FILE: drivers/gpu/drm/i915/display/intel_display.c:4521:
+copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
 				  struct intel_crtc *slave_crtc)

-:471: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#471: FILE: drivers/gpu/drm/i915/display/intel_display.c:5735:
+static int intel_crtc_add_joiner_planes(struct intel_atomic_state *state,
 					   struct intel_crtc *crtc,

-:514: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#514: FILE: drivers/gpu/drm/i915/display/intel_display.c:5891:
+static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 					struct intel_crtc *master_crtc)

-:577: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#577: FILE: drivers/gpu/drm/i915/display/intel_display.c:5962:
+static void kill_joiner_slave(struct intel_atomic_state *state,
 				 struct intel_crtc *master_crtc)

-:971: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#971: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1211:
+bool intel_dp_need_joiner(struct intel_dp *intel_dp,
 			     struct intel_connector *connector,

-:1001: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1001: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1259:
+	if (intel_dp_need_joiner(intel_dp, connector,
 				    mode->hdisplay, target_clock)) {

-:1073: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1073: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2436:
+	if (intel_dp_need_joiner(intel_dp, connector,
 				    adjusted_mode->crtc_hdisplay,

-:1122: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1122: FILE: drivers/gpu/drm/i915/display/intel_dp.h:154:
+bool intel_dp_need_joiner(struct intel_dp *intel_dp,
 			     struct intel_connector *connector,

-:1144: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1144: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:571:
+	if (intel_dp_need_joiner(intel_dp, connector,
 				    adjusted_mode->crtc_hdisplay,

-:1173: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1173: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:1422:
+	if (intel_dp_need_joiner(intel_dp, intel_connector,
 				    mode->hdisplay, target_clock)) {

-:1313: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1313: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:278:
+	joiner_slaves_mask = get_joiner_slave_pipes(i915,
 							  portsync_master_mask |

-:1372: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#1372: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:739:
+								 intel_crtc_joiner_slave_pipes(crtc_state)) {

total: 0 errors, 1 warnings, 14 checks, 1283 lines checked
8e8e3298a19d drm/i915: Implement basic functions for ultrajoiner support
c30500d06cf7 drm/i915: Implement hw state readout for ultrajoiner
-:9: WARNING:BAD_SIGN_OFF: 'Signed-off-by:' is the preferred signature form
#9: 
SIgned-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

-:48: CHECK:LINE_SPACING: Please don't use multiple blank lines
#48: FILE: drivers/gpu/drm/i915/display/intel_display.c:3577:
+
+

-:71: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#71: FILE: drivers/gpu/drm/i915/display/intel_display.c:3616:
+		return fls(master_pipes) - 1;
+	} else {

total: 0 errors, 2 warnings, 1 checks, 130 lines checked
f8f5dde0ee99 drm/i915: Compute config and mode valid changes for ultrajoiner
-:66: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#66: FILE: drivers/gpu/drm/i915/display/intel_dp.c:814:
+	max_bpp_joiner = max_bpp_small_joiner_ram =

-:206: ERROR:ELSE_AFTER_BRACE: else should follow close brace '}'
#206: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1304:
+	}
+	else if (intel_dp_need_bigjoiner(intel_dp, connector,

-:207: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#207: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1305:
+	else if (intel_dp_need_bigjoiner(intel_dp, connector,
 				    mode->hdisplay, target_clock)) {

-:324: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#324: FILE: drivers/gpu/drm/i915/display/intel_dp.h:123:
+bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_bigjoiner, bool use_ultrajoiner);

-:380: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#380: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:574:
+	else if (intel_dp_need_bigjoiner(intel_dp, connector,
 				    adjusted_mode->crtc_hdisplay,

-:494: CHECK:LINE_SPACING: Please don't use multiple blank lines
#494: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2351:
+
+

-:550: WARNING:ONE_SEMICOLON: Statements terminations use 1 semicolon
#550: FILE: drivers/gpu/drm/i915/display/intel_vdsc.c:813:
+			dss_ctl1_val |= MASTER_ULTRA_JOINER_ENABLE;;

total: 1 errors, 2 warnings, 4 checks, 480 lines checked
dee2c5b44f8d drm/i915: Add new abstraction layer to handle pipe order for different joiners
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
Ultrajoiner case requires special treatment where both reverse and staight order

-:77: CHECK:LINE_SPACING: Please don't use multiple blank lines
#77: FILE: drivers/gpu/drm/i915/display/intel_display.c:1701:
 
+

-:82: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#82: FILE: drivers/gpu/drm/i915/display/intel_display.c:1706:
+	static const enum pipe ultrajoiner_pipe_order_enable[I915_MAX_PIPES] =
+		{ PIPE_B, PIPE_D, PIPE_C, PIPE_A };

-:84: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#84: FILE: drivers/gpu/drm/i915/display/intel_display.c:1708:
+	static const enum pipe bigjoiner_pipe_order_enable[I915_MAX_PIPES] =
+		{ PIPE_B, PIPE_A, PIPE_D, PIPE_C };

-:86: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#86: FILE: drivers/gpu/drm/i915/display/intel_display.c:1710:
+	static const enum pipe nojoiner_pipe_order_enable[I915_MAX_PIPES] =
+		{ PIPE_A, PIPE_B, PIPE_C, PIPE_D };

-:98: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#98: FILE: drivers/gpu/drm/i915/display/intel_display.c:1722:
+	static const enum pipe ultrajoiner_pipe_order_disable[I915_MAX_PIPES] =
+		{ PIPE_A, PIPE_B, PIPE_D, PIPE_C };

-:100: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#100: FILE: drivers/gpu/drm/i915/display/intel_display.c:1724:
+	static const enum pipe bigjoiner_pipe_order_disable[I915_MAX_PIPES] =
+		{ PIPE_A, PIPE_B, PIPE_C, PIPE_D };

-:102: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#102: FILE: drivers/gpu/drm/i915/display/intel_display.c:1726:
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


