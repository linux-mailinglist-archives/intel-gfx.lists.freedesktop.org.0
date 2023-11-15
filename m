Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD6C7EBD21
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 07:36:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5A8010E4F2;
	Wed, 15 Nov 2023 06:36:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7952110E4F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 06:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700030169; x=1731566169;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kE+2zcXGYUWv1y7RGck+EaD+XS29P80okip7/sLWSxo=;
 b=HLeUcwKnOrt7ZH/MBV8zLpdKNgMdwiZFTgYiEuIffhbXsfQL6oVm3KE/
 5f1J+b3FI0TtQVpi9WkN0zxbl2Om7+eplipANtkbDeeaG4zWBf6PzoXQ9
 76QmXm33h5pcWz2SaMu6ogTH+rvDBXNV4YuotyC20f5gVJxE4/I9al+8l
 ZZN2Dxbs3K6fwNiuWCmws+HEGCdZz+fpW+d663+onf4dRCFq874Eg8fgM
 0Fy4Seb1ps0FD9M/6GT+R6ZFRZG97hbFJ8Bx7D3pt2bpW7B1xrEvv2TZ8
 x8Kj2bsSeBKrVI234EwXBk7YSfd5I1sGSSUZB12Gj/UJhXdbQXaITaaMM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="421919614"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="421919614"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 22:36:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="741336212"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="741336212"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2023 22:36:07 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Nov 2023 12:00:54 +0530
Message-Id: <20231115063054.3754600-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231115063054.3754600-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20231115063054.3754600-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 3/3] drm/i915: Compute CMRR and calculate vtotal
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
Cc: ville.syrjala@intel.com
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
 drivers/gpu/drm/i915/display/intel_vrr.c      | 81 +++++++++++++++++--
 3 files changed, 78 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f5a69309e65a..d61790f8ebb4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5479,6 +5479,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
index 1e33661062b3..4a056a71b68d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -105,6 +105,52 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
 	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
 }
 
+static int
+is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
+{
+	int target_refresh_k, actual_refresh_k;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	target_refresh_k = drm_mode_vrefresh(adjusted_mode) * 1000;
+	actual_refresh_k = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
+					adjusted_mode->crtc_htotal) * 1000;
+	actual_refresh_k /= adjusted_mode->crtc_vtotal;
+
+	if (actual_refresh_k == target_refresh_k)
+		return false;
+
+	return true;
+}
+
+static unsigned int
+cmrr_get_vtotal(struct intel_crtc_state *crtc_state)
+{
+	unsigned int muliplierM = 1, muliplierN = 1, vtotal;
+	unsigned int actual_refresh_rate, desired_refresh_rate;
+	unsigned long long actual_pixel_rate;
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
+		muliplierM = 1001;
+		muliplierN = 1000;
+	}
+
+	crtc_state->cmrr.cmrr_n = DIV_ROUND_UP(desired_refresh_rate *
+			adjusted_mode->crtc_htotal * muliplierN, muliplierM) * muliplierN;
+	vtotal = DIV_ROUND_UP(actual_pixel_rate * muliplierN, crtc_state->cmrr.cmrr_n);
+	crtc_state->cmrr.cmrr_m =
+		(actual_pixel_rate * muliplierM) % crtc_state->cmrr.cmrr_n;
+
+	return vtotal;
+}
+
 void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
@@ -149,6 +195,27 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
 
+	/*
+	 * When panel is VRR capable and userspace has
+	 * not enabled adaptive sync mode then Fixed Average
+	 * Vtotal mode should be enabled.
+	 */
+	if (crtc_state->uapi.vrr_enabled) {
+		crtc_state->vrr.enable = true;
+		if (HAS_CMRR(i915))
+			crtc_state->cmrr.enable = false;
+		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+	} else {
+		crtc_state->vrr.enable = false;
+		if (HAS_CMRR(i915)) {
+			crtc_state->cmrr.enable = true;
+			crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state);
+			crtc_state->vrr.vmin = crtc_state->vrr.vmax;
+			crtc_state->vrr.flipline = crtc_state->vrr.vmin;
+			crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+		}
+	}
+
 	/*
 	 * For XE_LPD+, we use guardband and pipeline override
 	 * is deprecated.
@@ -161,11 +228,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
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
@@ -295,6 +357,15 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
 
+	if (HAS_CMRR(dev_priv)) {
+		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) &&
+					  (trans_vrr_ctl & VRR_CTL_VRR_ENABLE);
+		crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
+					 !(trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
+	} else {
+		crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
+	}
+
 	if (crtc_state->cmrr.enable) {
 		cmrr_n_hi = intel_de_read(dev_priv, TRANS_CMRR_N_HI(cpu_transcoder));
 		cmrr_n_lo = intel_de_read(dev_priv, TRANS_CMRR_N_LO(cpu_transcoder));
-- 
2.25.1

