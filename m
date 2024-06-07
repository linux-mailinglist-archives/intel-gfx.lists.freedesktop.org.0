Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EDE90057F
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C27710EC65;
	Fri,  7 Jun 2024 13:49:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BT/O3Ue/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79CA110EC63
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717768180; x=1749304180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9QY4riPRrDVOm6tk3+kZW+qMYyWBgR9IFrT16thdhZI=;
 b=BT/O3Ue/aPkJUfKQRZ9njMaZ5RZ8E106ebSiHfPEkUSnBLJPQNex1klX
 hSGfk5pdc+xq9bL2Ci3w1imFR/je1Y2EbJ5gVwc+n+3xTqK6RWc1sM1W3
 pMKarHE2OxtU/cwNtamHViVP4J8cyX4+KymQmPL0m1NAfStV+Ro+RJ9Kc
 V+L/j0GWAntMGj3EIGMTOktWRicBPELqJA+j5+/EzBQekeNBdrsnfBtJU
 RCFfquVJLJYMVVmz5ucnXw/30fU8noduDIi+RDx9bh0QXQPqlsp46QXJU
 jZYfWC/nxhuS/7g4plBmjONW6idGw+2wc3t8iQap2OycIMZUrpVa8+mc0 A==;
X-CSE-ConnectionGUID: hT3XRae5TiC2QbBRZww2yg==
X-CSE-MsgGUID: mIECnsbkQZivoXOxhXDyZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14331651"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14331651"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:39 -0700
X-CSE-ConnectionGUID: fIY5jWkMRuK9U5o08eS9PQ==
X-CSE-MsgGUID: +GfflOvAR7iS1+u7FdFk5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43458970"
Received: from lhorenst-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.213.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 06/13] drm/i915/psr: Split enabling sink for PSR and Panel
 Replay
Date: Fri,  7 Jun 2024 16:49:10 +0300
Message-Id: <20240607134917.1327574-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240607134917.1327574-1-jouni.hogander@intel.com>
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
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

Current intel_psr_enable_sink is a mess due to partly reusing PSR bit
definitions for Panel Replay. Even thought PSR and Panel Replay enable
registers do have common bits they still have also different bits and same
bits with different meaning. For sake of clarity split enabling sink to PSR
and Panel Replay specific parts.

Also fix issue caused by using psr->panel_replay_enabled to early.

Fixes: 88ae6c65ecdb ("drm/i915/psr: Unify panel replay enable/disable sink")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 81 +++++++++++++-----------
 1 file changed, 44 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4a4124a92a0d..3cc38ba2f954 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -686,56 +686,62 @@ static bool psr2_su_region_et_valid(struct intel_dp *intel_dp)
 	return false;
 }
 
-static unsigned int intel_psr_get_enable_sink_offset(struct intel_dp *intel_dp)
+static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
+				     const struct intel_crtc_state *crtc_state)
 {
-	return intel_dp->psr.panel_replay_enabled ?
-		PANEL_REPLAY_CONFIG : DP_PSR_EN_CFG;
+	u8 val = DP_PANEL_REPLAY_ENABLE |
+		DP_PANEL_REPLAY_VSC_SDP_CRC_EN |
+		DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
+		DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
+		DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
+
+	if (crtc_state->has_sel_update)
+		val |= DP_PANEL_REPLAY_SU_ENABLE;
+
+	if (crtc_state->enable_psr2_su_region_et)
+		val |= DP_PANEL_REPLAY_ENABLE_SU_REGION_ET;
+
+	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG, val);
 }
 
-/*
- * Note: Most of the bits are same in PANEL_REPLAY_CONFIG and DP_PSR_EN_CFG. We
- * are relying on PSR definitions on these "common" bits.
- */
-void intel_psr_enable_sink(struct intel_dp *intel_dp,
-			   const struct intel_crtc_state *crtc_state)
+static void _psr_enable_sink(struct intel_dp *intel_dp,
+			    const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	u8 dpcd_val = DP_PSR_ENABLE;
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	u8 val = DP_PSR_ENABLE;
 
 	if (crtc_state->has_sel_update) {
-		/* Enable ALPM at sink for psr2 */
-		if (!crtc_state->has_panel_replay) {
-			drm_dp_dpcd_writeb(&intel_dp->aux,
-					   DP_RECEIVER_ALPM_CONFIG,
-					   DP_ALPM_ENABLE |
-					   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
-
-			if (crtc_state->enable_psr2_su_region_et)
-				dpcd_val |= DP_PSR_ENABLE_SU_REGION_ET;
-		}
-
-		dpcd_val |= DP_PSR_ENABLE_PSR2 | DP_PSR_IRQ_HPD_WITH_CRC_ERRORS;
+		val |= DP_PSR_ENABLE_PSR2 | DP_PSR_IRQ_HPD_WITH_CRC_ERRORS;
 	} else {
 		if (intel_dp->psr.link_standby)
-			dpcd_val |= DP_PSR_MAIN_LINK_ACTIVE;
+			val |= DP_PSR_MAIN_LINK_ACTIVE;
 
-		if (!crtc_state->has_panel_replay && DISPLAY_VER(dev_priv) >= 8)
-			dpcd_val |= DP_PSR_CRC_VERIFICATION;
+		if (DISPLAY_VER(i915) >= 8)
+			val |= DP_PSR_CRC_VERIFICATION;
 	}
 
-	if (crtc_state->has_panel_replay)
-		dpcd_val |= DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
-			DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN;
-
-	if (crtc_state->req_psr2_sdp_prior_scanline)
-		dpcd_val |= DP_PSR_SU_REGION_SCANLINE_CAPTURE;
+	if (crtc_state->enable_psr2_su_region_et)
+		val |= DP_PANEL_REPLAY_ENABLE_SU_REGION_ET;
 
 	if (intel_dp->psr.entry_setup_frames > 0)
-		dpcd_val |= DP_PSR_FRAME_CAPTURE;
+		val |= DP_PSR_FRAME_CAPTURE;
 
-	drm_dp_dpcd_writeb(&intel_dp->aux,
-			   intel_psr_get_enable_sink_offset(intel_dp),
-			   dpcd_val);
+	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, val);
+}
+
+void intel_psr_enable_sink(struct intel_dp *intel_dp,
+			   const struct intel_crtc_state *crtc_state)
+{
+	/* Enable ALPM at sink for psr2 */
+	if (!crtc_state->has_panel_replay && crtc_state->has_sel_update)
+		drm_dp_dpcd_writeb(&intel_dp->aux,
+				   DP_RECEIVER_ALPM_CONFIG,
+				   DP_ALPM_ENABLE |
+				   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
+
+	crtc_state->has_panel_replay ?
+		_panel_replay_enable_sink(intel_dp, crtc_state) :
+		_psr_enable_sink(intel_dp, crtc_state);
 
 	if (intel_dp_is_edp(intel_dp))
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
@@ -1920,7 +1926,8 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	/* Disable PSR on Sink */
 	drm_dp_dpcd_writeb(&intel_dp->aux,
-			   intel_psr_get_enable_sink_offset(intel_dp), 0);
+			   intel_dp->psr.panel_replay_enabled ?
+			   PANEL_REPLAY_CONFIG : DP_PSR_EN_CFG, 0);
 
 	if (!intel_dp->psr.panel_replay_enabled &&
 	    intel_dp->psr.sel_update_enabled)
-- 
2.34.1

