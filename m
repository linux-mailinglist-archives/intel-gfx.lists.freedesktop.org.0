Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 979FACF208D
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 06:57:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 798F910E208;
	Mon,  5 Jan 2026 05:57:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KfpLM8j/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F5D310E1A0;
 Mon,  5 Jan 2026 05:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767592645; x=1799128645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wjPK1ZXnGTTCCd3Njn30Ep1MFR+rbof1V6Qz8OpzI54=;
 b=KfpLM8j/nCU0K0E0XfkSBoVU2P77ECIu5+wjf4l36bssznflh/A1wicT
 Y5s3o0hhFp/yy4FpHzkrC1gKV5yJ0xgFc3VxlCYfleQ4kZAuSV2kCDBxg
 okEP1CZxjXqpey1KsmhHXB/De2+m14GLUioc+hBSkYWPeUKYNc8e1xM9w
 7Lj0x68OKs8iUQkjewXqbMI6jv0udPLAf723PX4TDbHgA1ZFaqPOg9Wk2
 19OskFe9OelP0N5/ioFyTp+tiNUKoczEskjyU+IOS6jEuKVH6CtVBg00c
 aQINkQ9uvVdxk0gKKvHqeaV9Xc+lcpUxpyJESVxMRThHJpnZ0duYEn6c0 w==;
X-CSE-ConnectionGUID: 2hVwgwLOS9GEgQnK1nyFOw==
X-CSE-MsgGUID: jLuSZ2n1RueJMUKmTBlwKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="68152092"
X-IronPort-AV: E=Sophos;i="6.21,202,1763452800"; d="scan'208";a="68152092"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 21:57:24 -0800
X-CSE-ConnectionGUID: GCdOL804R8aqPAl5efkiKA==
X-CSE-MsgGUID: ZCPP+GeNTsel6BQ14x9RzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,202,1763452800"; d="scan'208";a="225840945"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa002.fm.intel.com with ESMTP; 04 Jan 2026 21:57:22 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 1/3] drm/i915/ltphy: Remove state verification for LT PHY
 fields
Date: Mon,  5 Jan 2026 11:27:15 +0530
Message-Id: <20260105055717.136146-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231052315.77828-1-suraj.kandpal@intel.com>
References: <20251231052315.77828-1-suraj.kandpal@intel.com>
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

