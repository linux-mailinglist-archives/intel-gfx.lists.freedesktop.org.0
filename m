Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8E69BE18C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 10:02:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 663D510E699;
	Wed,  6 Nov 2024 09:02:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UUqS0ScJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99D2810E692;
 Wed,  6 Nov 2024 09:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730883772; x=1762419772;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0JDJA1d+afrqSJPPMga4NREsbMrlM29gsB0GstF21/0=;
 b=UUqS0ScJOvZjKiqfY3kL7OLub9AdCe0xDoLoUgxDsjobTfmMqN2QXTay
 OECQAYMvuj/9t4VPO+KCMksShb2gEeRB8mLKL0WCRxPmTXE3XUjW8alCa
 3O/1ndSAprsx5IChx816d8mJLQlEwsZm1LR5sl/MHNw3K5AlVvyYC/8pv
 QDZfTmR2syBtO5/kxlwZ6APv1Jm4+60T3Wkb4dJBBIhnniyV3lH9FoEyj
 Tx5R43CglTydrS9bh0mCLBSqxnPGDHehZ1s+XE0ZwAdjx6onbquakK8Ai
 O9UNFBNXgWyP06Z7+EVGeYxQjiS83+BvmlwYqqKKYlULj+m2bWBEqcxyq g==;
X-CSE-ConnectionGUID: B/iTtCyuTcC37QOYslkLsw==
X-CSE-MsgGUID: ufpx+z21R6KeaGHcAXukBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="42069003"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="42069003"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 01:02:51 -0800
X-CSE-ConnectionGUID: 7Jeh05oyQFSHvuC/Br0KVg==
X-CSE-MsgGUID: d+TiTQQlR4eLj1ggO0YkUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="84343551"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa009.jf.intel.com with ESMTP; 06 Nov 2024 01:02:49 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/psr: Implement WA to help reach PC10
Date: Wed,  6 Nov 2024 14:30:59 +0530
Message-Id: <20241106090058.819840-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

--v3
-use crtc as variable name for intel_crtc [Jani]
-use encoder as variable name for intel_encoder [Jani]
-No changes in intel_dp in compute_config_late [Jani]

--v4
-Remove "check" from naming [Jani]
-Remove intel_encoder variable which is not necessary in
compute_config_late

--v5
-Make readable function names [Jani]
-No need to duplicate all variables into intel_psr [Jani]
-Optimize dpkgc_configured function [Jani]
-Use crtc_state only to decide if wa is needed for PSR1 [Jani]

WA: 22019444797
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 111 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr.h      |   1 +
 4 files changed, 118 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 49b5cc01ce40..61b7dd6a9dc4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4414,6 +4414,9 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
 	}
 
+	if (intel_encoder_is_dp(encoder))
+		intel_psr_compute_config_late(crtc_state);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ff6eb93337e0..24b95268f42d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1089,6 +1089,9 @@ struct intel_crtc_state {
 	bool req_psr2_sdp_prior_scanline;
 	bool has_panel_replay;
 	bool wm_level_disabled;
+	bool is_dpkgc_configured;
+	bool is_dc5_entry_possible;
+	bool is_wa_delayed_vblank_limit;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
 
@@ -1587,6 +1590,7 @@ struct intel_psr {
 #define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE	0x40
 
 	u32 debug;
+	bool disable_idle_frames;
 	bool sink_support;
 	bool source_support;
 	bool enabled;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a784c0b81556..3cb267437324 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -26,6 +26,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_debugfs.h>
+#include <drm/drm_vblank.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -898,6 +899,78 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 	return idle_frames;
 }
 
+static bool
+intel_psr_wa_delayed_vblank(const struct drm_display_mode *adjusted_mode)
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
+	return DISPLAY_VER(display) >= 20 && !crtc_state->vrr.enable;
+}
+
+static bool
+psr1_needs_wa_22019444797(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (DISPLAY_VER(display) == 20 && crtc_state->is_dpkgc_configured &&
+	    (crtc_state->is_wa_delayed_vblank_limit || !crtc_state->is_dc5_entry_possible) &&
+	   !crtc_state->has_sel_update && !crtc_state->has_panel_replay) {
+		drm_dbg_kms(display->drm,
+			    "Disabling PSR1 due to wa 22019444797\n");
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
+	struct intel_crtc *crtc;
+
+	if ((display->power.domains.target_dc_state &
+	     DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0)
+		return false;
+
+	if (!crtc_state->has_psr && !crtc_state->has_sel_update &&
+	    !crtc_state->has_panel_replay)
+		return false;
+
+	for_each_intel_crtc(display->drm, crtc) {
+		struct drm_vblank_crtc *vblank;
+		struct intel_encoder *encoder;
+
+		if (!crtc->active)
+			continue;
+
+		vblank = drm_crtc_vblank_crtc(&crtc->base);
+
+		if (vblank->enabled)
+			return false;
+
+		for_each_encoder_on_crtc(display->drm, &crtc->base, encoder)
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
@@ -1010,7 +1083,16 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	u32 val = EDP_PSR2_ENABLE;
 	u32 psr_val = 0;
 
-	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
+	/*
+	 * Wa_22019444797
+	 * TODO: Disable idle frames when vblank gets enabled while
+	 * PSR2 is enabled
+	 */
+	if (!intel_dp->psr.disable_idle_frames)
+		val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
+	else
+		drm_dbg_kms(display->drm,
+			    "Wa 22019444797 requirement met PSR2 deep sleep disabled\n");
 
 	if (DISPLAY_VER(display) < 14 && !IS_ALDERLAKE_P(dev_priv))
 		val |= EDP_SU_TRACK_ENABLE;
@@ -1692,6 +1774,20 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
 }
 
+void intel_psr_compute_config_late(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (DISPLAY_VER(display) == 20) {
+		crtc_state->is_dpkgc_configured =
+			intel_psr_is_dpkgc_configured(display, crtc_state);
+		crtc_state->is_dc5_entry_possible =
+			intel_psr_is_dc5_entry_possible(display, crtc_state);
+		crtc_state->is_wa_delayed_vblank_limit =
+			intel_psr_wa_delayed_vblank(&crtc_state->hw.adjusted_mode);
+	}
+}
+
 void intel_psr_get_config(struct intel_encoder *encoder,
 			  struct intel_crtc_state *pipe_config)
 {
@@ -2796,6 +2892,10 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 
 		mutex_lock(&psr->lock);
 
+		psr->disable_idle_frames = DISPLAY_VER(display) != 20 ||
+			!new_crtc_state->is_dpkgc_configured ||
+			new_crtc_state->is_dc5_entry_possible;
+
 		/*
 		 * Reasons to disable:
 		 * - PSR disabled in new state
@@ -2803,6 +2903,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		 * - Changing between PSR versions
 		 * - Region Early Transport changing
 		 * - Display WA #1136: skl, bxt
+		 * - Display WA_22019444797
 		 */
 		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
 		needs_to_disable |= !new_crtc_state->has_psr;
@@ -2812,6 +2913,8 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 			psr->su_region_et_enabled;
 		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
 			new_crtc_state->wm_level_disabled;
+		/* TODO: Disable PSR1 when vblank gets enabled while PSR1 is enabled */
+		needs_to_disable |= psr1_needs_wa_22019444797(new_crtc_state);
 
 		if (psr->enabled && needs_to_disable)
 			intel_psr_disable_locked(intel_dp);
@@ -2852,6 +2955,12 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 		keep_disabled |= DISPLAY_VER(display) < 11 &&
 			crtc_state->wm_level_disabled;
 
+		/*
+		 * Wa_22019444797
+		 * TODO: Disable PSR1 when vblank gets enabled while PSR1 is enabled
+		 */
+		keep_disabled |= psr1_needs_wa_22019444797(crtc_state);
+
 		if (!psr->enabled && !keep_disabled)
 			intel_psr_enable_locked(intel_dp, crtc_state);
 		else if (psr->enabled && !crtc_state->wm_level_disabled)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 956be263c09e..0923a2f74901 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -47,6 +47,7 @@ void intel_psr_init(struct intel_dp *intel_dp);
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
+void intel_psr_compute_config_late(struct intel_crtc_state *crtc_state);
 void intel_psr_get_config(struct intel_encoder *encoder,
 			  struct intel_crtc_state *pipe_config);
 void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir);
-- 
2.34.1

