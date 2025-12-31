Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE201CEB4A9
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Dec 2025 06:23:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A3F10E737;
	Wed, 31 Dec 2025 05:23:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jsKK8TTc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5D3610E1A0;
 Wed, 31 Dec 2025 05:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767158603; x=1798694603;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O9ql1KN8nfXOm77J0pBi3b2wEa75Qlo5by9+ACWWf8s=;
 b=jsKK8TTcvGVvY//qq9L6VBYYs2SfOIRU1coCw4Myh+fYZu6qbgsk9RjU
 J+ffXKM9iZdS0Q5N5famkbHMrZCqNeqhGfIcYUXwbCY7nU/gwZzLB+wC3
 Q8yF03EyM7Rsc8PxLhzQ6/MBgzDSvUNlORFGwq+zYgEu9aqpAYkPbMX75
 PbrtSwVKyU6168cnDHoTGW1cc9A8qhCY8H0oy22bh1TdQjCUNrRqg+9Qe
 Ymko+HrOxNvLj+WpWcGWEp/sR5CxI5QidOm9hEdt3mjbYBSiAa0c0z9Gs
 36SzPiR/Tt5+z63cB3475+5z/R+P+CplryF9X2VL8THkwxMc2J1wqxqR7 Q==;
X-CSE-ConnectionGUID: BQEjAmFVT6m/eyT5L1Z5HA==
X-CSE-MsgGUID: 8w+7uOSNQrys2DJ/GQGIeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="68486243"
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="68486243"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 21:23:22 -0800
X-CSE-ConnectionGUID: gh62UJrSQD6AVV9Gn7/lJg==
X-CSE-MsgGUID: 04bFf17xS6WlVMEWK8lvSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="232450978"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 30 Dec 2025 21:23:20 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/3] drm/i915/ltphy: Remove state verification for LT PHY
 fields
Date: Wed, 31 Dec 2025 10:53:13 +0530
Message-Id: <20251231052315.77828-1-suraj.kandpal@intel.com>
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

Remove LT PHY State verification for all VDR register fields other
than VDR0_CONFIG and VDR2_CONFIG since those are the only reliable
shadow register that hold on to its value in case there is PSR/PR
which can cause power gating internally of the PHY.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
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

