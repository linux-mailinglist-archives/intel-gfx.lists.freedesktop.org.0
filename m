Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F9A624523
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 16:08:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ABF210E86B;
	Thu, 10 Nov 2022 15:08:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 274B410E861
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 15:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668092890; x=1699628890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9VT5bWVsI03TqQW7ZktWqDfWSCp/lSdYlTNE7VyoZGE=;
 b=A0e+m1aKNLWDpwj4O1HeQ232fEY+hn0sKx2GvPpIEPDwU7XxE0CEfYz3
 IQSSI1nmw/XQtwRH6ZEkbfiwGq+2jlz5Oretbag20TaPF5S10kgVpYZY8
 CznrO3Mi4RtsVzJAcmzL6v0oPvFOLaxpiOTjeQOA2gIWzoZp2FtMW8J/5
 16OROrmS0AgRoTJa8ELjEakyRMXrTzPf1VISarKYNzgWjiNJ3TdTFF+lF
 gonvePRugJID5NWcncFAa6GFGdTOfEIj+7mFsBemQW2YKKgj03yqUnbTs
 NXo18K0LevWx1HbmQ76jX/a688Jr5p9ZE2ZeQg9EIcEoJHPf+ADYfQktc A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="397624621"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="397624621"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 07:08:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="668436575"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="668436575"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga008.jf.intel.com with ESMTP; 10 Nov 2022 07:08:08 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 20:33:06 +0530
Message-Id: <20221110150307.3366-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20221110150307.3366-1-animesh.manna@intel.com>
References: <20221110150307.3366-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/panelreplay: Initializaton and
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

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 15 +++++++
 drivers/gpu/drm/i915/display/intel_dp.c       | 44 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_psr.c      | 44 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr.h      |  1 +
 4 files changed, 93 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8da87cbb172b..3c126bf47119 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1623,6 +1623,8 @@ struct intel_psr {
 	bool irq_aux_error;
 	u16 su_w_granularity;
 	u16 su_y_granularity;
+	bool source_panel_replay_support;
+	bool sink_panel_replay_support;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
@@ -1926,6 +1928,11 @@ dp_to_lspcon(struct intel_dp *intel_dp)
 #define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
 			   (intel_dp)->psr.source_support)
 
+#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
+				    (intel_dp)->psr.source_panel_replay_support)
+
+#define IS_PANEL_REPLAY(intel_dp) (!intel_dp_is_edp(intel_dp))
+
 static inline bool intel_encoder_can_psr(struct intel_encoder *encoder)
 {
 	if (!intel_encoder_is_dp(encoder))
@@ -1934,6 +1941,14 @@ static inline bool intel_encoder_can_psr(struct intel_encoder *encoder)
 	return CAN_PSR(enc_to_intel_dp(encoder));
 }
 
+static inline bool intel_encoder_can_panel_replay(struct intel_encoder *encoder)
+{
+	if (!intel_encoder_is_dp(encoder))
+		return false;
+
+	return CAN_PANEL_REPLAY(enc_to_intel_dp(encoder));
+}
+
 static inline struct intel_digital_port *
 hdmi_to_dig_port(struct intel_hdmi *intel_hdmi)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7400d6b4c587..25bf18e40b96 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1726,12 +1726,23 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	/*
-	 * Prepare VSC Header for SU as per DP 1.4 spec, Table 2-118
-	 * VSC SDP supporting 3D stereo, PSR2, and Pixel Encoding/
-	 * Colorimetry Format indication.
-	 */
-	vsc->revision = 0x5;
+	if (crtc_state->has_psr && conn_state->connector->connector_type !=
+	    DRM_MODE_CONNECTOR_eDP) {
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
@@ -1840,6 +1851,21 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
 			vsc->revision = 0x4;
 			vsc->length = 0xe;
 		}
+	} else if (intel_dp->psr.enabled && IS_PANEL_REPLAY(intel_dp)) {
+		if (intel_dp->psr.colorimetry_support &&
+		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
+			/* [Panel Replay with colorimetry info] */
+			intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
+							 vsc);
+		} else {
+			/*
+			 * [Panel Replay without colorimetry info]
+			 * Prepare VSC Header for SU as per DP 2.0 spec, Table 2-223
+			 * VSC SDP supporting 3D stereo + Panel Replay.
+			 */
+			vsc->revision = 0x6;
+			vsc->length = 0x10;
+		}
 	} else {
 		/*
 		 * [PSR1]
@@ -3077,10 +3103,10 @@ static ssize_t intel_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
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
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a75b37851504..50394143c798 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -983,6 +983,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		&crtc_state->hw.adjusted_mode;
 	int psr_setup_time;
 
+	if (CAN_PANEL_REPLAY(intel_dp))
+		goto skip_psr_check;
 	/*
 	 * Current PSR panels don't work reliably with VRR enabled
 	 * So if VRR is enabled, do not enable PSR.
@@ -1026,8 +1028,14 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
+skip_psr_check:
 	crtc_state->has_psr = true;
-	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
+
+	if (intel_dp_is_edp(intel_dp))
+		crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
+
+	if (IS_PANEL_REPLAY(intel_dp) && HAS_PSR2_SEL_FETCH(dev_priv))
+		crtc_state->has_psr2 = intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state);
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 	intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_state, conn_state,
@@ -2390,6 +2398,35 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
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
+	u8 pr_dpcd = 0;
+
+	if (!(HAS_DP20(dev_priv) && HAS_PANEL_REPLAY(dev_priv)))
+		return;
+
+	drm_dp_dpcd_readb(&intel_dp->aux, DP_PANEL_REPLAY_CAP, &pr_dpcd);
+
+	if (!(pr_dpcd & DP_PANEL_REPLAY_SUPPORT)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Panel replay is not supported by panel\n");
+		return;
+	}
+
+	drm_dbg_kms(&dev_priv->drm,
+		    "Panel replay is supported by panel\n");
+	intel_dp->psr.sink_panel_replay_support = true;
+}
+
 /**
  * intel_psr_init - Init basic PSR work and mutex.
  * @intel_dp: Intel DP
@@ -2404,7 +2441,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	if (!HAS_PSR(dev_priv))
+	if (!(HAS_PSR(dev_priv) || HAS_PANEL_REPLAY(dev_priv)))
 		return;
 
 	/*
@@ -2423,6 +2460,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	}
 
 	intel_dp->psr.source_support = true;
+	intel_dp->psr.source_panel_replay_support = true;
 
 	/* Set link_standby x link_off defaults */
 	if (DISPLAY_VER(dev_priv) < 12)
@@ -2432,6 +2470,8 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
 	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work, tgl_dc3co_disable_work);
 	mutex_init(&intel_dp->psr.lock);
+
+	intel_panel_replay_init(intel_dp);
 }
 
 static int psr_get_status_and_error_status(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 2ac3a46cccc5..38e613990418 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -34,6 +34,7 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
 		     unsigned frontbuffer_bits,
 		     enum fb_op_origin origin);
 void intel_psr_init(struct intel_dp *intel_dp);
+void intel_panel_replay_init(struct intel_dp *intel_dp);
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
-- 
2.29.0

