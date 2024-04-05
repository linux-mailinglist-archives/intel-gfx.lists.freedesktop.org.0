Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 344BC8992E0
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 03:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 408991137A2;
	Fri,  5 Apr 2024 01:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BBDE1137A2;
 Fri,  5 Apr 2024 01:46:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Bigjoine?=
 =?utf-8?q?r_modeset_sequence_redesign_and_MST_support_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 05 Apr 2024 01:46:19 -0000
Message-ID: <171228157950.1226867.13040732492424693067@8e613ede5ea5>
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

Series: drm/i915: Bigjoiner modeset sequence redesign and MST support (rev3)
URL   : https://patchwork.freedesktop.org/series/131797/
State : warning

== Summary ==

Error: dim checkpatch failed
64805a6e8087 drm/i915: Update pipes in reverse order for bigjoiner
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
109ce10fb958 drm/i915/psr: Disable PSR when bigjoiner is used
092a582e7793 drm/i915: Disable port sync when bigjoiner is used
ab6f55f1c1f9 drm/i915: Disable live M/N updates when using bigjoiner
b8d2a8a7126c drm/i915/vrr: Disable VRR when using bigjoiner
8cf2e8910507 drm/i915: Fix intel_modeset_pipe_config_late() for bigjoiner
31c625608506 drm/i915: s/intel_dp_can_bigjoiner()/intel_dp_has_bigjoiner()/
b75e532ae3f2 drm/i915: Extract intel_dp_joiner_needs_dsc()
43196b2562b6 drm/i915/mst: Check intel_dp_joiner_needs_dsc()
4ed822db08f4 drm/i915: Pass connector to intel_dp_need_bigjoiner()
07fd4e245f9e drm/i915: Introduce intel_crtc_joined_pipe_mask()
77c9494e9ab0 drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
0a8a9cd81700 drm/i915: Utilize intel_crtc_joined_pipe_mask() more
fe7a5e821875 drm/i915: Handle joined pipes inside hsw_crtc_disable()
cf1c9bf0f176 drm/i915: Handle joined pipes inside hsw_crtc_enable()
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
aedefafbd992 drm/i915/mst: Add bigjoiner handling to MST modeset sequence
68f275de39a5 drm/i915: Allow bigjoiner for MST


