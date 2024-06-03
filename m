Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A74D8D832C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A3210E35C;
	Mon,  3 Jun 2024 13:01:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jkgzudww";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6D610E398
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419675; x=1748955675;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A0AKuK2RuCW1KMgaHmpeJPYWL0uRCjCxoXQ7W9ASf04=;
 b=Jkgzudwwg31yxwr0tAoZ7dCXFjYREeHXkg+/VF6EkuZzjzn4qPRwIjuX
 UwdIz+8yybhKI26LM54pEENVp4nWKNLneD9SBRmvN2vk58BspMh8aayoP
 4XTrCFttlOLbT11l7IaIpvN5XkGmT0iTjKMU58HdEUIUj/PXW1ZfKNHLc
 p2+b1VDPT63MewFBkIn0KWiguA8CHiw926j6AjBgRFYP7B5Ck8JYmVF3j
 uSpb9h2mGmLC0cLcw+6r8SMx1pZR4OJMPlEHxGp/mbopc1aaHysxYaLh+
 8t+vhYNg+D/OOW6g3/dDJRj/2NuQ/Jk/OdDDFRnr8Z8Ttk7dBXPOCwjeJ A==;
X-CSE-ConnectionGUID: gN2KF0nQSSGxjy8hjQOyOQ==
X-CSE-MsgGUID: UO3xtdXPTayaHCHG5JLXRw==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774480"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774480"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:14 -0700
X-CSE-ConnectionGUID: SbJ+XqUlRKGxCM02cO4Mnw==
X-CSE-MsgGUID: +Ohqww8WSW2LgjFNSZD7EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291859"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:13 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 10/19] drm/i915/psr: enable sink for eDP1.5 Panel Replay
Date: Mon,  3 Jun 2024 16:00:34 +0300
Message-Id: <20240603130043.2615716-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240603130043.2615716-1-jouni.hogander@intel.com>
References: <20240603130043.2615716-1-jouni.hogander@intel.com>
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

v2: do not configure ALPM for DP2.0 Panel Replay

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 67 ++++++++++++++++++------
 1 file changed, 50 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e347775610df..1c8ee5a4a9b8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -690,6 +690,27 @@ static unsigned int intel_psr_get_enable_sink_offset(struct intel_dp *intel_dp)
 		PANEL_REPLAY_CONFIG : DP_PSR_EN_CFG;
 }
 
+static void intel_psr_enable_sink_alpm(struct intel_dp *intel_dp,
+				       const struct intel_crtc_state *crtc_state)
+{
+	u32 val;
+
+	/*
+	 * eDP Panel Replay uses always ALPM
+	 * PSR2 uses ALPM but PSR1 doesn't
+	 */
+	if (!intel_dp_is_edp(intel_dp) || (!crtc_state->has_panel_replay &&
+					   !crtc_state->has_sel_update))
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
@@ -698,42 +719,54 @@ void intel_psr_enable_sink(struct intel_dp *intel_dp,
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
 
 			if (crtc_state->enable_psr2_su_region_et)
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

