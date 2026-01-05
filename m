Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A0FCF209F
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 06:59:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38E8D10E1A0;
	Mon,  5 Jan 2026 05:59:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d7vz14nf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC0AC10E360;
 Mon,  5 Jan 2026 05:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767592781; x=1799128781;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wjPK1ZXnGTTCCd3Njn30Ep1MFR+rbof1V6Qz8OpzI54=;
 b=d7vz14nf53Sr4h8YpgTNg78qTZIrJWel4A5gLkmWoCEEmd8NwCvE5IyC
 pTqai2Y1LuxrO4DSqmTCAKZ/1vBaQlUO6UHN6oeeksFcwZiCwwFyp4/zs
 r7Lqb5zEO9HCGGnuNtzMa2Mt1Mcr9fptxaTxzWT/xP8Ixd8QmQL+c7UQP
 TmtoDK/TosxjyZ5z1/gan0OJoH2IADiAjZanCmI4ChonAuls7UQo4FiFh
 3yKdmiHQt1kAYCMgbrC5W/KqMZDVzonXBL1WbWoX9//j/8ZHgGQcC2cCj
 ql8SRrMgMka+OTPNv3bEt/f6oIsGdv2ivD1O/vCJIcC9nmE/Ei6ACOyAM w==;
X-CSE-ConnectionGUID: VKeQRUhPRhizbZSKbx7Bww==
X-CSE-MsgGUID: S2dso0S6T4aXumb3NKgI8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="72805048"
X-IronPort-AV: E=Sophos;i="6.21,202,1763452800"; d="scan'208";a="72805048"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 21:59:41 -0800
X-CSE-ConnectionGUID: AkbMYD6OSYKrvOIEKQc1Hg==
X-CSE-MsgGUID: 0eUtOyARSUGNTJ1UrnAinw==
X-ExtLoop1: 1
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 04 Jan 2026 21:59:39 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 1/3] drm/i915/ltphy: Remove state verification for LT PHY
 fields
Date: Mon,  5 Jan 2026 11:29:35 +0530
Message-Id: <20260105055937.136522-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

Currently we do state verification for all VDR Registers.
Remove LT PHY State verification for all VDR register fields other
than VDR0_CONFIG and VDR2_CONFIG. The reason being that VDR0_CONFIG
and VDR2_CONFIG are the only reliable shadow register which hold onto
their values over the course of power gatings which happen internally
due to features like PSR/PR.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 30 +++++----------------
 1 file changed, 7 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 939c8975fd4c..9501ac861712 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2259,8 +2259,6 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 	struct intel_encoder *encoder;
 	struct intel_lt_phy_pll_state pll_hw_state = {};
 	const struct intel_lt_phy_pll_state *pll_sw_state = &new_crtc_state->dpll_hw_state.ltpll;
-	int clock;
-	int i, j;
 
 	if (DISPLAY_VER(display) < 35)
 		return;
@@ -2275,33 +2273,19 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
 	intel_lt_phy_pll_readout_hw_state(encoder, new_crtc_state, &pll_hw_state);
-	clock = intel_lt_phy_calc_port_clock(encoder, new_crtc_state);
 
 	dig_port = enc_to_dig_port(encoder);
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		return;
 
-	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.clock != clock,
-				 "[CRTC:%d:%s] mismatch in LT PHY: Register CLOCK (expected %d, found %d)",
+	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[0] != pll_sw_state->config[0],
+				 "[CRTC:%d:%s] mismatch in LT PHY PLL CONFIG 0: (expected 0x%04x, found 0x%04x)",
 				 crtc->base.base.id, crtc->base.name,
-				 pll_sw_state->clock, pll_hw_state.clock);
-
-	for (i = 0; i < 3; i++) {
-		INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[i] != pll_sw_state->config[i],
-					 "[CRTC:%d:%s] mismatch in LT PHY PLL CONFIG%d: (expected 0x%04x, found 0x%04x)",
-					 crtc->base.base.id, crtc->base.name, i,
-					 pll_sw_state->config[i], pll_hw_state.config[i]);
-	}
-
-	for (i = 0; i <= 12; i++) {
-		for (j = 3; j >= 0; j--)
-			INTEL_DISPLAY_STATE_WARN(display,
-						 pll_hw_state.data[i][j] !=
-						 pll_sw_state->data[i][j],
-						 "[CRTC:%d:%s] mismatch in LT PHY PLL DATA[%d][%d]: (expected 0x%04x, found 0x%04x)",
-						 crtc->base.base.id, crtc->base.name, i, j,
-						 pll_sw_state->data[i][j], pll_hw_state.data[i][j]);
-	}
+				 pll_sw_state->config[0], pll_hw_state.config[0]);
+	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[2] != pll_sw_state->config[2],
+				 "[CRTC:%d:%s] mismatch in LT PHY PLL CONFIG 2: (expected 0x%04x, found 0x%04x)",
+				 crtc->base.base.id, crtc->base.name,
+				 pll_sw_state->config[2], pll_hw_state.config[2]);
 }
 
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
-- 
2.34.1

