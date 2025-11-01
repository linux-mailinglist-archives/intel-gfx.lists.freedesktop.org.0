Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C2FC276A8
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:25:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 052AC10EC59;
	Sat,  1 Nov 2025 03:25:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i4ytQK8o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B01F210EC52;
 Sat,  1 Nov 2025 03:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761967546; x=1793503546;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=62S4eAD56NmL4S65t2cedHr4NBJqlzSVlEKUOI/KRCw=;
 b=i4ytQK8o+CXoZmkfDSPw1FnzgxgzZxRPOgSx2CIeoFFVwBUMmHUhEOM7
 j6hG5+x1Y14q4m3vyIWU8bsgyuT6YkDeRLUILwWarAHACFnr/wBX6Axm9
 kIzOVr5O15y7M+ROVGl/QT139Ir0MLlL8YwDJD+GlWLaiI1hEqchn+W4/
 K1x23xUNYL4K1JMoiGlqWurLIyIgY1IlZST5qPaKsSqPnUW9YzARVnLxe
 T3JY8apy9BuTX6FpKnfcCO9T9idinAaVxjzLDwO52ZOMHzl7hMJJkUiy0
 04/uzizbvqD1Xe5Vjpc1vRJU55WJ4TGPVkPTi4is9QcX1AjTjR/EBlmoi g==;
X-CSE-ConnectionGUID: jmrFK8G8Ts6h8o46QFiYzQ==
X-CSE-MsgGUID: IDBUGfifTwuK3npM/Ga0xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="64019867"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="64019867"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:25:46 -0700
X-CSE-ConnectionGUID: ouUwhdkpTXy1oHAxl0K+dg==
X-CSE-MsgGUID: l8j8TvtLR4uiCZ4mL+k4bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217038014"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 31 Oct 2025 20:25:45 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v5 15/25] drm/i915/ltphy: Program the rest of the LT Phy
 Enable sequence
Date: Sat,  1 Nov 2025 08:55:03 +0530
Message-Id: <20251101032513.4171255-16-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101032513.4171255-1-suraj.kandpal@intel.com>
References: <20251101032513.4171255-1-suraj.kandpal@intel.com>
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

Program the rest of the LT Phy Non TBT PLL Enable sequence. This
can be done in a single patch since the rest of the prequistie
functions are already coded in.

Bspec: 74492, 69701
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  4 +--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 ++
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 28 ++++++++++++++++++++
 3 files changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f7b4a5746c86..adfbfd61f35d 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -408,8 +408,8 @@ static void __intel_cx0_rmw(struct intel_encoder *encoder,
 		__intel_cx0_write(encoder, lane, addr, val, committed);
 }
 
-static void intel_cx0_rmw(struct intel_encoder *encoder,
-			  u8 lane_mask, u16 addr, u8 clear, u8 set, bool committed)
+void intel_cx0_rmw(struct intel_encoder *encoder,
+		   u8 lane_mask, u16 addr, u8 clear, u8 set, bool committed)
 {
 	u8 lane;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index a114ac125741..c9fba91f6c6a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -52,6 +52,8 @@ int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
 void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
 bool intel_cx0_is_hdmi_frl(u32 clock);
 u8 intel_cx0_read(struct intel_encoder *encoder, u8 lane_mask, u16 addr);
+void intel_cx0_rmw(struct intel_encoder *encoder,
+		   u8 lane_mask, u16 addr, u8 clear, u8 set, bool committed);
 void intel_cx0_write(struct intel_encoder *encoder,
 		     u8 lane_mask, u16 addr, u8 data, bool committed);
 int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index f8617a010a59..60cd1f870d9e 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1509,6 +1509,11 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	enum phy phy = intel_encoder_to_phy(encoder);
 	enum port port = encoder->port;
 	intel_wakeref_t wakeref = 0;
+	u32 lane_phy_pulse_status = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
+					? (XE3PLPDP_LANE_PHY_PULSE_STATUS(0) |
+					   XE3PLPDP_LANE_PHY_PULSE_STATUS(1))
+					: XE3PLPDP_LANE_PHY_PULSE_STATUS(0);
+	u8 rate_update;
 
 	wakeref = intel_lt_phy_transaction_begin(encoder);
 
@@ -1563,6 +1568,9 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 		 * Change. We handle this step in bxt_set_cdclk().
 		 */
 		/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
+		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
+			       crtc_state->port_clock);
+
 		/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
 		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
 			     XELPDP_LANE_PCLK_PLL_REQUEST(0),
@@ -1585,17 +1593,37 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 		     XELPDP_FORWARD_CLOCK_UNGATE);
 
 	/* 14. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
+		     lane_phy_pulse_status,
+		     lane_phy_pulse_status);
 	/*
 	 * 15. Clear the PHY VDR register 0xCC4[Rate Control VDR Update] over PHY message bus for
 	 * Owned PHY Lanes.
 	 */
+	rate_update = intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0, LT_PHY_RATE_UPDATE);
+	rate_update &= ~LT_PHY_RATE_CONTROL_VDR_UPDATE;
+	intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_RATE_UPDATE,
+			   rate_update, MB_WRITE_COMMITTED);
+
 	/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status = 1 for Owned PHY Lanes. */
+	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
+				 lane_phy_pulse_status, lane_phy_pulse_status,
+				 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 2, NULL))
+		drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
+			 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
+
 	/* 17. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
+		     lane_phy_pulse_status,
+		     lane_phy_pulse_status);
+
 	/*
 	 * 18. Follow the Display Voltage Frequency Switching - Sequence After Frequency Change.
 	 * We handle this step in bxt_set_cdclk()
 	 */
 	/* 19. Move the PHY powerdown state to Active and program to enable/disable transmitters */
+	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
+					       XELPDP_P0_STATE_ACTIVE);
 
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
-- 
2.34.1

