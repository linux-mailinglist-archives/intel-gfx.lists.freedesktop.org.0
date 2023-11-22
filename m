Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 368977F3E8F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 08:04:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2258210E5D7;
	Wed, 22 Nov 2023 07:04:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8A7E10E5A1
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 07:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700636669; x=1732172669;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DNoB+q/jOw7Nm7NQyaI4A6Le4RYXcnnJCpjeKpMuUZo=;
 b=TkVwnKJR41OKILr8v9Z6P+uLV3aYAyT1hE4em3eE32JDI051ZLTu1rmd
 iaGdH/gZQdRXiPE2O0AEuln6fJD+bbedCuHhkHjyJ/mG4kzkiaDdF9mYn
 530n5FkBVW3eZ/xHv7+isAI4cJS0QiMCSE/T6LQAE8A16hVMfVvkRGdjs
 SvVqUO0Ssm1j0wnWY2XD3Xxeeni0bs6ONLvckPBsYQbTV+tr85Zcb1fqq
 WefMTcZwcBbrK3CrImMccOEPQGBEsHLxNSq/rYcJhXIElMykRdDrFfqHa
 WL7p3ueiiYJK1lrBmnWphonaB1zfknsF0wY2bS/M+rGXWgJjmGQJGOUCf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="13548266"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="13548266"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 23:04:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="910704605"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="910704605"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga001.fm.intel.com with ESMTP; 21 Nov 2023 23:04:28 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Nov 2023 12:29:26 +0530
Message-Id: <20231122065926.4076690-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231122065926.4076690-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20231122065926.4076690-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Compute CMRR and calculate vtotal
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 79 +++++++++++++++++--
 3 files changed, 75 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d54b629c5379..5f12c7b3c404 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5289,6 +5289,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(vrr.guardband);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
+		PIPE_CONF_CHECK_BOOL(cmrr.enable);
 	}
 
 #undef PIPE_CONF_CHECK_X
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 4299cc452e05..66cbc3a6bbe8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -68,6 +68,7 @@ struct drm_printer;
 #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
 					  BIT(trans)) != 0)
 #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
+#define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
 #define INTEL_NUM_PIPES(i915)		(hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
 #define I915_HAS_HOTPLUG(i915)		(DISPLAY_INFO(i915)->has_hotplug)
 #define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)->overlay_needs_physical)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 8f1d241e1f79..db01cfe206d3 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -9,6 +9,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_vrr.h"
+#include "intel_dp.h"
 
 bool intel_vrr_is_capable(struct intel_connector *connector)
 {
@@ -105,6 +106,53 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
 	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
 }
 
+static bool
+is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
+{
+	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	actual_refresh_k = drm_mode_vrefresh(adjusted_mode) * 1000;
+	pixel_clock_per_line =
+		adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
+	calculated_refresh_k =
+		pixel_clock_per_line * 1000 / adjusted_mode->crtc_vtotal;
+
+	if (calculated_refresh_k == actual_refresh_k)
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
+	long long actual_pixel_rate, adjusted_pixel_rate;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	actual_refresh_rate = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
+					   adjusted_mode->crtc_htotal) * 1000;
+	actual_refresh_rate /= adjusted_mode->crtc_vtotal;
+	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
+	actual_pixel_rate = actual_refresh_rate * adjusted_mode->crtc_vtotal;
+	actual_pixel_rate = (actual_pixel_rate * adjusted_mode->crtc_htotal) / 1000;
+
+	if (is_cmrr_frac_required(crtc_state)) {
+		multiplier_m = 1001;
+		multiplier_n = 1000;
+	}
+
+	crtc_state->cmrr.cmrr_n = DIV_ROUND_UP(desired_refresh_rate *
+			adjusted_mode->crtc_htotal * multiplier_n, multiplier_m) * multiplier_n;
+	vtotal = DIV_ROUND_UP(actual_pixel_rate * multiplier_n, crtc_state->cmrr.cmrr_n);
+	adjusted_pixel_rate = actual_pixel_rate * multiplier_m;
+	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
+
+	return vtotal;
+}
+
 void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
@@ -113,6 +161,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
+	bool is_edp = intel_dp_is_edp(intel_attached_dp(connector));
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	const struct drm_display_info *info = &connector->base.display_info;
 	int vmin, vmax;
@@ -149,6 +198,22 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
 
+	/*
+	 * When panel is VRR capable and userspace has
+	 * not enabled adaptive sync mode then Fixed Average
+	 * Vtotal mode should be enabled.
+	 */
+	if (crtc_state->uapi.vrr_enabled) {
+		crtc_state->vrr.enable = true;
+		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+	} else if (HAS_CMRR(i915) && is_edp) {
+		crtc_state->cmrr.enable = true;
+		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state);
+		crtc_state->vrr.vmin = crtc_state->vrr.vmax;
+		crtc_state->vrr.flipline = crtc_state->vrr.vmin;
+		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+	}
+
 	/*
 	 * For XE_LPD+, we use guardband and pipeline override
 	 * is deprecated.
@@ -161,11 +226,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
 			    crtc_state->framestart_delay - 1);
 	}
-
-	if (crtc_state->uapi.vrr_enabled) {
-		crtc_state->vrr.enable = true;
-		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
-	}
 }
 
 static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
@@ -292,7 +352,14 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
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

