Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 084E77866A6
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 06:20:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43B8210E4A4;
	Thu, 24 Aug 2023 04:20:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49C0010E488
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 04:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692850847; x=1724386847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u1oY2U9Wpd8D2UZ900rDdXcsJwGTtwNry3fcT+BDAY4=;
 b=FI8rd4onrTU9Qf4wtFNOHqZSX9vy3FYPzRcsMvDkaMDHsJduq5TTPgcA
 Ag5kX4n2NneAQtogEMJ/259mDC3fTMnmpe8K5FSJljsbZRqGSySWRJPqd
 HvnRnhku6PEGRDOqme1coPm9GfQXhtD6NGCE+fYZF/VVKPtk3fMZgoLHb
 hfLkOiiCdGVX2qP5ueqv1U32LRTr4us6kWvUCOK0fzUDVDCFbDySaI5nU
 m8ykG9BZXHytQ8njp5GxXcQ7GJRbujnZU64PNnxkVTp0amzs6pbLGPKsm
 SSTbaejw0EdNFquCjJs9j8LnYJ6ylPbR2Bw1mUxGIWkuHlOCm2ZGFxokM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="371750975"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="371750975"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 21:20:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="730441472"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="730441472"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga007.jf.intel.com with ESMTP; 23 Aug 2023 21:20:45 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 09:39:50 +0530
Message-Id: <20230824040952.186407-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20230824040952.186407-1-animesh.manna@intel.com>
References: <20230824040952.186407-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 4/6] drm/i915/panelreplay: Initializaton and
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

Modify existing PSR implementation to enable panel replay feature of DP 2.0
which is similar to PSR feature of EDP panel. There is different DPCD
address to check panel capability compare to PSR and vsc sdp header
is different.

v1: Initial version.
v2:
- Set source_panel_replay_support flag under HAS_PNEL_REPLAY() check. [Jouni]
- Code restructured around intel_panel_replay_init
and renamed to intel_panel_replay_init_dpcd. [Jouni]
- Remove the initial code modification around has_psr2 flag. [Jouni]
- Add CAN_PANEL_REPLAY() in intel_encoder_can_psr which is used to
enable in intel_psr_post_plane_update. [Jouni]
v3:
- Initialize both psr and panel-replay. [Jouni]
- Initialize both panel replay and psr if detected. [Jouni]
- Refactoring psr function by introducing _psr_compute_config(). [Jouni]
- Add check for !is_edp while deriving source_panel_replay_support. [Jouni]
- Enable panel replay dpcd initialization in a separate patch. [Jouni]

v4:
- HAS_PANEL_REPLAY() check not needed during sink capability check.[Jouni]
- Set either panel replay source support or psr.[Jouni]

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 12 ++-
 drivers/gpu/drm/i915/display/intel_dp.c       | 44 ++++++++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  3 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 87 +++++++++++++------
 4 files changed, 107 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 731f2ec04d5c..97cef458f42b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1202,6 +1202,7 @@ struct intel_crtc_state {
 	bool has_psr2;
 	bool enable_psr2_sel_fetch;
 	bool req_psr2_sdp_prior_scanline;
+	bool has_panel_replay;
 	bool wm_level_disabled;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
@@ -1693,6 +1694,8 @@ struct intel_psr {
 	bool irq_aux_error;
 	u16 su_w_granularity;
 	u16 su_y_granularity;
+	bool source_panel_replay_support;
+	bool sink_panel_replay_support;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
@@ -1983,12 +1986,15 @@ dp_to_lspcon(struct intel_dp *intel_dp)
 #define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
 			   (intel_dp)->psr.source_support)
 
+#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
+			  (intel_dp)->psr.source_panel_replay_support)
+
 static inline bool intel_encoder_can_psr(struct intel_encoder *encoder)
 {
-	if (!intel_encoder_is_dp(encoder))
+	if (intel_encoder_is_dp(encoder) || (encoder->type == INTEL_OUTPUT_DP_MST))
+		return CAN_PSR(enc_to_intel_dp(encoder)) || CAN_PANEL_REPLAY(enc_to_intel_dp(encoder));
+	else
 		return false;
-
-	return CAN_PSR(enc_to_intel_dp(encoder));
 }
 
 static inline struct intel_digital_port *
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7067ee3a4bd3..b3301cf0da0a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2337,12 +2337,22 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
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
@@ -2451,6 +2461,21 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
 			vsc->revision = 0x4;
 			vsc->length = 0xe;
 		}
+	} else if (crtc_state->has_panel_replay) {
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
@@ -3744,10 +3769,11 @@ static ssize_t intel_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
 	sdp->sdp_header.HB3 = vsc->length; /* Number of Valid Data Bytes */
 
 	/*
-	 * Only revision 0x5 supports Pixel Encoding/Colorimetry Format as
-	 * per DP 1.4a spec.
+	 * Other than revision 0x5 which supports Pixel Encoding/Colorimetry
+	 * Format as per DP 1.4a spec, revision 0x7 also supports Pixel
+	 * Encoding/Colorimetry Format as per DP 2.0 spec.
 	 */
-	if (vsc->revision != 0x5)
+	if (vsc->revision != 0x5 || vsc->revision != 0x7)
 		goto out;
 
 	/* VSC SDP Payload for DB16 through DB18 */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 3eb085fbc7c8..07a3ab473be2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -44,6 +44,7 @@
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
 #include "skl_scaler.h"
+#include "intel_psr.h"
 
 static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
 					  const struct drm_display_mode *adjusted_mode,
@@ -398,6 +399,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 
 	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
 
+	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b1c0494826f9..8dd61c62492d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -472,6 +472,24 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 	intel_dp->psr.su_y_granularity = y;
 }
 
+static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	u8 pr_dpcd = 0;
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
 static void _psr_init_dpcd(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 =
@@ -521,12 +539,13 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 
 void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 {
+	_panel_replay_init_dpcd(intel_dp);
+
 	drm_dp_dpcd_read(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
 			 sizeof(intel_dp->psr_dpcd));
 
 	if (intel_dp->psr_dpcd[0])
 		_psr_init_dpcd(intel_dp);
-	/* TODO: Add PR case here */
 
 	if (intel_dp->psr.sink_psr2_support) {
 		intel_dp->psr.colorimetry_support =
@@ -1207,13 +1226,11 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	return false;
 }
 
-void intel_psr_compute_config(struct intel_dp *intel_dp,
-			      struct intel_crtc_state *crtc_state,
-			      struct drm_connector_state *conn_state)
+static bool _psr_compute_config(struct intel_dp *intel_dp,
+				struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int psr_setup_time;
 
 	/*
@@ -1221,10 +1238,36 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	 * So if VRR is enabled, do not enable PSR.
 	 */
 	if (crtc_state->vrr.enable)
-		return;
+		return false;
 
 	if (!CAN_PSR(intel_dp))
-		return;
+		return false;
+
+	psr_setup_time = drm_dp_psr_setup_time(intel_dp->psr_dpcd);
+	if (psr_setup_time < 0) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "PSR condition failed: Invalid PSR setup time (0x%02x)\n",
+			    intel_dp->psr_dpcd[1]);
+		return false;
+	}
+
+	if (intel_usecs_to_scanlines(adjusted_mode, psr_setup_time) >
+	    adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay - 1) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "PSR condition failed: PSR setup time (%d us) too long\n",
+			    psr_setup_time);
+		return false;
+	}
+
+	return true;
+}
+
+void intel_psr_compute_config(struct intel_dp *intel_dp,
+			      struct intel_crtc_state *crtc_state,
+			      struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
 	if (!psr_global_enabled(intel_dp)) {
 		drm_dbg_kms(&dev_priv->drm, "PSR disabled by flag\n");
@@ -1234,7 +1277,6 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	if (intel_dp->psr.sink_not_reliable) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "PSR sink implementation is not reliable\n");
-		return;
 	}
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
@@ -1243,23 +1285,11 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	psr_setup_time = drm_dp_psr_setup_time(intel_dp->psr_dpcd);
-	if (psr_setup_time < 0) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR condition failed: Invalid PSR setup time (0x%02x)\n",
-			    intel_dp->psr_dpcd[1]);
-		return;
-	}
-
-	if (intel_usecs_to_scanlines(adjusted_mode, psr_setup_time) >
-	    adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay - 1) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR condition failed: PSR setup time (%d us) too long\n",
-			    psr_setup_time);
-		return;
-	}
+	if (CAN_PANEL_REPLAY(intel_dp))
+		crtc_state->has_panel_replay = true;
+	else
+		crtc_state->has_psr = _psr_compute_config(intel_dp, crtc_state);
 
-	crtc_state->has_psr = true;
 	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
@@ -2699,7 +2729,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	if (!HAS_PSR(dev_priv))
+	if (!(HAS_PSR(dev_priv) || HAS_PANEL_REPLAY(dev_priv)))
 		return;
 
 	/*
@@ -2717,7 +2747,10 @@ void intel_psr_init(struct intel_dp *intel_dp)
 		return;
 	}
 
-	intel_dp->psr.source_support = true;
+	if (HAS_PANEL_REPLAY(dev_priv) && !intel_dp_is_edp(intel_dp))
+		intel_dp->psr.source_panel_replay_support = true;
+	else
+		intel_dp->psr.source_support = true;
 
 	/* Set link_standby x link_off defaults */
 	if (DISPLAY_VER(dev_priv) < 12)
-- 
2.29.0

