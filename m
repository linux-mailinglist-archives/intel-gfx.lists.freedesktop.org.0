Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A330417702
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 16:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7693B6EE27;
	Fri, 24 Sep 2021 14:46:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C5346EE27;
 Fri, 24 Sep 2021 14:46:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 05BD1AA3D8;
 Fri, 24 Sep 2021 14:46:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 14:46:08 -0000
Message-ID: <163249476899.20559.5241614167728488380@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210924114741.15940-1-jani.nikula@intel.com>
In-Reply-To: <20210924114741.15940-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C01/24=5D_drm/i915/uncore=3A_sp?=
 =?utf-8?q?lit_the_fw_get_function_into_separate_vfunc?=
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

Series: series starting with [CI,01/24] drm/i915/uncore: split the fw get function into separate vfunc
URL   : https://patchwork.freedesktop.org/series/95024/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4914c76ee59e drm/i915/uncore: split the fw get function into separate vfunc
08a545dfec89 drm/i915/pm: drop get_fifo_size vfunc.
f58fcec3881f drm/i915: make update_wm take a dev_priv.
059557612cc1 drm/i915/wm: provide wrappers around watermark vfuncs calls (v2)
-:10: WARNING:TYPO_SPELLING: 'existance' may be misspelled - perhaps 'existence'?
#10: 
One thing to note is that the code checks the existance of some
                                              ^^^^^^^^^

-:29: CHECK:LINE_SPACING: Please don't use multiple blank lines
#29: FILE: drivers/gpu/drm/i915/display/intel_display.c:129:
 
+

-:73: WARNING:LINE_SPACING: Missing a blank line after declarations
#73: FILE: drivers/gpu/drm/i915/display/intel_display.c:173:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.compute_pipe_wm)

-:82: WARNING:LINE_SPACING: Missing a blank line after declarations
#82: FILE: drivers/gpu/drm/i915/display/intel_display.c:182:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (!dev_priv->display.compute_intermediate_wm)

-:94: WARNING:LINE_SPACING: Missing a blank line after declarations
#94: FILE: drivers/gpu/drm/i915/display/intel_display.c:194:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.initial_watermarks) {

-:105: WARNING:LINE_SPACING: Missing a blank line after declarations
#105: FILE: drivers/gpu/drm/i915/display/intel_display.c:205:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.atomic_update_watermarks)

-:113: WARNING:LINE_SPACING: Missing a blank line after declarations
#113: FILE: drivers/gpu/drm/i915/display/intel_display.c:213:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.optimize_watermarks)

-:120: WARNING:LINE_SPACING: Missing a blank line after declarations
#120: FILE: drivers/gpu/drm/i915/display/intel_display.c:220:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.compute_global_watermarks)

-:134: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 20)
#134: FILE: drivers/gpu/drm/i915/display/intel_display.c:2635:
+		if (!intel_initial_watermarks(state, crtc))
+		    if (new_crtc_state->update_wm_pre)

-:135: WARNING:TABSTOP: Statements should start on a tabstop
#135: FILE: drivers/gpu/drm/i915/display/intel_display.c:2636:
+		    if (new_crtc_state->update_wm_pre)

-:176: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 12)
#176: FILE: drivers/gpu/drm/i915/display/intel_display.c:3679:
+	if (!intel_initial_watermarks(state, crtc))
+	    intel_update_watermarks(dev_priv);

total: 0 errors, 10 warnings, 1 checks, 319 lines checked
20efb2b4959a drm/i915: add wrappers around cdclk vtable funcs.
-:32: WARNING:LINE_SPACING: Missing a blank line after declarations
#32: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:71:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	return dev_priv->display.bw_calc_min_cdclk(state);

total: 0 errors, 1 warnings, 0 checks, 127 lines checked
109ed63792a7 drm/i915/display: add intel_fdi_link_train wrapper.
6746f62182b9 drm/i915: split clock gating init from display vtable
434a5c505c8e drm/i915: split watermark vfuncs from display vtable.
e87887a29e0e drm/i915: split color functions from display vtable
241186abd3cd drm/i915: split audio functions from display vtable
285397427e1f drm/i915: split cdclk functions from display vtable.
b9df3e8f5dd5 drm/i915: split irq hotplug function from display vtable
2979a6404d3e drm/i915: split fdi link training from display vtable.
155b90d4459b drm/i915: split the dpll clock compute out from display vtable.
014d3658282b drm/i915: constify fdi link training vtable
d9a04ba4dcf8 drm/i915: constify hotplug function vtable.
cfc30359d062 drm/i915: constify color function vtable.
-:197: CHECK:BRACES: Unbalanced braces around else statement
#197: FILE: drivers/gpu/drm/i915/display/intel_color.c:2194:
+		} else

total: 0 errors, 0 warnings, 1 checks, 187 lines checked
defe9d3b4a87 drm/i915: constify the audio function vtable
904291d2789a drm/i915: constify the dpll clock vtable
b0b0887ac32a drm/i915: constify the cdclk vtable
83d7a5733fce drm/i915: drop unused function ptr and comments.
26fa20672d80 drm/i915: constify display function vtable
5ed7e0842222 drm/i915: constify clock gating init vtable.
c4c4c3ae4110 drm/i915: constify display wm vtable


