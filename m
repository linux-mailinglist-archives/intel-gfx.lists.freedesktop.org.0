Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA783991FC2
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Oct 2024 18:55:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 231D110E17C;
	Sun,  6 Oct 2024 16:55:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G5vFU5w3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C25510E05F
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Oct 2024 16:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728233754; x=1759769754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xf/VXkAe/VGaxqcPSpxwSYqfw/+H6iaAhdgH1ndiCQc=;
 b=G5vFU5w3Du+gGY1b0B2BMbA0yK7PRdqsw2hVVcOGtrYv0ExXH2VMc/HA
 hwZkfdFi8T5ztMDJcQMXHhub3ygbilOdqWSMt0guSkVVyFm7+VzxdZ0Ge
 /i41KbUpMiaXERP1fnGLiBKM5qvT3oZnHMDPH7grbepnyqkjSxAmpVdjZ
 kngdc9qU2rhmpKs78ESLCxQNedvOfm3ByPvB2tRGfQuhnNe+ZegUqD+if
 +Jonvi7U2YW1EcCHRV5aACEOVqGM2MSlw/m1sIvyh/6vwUJNLmxYK0Phm
 AzTT69OqHZclpuc6aZEupYgvok1mUE62j+VMjojmhm6PcIAjTuQpYx+g4 w==;
X-CSE-ConnectionGUID: GlE18UqTRF+12+TYjh5uYg==
X-CSE-MsgGUID: YDEqsGTqS9qGuEi9JcqRow==
X-IronPort-AV: E=McAfee;i="6700,10204,11217"; a="30269096"
X-IronPort-AV: E=Sophos;i="6.11,182,1725346800"; d="scan'208";a="30269096"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2024 09:55:54 -0700
X-CSE-ConnectionGUID: IUL1qlrWS2SRNZzhtXS1Ww==
X-CSE-MsgGUID: 2tt8aYYjTKKqAzL5ArL5UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,182,1725346800"; d="scan'208";a="112709977"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa001.jf.intel.com with ESMTP; 06 Oct 2024 09:55:53 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/psr: Implement WA to help reach PC10
Date: Sun,  6 Oct 2024 22:23:20 +0530
Message-ID: <20241006165319.1689958-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20241003145337.1673715-2-suraj.kandpal@intel.com>
References: <20241003145337.1673715-2-suraj.kandpal@intel.com>
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

To reach PC10 when PKG_C_LATENCY is configure we must do the following
things
1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be entered
2) Allow PSR2 deep sleep when DC5 can be entered
3) DC5 can be entered when all transocoder have either PSR1, PSR2 or
eDP 1.5 PR ALPM enabled and VBI is disabled and flips and pushes are
not happening.

--v2
-Add debug prints

WA: 22019444797
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 117 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr.h      |   2 +
 4 files changed, 124 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index fe1ded6707f9..cbd71c136c8d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4368,6 +4368,9 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
 	}
 
+	if (intel_encoder_is_dp(encoder))
+		intel_psr_compute_config_late(encoder, crtc_state);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 17fc21f6ae36..7fb3eeb0e0f2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1576,6 +1576,9 @@ struct intel_psr {
 #define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x40
 
 	u32 debug;
+	bool is_dpkgc_configured;
+	bool is_dc5_entry_possible;
+	bool is_wa_delayed_vblank_limit;
 	bool sink_support;
 	bool source_support;
 	bool enabled;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8e9f068b9b2b..9b77045df228 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -26,6 +26,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_debugfs.h>
+#include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -896,6 +897,82 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 	return idle_frames;
 }
 
+static bool
+intel_psr_check_wa_delayed_vblank(const struct drm_display_mode *adjusted_mode)
+{
+	return (adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay) >= 6;
+}
+
+/*
+ * PKG_C_LATENCY is configured only when DISPLAY_VER >= 20 and
+ * VRR is not enabled
+ */
+static bool intel_psr_is_dpkgc_configured(struct intel_display *display,
+					  struct intel_crtc_state *crtc_state)
+{
+	if (DISPLAY_VER(display) < 20 || crtc_state->vrr.enable)
+		return false;
+
+	return true;
+}
+
+static bool wa_22019444797_psr1_check(const struct intel_crtc_state *crtc_state,
+				      struct intel_psr *psr)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (DISPLAY_VER(display) == 20 && psr->is_dpkgc_configured &&
+	    (psr->is_wa_delayed_vblank_limit || !psr->is_dc5_entry_possible) &&
+	   !crtc_state->has_sel_update && !crtc_state->has_panel_replay) {
+		drm_dbg_kms(display->drm,
+			    "Wa 22019444797 requirement met PSR1 disabled\n");
+		return true;
+	} else {
+		return false;
+	}
+}
+
+/*
+ * DC5 entry is only possible if vblank interrupt is disabled
+ * and either psr1, psr2, edp 1.5 pr alpm is enabled on all
+ * enabled encoders.
+ */
+static bool
+intel_psr_is_dc5_entry_possible(struct intel_display *display,
+				struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *intel_crtc;
+
+	if ((display->power.domains.target_dc_state &
+	     DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0)
+		return false;
+
+	if (!crtc_state->has_psr && !crtc_state->has_sel_update &&
+	    !crtc_state->has_panel_replay)
+		return false;
+
+	for_each_intel_crtc(display->drm, intel_crtc) {
+		struct drm_crtc *crtc = &intel_crtc->base;
+		struct drm_vblank_crtc *vblank;
+		struct intel_encoder *encoder;
+
+		if (!intel_crtc->active)
+			continue;
+
+		vblank = drm_crtc_vblank_crtc(crtc);
+
+		if (vblank->enabled)
+			return false;
+
+		for_each_encoder_on_crtc(display->drm, crtc, encoder)
+			if (encoder->type != INTEL_OUTPUT_EDP ||
+			    !CAN_PSR(enc_to_intel_dp(encoder)))
+				return false;
+	}
+
+	return true;
+}
+
 static void hsw_activate_psr1(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -1008,7 +1085,18 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	u32 val = EDP_PSR2_ENABLE;
 	u32 psr_val = 0;
 
-	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
+	/*
+	 * Wa_22019444797
+	 * TODO: Disable idle frames when vblank gets enabled while
+	 * PSR2 is enabled
+	 */
+	if (DISPLAY_VER(dev_priv) != 20 ||
+	    !intel_dp->psr.is_dpkgc_configured ||
+	    intel_dp->psr.is_dc5_entry_possible)
+		val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
+	else
+		drm_dbg_kms(display->drm,
+			    "Wa 22019444797 requirement met PSR2 deep sleep disabled\n");
 
 	if (DISPLAY_VER(display) < 14 && !IS_ALDERLAKE_P(dev_priv))
 		val |= EDP_SU_TRACK_ENABLE;
@@ -1686,6 +1774,24 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
 }
 
+void intel_psr_compute_config_late(struct intel_encoder *intel_encoder,
+				   struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(intel_encoder);
+	struct intel_dp *dp = enc_to_intel_dp(intel_encoder);
+
+	if (DISPLAY_VER(display) == 20) {
+		mutex_lock(&dp->psr.lock);
+		dp->psr.is_dpkgc_configured =
+			intel_psr_is_dpkgc_configured(display, crtc_state);
+		dp->psr.is_dc5_entry_possible =
+			intel_psr_is_dc5_entry_possible(display, crtc_state);
+		dp->psr.is_wa_delayed_vblank_limit =
+			intel_psr_check_wa_delayed_vblank(&crtc_state->hw.adjusted_mode);
+		mutex_unlock(&dp->psr.lock);
+	}
+}
+
 void intel_psr_get_config(struct intel_encoder *encoder,
 			  struct intel_crtc_state *pipe_config)
 {
@@ -2742,6 +2848,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		 * - Changing between PSR versions
 		 * - Region Early Transport changing
 		 * - Display WA #1136: skl, bxt
+		 * - Display WA_22019444797
 		 */
 		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
 		needs_to_disable |= !new_crtc_state->has_psr;
@@ -2751,6 +2858,8 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 			psr->su_region_et_enabled;
 		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
 			new_crtc_state->wm_level_disabled;
+		/* TODO: Disable PSR1 when vblank gets enabled while PSR1 is enabled */
+		needs_to_disable |= wa_22019444797_psr1_check(new_crtc_state, psr);
 
 		if (psr->enabled && needs_to_disable)
 			intel_psr_disable_locked(intel_dp);
@@ -2791,6 +2900,12 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 		keep_disabled |= DISPLAY_VER(display) < 11 &&
 			crtc_state->wm_level_disabled;
 
+		/*
+		 * Wa_22019444797
+		 * TODO: Disable PSR1 when vblank gets enabled while PSR1 is enabled
+		 */
+		keep_disabled |= wa_22019444797_psr1_check(crtc_state, psr);
+
 		if (!psr->enabled && !keep_disabled)
 			intel_psr_enable_locked(intel_dp, crtc_state);
 		else if (psr->enabled && !crtc_state->wm_level_disabled)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 5f26f61f82aa..e0fa04952393 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -47,6 +47,8 @@ void intel_psr_init(struct intel_dp *intel_dp);
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
+void intel_psr_compute_config_late(struct intel_encoder *intel_encoder,
+				   struct intel_crtc_state *crtc_state);
 void intel_psr_get_config(struct intel_encoder *encoder,
 			  struct intel_crtc_state *pipe_config);
 void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir);
-- 
2.43.2

