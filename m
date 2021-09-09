Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DB840436C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 04:07:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54EAE6E420;
	Thu,  9 Sep 2021 02:07:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B5D646E420;
 Thu,  9 Sep 2021 02:07:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5570A7DFC;
 Thu,  9 Sep 2021 02:07:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Sep 2021 02:07:55 -0000
Message-ID: <163115327563.16811.15547836418020234166@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210909015322.2988500-1-airlied@gmail.com>
In-Reply-To: <20210909015322.2988500-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915/display=3A_split_and_constify_vtable_=28rev3=29?=
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

Series: i915/display: split and constify vtable (rev3)
URL   : https://patchwork.freedesktop.org/series/94459/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a76b5174980a drm/i915/pm: drop get_fifo_size vfunc.
a40a1ce2eb04 drm/i915: make update_wm take a dev_priv.
c888ddf45e84 drm/i915/wm: provide wrappers around watermark vfuncs calls
-:9: WARNING:TYPO_SPELLING: 'existance' may be misspelled - perhaps 'existence'?
#9: 
One thing to note is that the code checks the existance of some
                                              ^^^^^^^^^

-:24: CHECK:LINE_SPACING: Please don't use multiple blank lines
#24: FILE: drivers/gpu/drm/i915/display/intel_display.c:129:
 
+

-:68: WARNING:LINE_SPACING: Missing a blank line after declarations
#68: FILE: drivers/gpu/drm/i915/display/intel_display.c:173:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.compute_pipe_wm)

-:77: WARNING:LINE_SPACING: Missing a blank line after declarations
#77: FILE: drivers/gpu/drm/i915/display/intel_display.c:182:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (drm_WARN_ON(&dev_priv->drm,

-:89: WARNING:LINE_SPACING: Missing a blank line after declarations
#89: FILE: drivers/gpu/drm/i915/display/intel_display.c:194:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.initial_watermarks) {

-:100: WARNING:LINE_SPACING: Missing a blank line after declarations
#100: FILE: drivers/gpu/drm/i915/display/intel_display.c:205:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.atomic_update_watermarks)

-:108: WARNING:LINE_SPACING: Missing a blank line after declarations
#108: FILE: drivers/gpu/drm/i915/display/intel_display.c:213:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.optimize_watermarks)

-:115: WARNING:LINE_SPACING: Missing a blank line after declarations
#115: FILE: drivers/gpu/drm/i915/display/intel_display.c:220:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	if (dev_priv->display.compute_global_watermarks)

-:129: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 20)
#129: FILE: drivers/gpu/drm/i915/display/intel_display.c:2626:
+		if (!intel_initial_watermarks(state, crtc))
+		    if (new_crtc_state->update_wm_pre)

-:130: WARNING:TABSTOP: Statements should start on a tabstop
#130: FILE: drivers/gpu/drm/i915/display/intel_display.c:2627:
+		    if (new_crtc_state->update_wm_pre)

-:171: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 12)
#171: FILE: drivers/gpu/drm/i915/display/intel_display.c:3670:
+	if (!intel_initial_watermarks(state, crtc))
+	    intel_update_watermarks(dev_priv);

total: 0 errors, 10 warnings, 1 checks, 319 lines checked
a3202c80554b drm/i915: add wrappers around cdclk vtable funcs.
-:30: WARNING:LINE_SPACING: Missing a blank line after declarations
#30: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:71:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	return dev_priv->display.bw_calc_min_cdclk(state);

total: 0 errors, 1 warnings, 0 checks, 127 lines checked
19bf5164731c drm/i915/display: add intel_fdi_link_train wrapper.
a794c1c9815e drm/i915: split clock gating init from display vtable
34a4acfe78be drm/i915: split watermark vfuncs from display vtable.
31adf6b0768e drm/i915: split color functions from display vtable
b702ff45c5cf drm/i915: split audio functions from display vtable
c572b0d86bf1 drm/i915: split cdclk functions from display vtable.
746f0aa2ec41 drm/i915: split irq hotplug function from display vtable
bffd1d2d4374 drm/i915: split fdi link training from display vtable.
69f8232ae750 drm/i915: split the dpll clock compute out from display vtable.
acb8f8b85236 drm/i915: constify fdi link training vtable
e083e0f99097 drm/i915: constify hotplug function vtable.
7e992c904e0f drm/i915: constify color function vtable.
-:196: CHECK:BRACES: Unbalanced braces around else statement
#196: FILE: drivers/gpu/drm/i915/display/intel_color.c:2194:
+		} else

total: 0 errors, 0 warnings, 1 checks, 187 lines checked
aae8c1731860 drm/i915: constify the audio function vtable
7dbce2d6cbf9 drm/i915: constify the dpll clock vtable
7b51b6fedb49 drm/i915: constify the cdclk vtable
c1efc73c0417 drm/i915: drop unused function ptr and comments.
70f608995c29 drm/i915: constify display function vtable
90e8b85e828a drm/i915: constify clock gating init vtable.
23ee99724f55 drm/i915: constify display wm vtable


