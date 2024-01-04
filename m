Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA28F823FCE
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 11:49:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A73A10E430;
	Thu,  4 Jan 2024 10:49:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22DD010E430
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 10:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704365372; x=1735901372;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jkF/8i3UEW/ZkfAV3mkmAJc+f4sOUlymfs/YuNKu/Ec=;
 b=HNXgVvrE7iR8SdnQt08ITA5GUbsWUN+00akLQeMqQgeorX6Pxg2UyqMT
 4XXBhNllct99LnQJZh9FTLmGKGoP5enuvcNvwLk1erV6+QkW5abSJ4ger
 tjXERmiQLWwl5Ti+b94RoLK7U2LewSzV2RZVVOoQIw2riWyq9QSchBDya
 /VEk+OrZRH++74rSHdBlCeT4pUPIDi2hx5e0WIs0vf7rMFWiEQtrVRr44
 8fR196wIteIWT5+Ei+s9/4UQpCwVs2+hIyAV1XmE7hW+wPOrOlUnJGPIB
 MjeHFMbJCVtyStQuOwjeO86ExowcZcKmaVTJlRu12fnH2jHnkv+9pyYEp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="396928100"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="396928100"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="923863603"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="923863603"
Received: from jstopfor-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.226])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:30 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/12] drm/i915/psr: Unify panel replay enable sink
Date: Thu,  4 Jan 2024 12:48:12 +0200
Message-Id: <20240104104821.1822988-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240104104821.1822988-1-jouni.hogander@intel.com>
References: <20240104104821.1822988-1-jouni.hogander@intel.com>
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

Panel replay enable for a sink is currently done in
intel_ddi.c:intel_ddi_pre_enable_dp. Move it to intel_psr_enable_sink to
unify psr/panel replay paths. Also enable some additional hpd interrupts
for panel replay.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  7 +-----
 drivers/gpu/drm/i915/display/intel_psr.c | 31 +++++++++++++++++-------
 2 files changed, 23 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2746655bcb26..e5ad3ace7678 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2800,15 +2800,10 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
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
 
 	if (DISPLAY_VER(dev_priv) >= 14)
 		mtl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 35cef210ff2f..6bdd202ad882 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -606,22 +606,30 @@ static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
 		       aux_ctl);
 }
 
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
 static void intel_psr_enable_sink(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u8 dpcd_val = DP_PSR_ENABLE;
 
-	if (intel_dp->psr.panel_replay_enabled)
-		return;
-
 	if (intel_dp->psr.psr2_enabled) {
 		/* Enable ALPM at sink for psr2 */
-		drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG,
-				   DP_ALPM_ENABLE |
-				   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
+		if (intel_dp_is_edp(intel_dp))
+			drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG,
+					   DP_ALPM_ENABLE |
+					   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
 
 		dpcd_val |= DP_PSR_ENABLE_PSR2 | DP_PSR_IRQ_HPD_WITH_CRC_ERRORS;
-	} else {
+	} else if (!intel_dp->psr.panel_replay_enabled) {
 		if (intel_dp->psr.link_standby)
 			dpcd_val |= DP_PSR_MAIN_LINK_ACTIVE;
 
@@ -629,15 +637,20 @@ static void intel_psr_enable_sink(struct intel_dp *intel_dp)
 			dpcd_val |= DP_PSR_CRC_VERIFICATION;
 	}
 
+	if (intel_dp->psr.panel_replay_enabled)
+		dpcd_val |= DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
+			DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN;
+
 	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
 		dpcd_val |= DP_PSR_SU_REGION_SCANLINE_CAPTURE;
 
 	if (intel_dp->psr.entry_setup_frames > 0)
 		dpcd_val |= DP_PSR_FRAME_CAPTURE;
 
-	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, dpcd_val);
+	drm_dp_dpcd_writeb(&intel_dp->aux, intel_psr_get_enable_sink_offset(intel_dp), dpcd_val);
 
-	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
+	if (intel_dp_is_edp(intel_dp))
+		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
 }
 
 static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
-- 
2.34.1

