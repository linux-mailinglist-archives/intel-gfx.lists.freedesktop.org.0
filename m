Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 041608913CF
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 07:36:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 674DA10FF84;
	Fri, 29 Mar 2024 06:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BC9210FF29;
 Fri, 29 Mar 2024 06:36:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Bigjoine?=
 =?utf-8?q?r_modeset_sequence_redesign_and_MST_support?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Mar 2024 06:36:19 -0000
Message-ID: <171169417930.1066424.4023880883095078148@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Bigjoiner modeset sequence redesign and MST support
URL   : https://patchwork.freedesktop.org/series/131797/
State : warning

== Summary ==

Error: dim checkpatch failed
e16878b1bab4 drm/i915: Disable port sync when bigjoiner is used
61c083f1c409 drm/i915: Fix intel_modeset_pipe_config_late() for bigjoiner
1aa3af74a9d0 drm/i915: Disable live M/N updates when using bigjoiner
ad332ec89a89 drm/i915/vrr: Disable VRR when using bigjoiner
8b8444a6ba01 drm/i915: Remove DRM_MODE_FLAG_DBLSCAN checks from .mode_valid() hooks
362e5e731e81 drm/i915: Shuffle DP .mode_valid() checks
1444552d5c6d drm/i915: Clean up glk_pipe_scaler_clock_gating_wa()
f2e6bb1a86be drm/i915: Extract glk_need_scaler_clock_gating_wa()
1491dc535f89 drm/i915: s/intel_dp_can_bigjoiner()/intel_dp_can_bigjoiner()/
ee621ace7952 drm/i915: Extract intel_dp_joiner_needs_dsc()
174432877eba drm/i915/mst: Check intel_dp_joiner_needs_dsc()
ace6f95b242c drm/i915: Pass connector to intel_dp_need_bigjoiner()
5ed89467f1ba drm/i915/mst: Limit MST+DSC to TGL+
-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:50:
+#define HAS_DSC_MST(__i915)		(DISPLAY_VER(__i915) >= 12 && HAS_DSC(__i915))

total: 0 errors, 0 warnings, 1 checks, 15 lines checked
9744ad3477c4 drm/i915/mst: Reject FEC+MST on ICL
1db4f49a585d drm/i915: Introduce intel_crtc_joined_pipe_mask()
6c093161ac46 drm/i915: Extract intel_ddi_post_disable_hdmi_or_sst()
72b9ca566c34 drm/i915: Utilize intel_crtc_joined_pipe_mask() more
19408352066d drm/i915: Handle joined pipes inside hsw_crtc_disable()
6b16be7b50ff drm/i915: Handle joined pipes inside hsw_crtc_enable()
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
427daade2d7c drm/i915/mst: Add bigjoiner handling to MST modeset sequence
409107225cb5 drm/i915: Allow bigjoiner for MST
4bf8e6c9ef2c drm/i915: Use debugfs_create_bool() for "i915_bigjoiner_force_enable"


