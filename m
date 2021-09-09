Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F74B4042F7
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 03:42:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85B2B6E40A;
	Thu,  9 Sep 2021 01:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA4F46E40A;
 Thu,  9 Sep 2021 01:42:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D31E5A66C9;
 Thu,  9 Sep 2021 01:42:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Sep 2021 01:42:00 -0000
Message-ID: <163115172083.16810.248197512209643492@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210909011100.2987971-1-airlied@gmail.com>
In-Reply-To: <20210909011100.2987971-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915/display=3A_split_and_constify_vtable_=28rev2=29?=
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

Series: i915/display: split and constify vtable (rev2)
URL   : https://patchwork.freedesktop.org/series/94459/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
861185f462cb drm/i915/pm: drop get_fifo_size vfunc.
0128f0dd02e7 drm/i915: make update_wm take a dev_priv.
6736ec4f3d7c drm/i915/wm: provide wrappers around watermark vfuncs calls
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
d4355a1ab8b5 drm/i915: add wrappers around cdclk vtable funcs.
-:30: WARNING:LINE_SPACING: Missing a blank line after declarations
#30: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:71:
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	return dev_priv->display.bw_calc_min_cdclk(state);

total: 0 errors, 1 warnings, 0 checks, 127 lines checked
50c640da1629 drm/i915/display: add intel_fdi_link_train wrapper.
8f69042761b2 drm/i915: split clock gating init from display vtable
c398feb04b80 drm/i915: split watermark vfuncs from display vtable.
15521fe74480 drm/i915: split color functions from display vtable
e7e7cb2df965 drm/i915: split audio functions from display vtable
293f7a3cd1ee drm/i915: split cdclk functions from display vtable.
833a11509155 drm/i915: split irq hotplug function from display vtable
e47bebd1891f drm/i915: split fdi link training from display vtable.
db3b4508c591 drm/i915: split the dpll clock compute out from display vtable.
34025d57fe46 drm/i915: constify fdi link training vtable
344a6d43dbcf drm/i915: constify hotplug function vtable.
31b6e09af8a9 drm/i915: constify color function vtable.
-:196: CHECK:BRACES: Unbalanced braces around else statement
#196: FILE: drivers/gpu/drm/i915/display/intel_color.c:2194:
+		} else

total: 0 errors, 0 warnings, 1 checks, 187 lines checked
75a66a44f968 drm/i915: constify the audio function vtable
15b1d958a0f9 drm/i915: constify the dpll clock vtable
d9a59612ea5b drm/i915: constify the cdclk vtable
847e28dad4f3 drm/i915: drop unused function ptr and comments.
49a26c76173c drm/i915: constify display function vtable
fecaefd7d43d drm/i915: constify clock gating init vtable.
95a2f0fcea26 drm/i915: constify display wm vtable


