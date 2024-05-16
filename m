Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FA58C732C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6896510EC2D;
	Thu, 16 May 2024 08:50:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fsgTBkom";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4806910EAB1
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849427; x=1747385427;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QTVJvbi/MD+277zL8vi4pm7+3H085he52wskid9VPTA=;
 b=fsgTBkomoC6ayfIlqRBqVOUS1xWFufHrHZuBMT3b9SLv3Xpe/m0BT9Z3
 PL/wLur3Ko2VdcT6ySQLaT/g5XQ42oKLm9vMX+h6mvh9GV+ugn/Rhx4yS
 uK5ypkecM1sxjKipw3Pnwl/UCOeoxsh9cQaEesw4/VFjJm6tCOMkjDw3R
 OPC6P8DRSP2NCyBYRA9fBgyIOMaVUYxznOJeS8nrMKWUeJzjxvsNapURz
 XiMz6c7cIUoXV/NJnhMjNAJX502k2Z3hd3nrA6eRSjCU4oHVIVnE7ejB0
 nnO4tvOm6tpOPrjS2nnJ8XfuCASALVJbwY0eCwMC0qaS2+DEtr/JsjqZ7 w==;
X-CSE-ConnectionGUID: iD4qBhK1QO+Nr6AwU3auyw==
X-CSE-MsgGUID: emjbdnAmR9yiu1/o0ulnyw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756080"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756080"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:27 -0700
X-CSE-ConnectionGUID: g8ZecjanTWmod2yJCHdSSA==
X-CSE-MsgGUID: 2lWq5AYzQaKrAegN26GUFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398188"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 11/17] drm/i915/psr: enable sink for eDP1.5 Panel Replay
Date: Thu, 16 May 2024 11:49:51 +0300
Message-Id: <20240516084957.1557028-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240516084957.1557028-1-jouni.hogander@intel.com>
References: <20240516084957.1557028-1-jouni.hogander@intel.com>
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

eDP1.5 allows Panel Replay on eDP as well. Take this into account when
enabling sink PSR/Panel Replay. Write also PANEL_REPLAY_CONFIG2 register
accordingly.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 63 +++++++++++++++++-------
 1 file changed, 46 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7409cdf56894..d01170ccf603 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -691,6 +691,23 @@ static unsigned int intel_psr_get_enable_sink_offset(struct intel_dp *intel_dp)
 		PANEL_REPLAY_CONFIG : DP_PSR_EN_CFG;
 }
 
+static void intel_psr_enable_sink_alpm(struct intel_dp *intel_dp,
+				       const struct intel_crtc_state *crtc_state)
+{
+	u32 val;
+
+	if (!crtc_state->has_sel_update && (!crtc_state->has_panel_replay ||
+					    !intel_dp_is_edp(intel_dp)))
+		return;
+
+	val = DP_ALPM_ENABLE | DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE;
+
+	if (crtc_state->has_panel_replay)
+		val |= DP_ALPM_MODE_AUX_LESS;
+
+	drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, val);
+}
+
 /*
  * Note: Most of the bits are same in PANEL_REPLAY_CONFIG and DP_PSR_EN_CFG. We
  * are relying on PSR definitions on these "common" bits.
@@ -699,43 +716,55 @@ void intel_psr_enable_sink(struct intel_dp *intel_dp,
 			   const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	u8 dpcd_val = DP_PSR_ENABLE;
+	u8 enable_val = DP_PSR_ENABLE;
+	u8 panel_replay_config2 = 0;
+
+	intel_psr_enable_sink_alpm(intel_dp, crtc_state);
 
 	if (crtc_state->has_sel_update) {
-		/* Enable ALPM at sink for psr2 */
-		if (!crtc_state->has_panel_replay) {
-			drm_dp_dpcd_writeb(&intel_dp->aux,
-					   DP_RECEIVER_ALPM_CONFIG,
-					   DP_ALPM_ENABLE |
-					   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
+		/* PSR2 and Panel Replay SU on eDP */
+		if (intel_dp_is_edp(intel_dp)) {
+			if (crtc_state->req_psr2_sdp_prior_scanline) {
+				if (crtc_state->has_panel_replay)
+					panel_replay_config2 |=
+						DP_PANEL_REPLAY_SU_REGION_SCANLINE_CAPTURE;
+				else
+					enable_val |= DP_PSR_SU_REGION_SCANLINE_CAPTURE;
+			}
 
 			if (psr2_su_region_et_valid(intel_dp,
 						    intel_dp->psr.panel_replay_enabled))
-				dpcd_val |= DP_PSR_ENABLE_SU_REGION_ET;
+				enable_val |= DP_PSR_ENABLE_SU_REGION_ET;
 		}
 
-		dpcd_val |= DP_PSR_ENABLE_PSR2 | DP_PSR_IRQ_HPD_WITH_CRC_ERRORS;
+		enable_val |= DP_PSR_ENABLE_PSR2 | DP_PSR_IRQ_HPD_WITH_CRC_ERRORS;
 	} else {
+		/* PSR2 and Panel Replay Full Frame Update */
 		if (intel_dp->psr.link_standby)
-			dpcd_val |= DP_PSR_MAIN_LINK_ACTIVE;
+			enable_val |= DP_PSR_MAIN_LINK_ACTIVE;
 
 		if (!crtc_state->has_panel_replay && DISPLAY_VER(dev_priv) >= 8)
-			dpcd_val |= DP_PSR_CRC_VERIFICATION;
+			enable_val |= DP_PSR_CRC_VERIFICATION;
 	}
 
-	if (crtc_state->has_panel_replay)
-		dpcd_val |= DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
+	if (crtc_state->has_panel_replay) {
+		enable_val |= DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
 			DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN;
 
-	if (crtc_state->req_psr2_sdp_prior_scanline)
-		dpcd_val |= DP_PSR_SU_REGION_SCANLINE_CAPTURE;
+		if (intel_dp_is_edp(intel_dp))
+			enable_val |= DP_PANEL_REPLAY_VSC_SDP_CRC_EN;
+	}
 
 	if (intel_dp->psr.entry_setup_frames > 0)
-		dpcd_val |= DP_PSR_FRAME_CAPTURE;
+		enable_val |= DP_PSR_FRAME_CAPTURE;
 
 	drm_dp_dpcd_writeb(&intel_dp->aux,
 			   intel_psr_get_enable_sink_offset(intel_dp),
-			   dpcd_val);
+			   enable_val);
+
+	if (crtc_state->has_panel_replay && intel_dp_is_edp(intel_dp))
+		drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG2,
+				   panel_replay_config2);
 
 	if (intel_dp_is_edp(intel_dp))
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
-- 
2.34.1

