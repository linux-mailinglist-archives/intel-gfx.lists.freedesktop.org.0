Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D3241A8B9
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 08:20:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4647689E14;
	Tue, 28 Sep 2021 06:20:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7CEF189E14;
 Tue, 28 Sep 2021 06:20:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79360AA917;
 Tue, 28 Sep 2021 06:20:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Sep 2021 06:20:43 -0000
Message-ID: <163281004349.3948.2688542082258172960@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210928060713.8879-1-jani.nikula@intel.com>
In-Reply-To: <20210928060713.8879-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2CAGAIN=2C1/8=5D_drm/i915/uncore?=
 =?utf-8?q?=3A_split_the_fw_get_function_into_separate_vfunc?=
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

Series: series starting with [CI,AGAIN,1/8] drm/i915/uncore: split the fw get function into separate vfunc
URL   : https://patchwork.freedesktop.org/series/95139/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
989b2f980acd drm/i915/uncore: split the fw get function into separate vfunc
4af1b121bf8a drm/i915/pm: drop get_fifo_size vfunc.
326b87b62340 drm/i915: make update_wm take a dev_priv.
9c5f4cc8ba8b drm/i915/wm: provide wrappers around watermark vfuncs calls (v2)
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
09a640e1bb71 drm/i915: add wrappers around cdclk vtable funcs.
-:32: WARNING:LINE_SPACING: Missing a blank line after declarations
#32: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:71:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	return dev_priv->display.bw_calc_min_cdclk(state);

total: 0 errors, 1 warnings, 0 checks, 127 lines checked
892a5322bed5 drm/i915/display: add intel_fdi_link_train wrapper.
25baf7f8a984 drm/i915: split clock gating init from display vtable
8d63c1d46999 drm/i915: split watermark vfuncs from display vtable.


