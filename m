Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 928017C51DB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 13:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AE3C10E6FF;
	Wed, 11 Oct 2023 11:23:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B35810E6EB;
 Wed, 11 Oct 2023 11:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697023385; x=1728559385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G9rAaPOyE4Px2OouSvgQGq5OX7GyJnf8Nt4zdiEDoKY=;
 b=QF5Hfrgl0MMxFE2bmnKCunhjdTi1T6hNSUVMiNEM4Q/6n0GAXTqKZZ/D
 oMmaniSCGnl5foQIJy+OJt8VPVyPyJQANHIetH+ERk6IJuwERY/WxoPNv
 h8iaFr0NcZCUGmcJiWpsIqsoffWX6LxfLN+WfQmo1P4SJ7kV+SLgLOgUU
 8xeS7Br0AqKjNj35jEi61rp7nr8KvhHkH4Cam0rSVixwffli5TGlQrQQB
 TOXMDXPxz7UIdrhWJYmWft+XbJQRK6z1IVeFRtCWTw+JH8mOgYvSayHtK
 34GCzFefdKICnSy61PijMbpSAl3ReI4/YDT+duOOYNeL1DbqgRgcu4QCm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="387482650"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="387482650"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 04:21:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="877630913"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="877630913"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga004.jf.intel.com with ESMTP; 11 Oct 2023 04:21:37 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 16:39:33 +0530
Message-Id: <20231011110936.1851563-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20231011110936.1851563-1-animesh.manna@intel.com>
References: <20231011110936.1851563-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 3/6] drm/i915/panelreplay: Initializaton and
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
Cc: Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Modify existing PSR implementation to enable panel replay feature of DP 2.0
which is similar to PSR feature of EDP panel. There is different DPCD
address to check panel capability compare to PSR and vsc sdp header
is different.

v1: Initial version.
v2:
- Set source_panel_replay_support flag under HAS_PANEL_REPLAY()
condition check. [Jouni]
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
- HAS_PANEL_REPLAY() check not needed during sink capability check. [Jouni]
- Set either panel replay source support or psr. [Jouni]

v5:
- HAS_PANEL_REPLAY() removed and use HAS_DP20() instead. [Jouni]
- Move psr related code to intel_psr.c. [Jani]
- Reset sink_panel_replay_support flag during disconnection. [Jani]

v6: return statement restored which is removed by misatke. [Jouni]
v7: cosmetic changes. [Arun]

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 14 +--
 drivers/gpu/drm/i915/display/intel_dp.c       | 49 ++++++++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  3 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 96 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_psr.h      |  7 ++
 5 files changed, 123 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8d8b2f8d37a9..95b318f7b2b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1204,6 +1204,7 @@ struct intel_crtc_state {
 	bool has_psr2;
 	bool enable_psr2_sel_fetch;
 	bool req_psr2_sdp_prior_scanline;
+	bool has_panel_replay;
 	bool wm_level_disabled;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
@@ -1701,6 +1702,8 @@ struct intel_psr {
 	bool irq_aux_error;
 	u16 su_w_granularity;
 	u16 su_y_granularity;
+	bool source_panel_replay_support;
+	bool sink_panel_replay_support;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
@@ -1988,17 +1991,6 @@ dp_to_lspcon(struct intel_dp *intel_dp)
 
 #define dp_to_i915(__intel_dp) to_i915(dp_to_dig_port(__intel_dp)->base.base.dev)
 
-#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
-			   (intel_dp)->psr.source_support)
-
-static inline bool intel_encoder_can_psr(struct intel_encoder *encoder)
-{
-	if (!intel_encoder_is_dp(encoder))
-		return false;
-
-	return CAN_PSR(enc_to_intel_dp(encoder));
-}
-
 static inline struct intel_digital_port *
 hdmi_to_dig_port(struct intel_hdmi *intel_hdmi)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ef7cb8134b6..b038f1d2a7ad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2432,12 +2432,22 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
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
@@ -2546,6 +2556,21 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
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
@@ -3843,11 +3868,16 @@ static ssize_t intel_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
 	sdp->sdp_header.HB2 = vsc->revision; /* Revision Number */
 	sdp->sdp_header.HB3 = vsc->length; /* Number of Valid Data Bytes */
 
+	if (vsc->revision == 0x6) {
+		sdp->db[0] = 1;
+		sdp->db[3] = 1;
+	}
+
 	/*
-	 * Only revision 0x5 supports Pixel Encoding/Colorimetry Format as
-	 * per DP 1.4a spec.
+	 * Revision 0x5 and revision 0x7 supports Pixel Encoding/Colorimetry
+	 * Format as per DP 1.4a spec and DP 2.0 respectively.
 	 */
-	if (vsc->revision != 0x5)
+	if (!(vsc->revision == 0x5 || vsc->revision == 0x7))
 		goto out;
 
 	/* VSC SDP Payload for DB16 through DB18 */
@@ -5368,6 +5398,7 @@ intel_dp_detect(struct drm_connector *connector,
 	if (status == connector_status_disconnected) {
 		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
 		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
+		intel_dp->psr.sink_panel_replay_support = false;
 
 		if (intel_dp->is_mst) {
 			drm_dbg_kms(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 73e397736463..617b7afbcb94 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -43,6 +43,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
+#include "intel_psr.h"
 #include "skl_scaler.h"
 
 static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
@@ -422,6 +423,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 
 	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
 
+	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0669ab7a9191..f9837001aa5f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -172,6 +172,15 @@
  * irrelevant for normal operation.
  */
 
+bool intel_encoder_can_psr(struct intel_encoder *encoder)
+{
+	if (intel_encoder_is_dp(encoder) || encoder->type == INTEL_OUTPUT_DP_MST)
+		return CAN_PSR(enc_to_intel_dp(encoder)) ||
+		       CAN_PANEL_REPLAY(enc_to_intel_dp(encoder));
+	else
+		return false;
+}
+
 static bool psr_global_enabled(struct intel_dp *intel_dp)
 {
 	struct intel_connector *connector = intel_dp->attached_connector;
@@ -474,6 +483,25 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 	intel_dp->psr.su_y_granularity = y;
 }
 
+static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	u8 pr_dpcd = 0;
+
+	intel_dp->psr.sink_panel_replay_support = false;
+	drm_dp_dpcd_readb(&intel_dp->aux, DP_PANEL_REPLAY_CAP, &pr_dpcd);
+
+	if (!(pr_dpcd & DP_PANEL_REPLAY_SUPPORT)) {
+		drm_dbg_kms(&i915->drm,
+			    "Panel replay is not supported by panel\n");
+		return;
+	}
+
+	drm_dbg_kms(&i915->drm,
+		    "Panel replay is supported by panel\n");
+	intel_dp->psr.sink_panel_replay_support = true;
+}
+
 static void _psr_init_dpcd(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 =
@@ -523,12 +551,13 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 
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
@@ -1209,13 +1238,11 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
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
@@ -1223,10 +1250,36 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
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
@@ -1245,23 +1298,11 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
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
@@ -2694,7 +2735,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	if (!HAS_PSR(dev_priv))
+	if (!(HAS_PSR(dev_priv) || HAS_DP20(dev_priv)))
 		return;
 
 	/*
@@ -2712,7 +2753,10 @@ void intel_psr_init(struct intel_dp *intel_dp)
 		return;
 	}
 
-	intel_dp->psr.source_support = true;
+	if (HAS_DP20(dev_priv) && !intel_dp_is_edp(intel_dp))
+		intel_dp->psr.source_panel_replay_support = true;
+	else
+		intel_dp->psr.source_support = true;
 
 	/* Set link_standby x link_off defaults */
 	if (DISPLAY_VER(dev_priv) < 12)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index bf35f42df6bc..6a1f4573852b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -21,6 +21,13 @@ struct intel_encoder;
 struct intel_plane;
 struct intel_plane_state;
 
+#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
+			   (intel_dp)->psr.source_support)
+
+#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
+				    (intel_dp)->psr.source_panel_replay_support)
+
+bool intel_encoder_can_psr(struct intel_encoder *encoder);
 void intel_psr_init_dpcd(struct intel_dp *intel_dp);
 void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
-- 
2.29.0

