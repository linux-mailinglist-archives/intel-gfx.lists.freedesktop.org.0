Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA70894F11
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:50:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C5E310FBD6;
	Tue,  2 Apr 2024 09:50:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IuUBQkl6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2D7F10FBD6
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712051438; x=1743587438;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cHrxO1GFaFegbeqYIUHlPrWg/1seEF9cr9e4sZRGK2c=;
 b=IuUBQkl60mvkQIHNOuRglStwYrHTuDU6vvh1UNkJ3Nx+Vaf6bQLlKwdY
 2sTo3O9lDS6USeV+bFmxEA/vpl215V1s0aBX4BM0yt83oeHOImdn3BqEA
 ic/cjcmoeX/4xN2SchxS1SATq/f9Y9TXA2dGmmsxWq9gdhKnyOEiAkoPK
 BCvgAMcPh9aiWHGfsiejx6b89Bb0MLbuXmkTw2iMZsww1fPpFS1aBaXxs
 HvZTxOZXnZDbHKuLRem83bfgq/B5b11bmHf3AI7HK2uHwzDVeBqNKo2yX
 aGqUYrAGQfc4TxZkrAl085AejsKb2lnlBNcAYvew037PQ5hQQpbO3+41U A==;
X-CSE-ConnectionGUID: mWrN2UsgSDmb1sTCxBG8pg==
X-CSE-MsgGUID: ruogINDfSOeobkzkS0Wdmg==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7422647"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7422647"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22693323"
Received: from sudhirj1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.34.252])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 08/19] drm/i915/psr: Unify panel replay enable/disable sink
Date: Tue,  2 Apr 2024 12:50:00 +0300
Message-Id: <20240402095011.200558-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240402095011.200558-1-jouni.hogander@intel.com>
References: <20240402095011.200558-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Unify enabling and disabling of psr/panel replay for a sink. Modify
intel_psr_enable_sink accordingly and use it for both cases.

v3:
  - move psr2_su_region_et_valid to be check for PSR2 only
v2:
  - enable panel replay for sink before link training
  - write ALPM_CONFIG only for PSR
  - add DP_PSR_CRC_VERIFICATION only for PSR
  - take care of disable sink as well

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 11 ++---
 drivers/gpu/drm/i915/display/intel_psr.c | 60 +++++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_psr.h |  2 +
 3 files changed, 50 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a3d3d4942eb1..4cdc218653b1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2809,15 +2809,14 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				    const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-	if (HAS_DP20(dev_priv)) {
+	if (HAS_DP20(dev_priv))
 		intel_dp_128b132b_sdp_crc16(enc_to_intel_dp(encoder),
 					    crtc_state);
-		if (crtc_state->has_panel_replay)
-			drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG,
-					   DP_PANEL_REPLAY_ENABLE);
-	}
+
+	/* Panel replay has to be enabled in sink dpcd before link training. */
+	if (crtc_state->has_panel_replay)
+		intel_psr_enable_sink(enc_to_intel_dp(encoder), crtc_state);
 
 	if (DISPLAY_VER(dev_priv) >= 14)
 		mtl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b7538a4405b8..4355fb02d8fd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -638,40 +638,59 @@ static bool psr2_su_region_et_valid(struct intel_dp *intel_dp)
 	return false;
 }
 
-static void intel_psr_enable_sink(struct intel_dp *intel_dp)
+static unsigned int intel_psr_get_enable_sink_offset(struct intel_dp *intel_dp)
+{
+	return intel_dp->psr.panel_replay_enabled ?
+		PANEL_REPLAY_CONFIG : DP_PSR_EN_CFG;
+}
+
+/*
+ * Note: Most of the bits are same in PANEL_REPLAY_CONFIG and DP_PSR_EN_CFG. We
+ * are relying on PSR definitions on these "common" bits.
+ */
+void intel_psr_enable_sink(struct intel_dp *intel_dp,
+			   const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u8 dpcd_val = DP_PSR_ENABLE;
 
-	if (intel_dp->psr.panel_replay_enabled)
-		return;
-
-	if (intel_dp->psr.psr2_enabled) {
+	if (crtc_state->has_psr2) {
 		/* Enable ALPM at sink for psr2 */
-		drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG,
-				   DP_ALPM_ENABLE |
-				   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
+		if (!crtc_state->has_panel_replay) {
+			drm_dp_dpcd_writeb(&intel_dp->aux,
+					   DP_RECEIVER_ALPM_CONFIG,
+					   DP_ALPM_ENABLE |
+					   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
+
+			if (psr2_su_region_et_valid(intel_dp))
+				dpcd_val |= DP_PSR_ENABLE_SU_REGION_ET;
+		}
 
 		dpcd_val |= DP_PSR_ENABLE_PSR2 | DP_PSR_IRQ_HPD_WITH_CRC_ERRORS;
-		if (psr2_su_region_et_valid(intel_dp))
-			dpcd_val |= DP_PSR_ENABLE_SU_REGION_ET;
 	} else {
 		if (intel_dp->psr.link_standby)
 			dpcd_val |= DP_PSR_MAIN_LINK_ACTIVE;
 
-		if (DISPLAY_VER(dev_priv) >= 8)
+		if (!crtc_state->has_panel_replay && DISPLAY_VER(dev_priv) >= 8)
 			dpcd_val |= DP_PSR_CRC_VERIFICATION;
 	}
 
-	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
+	if (crtc_state->has_panel_replay)
+		dpcd_val |= DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
+			DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN;
+
+	if (crtc_state->req_psr2_sdp_prior_scanline)
 		dpcd_val |= DP_PSR_SU_REGION_SCANLINE_CAPTURE;
 
 	if (intel_dp->psr.entry_setup_frames > 0)
 		dpcd_val |= DP_PSR_FRAME_CAPTURE;
 
-	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, dpcd_val);
+	drm_dp_dpcd_writeb(&intel_dp->aux,
+			   intel_psr_get_enable_sink_offset(intel_dp),
+			   dpcd_val);
 
-	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
+	if (intel_dp_is_edp(intel_dp))
+		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
 }
 
 static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
@@ -1955,12 +1974,17 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	} else {
 		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
 			    intel_dp->psr.psr2_enabled ? "2" : "1");
+
+		/*
+		 * Panel replay has to be enabled before link training: doing it
+		 * only for PSR here.
+		 */
+		intel_psr_enable_sink(intel_dp, crtc_state);
 	}
 
 	if (intel_dp_is_edp(intel_dp))
 		intel_snps_phy_update_psr_power_state(&dig_port->base, true);
 
-	intel_psr_enable_sink(intel_dp);
 	intel_psr_enable_source(intel_dp, crtc_state);
 	intel_dp->psr.enabled = true;
 	intel_dp->psr.paused = false;
@@ -2078,9 +2102,11 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	}
 
 	/* Disable PSR on Sink */
-	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);
+	drm_dp_dpcd_writeb(&intel_dp->aux,
+			   intel_psr_get_enable_sink_offset(intel_dp), 0);
 
-	if (intel_dp->psr.psr2_enabled)
+	if (!intel_dp->psr.panel_replay_enabled &&
+	    intel_dp->psr.psr2_enabled)
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, 0);
 
 	intel_dp->psr.enabled = false;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index cde781df84d5..2537dcb8765c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -23,6 +23,8 @@ struct intel_plane_state;
 
 bool intel_encoder_can_psr(struct intel_encoder *encoder);
 void intel_psr_init_dpcd(struct intel_dp *intel_dp);
+void intel_psr_enable_sink(struct intel_dp *intel_dp,
+			   const struct intel_crtc_state *crtc_state);
 void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
 void intel_psr_post_plane_update(struct intel_atomic_state *state,
-- 
2.34.1

