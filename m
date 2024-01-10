Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B09B829AF9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 14:13:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 756E110E759;
	Wed, 10 Jan 2024 13:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A229810E5F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 13:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704892413; x=1736428413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2rW7kMyNu87LA4bpf7uongMwq8rEkoFNlJC6Ew+TLCE=;
 b=MjH+orCiuuk5R6ba1bbnAwmgxDLhHsbnJXLHiBWBRbVqn0d4jA9uBsRk
 9ZynkSOh50ZEkw943pdfHkLEOov0wQLXsja8klwmVN7thU4OWyQeSrLue
 0upyG+N/BWKcZ/gj62BGQrTzlSpFQy0sfWgTO7H3znaNm4UrVdOqqFDjR
 p9y3rmY6DGuEpqcA9JbT99s+gOBbvuW77WI9GcE+/v6Qjdmdlq+gHKmgS
 cSvXTyzoWmmVuxHwgqVVvsIEU0fVaa7ihSRzRrZ2raT99cfVdyFK+n9p6
 5afnSj6TYSELDJ3NN1zvqC/8fKKbzFf4fVVcyLpIsVsX72cb2ZJyVZs1+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="464914016"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="464914016"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="816347057"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="816347057"
Received: from vsovraso-mobl.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:32 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 04/13] drm/i915/psr: Unify panel replay enable sink
Date: Wed, 10 Jan 2024 15:12:55 +0200
Message-Id: <20240110131304.2470006-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240110131304.2470006-1-jouni.hogander@intel.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
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
 drivers/gpu/drm/i915/display/intel_ddi.c |  7 +------
 drivers/gpu/drm/i915/display/intel_psr.c | 19 +++++++++++++++++--
 2 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 922194b957be..db2a027fc55e 100644
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
index a9421dd092c5..8157a1eac8c2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -618,6 +618,16 @@ static bool psr2_su_region_et_valid(struct intel_dp *intel_dp)
 	return false;
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
@@ -643,15 +653,20 @@ static void intel_psr_enable_sink(struct intel_dp *intel_dp)
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

