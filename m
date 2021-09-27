Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B8041955A
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 15:47:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F3F089D7D;
	Mon, 27 Sep 2021 13:46:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BB9C789D7D;
 Mon, 27 Sep 2021 13:46:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B44C5A47EA;
 Mon, 27 Sep 2021 13:46:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Sep 2021 13:46:57 -0000
Message-ID: <163275041769.14086.15093804268700185901@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210924114741.15940-1-jani.nikula@intel.com>
In-Reply-To: <20210924114741.15940-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C01/24=5D_drm/i915/uncore=3A_sp?=
 =?utf-8?q?lit_the_fw_get_function_into_separate_vfunc_=28rev2=29?=
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

Series: series starting with [CI,01/24] drm/i915/uncore: split the fw get function into separate vfunc (rev2)
URL   : https://patchwork.freedesktop.org/series/95024/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2b7863019540 drm/i915/uncore: split the fw get function into separate vfunc
94a78839f40b drm/i915/pm: drop get_fifo_size vfunc.
5318ffce7d30 drm/i915: make update_wm take a dev_priv.
ee6db36e4128 drm/i915/wm: provide wrappers around watermark vfuncs calls (v2)
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
ef85392431fb drm/i915: add wrappers around cdclk vtable funcs.
-:32: WARNING:LINE_SPACING: Missing a blank line after declarations
#32: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:71:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	return dev_priv->display.bw_calc_min_cdclk(state);

total: 0 errors, 1 warnings, 0 checks, 127 lines checked
10620e0570af drm/i915/display: add intel_fdi_link_train wrapper.
c5c429b682d4 drm/i915: split clock gating init from display vtable
8a23f0867b3c drm/i915: split watermark vfuncs from display vtable.
10c74f253f1b drm/i915: split color functions from display vtable
71cad70999ec drm/i915: split audio functions from display vtable
9c2d5bf60e9c drm/i915: split cdclk functions from display vtable.
cf78aa87190e drm/i915: split irq hotplug function from display vtable
1fc071461a5f drm/i915: split fdi link training from display vtable.
3304e00e8390 drm/i915: split the dpll clock compute out from display vtable.
382c970cd570 drm/i915: constify fdi link training vtable
0b73a463c571 drm/i915: constify hotplug function vtable.
3183c2e12386 drm/i915: constify color function vtable.
-:197: CHECK:BRACES: Unbalanced braces around else statement
#197: FILE: drivers/gpu/drm/i915/display/intel_color.c:2194:
+		} else

total: 0 errors, 0 warnings, 1 checks, 187 lines checked
17d48b7ee1aa drm/i915: constify the audio function vtable
f0894e362361 drm/i915: constify the dpll clock vtable
a77d3b26a6e8 drm/i915: constify the cdclk vtable
9f8f5ae0a14f drm/i915: drop unused function ptr and comments.
c23f4c7439e1 drm/i915: constify display function vtable
3c09f0446f68 drm/i915: constify clock gating init vtable.
4f103c0eb7b1 drm/i915: constify display wm vtable


