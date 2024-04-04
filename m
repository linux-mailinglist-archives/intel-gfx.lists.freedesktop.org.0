Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A67389911A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 00:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0EC1135D4;
	Thu,  4 Apr 2024 22:16:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2C7C1135D4;
 Thu,  4 Apr 2024 22:16:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Bigjoine?=
 =?utf-8?q?r_modeset_sequence_redesign_and_MST_support_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 04 Apr 2024 22:16:26 -0000
Message-ID: <171226898692.1221226.13315659819897993293@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Bigjoiner modeset sequence redesign and MST support (rev2)
URL   : https://patchwork.freedesktop.org/series/131797/
State : warning

== Summary ==

Error: dim checkpatch failed
f817bfecf2ae drm/i915: Update pipes in reverse order for bigjoiner
-:86: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#86: FILE: drivers/gpu/drm/i915/display/intel_display.h:347:
+#define for_each_new_intel_crtc_in_state_reverse(__state, crtc, new_crtc_state, __i) \
+	for ((__i) = (__state)->base.dev->mode_config.num_crtc - 1; \
+	     (__i) >= 0  && \
+	     ((crtc) = to_intel_crtc((__state)->base.crtcs[__i].ptr), \
+	      (new_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].new_state), 1); \
+	     (__i)--) \
+		for_each_if(crtc)

-:86: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'crtc' - possible side-effects?
#86: FILE: drivers/gpu/drm/i915/display/intel_display.h:347:
+#define for_each_new_intel_crtc_in_state_reverse(__state, crtc, new_crtc_state, __i) \
+	for ((__i) = (__state)->base.dev->mode_config.num_crtc - 1; \
+	     (__i) >= 0  && \
+	     ((crtc) = to_intel_crtc((__state)->base.crtcs[__i].ptr), \
+	      (new_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].new_state), 1); \
+	     (__i)--) \
+		for_each_if(crtc)

-:86: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#86: FILE: drivers/gpu/drm/i915/display/intel_display.h:347:
+#define for_each_new_intel_crtc_in_state_reverse(__state, crtc, new_crtc_state, __i) \
+	for ((__i) = (__state)->base.dev->mode_config.num_crtc - 1; \
+	     (__i) >= 0  && \
+	     ((crtc) = to_intel_crtc((__state)->base.crtcs[__i].ptr), \
+	      (new_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].new_state), 1); \
+	     (__i)--) \
+		for_each_if(crtc)

total: 0 errors, 0 warnings, 3 checks, 40 lines checked
1c096c7c7f11 drm/i915/psr: Disable PSR when bigjoiner is used
92634f79c716 drm/i915: Disable port sync when bigjoiner is used
5ccab6f2d622 drm/i915: Disable live M/N updates when using bigjoiner
4c078f970c6d drm/i915/vrr: Disable VRR when using bigjoiner
b5c1397ace26 drm/i915: Fix intel_modeset_pipe_config_late() for bigjoiner
475267775ae9 drm/i915: s/intel_dp_can_bigjoiner()/intel_dp_has_bigjoiner()/
3a923fd6f3c7 drm/i915: Extract intel_dp_joiner_needs_dsc()
cda03d83a42d drm/i915/mst: Check intel_dp_joiner_needs_dsc()
8f9d67357dbc drm/i915: Pass connector to intel_dp_need_bigjoiner()
5d9d0c9c8d82 drm/i915: Introduce intel_crtc_joined_pipe_mask()
32258cb98972 drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
a553727cc947 drm/i915: Utilize intel_crtc_joined_pipe_mask() more
ae82df63aaca drm/i915: Handle joined pipes inside hsw_crtc_disable()
657f77a42177 drm/i915: Handle joined pipes inside hsw_crtc_enable()
-:11: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#11: 
That way we can also remove a bunch of checks like intel_crtc_is_bigjoiner_slave.

-:320: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#320: FILE: drivers/gpu/drm/i915/display/intel_display.h:283:
+#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc, pipe_mask)	\
+	list_for_each_entry_reverse((intel_crtc),				\
+				    &(dev)->mode_config.crtc_list,		\
+				    base.head)					\
+		for_each_if((pipe_mask) & BIT((intel_crtc)->pipe))

-:320: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_crtc' - possible side-effects?
#320: FILE: drivers/gpu/drm/i915/display/intel_display.h:283:
+#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc, pipe_mask)	\
+	list_for_each_entry_reverse((intel_crtc),				\
+				    &(dev)->mode_config.crtc_list,		\
+				    base.head)					\
+		for_each_if((pipe_mask) & BIT((intel_crtc)->pipe))

total: 1 errors, 1 warnings, 1 checks, 275 lines checked
9c057ae8d3d2 drm/i915/mst: Add bigjoiner handling to MST modeset sequence
780db11dbe03 drm/i915: Allow bigjoiner for MST


