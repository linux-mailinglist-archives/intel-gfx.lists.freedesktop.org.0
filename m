Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 636554257C1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 18:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21AE06F89B;
	Thu,  7 Oct 2021 16:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B97696F89B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 16:20:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="249614629"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="249614629"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 09:20:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="524723199"
Received: from amanna.iind.intel.com ([10.223.74.76])
 by fmsmga008.fm.intel.com with ESMTP; 07 Oct 2021 09:20:39 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: gwan-gyeong.mun@intel.com, mika.kahola@intel.com, jani.nikula@intel.com,
 manasi.d.navare@intel.com, jose.souza@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Date: Thu,  7 Oct 2021 21:27:27 +0530
Message-Id: <20211007155729.27812-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20211007155729.27812-1-animesh.manna@intel.com>
References: <20211007155729.27812-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/panelreplay: Initializaton and
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

v1: RFC version.
v2: optimized code, pr_enabled and pr_dpcd variable removed. [Jose]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 47 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_psr.c      | 43 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h      |  3 ++
 include/drm/drm_dp_helper.h                   |  3 ++
 5 files changed, 89 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 21ce8bccc645..b32d9529feef 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1070,6 +1070,7 @@ struct intel_crtc_state {
 	bool req_psr2_sdp_prior_scanline;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
+	bool has_panel_replay;
 	struct drm_dp_vsc_sdp psr_vsc;
 
 	/*
@@ -1531,6 +1532,7 @@ struct intel_psr {
 	bool irq_aux_error;
 	u16 su_w_granularity;
 	u16 su_y_granularity;
+	bool sink_pr_support;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 74a657ae131a..45181692e3b0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1569,12 +1569,22 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
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
@@ -1683,6 +1693,22 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
 			vsc->revision = 0x4;
 			vsc->length = 0xe;
 		}
+	} else if (intel_dp->psr.enabled && !intel_dp_is_edp(intel_dp)) {
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
@@ -1824,6 +1850,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_vrr_compute_config(pipe_config, conn_state);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
+	intel_panel_replay_compute_config(intel_dp, pipe_config);
 	intel_drrs_compute_config(intel_dp, pipe_config, output_bpp,
 				  constant_n);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
@@ -2731,10 +2758,10 @@ static ssize_t intel_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
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
@@ -5044,6 +5071,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	intel_psr_init(intel_dp);
 
+	intel_panel_replay_init(intel_dp);
+
 	return true;
 
 fail:
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7a205fd5023b..935ea1c434ac 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -933,6 +933,21 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
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
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state)
@@ -2170,6 +2185,34 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
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
+	u8 pr_dpcd;
+
+	if (!(HAS_DP20(dev_priv) && HAS_PR(dev_priv)))
+		return;
+
+	drm_dp_dpcd_read(&intel_dp->aux, DP_PANEL_REPLAY_SUPPORT, &pr_dpcd,
+			 sizeof(pr_dpcd));
+
+	if (!(pr_dpcd & PANEL_REPLAY_SUPPORT)) {
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
index facffbacd357..c9d1c1f0b470 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -32,6 +32,7 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
 		     unsigned frontbuffer_bits,
 		     enum fb_op_origin origin);
 void intel_psr_init(struct intel_dp *intel_dp);
+void intel_panel_replay_init(struct intel_dp *intel_dp);
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
@@ -52,5 +53,7 @@ void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
 					const struct intel_crtc_state *crtc_state);
 void intel_psr_pause(struct intel_dp *intel_dp);
 void intel_psr_resume(struct intel_dp *intel_dp);
+void intel_panel_replay_compute_config(struct intel_dp *intel_dp,
+				       struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PSR_H__ */
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index b52df4db3e8f..d18340cbf8ac 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -541,6 +541,9 @@ struct drm_panel;
 /* DFP Capability Extension */
 #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT	0x0a3	/* 2.0 */
 
+#define DP_PANEL_REPLAY_SUPPORT             0x0b0
+# define PANEL_REPLAY_SUPPORT               (1 << 0)
+
 /* Link Configuration */
 #define	DP_LINK_BW_SET		            0x100
 # define DP_LINK_RATE_TABLE		    0x00    /* eDP 1.4 */
-- 
2.29.0

