Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F84BDC6AA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FDE410E72C;
	Wed, 15 Oct 2025 04:09:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dKdJrbrr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE80610E72C;
 Wed, 15 Oct 2025 04:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501347; x=1792037347;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yqIRUFq/oCBjXJcKoOIWUokQBA+tS3LeFyg42PiQya0=;
 b=dKdJrbrrt4cAKQ8eoQ5qDQUVMuthBg/etlM0CbQAKuQsx57PeFWA4f00
 V4rZIcK//CPGb0rx6LunF3HLGTPTJMePAoqzCRckzyAfyefHo7Ed+CU8h
 U15ZjLFbTroE12FMkU7Ne2kk1NnU1ejNVvrJ+SIsAMAK3Z9hqB47ZNVPs
 +necmUnaxwPPZTzml6Lir+YIAOqP2x8Zsy5bhTnsItreZUd31QdhhytCj
 YGAoGHhMtN7LjD5gYjDPyFLdENg1Q+G1wiXze429rmpU3l0fXZN2BJwi/
 gDxTB1uF2GQQ/11LTAHiknaWZMc2N/lNiy3YFqwXNOr2pJVIItZdAgvEd A==;
X-CSE-ConnectionGUID: 3D7rd7y7RsaJ1IUK8JvADQ==
X-CSE-MsgGUID: NS5BCbNISrG9L9xikoHFIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66318969"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66318969"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:09:07 -0700
X-CSE-ConnectionGUID: OPRTDkkQRjaWEDx+rEM5ZA==
X-CSE-MsgGUID: 3qE/YpU5Tr+YnZl7PwjP6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="219196215"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:09:04 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 14/25] drm/i915/ltphy: Program the rest of the LT Phy Enable
 sequence
Date: Wed, 15 Oct 2025 09:38:06 +0530
Message-Id: <20251015040817.3431297-15-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015040817.3431297-1-suraj.kandpal@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  4 +--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 ++
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 28 ++++++++++++++++++++
 3 files changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index b060a5007921..914b215d8bd4 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -409,8 +409,8 @@ static void __intel_cx0_rmw(struct intel_encoder *encoder,
 		__intel_cx0_write(encoder, lane, addr, val, committed);
 }
 
-static void intel_cx0_rmw(struct intel_encoder *encoder,
-			  u8 lane_mask, u16 addr, u8 clear, u8 set, bool committed)
+void intel_cx0_rmw(struct intel_encoder *encoder,
+		   u8 lane_mask, u16 addr, u8 clear, u8 set, bool committed)
 {
 	u8 lane;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index a5446686b23b..f0f0efa2d48b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -53,6 +53,8 @@ void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
 bool intel_cx0_is_hdmi_frl(u32 clock);
 u8 intel_cx0_read(struct intel_encoder *encoder,
 		  u8 lane_mask, u16 addr);
+void intel_cx0_rmw(struct intel_encoder *encoder,
+		   u8 lane_mask, u16 addr, u8 clear, u8 set, bool committed);
 void intel_cx0_write(struct intel_encoder *encoder,
 		     u8 lane_mask, u16 addr, u8 data, bool committed);
 int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 08a5ed27d2d7..9e4868a15e7d 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1496,6 +1496,11 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	enum phy phy = intel_encoder_to_phy(encoder);
 	enum port port = encoder->port;
 	intel_wakeref_t wakeref = 0;
+	u32 lane_phy_pulse_status = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
+					? (XE3PLPDP_LANE_PHY_PULSE_STATUS(0) |
+					   XE3PLPDP_LANE_PHY_PULSE_STATUS(1))
+					: XE3PLPDP_LANE_PHY_PULSE_STATUS(0);
+	u8 rate_update;
 
 	wakeref = intel_lt_phy_transaction_begin(encoder);
 
@@ -1550,6 +1555,9 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 		 * Change. We handle this step in bxt_set_cdclk().
 		 */
 		/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
+		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
+			       crtc_state->port_clock);
+
 		/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
 		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
 			     XELPDP_LANE_PCLK_PLL_REQUEST(0),
@@ -1572,17 +1580,37 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
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

