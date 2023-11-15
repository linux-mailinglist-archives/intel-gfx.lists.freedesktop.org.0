Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4031E7EC40C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 14:48:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0057010E54E;
	Wed, 15 Nov 2023 13:48:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3849A10E06B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 13:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700056128; x=1731592128;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mtLkTMH4IXfLoy0XMQc3fJaXeQ66gAscppCdmAKnHio=;
 b=Vtp1mmsj+9fRXSn2RCgYOmDO6bYGNmYDUMOXpk/7p34GH170cH8PZIWo
 bqnZ0NRMDQAn3q9U3Yzq43454qOBVdWSFlPPWdh7ORNoM+lE8wmek8e5B
 7ccqqUKY91TrYbxEYVpePJyDOwaTjdWbjXVbuWShLTzpv9t6z4KdBpi8q
 Ed1DgT9eJNolDOxRZng7bvqyWeOuR0gw0ORaZwtrTWsfoN6B+E1QvQLac
 Y9zWut4E7ArE2SA94xpIPp37ooF5IVAIALdp7G+qkw0y8PSKI4TylPXxL
 5e8ZWp6DK5BajgAqat5MByRi7YHJYF7C4SWpQnvdeSESqPsRuedl4cyZF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="421975299"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="421975299"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 05:48:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; 
   d="scan'208";a="6170512"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 15 Nov 2023 05:48:46 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Nov 2023 19:13:26 +0530
Message-Id: <20231115134326.3794326-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231115134326.3794326-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20231115134326.3794326-1-mitulkumar.ajitkumar.golani@intel.com>
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
Cc: jani.nikula@intel.com, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Compute Fixed Average Vtotal/CMRR with resepect to
userspace VRR enablement. Also calculate required
parameters in case of CMRR is  enabled. During
intel_vrr_compute_config, CMRR is getting enabled
based on userspace has enabled Adaptive Sync Vtotal
mode (Legacy VRR) or not.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 76 +++++++++++++++++--
 3 files changed, 72 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ae7cc4eca064..7e38ac4d6185 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5482,6 +5482,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
index 6da14c18a3e3..ab124e997ef2 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -105,6 +105,52 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
 	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
 }
 
+static bool
+is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
+{
+	int calculated_refresh_k, actual_refresh_k;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	actual_refresh_k = drm_mode_vrefresh(adjusted_mode) * 1000;
+	calculated_refresh_k = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
+					    adjusted_mode->crtc_htotal) * 1000;
+	calculated_refresh_k /= adjusted_mode->crtc_vtotal;
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
@@ -149,6 +195,22 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
 
+	/*
+	 * When panel is VRR capable and userspace has
+	 * not enabled adaptive sync mode then Fixed Average
+	 * Vtotal mode should be enabled.
+	 */
+	if (crtc_state->uapi.vrr_enabled) {
+		crtc_state->vrr.enable = true;
+		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+	} else if (HAS_CMRR(i915)) {
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
@@ -161,11 +223,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
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
@@ -292,7 +349,14 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
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

