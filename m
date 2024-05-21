Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFD08CAA4E
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:47:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF7A10E776;
	Tue, 21 May 2024 08:47:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CBF6P451";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE75510E76F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716281251; x=1747817251;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pUbmRTIIXEOgHYIdDZ47h0H14/tvjCtlCxwri8t0uJs=;
 b=CBF6P451jFxY4MFL2semhtP/351LGlylzHiDiiMe9wbWcng8xFpAog/z
 8qj0C6eH66tKhrzlouPsnMItNApNvLbZRHKgTTxUiYvKaiOV3aPzAjWqb
 a2BVo70hQgNqOdTYCMQIa13e3iF6288C7tvxVpenbJiIikDYN0YBiGXZG
 YXdximyzmzHbICfilu46sjUjdMBF053HPL8o6exBwbgOzvC2KjaJeVCBT
 zqk/8V7UCZzBxJtPBu+/iVbCVT9ze8hvb5wjNpjugmODE1+P4yXSKF8vF
 RN1F5A3a/gwdI0vmeOMzDxvoMdxJkS1Pm6z8cdmB+YoXmg8Y8pVWoa4CX w==;
X-CSE-ConnectionGUID: eRl1/V8PTCavUyGM6dpWhg==
X-CSE-MsgGUID: 3hELSsQ/TJmycebruCOv6w==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12297837"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12297837"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:30 -0700
X-CSE-ConnectionGUID: jl000DemTrCZqceaysKouw==
X-CSE-MsgGUID: fEykWKMMTkGODE1xfkGfsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="33272543"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 11/17] drm/i915/psr: enable sink for eDP1.5 Panel Replay
Date: Tue, 21 May 2024 11:46:42 +0300
Message-Id: <20240521084648.1987837-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084648.1987837-1-jouni.hogander@intel.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
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
index 87bfa68b1ddb..836a9e3b5921 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -692,6 +692,23 @@ static unsigned int intel_psr_get_enable_sink_offset(struct intel_dp *intel_dp)
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
@@ -700,43 +717,55 @@ void intel_psr_enable_sink(struct intel_dp *intel_dp,
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

