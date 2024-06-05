Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 996198FC90A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:26:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6683110E73D;
	Wed,  5 Jun 2024 10:26:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YNiQ2wf9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C18AB10E733
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583208; x=1749119208;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hBLp/O06tw1NBxSigVjQBV//pwzdmi1wpnnBPBGtXN8=;
 b=YNiQ2wf9TL/iTmyfTYPOmltn1OZv5lHm7F2hzf0mrDSFU1enIY3TpSwJ
 blVhLOsvdodKEi6yPlpoDRra0ZobFo3SKUR7twdBA/NOOcJ6gXJ0RqF5Q
 +wXAN9GEuuLLxOK4higJfBwoX6HmjgIfLsq0VbEInlq/hAD8XB5/mfw5/
 nB5oylHkIJzt/tRSkX0SNJx/Fvwb5hsTWjkYbpoRa12nOxuq/v3SeiYn1
 6Mg29vp/Uasfo4ympNzBbmurnr8FS0Sj3O6XqRCkZYIGUO73mHHJoCDMa
 quYhb6ceZQ2Bi9p/VBFTKYZWR2xfFc3ANxJKQc7ag6SwUt9uMIumm8TIE A==;
X-CSE-ConnectionGUID: Cjf745IYTsqvNowiGILSmg==
X-CSE-MsgGUID: 7xieJ8G7Q7Ke3ZMI+XFeXg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136143"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136143"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:48 -0700
X-CSE-ConnectionGUID: vQ7p8U7ZQEugYVh3Uknc1Q==
X-CSE-MsgGUID: +nzS+q34RTCY7YYk18GM2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686266"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 17/26] drm/i915/psr: enable sink for eDP1.5 Panel Replay
Date: Wed,  5 Jun 2024 13:25:44 +0300
Message-Id: <20240605102553.187309-18-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605102553.187309-1-jouni.hogander@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
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
index f13eb01966f5..171ea2a03ed6 100644
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

