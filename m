Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DFC8CE42E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 12:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FF3C10E882;
	Fri, 24 May 2024 10:30:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CO9297SO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FD6510E8F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 10:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716546626; x=1748082626;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TXB0mRuVTBGEKbrfsPIkXBNtNMdqTjq2l3azdj/Wxag=;
 b=CO9297SOEGZlJGGd4Q1EFtIaWHVNLXIGVU1YOX1NeLyfxFjxJ3/Hg+11
 fyTN6bWID2bA3XkqdZgH8W9Z5DSDvUc8xsUg23ASV53zbifMlxdvNlDNf
 apf04p1mHYP5Sg81UUlly0zB4Ns6b0LmZ6cXPSNLjPhSvHcesJEMc3R3i
 yC7Mwccke0z0RnCKvAXqN68ZYCTksgHd89jymu1vCH6ENJVHy/4x5+bg9
 /WvpLx1zpEOIYV3zjEOwogLCidTwgQmD5Ty2m3j2BxpI+7oy4XDHKWc3T
 kTEi7Z34FscMxgp2Z3XX2cZWiinExUFCtahcburd0nhapOxjhiPX/BdX/ Q==;
X-CSE-ConnectionGUID: JxcOO7IzSbO3IJFvQsnYmA==
X-CSE-MsgGUID: 2bHjXiR+QC2LuFIOMsZcGw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="15862720"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="15862720"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 03:30:18 -0700
X-CSE-ConnectionGUID: WjWrUTCHREeNEcg0CQ/uUA==
X-CSE-MsgGUID: XF0UmneeQx6QRU0wktVhZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="71385665"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 24 May 2024 03:30:17 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v9 3/8] drm/i915: Compute CMRR and calculate vtotal
Date: Fri, 24 May 2024 15:54:27 +0530
Message-Id: <20240524102432.2499104-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
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
based on userspace has enabled Variable refresh mode
with VRR timing generator or not. Make CMRR as small subset of
FAVT mode, when Panel is running on Fixed refresh rate
and on VRR framework then only enable CMRR to match with
actual refresh rate.

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

--v6:
- Make CMRR a small subset of FAVT mode.

--v7:
- Update commit message to avoid confusion with Legacy VRR (Ankit).
- Add cmrr.enable in last, so remove from this patch.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 99 ++++++++++++++++---
 3 files changed, 89 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 803360fcb0cc..f7e82d1e2bf9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5437,6 +5437,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(vrr.vsync_end);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
+		PIPE_CONF_CHECK_BOOL(cmrr.enable);
 	}
 
 #undef PIPE_CONF_CHECK_X
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 17ddf82f0b6e..b372b1acc19b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -71,6 +71,7 @@ struct drm_printer;
 					  BIT(trans)) != 0)
 #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
 #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
+#define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
 #define INTEL_NUM_PIPES(i915)		(hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
 #define I915_HAS_HOTPLUG(i915)		(DISPLAY_INFO(i915)->has_hotplug)
 #define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)->overlay_needs_physical)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3b250e92af98..3fbedd7366bb 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -12,6 +12,9 @@
 #include "intel_vrr_reg.h"
 #include "intel_dp.h"
 
+#define FIXED_POINT_PRECISION		100
+#define CMRR_PRECISION_TOLERANCE	10
+
 bool intel_vrr_is_capable(struct intel_connector *connector)
 {
 	const struct drm_display_info *info = &connector->base.display_info;
@@ -107,6 +110,59 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
 	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
 }
 
+static bool
+is_cmrr_frac_required(struct intel_crtc_state *crtc_state, bool is_edp)
+{
+	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	if (!(HAS_CMRR(i915) && is_edp))
+		return false;
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
+	multiplier_m = 1001;
+	multiplier_n = 1000;
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
@@ -116,6 +172,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	bool is_edp = intel_dp_is_edp(intel_dp);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	const struct drm_display_info *info = &connector->base.display_info;
 	int vmin, vmax;
@@ -160,18 +217,10 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
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
@@ -183,6 +232,25 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 				(crtc_state->hw.adjusted_mode.crtc_vtotal -
 					crtc_state->hw.adjusted_mode.vsync_end);
 		}
+	} else if (is_cmrr_frac_required(crtc_state, is_edp)) {
+		crtc_state->vrr.enable = true;
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
 
@@ -323,7 +391,14 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	trans_vrr_ctl = intel_de_read(dev_priv,
 				      TRANS_VRR_CTL(dev_priv, cpu_transcoder));
 
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

