Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC5D90E357
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 08:22:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01FED10E89A;
	Wed, 19 Jun 2024 06:22:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qt3+ciL/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDD4E10E887
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 06:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718778125; x=1750314125;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uzFrTbeRdFwvQd2MRUi779sWqAsWpYb7JznVKwTWPKU=;
 b=Qt3+ciL/hPs3WdT7V3UbCJFmo97F8xiLvqtk5KcCudZ27pX6YezLB8+r
 OGwvp/I9jBls4qTmpjIem4xYs/krh28faJYp8LyvspJlDLFB/W2a8NdGP
 esWcLOcwfTCp5Dl+FiTxIXWWwK6GEuo0WXSVpmZaMy+1C3aAg6txcJ592
 9916W8gM1iEmxVxWriu0AEMji8GA9ZuEm99h7GFbAU2tTeQ4NpOxviNJ+
 JRjkkY7dkUkroFg+FbOSCGg2jqUZSw9dR/xGssY0K9LEIXDj34FutuUOD
 ir0mGAlmuk+QlDDUBuOtg7tux3HHXgSwu4c8sOnCcDWXFsNUWIj7IdJTh g==;
X-CSE-ConnectionGUID: Tt02+FsvT+27a+rK/bdaYg==
X-CSE-MsgGUID: gsfgfHg1RZaXJzTn0q32mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26377383"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="26377383"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:05 -0700
X-CSE-ConnectionGUID: vysULAu3Tw6KLlDgnvnb5Q==
X-CSE-MsgGUID: cSxRZUedRMyB5N+rNEBpoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="41905963"
Received: from unknown (HELO jhogande-mobl1..) ([10.245.245.109])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:03 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 03/11] drm/i915/psr: enable sink for eDP1.5 Panel Replay
Date: Wed, 19 Jun 2024 09:21:23 +0300
Message-Id: <20240619062131.4021196-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240619062131.4021196-1-jouni.hogander@intel.com>
References: <20240619062131.4021196-1-jouni.hogander@intel.com>
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
index 277e8c484985..a9bd7e379470 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -713,6 +713,7 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
 		DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
 		DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
 		DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
+	u8 panel_replay_config2 = DP_PANEL_REPLAY_CRC_VERIFICATION;
 
 	if (crtc_state->has_sel_update)
 		val |= DP_PANEL_REPLAY_SU_ENABLE;
@@ -720,7 +721,14 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
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
@@ -748,15 +756,31 @@ static void _psr_enable_sink(struct intel_dp *intel_dp,
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

