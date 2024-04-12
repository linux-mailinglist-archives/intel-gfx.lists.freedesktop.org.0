Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DA48A34E8
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 19:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2812110E43E;
	Fri, 12 Apr 2024 17:38:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Th3nuZkE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0589510E666
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 17:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712943489; x=1744479489;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8LjpwuqS8fbCVyT8e+k9OwG3BSsWfHJIPOVQXzqqVWc=;
 b=Th3nuZkEDm6Z7jRoaLZy4ObX7CyCjGEdsyqRfOYR3kHqtdYRVVtc2b2v
 /VSKhSFHNXfhPwuFRyb0F9Hnyuao2o9y6oU2BC8gY5WybRKGt4VrQ6V6Z
 NoKS5XxXX6TefBNyIi3q2NEbVX0+9SwnaZpAKVZJCKQhgG6tAUK5lFagB
 NiFHzBlmureROkfVhLKpjql0yb+QUAtOfUJKXFvchOJTwBQs5WGH9AS5N
 LZfGZXaqjSMTw9OAxxb5vAI95RCvPiQ+xNWyTsP/pVj2OBjmA1WC6li0Z
 3xEUGDbO1s0lN79DqbZwHd5AZ1ZvhjnSOFwpk3VV6avA5ICRlLzbsnHu1 w==;
X-CSE-ConnectionGUID: w9jBCpJIShi/cEjKtTg76w==
X-CSE-MsgGUID: ObTfoYjhTeGWTOeLfPXncA==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8513855"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8513855"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 10:38:09 -0700
X-CSE-ConnectionGUID: 4fMOUp/OSFu89aKQGd+jCA==
X-CSE-MsgGUID: j3XZpf0MTsOsc5U/wUpNdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21366078"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 12 Apr 2024 10:38:08 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915: Compute CMRR and calculate vtotal
Date: Fri, 12 Apr 2024 23:01:53 +0530
Message-Id: <20240412173153.722804-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240412173153.722804-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240412173153.722804-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Compute Fixed Average Vtotal/CMRR with resepect to
userspace VRR enablement. Also calculate required
parameters in case of CMRR is  enabled. During
intel_vrr_compute_config, CMRR is getting enabled
based on userspace has enabled Adaptive Sync Vtotal
mode (Legacy VRR) or not.

--v2:
- Update is_cmrr_frac_required function return as bool, not int. [Jani]
- Use signed int math instead of unsigned in cmrr_get_vtotal2. [Jani]
- Fix typo and usage of camel case in cmrr_get_vtotal. [Jani]
- Use do_div in cmrr_get_vtotalwhile calculating cmrr_m. [ Jani]
- Simplify cmrr and vrr compute config in intel_vrr_compute_config. [Jani]
- Correct valiable name usage in is_cmrr_frac_required. [Ville]

--v3:
- Removing RFC tag.

--v4:
- Added edp check to address edp usecase for now. (ville)
- Updated is_cmrr_fraction_required to more simplified calculation.
- on longterm goal to be worked upon uapi as suggestion from ville.

--v5:
- Correct vtotal paramas accuracy and add 2 digit precision.
- Avoid using DIV_ROUND_UP and improve scanline precision.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 97 ++++++++++++++++---
 3 files changed, 87 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 78d7d2505c15..15b9c5815c34 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5474,6 +5474,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(vrr.vsync_end);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
+		PIPE_CONF_CHECK_BOOL(cmrr.enable);
 	}
 
 #undef PIPE_CONF_CHECK_X
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 66b51de86e38..97d9ccd169ae 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -70,6 +70,7 @@ struct drm_printer;
 					  BIT(trans)) != 0)
 #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
 #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
+#define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
 #define INTEL_NUM_PIPES(i915)		(hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
 #define I915_HAS_HOTPLUG(i915)		(DISPLAY_INFO(i915)->has_hotplug)
 #define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)->overlay_needs_physical)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 369769e46c8d..546a689dd4fb 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -11,6 +11,9 @@
 #include "intel_vrr.h"
 #include "intel_dp.h"
 
+#define FIXED_POINT_PRECISION		100
+#define CMRR_PRECISION_TOLERANCE	10
+
 bool intel_vrr_is_capable(struct intel_connector *connector)
 {
 	const struct drm_display_info *info = &connector->base.display_info;
@@ -106,6 +109,57 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
 	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
 }
 
+static bool
+is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
+{
+	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	actual_refresh_k =
+		drm_mode_vrefresh(adjusted_mode) * FIXED_POINT_PRECISION;
+	pixel_clock_per_line =
+		adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
+	calculated_refresh_k =
+		pixel_clock_per_line * FIXED_POINT_PRECISION / adjusted_mode->crtc_vtotal;
+
+	if ((actual_refresh_k - calculated_refresh_k) < CMRR_PRECISION_TOLERANCE)
+		return false;
+
+	return true;
+}
+
+static unsigned int
+cmrr_get_vtotal(struct intel_crtc_state *crtc_state)
+{
+	int multiplier_m = 1, multiplier_n = 1, vtotal;
+	int actual_refresh_rate, desired_refresh_rate;
+	long long actual_pixel_rate, adjusted_pixel_rate, pixel_clock_per_line;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	pixel_clock_per_line =
+		adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
+	actual_refresh_rate =
+		pixel_clock_per_line * FIXED_POINT_PRECISION / adjusted_mode->crtc_vtotal;
+	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
+	actual_pixel_rate = actual_refresh_rate * adjusted_mode->crtc_vtotal;
+	actual_pixel_rate =
+		(actual_pixel_rate * adjusted_mode->crtc_htotal) / FIXED_POINT_PRECISION;
+
+	if (is_cmrr_frac_required(crtc_state)) {
+		multiplier_m = 1001;
+		multiplier_n = 1000;
+	}
+
+	crtc_state->cmrr.cmrr_n =
+		((desired_refresh_rate * adjusted_mode->crtc_htotal * multiplier_n) / multiplier_m);
+	crtc_state->cmrr.cmrr_n *= multiplier_n;
+	vtotal = (actual_pixel_rate * multiplier_n) / crtc_state->cmrr.cmrr_n;
+	adjusted_pixel_rate = actual_pixel_rate * multiplier_m;
+	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
+
+	return vtotal;
+}
+
 void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
@@ -115,6 +169,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	bool is_edp = intel_dp_is_edp(intel_dp);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	const struct drm_display_info *info = &connector->base.display_info;
 	int vmin, vmax;
@@ -159,18 +214,10 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
 
 	/*
-	 * For XE_LPD+, we use guardband and pipeline override
-	 * is deprecated.
+	 * When panel is VRR capable and userspace has
+	 * not enabled adaptive sync mode then Fixed Average
+	 * Vtotal mode should be enabled.
 	 */
-	if (DISPLAY_VER(i915) >= 13) {
-		crtc_state->vrr.guardband =
-			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
-	} else {
-		crtc_state->vrr.pipeline_full =
-			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
-			    crtc_state->framestart_delay - 1);
-	}
-
 	if (crtc_state->uapi.vrr_enabled) {
 		crtc_state->vrr.enable = true;
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
@@ -182,6 +229,25 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 				(crtc_state->hw.adjusted_mode.crtc_vtotal -
 					crtc_state->hw.adjusted_mode.vsync_end);
 		}
+	} else if (HAS_CMRR(i915) && is_edp) {
+		crtc_state->cmrr.enable = true;
+		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state);
+		crtc_state->vrr.vmin = crtc_state->vrr.vmax;
+		crtc_state->vrr.flipline = crtc_state->vrr.vmin;
+		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+	}
+
+	/*
+	 * For XE_LPD+, we use guardband and pipeline override
+	 * is deprecated.
+	 */
+	if (DISPLAY_VER(i915) >= 13) {
+		crtc_state->vrr.guardband =
+			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
+	} else {
+		crtc_state->vrr.pipeline_full =
+			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
+			    crtc_state->framestart_delay - 1);
 	}
 }
 
@@ -317,7 +383,14 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
 
-	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
+	if (HAS_CMRR(dev_priv)) {
+		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) &&
+					  (trans_vrr_ctl & VRR_CTL_VRR_ENABLE);
+		crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
+					 !(trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
+	} else {
+		crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
+	}
 
 	if (crtc_state->cmrr.enable) {
 		crtc_state->cmrr.cmrr_n =
-- 
2.25.1

