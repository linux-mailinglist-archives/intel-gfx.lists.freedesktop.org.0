Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6135D2D2526
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 08:58:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE1C46E95C;
	Tue,  8 Dec 2020 07:58:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 270A76E95C;
 Tue,  8 Dec 2020 07:58:27 +0000 (UTC)
IronPort-SDR: GfEZBC9j0X0qXLy8A0RX6wJZcFDfwrvEnmjSNqipF7uGarjnmiCg2Ht0o0pVXcvPJEPqM++yj0
 E2Fv/LkAzrRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="235448682"
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; d="scan'208";a="235448682"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 23:58:26 -0800
IronPort-SDR: 7EJ9haygJxC77g7r6LHGvUwWfYMK9yCFzcHXWr5mTCcT0NGUbv110b56EQtyKD3p+Itz5Eq+Cq
 0n00ooN/7m6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; d="scan'208";a="317686540"
Received: from linux-akn.iind.intel.com ([10.223.34.148])
 by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2020 23:58:24 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Dec 2020 13:21:38 +0530
Message-Id: <20201208075145.17389-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201208075145.17389-1-ankit.k.nautiyal@intel.com>
References: <20201208075145.17389-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] [PATCH v4 09/16] drm/i915: Add support for starting FRL
 training for HDMI2.1 via PCON
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
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch adds functions to start FRL training for an HDMI2.1 sink,
connected via a PCON as a DP branch device.
This patch also adds a new structure for storing frl training related
data, when FRL training is completed.

v2: As suggested by Uma Shankar:
-renamed couple of variables for better clarity
-tweaked the macros used for correct semantics for true/false
-fixed other styling issues.

v3: Completed the TODO for condition for going to FRL mode.
Modified the condition to determine the required FRL b/w
based only on the Pcon and Sink's max FRL values.
Moved the frl structure initialization to intel_dp_init_connector().

v4: Fixed typo in initialization of frl structure.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com> (v2)
---
 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 174 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h       |   3 +
 3 files changed, 184 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f77a15303223..c624c2f9b624 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1339,6 +1339,11 @@ struct intel_dp_compliance {
 	u8 test_lane_count;
 };
 
+struct intel_dp_pcon_frl {
+	bool is_trained;
+	int trained_rate_gbps;
+};
+
 struct intel_dp {
 	i915_reg_t output_reg;
 	u32 DP;
@@ -1461,6 +1466,8 @@ struct intel_dp {
 
 	bool hobl_failed;
 	bool hobl_active;
+
+	struct intel_dp_pcon_frl frl;
 };
 
 enum lspcon_vendor {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2c3572891596..2aa07d82bc97 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3887,6 +3887,8 @@ static void intel_disable_dp(struct intel_atomic_state *state,
 	intel_edp_backlight_off(old_conn_state);
 	intel_dp_set_power(intel_dp, DP_SET_POWER_D3);
 	intel_edp_panel_off(intel_dp);
+	intel_dp->frl.is_trained = false;
+	intel_dp->frl.trained_rate_gbps = 0;
 }
 
 static void g4x_disable_dp(struct intel_atomic_state *state,
@@ -3982,6 +3984,175 @@ cpt_set_link_train(struct intel_dp *intel_dp,
 	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 }
 
+static int intel_dp_pcon_get_frl_mask(u8 frl_bw_mask)
+{
+	int bw_gbps[] = {9, 18, 24, 32, 40, 48};
+	int i;
+
+	for (i = ARRAY_SIZE(bw_gbps) - 1; i >= 0; i--) {
+		if (frl_bw_mask & (1 << i))
+			return bw_gbps[i];
+	}
+	return 0;
+}
+
+static int intel_dp_pcon_set_frl_mask(int max_frl)
+{
+
+	switch (max_frl) {
+	case 48:
+		return DP_PCON_FRL_BW_MASK_48GBPS;
+	case 40:
+		return DP_PCON_FRL_BW_MASK_40GBPS;
+	case 32:
+		return DP_PCON_FRL_BW_MASK_32GBPS;
+	case 24:
+		return DP_PCON_FRL_BW_MASK_24GBPS;
+	case 18:
+		return DP_PCON_FRL_BW_MASK_18GBPS;
+	case 9:
+		return DP_PCON_FRL_BW_MASK_9GBPS;
+	}
+
+	return 0;
+}
+
+static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp)
+{
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_connector *connector = &intel_connector->base;
+
+	return (connector->display_info.hdmi.max_frl_rate_per_lane *
+		connector->display_info.hdmi.max_lanes);
+}
+
+static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
+{
+#define PCON_EXTENDED_TRAIN_MODE (1 > 0)
+#define PCON_CONCURRENT_MODE (1 > 0)
+#define PCON_SEQUENTIAL_MODE !PCON_CONCURRENT_MODE
+#define PCON_NORMAL_TRAIN_MODE !PCON_EXTENDED_TRAIN_MODE
+#define TIMEOUT_FRL_READY_MS 500
+#define TIMEOUT_HDMI_LINK_ACTIVE_MS 1000
+
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int max_frl_bw, max_pcon_frl_bw, max_edid_frl_bw, ret;
+	u8 max_frl_bw_mask = 0, frl_trained_mask;
+	bool is_active;
+
+	ret = drm_dp_pcon_reset_frl_config(&intel_dp->aux);
+	if (ret < 0)
+		return ret;
+
+	max_pcon_frl_bw = intel_dp->dfp.pcon_max_frl_bw;
+	drm_dbg(&i915->drm, "PCON max rate = %d Gbps\n", max_pcon_frl_bw);
+
+	max_edid_frl_bw = intel_dp_hdmi_sink_max_frl(intel_dp);
+	drm_dbg(&i915->drm, "Sink max rate from EDID = %d Gbps\n", max_edid_frl_bw);
+
+	max_frl_bw = min(max_edid_frl_bw, max_pcon_frl_bw);
+
+	if (max_frl_bw <= 0)
+		return -EINVAL;
+
+	ret = drm_dp_pcon_frl_prepare(&intel_dp->aux, false);
+	if (ret < 0)
+		return ret;
+	/* Wait for PCON to be FRL Ready */
+	wait_for(is_active = drm_dp_pcon_is_frl_ready(&intel_dp->aux) == true, TIMEOUT_FRL_READY_MS);
+
+	if (!is_active)
+		return -ETIMEDOUT;
+
+	max_frl_bw_mask = intel_dp_pcon_set_frl_mask(max_frl_bw);
+	ret = drm_dp_pcon_frl_configure_1(&intel_dp->aux, max_frl_bw, PCON_SEQUENTIAL_MODE);
+	if (ret < 0)
+		return ret;
+	ret = drm_dp_pcon_frl_configure_2(&intel_dp->aux, max_frl_bw_mask, PCON_NORMAL_TRAIN_MODE);
+	if (ret < 0)
+		return ret;
+	ret = drm_dp_pcon_frl_enable(&intel_dp->aux);
+	if (ret < 0)
+		return ret;
+	/*
+	 * Wait for FRL to be completed
+	 * Check if the HDMI Link is up and active.
+	 */
+	wait_for(is_active = drm_dp_pcon_hdmi_link_active(&intel_dp->aux) == true, TIMEOUT_HDMI_LINK_ACTIVE_MS);
+
+	if (!is_active)
+		return -ETIMEDOUT;
+
+	/* Verify HDMI Link configuration shows FRL Mode */
+	if (DP_PCON_HDMI_MODE_FRL != drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, &frl_trained_mask)) {
+		drm_dbg(&i915->drm, "HDMI couldn't be trained in FRL Mode\n");
+		return -EINVAL;
+	}
+	drm_dbg(&i915->drm, "MAX_FRL_MASK = %u, FRL_TRAINED_MASK = %u\n", max_frl_bw_mask, frl_trained_mask);
+
+	intel_dp->frl.trained_rate_gbps = intel_dp_pcon_get_frl_mask(frl_trained_mask);
+	intel_dp->frl.is_trained = true;
+	drm_dbg(&i915->drm, "FRL trained with : %d Gbps\n", intel_dp->frl.trained_rate_gbps);
+
+	return 0;
+}
+
+static bool intel_dp_is_frl_required(struct intel_dp *intel_dp,
+				     const struct intel_crtc_state *crtc_state)
+{
+	int mode_clock = crtc_state->hw.adjusted_mode.crtc_clock;
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_connector *connector = &intel_connector->base;
+	struct drm_display_info *info = &connector->display_info;
+
+	if (intel_dp->frl.is_trained)
+		return false;
+	/*
+	 * FRL link training required between the PCon and HDMI2.1 sink,
+	 * when the mode cannot be supported via TMDS.
+	 */
+	if (drm_mode_is_420_only(info, &crtc_state->hw.adjusted_mode))
+		mode_clock /= 2;
+
+	if (intel_dp->dfp.max_tmds_clock < mode_clock)
+		return true;
+
+	return false;
+}
+
+static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp)
+{
+	if (drm_dp_is_branch(intel_dp->dpcd) &&
+	    intel_dp->has_hdmi_sink &&
+	    intel_dp_hdmi_sink_max_frl(intel_dp) > 0)
+		return true;
+
+	return false;
+}
+
+void intel_dp_check_frl_training(struct intel_dp *intel_dp,
+				 const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (!intel_dp_is_hdmi_2_1_sink(intel_dp) ||
+	    !intel_dp_is_frl_required(intel_dp, crtc_state))
+		return;
+
+	if (intel_dp_pcon_start_frl_training(intel_dp) < 0) {
+		int ret, mode;
+
+		drm_dbg(&dev_priv->drm, "Couldnt set FRL mode, continuing with TMDS mode\n");
+		ret = drm_dp_pcon_reset_frl_config(&intel_dp->aux);
+		mode = drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, NULL);
+
+		if (ret < 0 || mode != DP_PCON_HDMI_MODE_TMDS)
+			drm_dbg(&dev_priv->drm, "Issue with PCON, cannot set TMDS mode\n");
+	} else {
+		drm_dbg(&dev_priv->drm, "FRL training Completed\n");
+	}
+}
+
 static void
 g4x_set_link_train(struct intel_dp *intel_dp,
 		   const struct intel_crtc_state *crtc_state,
@@ -8210,6 +8381,9 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 			       (temp & ~0xf) | 0xd);
 	}
 
+	intel_dp->frl.is_trained = false;
+	intel_dp->frl.trained_rate_gbps = 0;
+
 	return true;
 
 fail:
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index b871a09b6901..b4a14646caea 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -144,4 +144,7 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 void intel_dp_sync_state(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state);
 
+void intel_dp_check_frl_training(struct intel_dp *intel_dp,
+				 const struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_DP_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
