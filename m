Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0364140B737
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 20:53:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4F8F6E57E;
	Tue, 14 Sep 2021 18:53:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EC41E6E57E;
 Tue, 14 Sep 2021 18:53:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E48E2A00FD;
 Tue, 14 Sep 2021 18:53:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Sep 2021 18:53:13 -0000
Message-ID: <163164559390.3455.7165889626354280257@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1631643729.git.jani.nikula@intel.com>
In-Reply-To: <cover.1631643729.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915/display=3A_split_and_constify_vtable_=28rev4=29?=
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

Series: i915/display: split and constify vtable (rev4)
URL   : https://patchwork.freedesktop.org/series/94459/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5757b633382c drm/i915/uncore: split the fw get function into separate vfunc
09e6590ba72b drm/i915/pm: drop get_fifo_size vfunc.
532203cca59e drm/i915: make update_wm take a dev_priv.
7f1eb33ee2d3 drm/i915/wm: provide wrappers around watermark vfuncs calls (v2)
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
#134: FILE: drivers/gpu/drm/i915/display/intel_display.c:2626:
+		if (!intel_initial_watermarks(state, crtc))
+		    if (new_crtc_state->update_wm_pre)

-:135: WARNING:TABSTOP: Statements should start on a tabstop
#135: FILE: drivers/gpu/drm/i915/display/intel_display.c:2627:
+		    if (new_crtc_state->update_wm_pre)

-:176: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 12)
#176: FILE: drivers/gpu/drm/i915/display/intel_display.c:3670:
+	if (!intel_initial_watermarks(state, crtc))
+	    intel_update_watermarks(dev_priv);

total: 0 errors, 10 warnings, 1 checks, 319 lines checked
7e93339a1e25 drm/i915: add wrappers around cdclk vtable funcs.
-:32: WARNING:LINE_SPACING: Missing a blank line after declarations
#32: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:71:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	return dev_priv->display.bw_calc_min_cdclk(state);

total: 0 errors, 1 warnings, 0 checks, 127 lines checked
7873e633826d drm/i915/display: add intel_fdi_link_train wrapper.
b2dd5cb088f2 drm/i915: split clock gating init from display vtable
6635d9b3245f drm/i915: split watermark vfuncs from display vtable.
0dabe5abfea3 drm/i915: split color functions from display vtable
ebb933ee9c8b drm/i915: split audio functions from display vtable
99eb443d286e drm/i915: split cdclk functions from display vtable.
4bce65343710 drm/i915: split irq hotplug function from display vtable
baae6f392081 drm/i915: split fdi link training from display vtable.
44184a20e800 drm/i915: split the dpll clock compute out from display vtable.
10058e725cab drm/i915: constify fdi link training vtable
d1ba54b243d4 drm/i915: constify hotplug function vtable.
f8f1a39c8a95 drm/i915: constify color function vtable.
-:197: CHECK:BRACES: Unbalanced braces around else statement
#197: FILE: drivers/gpu/drm/i915/display/intel_color.c:2194:
+		} else

total: 0 errors, 0 warnings, 1 checks, 187 lines checked
baa25b6c0efa drm/i915: constify the audio function vtable
cd63adc71d18 drm/i915: constify the dpll clock vtable
5b5fc1288374 drm/i915: constify the cdclk vtable
244d2f8bdb78 drm/i915: drop unused function ptr and comments.
143848d5704d drm/i915: constify display function vtable
a8bd650dbe3f drm/i915: constify clock gating init vtable.
d4004e4bb738 drm/i915: constify display wm vtable


