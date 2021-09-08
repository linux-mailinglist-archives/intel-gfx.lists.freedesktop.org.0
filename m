Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2F840370B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 11:38:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92A9B6E17A;
	Wed,  8 Sep 2021 09:38:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42AE36E174
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 09:38:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="220492826"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="220492826"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:38:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="693170183"
Received: from amanna.iind.intel.com ([10.223.74.76])
 by fmsmga006.fm.intel.com with ESMTP; 08 Sep 2021 02:38:23 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: gwan-gyeong.mun@intel.com, mika.kahola@intel.com, jani.nikula@intel.com,
 manasi.d.navare@intel.com, Animesh Manna <animesh.manna@intel.com>
Date: Wed,  8 Sep 2021 14:45:42 +0530
Message-Id: <20210908091544.13772-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210908091544.13772-1-animesh.manna@intel.com>
References: <20210908091544.13772-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 3/5] drm/i915/panelreplay: Initializaton and
 compute config for panel replay
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

As panel replay feature similar to PSR feature of EDP panel, so currently
utilized existing psr framework for panel replay.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  4 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 47 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_psr.c      | 43 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h      |  3 ++
 include/drm/drm_dp_helper.h                   |  3 ++
 5 files changed, 91 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c7bcf9183447..6ca9fabb9333 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1066,6 +1066,7 @@ struct intel_crtc_state {
 	bool req_psr2_sdp_prior_scanline;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
+	bool has_panel_replay;
 
 	/*
 	 * Frequence the dpll for the port should run at. Differs from the
@@ -1526,6 +1527,8 @@ struct intel_psr {
 	bool irq_aux_error;
 	u16 su_w_granularity;
 	u16 su_y_granularity;
+	bool sink_pr_support;
+	bool pr_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
@@ -1552,6 +1555,7 @@ struct intel_dp {
 	u8 lttpr_phy_caps[DP_MAX_LTTPR_COUNT][DP_LTTPR_PHY_CAP_SIZE];
 	u8 fec_capable;
 	u8 pcon_dsc_dpcd[DP_PCON_DSC_ENCODER_CAP_SIZE];
+	u8 pr_dpcd;
 	/* source rates */
 	int num_source_rates;
 	const int *source_rates;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d28bd8c4a8a5..90c708548811 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1560,12 +1560,22 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	/*
-	 * Prepare VSC Header for SU as per DP 1.4 spec, Table 2-118
-	 * VSC SDP supporting 3D stereo, PSR2, and Pixel Encoding/
-	 * Colorimetry Format indication.
-	 */
-	vsc->revision = 0x5;
+	if (crtc_state->has_panel_replay) {
+		/*
+		 * Prepare VSC Header for SU as per DP 2.0 spec, Table 2-223
+		 * VSC SDP supporting 3D stereo, Panel Replay, and Pixel
+		 * Encoding/Colorimetry Format indication.
+		 */
+		vsc->revision = 0x7;
+	} else {
+		/*
+		 * Prepare VSC Header for SU as per DP 1.4 spec, Table 2-118
+		 * VSC SDP supporting 3D stereo, PSR2, and Pixel Encoding/
+		 * Colorimetry Format indication.
+		 */
+		vsc->revision = 0x5;
+	}
+
 	vsc->length = 0x13;
 
 	/* DP 1.4a spec, Table 2-120 */
@@ -1674,6 +1684,22 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
 			vsc->revision = 0x4;
 			vsc->length = 0xe;
 		}
+	} else if (intel_dp->psr.pr_enabled) {
+		if (intel_dp->psr.colorimetry_support &&
+		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
+			/* [PR, +Colorimetry] */
+			intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
+							 vsc);
+		} else {
+			/*
+			 * [PR, -Colorimetry]
+			 * Prepare VSC Header for SU as per DP 2.0 spec, Table 2-223
+			 * VSC SDP supporting 3D stereo + PR (applies to eDP v1.3 or
+			 * higher).
+			 */
+			vsc->revision = 0x6;
+			vsc->length = 0x10;
+		}
 	} else {
 		/*
 		 * [PSR1]
@@ -1814,6 +1840,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_vrr_compute_config(pipe_config, conn_state);
 	intel_psr_compute_config(intel_dp, pipe_config);
+	intel_panel_replay_compute_config(intel_dp, pipe_config);
 	intel_drrs_compute_config(intel_dp, pipe_config, output_bpp,
 				  constant_n);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
@@ -2719,10 +2746,10 @@ static ssize_t intel_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
 	sdp->sdp_header.HB3 = vsc->length; /* Number of Valid Data Bytes */
 
 	/*
-	 * Only revision 0x5 supports Pixel Encoding/Colorimetry Format as
-	 * per DP 1.4a spec.
+	 * Revision 0x5 and 0x7 supports Pixel Encoding/Colorimetry Format as
+	 * per DP 1.4a spec and DP 2.0 spec respectively.
 	 */
-	if (vsc->revision != 0x5)
+	if (vsc->revision != 0x5 || vsc->revision != 0x7)
 		goto out;
 
 	/* VSC SDP Payload for DB16 through DB18 */
@@ -5017,6 +5044,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	intel_psr_init(intel_dp);
 
+	intel_panel_replay_init(intel_dp);
+
 	return true;
 
 fail:
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5fa76b148f6d..660e19c10aa8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -947,6 +947,21 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	return true;
 }
 
+void intel_panel_replay_compute_config(struct intel_dp *intel_dp,
+				       struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (!intel_dp->psr.sink_pr_support)
+		return;
+
+	crtc_state->has_panel_replay = true;
+	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
+
+	if (HAS_PSR2_SEL_FETCH(dev_priv))
+		intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state);
+}
+
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state)
 {
@@ -1177,6 +1192,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
 
 	intel_dp->psr.psr2_enabled = crtc_state->has_psr2;
+	intel_dp->psr.pr_enabled = crtc_state->has_panel_replay;
 	intel_dp->psr.busy_frontbuffer_bits = 0;
 	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
 	intel_dp->psr.transcoder = crtc_state->cpu_transcoder;
@@ -2089,6 +2105,33 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
 	}
 }
 
+/**
+ * intel_panel_replay_init - Check for sink and source capability.
+ * @intel_dp: Intel DP
+ *
+ * This function is called after the initializing connector.
+ * (the initializing of connector treats the handling of connector capabilities)
+ * And it initializes basic panel replay stuff for each DP Encoder.
+ */
+void intel_panel_replay_init(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (!HAS_PR(dev_priv))
+		return;
+
+	drm_dp_dpcd_read(&intel_dp->aux, DP_PANEL_REPLAY_SUPPORT, &intel_dp->pr_dpcd,
+			 sizeof(intel_dp->pr_dpcd));
+
+	if (!(intel_dp->pr_dpcd & PANEL_REPLAY_SUPPORT)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Panel replay is not supported by panel\n");
+		return;
+	}
+
+	intel_dp->psr.sink_pr_support = true;
+}
+
 /**
  * intel_psr_init - Init basic PSR work and mutex.
  * @intel_dp: Intel DP
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 641521b101c8..c190ec46a9fc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -36,6 +36,7 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
 		     unsigned frontbuffer_bits,
 		     enum fb_op_origin origin);
 void intel_psr_init(struct intel_dp *intel_dp);
+void intel_panel_replay_init(struct intel_dp *intel_dp);
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state);
 void intel_psr_get_config(struct intel_encoder *encoder,
@@ -53,5 +54,7 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
 					int color_plane);
 void intel_psr_pause(struct intel_dp *intel_dp);
 void intel_psr_resume(struct intel_dp *intel_dp);
+void intel_panel_replay_compute_config(struct intel_dp *intel_dp,
+				       struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PSR_H__ */
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index 1d5b3dbb6e56..1b4dcee3b281 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -537,6 +537,9 @@ struct drm_panel;
 #define DP_DSC_BRANCH_OVERALL_THROUGHPUT_1  0x0a1
 #define DP_DSC_BRANCH_MAX_LINE_WIDTH        0x0a2
 
+#define DP_PANEL_REPLAY_SUPPORT             0x0b0
+# define PANEL_REPLAY_SUPPORT               (1 << 0)
+
 /* Link Configuration */
 #define	DP_LINK_BW_SET		            0x100
 # define DP_LINK_RATE_TABLE		    0x00    /* eDP 1.4 */
-- 
2.29.0

