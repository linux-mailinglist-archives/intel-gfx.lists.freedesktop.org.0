Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9CD903BA0
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B635E10E60C;
	Tue, 11 Jun 2024 12:13:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xxir2EV5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F13510E605
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718107990; x=1749643990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cxhlz6TSyAYPt6sVCPZFzNKgxsNfrM6so0IYjVbBlbc=;
 b=Xxir2EV5DWwag5XMpFBEBSjfgZXXe2EPY/6ECNfc2G14ItIgDbWi9tTt
 1kVFGvtmFDxdIwA0ciaGWPECmLObWWkbrh1ESTKTHSyHkH7CLJYeniaml
 zVIuMdUlSQVc0owdfiRJLHMeArTQY+TJNgajJm17fUddDNiEhjQMHZfaG
 uTMYfWtc9k+Qc+9FbPxQV6FFnnKa58gRh21Ljk7TP3kHJYnFN8p59IPkA
 VmykLDWsxKREbOphQ1yUZT2PRIfr1lq9RxKnI/XfyuquYKAOH5reC4rqj
 u/si9mCOGUidGhd8KS3fCllI7nNSQxnP/znMcAyPwUT2kDC8yJvEg88Ul A==;
X-CSE-ConnectionGUID: 7+0gVWFYSNuQ813hQMrN+Q==
X-CSE-MsgGUID: dgJWsLdzRWeQ7U0E6U2MAg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="32296829"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="32296829"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:10 -0700
X-CSE-ConnectionGUID: CHq2anvvSt+lK1ceIs2h9Q==
X-CSE-MsgGUID: PhHRIMqXTJaQqfyvn96LXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40118663"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.164])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:08 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 05/18] drm/i915/psr: enable sink for eDP1.5 Panel Replay
Date: Tue, 11 Jun 2024 15:12:30 +0300
Message-Id: <20240611121243.3366990-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240611121243.3366990-1-jouni.hogander@intel.com>
References: <20240611121243.3366990-1-jouni.hogander@intel.com>
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

v3:
  - set DP_PANEL_REPLAY_CRC_VERIFICATION in PANEL_REPLAY_CONFIG2
  - PANEL_REPLAY_CONFIG2 is available in DP2.1 as well
v2: do not configure ALPM for DP2.0 Panel Replay

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 36 ++++++++++++++++++++----
 1 file changed, 30 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5f27d9b04219..ff418d609abd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -692,6 +692,7 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
 		DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
 		DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
 		DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
+	u8 panel_replay_config2 = DP_PANEL_REPLAY_CRC_VERIFICATION;
 
 	if (crtc_state->has_sel_update)
 		val |= DP_PANEL_REPLAY_SU_ENABLE;
@@ -699,7 +700,14 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
 	if (crtc_state->enable_psr2_su_region_et)
 		val |= DP_PANEL_REPLAY_ENABLE_SU_REGION_ET;
 
+	if (crtc_state->req_psr2_sdp_prior_scanline)
+		panel_replay_config2 |=
+			DP_PANEL_REPLAY_SU_REGION_SCANLINE_CAPTURE;
+
 	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG, val);
+
+	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG2,
+			   panel_replay_config2);
 }
 
 static void _psr_enable_sink(struct intel_dp *intel_dp,
@@ -727,15 +735,31 @@ static void _psr_enable_sink(struct intel_dp *intel_dp,
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, val);
 }
 
+static void intel_psr_enable_sink_alpm(struct intel_dp *intel_dp,
+				       const struct intel_crtc_state *crtc_state)
+{
+	u8 val;
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
 void intel_psr_enable_sink(struct intel_dp *intel_dp,
 			   const struct intel_crtc_state *crtc_state)
 {
-	/* Enable ALPM at sink for psr2 */
-	if (!crtc_state->has_panel_replay && crtc_state->has_sel_update)
-		drm_dp_dpcd_writeb(&intel_dp->aux,
-				   DP_RECEIVER_ALPM_CONFIG,
-				   DP_ALPM_ENABLE |
-				   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
+	intel_psr_enable_sink_alpm(intel_dp, crtc_state);
 
 	crtc_state->has_panel_replay ?
 		_panel_replay_enable_sink(intel_dp, crtc_state) :
-- 
2.34.1

