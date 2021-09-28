Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCAC41BB17
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 01:38:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D48A26E11E;
	Tue, 28 Sep 2021 23:38:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB6056E11E;
 Tue, 28 Sep 2021 23:38:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4B1DAA3D8;
 Tue, 28 Sep 2021 23:38:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Sep 2021 23:38:43 -0000
Message-ID: <163287232368.3950.17508929312944132384@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1632869550.git.jani.nikula@intel.com>
In-Reply-To: <cover.1632869550.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915/display=3A_split_and_constify_vtable=2C_again?=
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

Series: i915/display: split and constify vtable, again
URL   : https://patchwork.freedesktop.org/series/95184/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
25d35099ae19 drm/i915/uncore: split the fw get function into separate vfunc
5f03d3269e3b drm/i915/pm: drop get_fifo_size vfunc.
24df6bfbd0d7 drm/i915: make update_wm take a dev_priv.
d4b95ca78a50 drm/i915/wm: provide wrappers around watermark vfuncs calls (v3)
-:10: WARNING:TYPO_SPELLING: 'existance' may be misspelled - perhaps 'existence'?
#10: 
One thing to note is that the code checks the existance of some
                                              ^^^^^^^^^

-:31: CHECK:LINE_SPACING: Please don't use multiple blank lines
#31: FILE: drivers/gpu/drm/i915/display/intel_display.c:129:
 
+

-:75: WARNING:LINE_SPACING: Missing a blank line after declarations
#75: FILE: drivers/gpu/drm/i915/display/intel_display.c:173:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.compute_pipe_wm)

-:84: WARNING:LINE_SPACING: Missing a blank line after declarations
#84: FILE: drivers/gpu/drm/i915/display/intel_display.c:182:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (!dev_priv->display.compute_intermediate_wm)

-:96: WARNING:LINE_SPACING: Missing a blank line after declarations
#96: FILE: drivers/gpu/drm/i915/display/intel_display.c:194:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.initial_watermarks) {

-:107: WARNING:LINE_SPACING: Missing a blank line after declarations
#107: FILE: drivers/gpu/drm/i915/display/intel_display.c:205:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.atomic_update_watermarks)

-:115: WARNING:LINE_SPACING: Missing a blank line after declarations
#115: FILE: drivers/gpu/drm/i915/display/intel_display.c:213:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.optimize_watermarks)

-:122: WARNING:LINE_SPACING: Missing a blank line after declarations
#122: FILE: drivers/gpu/drm/i915/display/intel_display.c:220:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.compute_global_watermarks)

-:137: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 20)
#137: FILE: drivers/gpu/drm/i915/display/intel_display.c:2636:
+		if (!intel_initial_watermarks(state, crtc))
+		    if (new_crtc_state->update_wm_pre)

-:138: WARNING:TABSTOP: Statements should start on a tabstop
#138: FILE: drivers/gpu/drm/i915/display/intel_display.c:2637:
+		    if (new_crtc_state->update_wm_pre)

-:179: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 12)
#179: FILE: drivers/gpu/drm/i915/display/intel_display.c:3680:
+	if (!intel_initial_watermarks(state, crtc))
+	    intel_update_watermarks(dev_priv);

total: 0 errors, 10 warnings, 1 checks, 318 lines checked
d3c4c93bef02 drm/i915: add wrappers around cdclk vtable funcs.
-:32: WARNING:LINE_SPACING: Missing a blank line after declarations
#32: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:71:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	return dev_priv->display.bw_calc_min_cdclk(state);

total: 0 errors, 1 warnings, 0 checks, 127 lines checked
c4b0939b010d drm/i915/display: add intel_fdi_link_train wrapper.
9d3f3b043262 drm/i915: split clock gating init from display vtable
8df3e5e24fe7 drm/i915: split watermark vfuncs from display vtable.
80ba7c9dbea7 drm/i915: split color functions from display vtable
a81f8a74d4b1 drm/i915: split audio functions from display vtable
3ae5dbfc9499 drm/i915: split cdclk functions from display vtable.
6e370e4bdfb0 drm/i915: split irq hotplug function from display vtable
79b631289768 drm/i915: split fdi link training from display vtable.
0395cf21d5df drm/i915: split the dpll clock compute out from display vtable.
d526b29f70d4 drm/i915: constify fdi link training vtable
6827900a4832 drm/i915: constify hotplug function vtable.
096e5c68a7c4 drm/i915: constify color function vtable.
-:197: CHECK:BRACES: Unbalanced braces around else statement
#197: FILE: drivers/gpu/drm/i915/display/intel_color.c:2194:
+		} else

total: 0 errors, 0 warnings, 1 checks, 187 lines checked
a78732944517 drm/i915: constify the audio function vtable
ddb35a2f7d67 drm/i915: constify the dpll clock vtable
878a6d800e78 drm/i915: constify the cdclk vtable
b7681cd2bcf8 drm/i915: drop unused function ptr and comments.
f29192572174 drm/i915: constify display function vtable
19f4875109d1 drm/i915: constify clock gating init vtable.
3b9c79bb2e0a drm/i915: constify display wm vtable


