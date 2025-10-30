Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E44C1EC54
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:34:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AC3610E8AF;
	Thu, 30 Oct 2025 07:34:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CUwPSP4U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FF0C10E8A8;
 Thu, 30 Oct 2025 07:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809682; x=1793345682;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5g1/tni+WEBIBgySGJCmeMFk+tYWm4mOVsUU0qNOnZ0=;
 b=CUwPSP4UwLr599bGGeyPS0Iu0QUnjwZboLqz0AYHuCrcuZsIZbnQOxL/
 0FY4fMhGTGFJQFbcek/k2yAVQMLmZHRAMOEawWZ228DwvQE5EUfSbDVs6
 Zd4rppnN7R5V84128JI4C7uNV1j3RDzN3y+zT5RNCtSql+9pNjsWibUjj
 +oSK3neHreWXd6+UxvlTNmR56Wxij0z8+AOyZr6K4V1qETCG9RFiknWzD
 KAP3NnuN2tV6nsKbprjIP/CAK6upUoh4t8QBJiO59JQmSRMPHborOinLL
 s2f4PI6i2uSJviOdDoGAXAbMmJ6WNeivqFxWzkfYE1nKMd/DpDv1CMsLg w==;
X-CSE-ConnectionGUID: 6VqLIGmZRzyytyYY0MxN3w==
X-CSE-MsgGUID: Yj0bdZqgR1WJ3dhQz48d4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063358"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063358"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:34:41 -0700
X-CSE-ConnectionGUID: hjbVhwuIR0W6jGaXizx1Vw==
X-CSE-MsgGUID: jvMKT1QaQFeCVf/+A+bDRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075283"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:34:40 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 02/32] drm/i915/display: Factor out C10 msgbus access
 start/end helpers
Date: Thu, 30 Oct 2025 09:22:19 +0200
Message-Id: <20251030072249.155095-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251030072249.155095-1-mika.kahola@intel.com>
References: <20251030072249.155095-1-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

Factor out functions to begin and complete C10 PHY programming
sequences to make the code more concise.

v2: Rename msgbus_update_config() to more descriptive
    msg_bus_access_commit() (Jani)

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 62 +++++++++++---------
 1 file changed, 35 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a74c1be225ac..94ba7db2115a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -449,6 +449,31 @@ static u8 intel_c10_get_tx_term_ctl(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+static void intel_c10_msgbus_access_begin(struct intel_encoder *encoder,
+					  u8 lane_mask)
+{
+	if (!intel_encoder_is_c10phy(encoder))
+		return;
+
+	intel_cx0_rmw(encoder, lane_mask, PHY_C10_VDR_CONTROL(1),
+		      0, C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
+}
+
+static void intel_c10_msgbus_access_commit(struct intel_encoder *encoder,
+					   u8 lane_mask, bool master_lane)
+{
+	u8 val = C10_VDR_CTRL_UPDATE_CFG;
+
+	if (!intel_encoder_is_c10phy(encoder))
+		return;
+
+	if (master_lane)
+		val |= C10_VDR_CTRL_MASTER_LANE;
+
+	intel_cx0_rmw(encoder, lane_mask, PHY_C10_VDR_CONTROL(1),
+		      0, val, MB_WRITE_COMMITTED);
+}
+
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state)
 {
@@ -472,9 +497,9 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 		return;
 	}
 
+	intel_c10_msgbus_access_begin(encoder, owned_lane_mask);
+
 	if (intel_encoder_is_c10phy(encoder)) {
-		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C10_VDR_CONTROL(1),
-			      0, C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
 		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C10_VDR_CMN(3),
 			      C10_CMN3_TXVBOOST_MASK,
 			      C10_CMN3_TXVBOOST(intel_c10_get_tx_vboost_lvl(crtc_state)),
@@ -513,9 +538,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 		      0, PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,
 		      MB_WRITE_COMMITTED);
 
-	if (intel_encoder_is_c10phy(encoder))
-		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C10_VDR_CONTROL(1),
-			      0, C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
+	intel_c10_msgbus_access_commit(encoder, owned_lane_mask, false);
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
@@ -2119,9 +2142,7 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 	 * According to C10 VDR Register programming Sequence we need
 	 * to do this to read PHY internal registers from MsgBus.
 	 */
-	intel_cx0_rmw(encoder, lane, PHY_C10_VDR_CONTROL(1),
-		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
-		      MB_WRITE_COMMITTED);
+	intel_c10_msgbus_access_begin(encoder, lane);
 
 	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
 		pll_state->pll[i] = intel_cx0_read(encoder, lane, PHY_C10_VDR_PLL(i));
@@ -2140,9 +2161,7 @@ static void intel_c10_pll_program(struct intel_display *display,
 {
 	int i;
 
-	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
-		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
-		      MB_WRITE_COMMITTED);
+	intel_c10_msgbus_access_begin(encoder, INTEL_CX0_BOTH_LANES);
 
 	/* Program the pll values only for the master lane */
 	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
@@ -2157,9 +2176,8 @@ static void intel_c10_pll_program(struct intel_display *display,
 	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CUSTOM_WIDTH,
 		      C10_VDR_CUSTOM_WIDTH_MASK, C10_VDR_CUSTOM_WIDTH_8_10,
 		      MB_WRITE_COMMITTED);
-	intel_cx0_rmw(encoder, INTEL_CX0_LANE0, PHY_C10_VDR_CONTROL(1),
-		      0, C10_VDR_CTRL_MASTER_LANE | C10_VDR_CTRL_UPDATE_CFG,
-		      MB_WRITE_COMMITTED);
+
+	intel_c10_msgbus_access_commit(encoder, INTEL_CX0_LANE0, true);
 }
 
 static void intel_c10pll_dump_hw_state(struct intel_display *display,
@@ -2959,11 +2977,7 @@ static void intel_cx0_program_phy_lane(struct intel_encoder *encoder, int lane_c
 	bool dp_alt_mode = intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
 	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
 
-	if (intel_encoder_is_c10phy(encoder))
-		intel_cx0_rmw(encoder, owned_lane_mask,
-			      PHY_C10_VDR_CONTROL(1), 0,
-			      C10_VDR_CTRL_MSGBUS_ACCESS,
-			      MB_WRITE_COMMITTED);
+	intel_c10_msgbus_access_begin(encoder, owned_lane_mask);
 
 	if (lane_reversal)
 		disables = REG_GENMASK8(3, 0) >> lane_count;
@@ -2988,11 +3002,7 @@ static void intel_cx0_program_phy_lane(struct intel_encoder *encoder, int lane_c
 			      MB_WRITE_COMMITTED);
 	}
 
-	if (intel_encoder_is_c10phy(encoder))
-		intel_cx0_rmw(encoder, owned_lane_mask,
-			      PHY_C10_VDR_CONTROL(1), 0,
-			      C10_VDR_CTRL_UPDATE_CFG,
-			      MB_WRITE_COMMITTED);
+	intel_c10_msgbus_access_commit(encoder, owned_lane_mask, false);
 }
 
 static u32 intel_cx0_get_pclk_pll_request(u8 lane_mask)
@@ -3260,9 +3270,7 @@ void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
-	if (intel_encoder_is_c10phy(encoder))
-		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C10_VDR_CONTROL(1), 0,
-			      C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
+	intel_c10_msgbus_access_begin(encoder, owned_lane_mask);
 
 	for (i = 0; i < 4; i++) {
 		int tx = i % 2 + 1;
-- 
2.34.1

