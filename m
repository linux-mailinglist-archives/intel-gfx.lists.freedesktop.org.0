Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EADC276B7
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:25:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D71EF10EC62;
	Sat,  1 Nov 2025 03:25:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hxRg1Ip9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DE5510EC62;
 Sat,  1 Nov 2025 03:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761967556; x=1793503556;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6SU1XWvcZFVhSB3OGDE7j7/vT3YE8RULtQfiA2mKNCc=;
 b=hxRg1Ip9OAMXWXegrBaivK0VvqEZVaKDrZxA+WoLtyzcyYsyP4/4Y+TY
 VEc8EVEkPr35D3cNZZ8zyWUxfNpQjyVUTbfDJIN1noUHw+u/yFO5ndYiM
 0bT38jqreHYuFUC9ADhhwYy+4q/ZxytfwHYOdQR+1imqdMJ2JC25LBVSL
 Pd1rqvFVESaHcz1ppMOHEbQUtUri4Pq8cfoTQYOiApawv293MMRw+1ors
 g6JV1lnYKtoP6kJIRsJIDZcscLGbb00f3WXgZuhN4xRKNJzS9cujIoj3i
 4LGxhnJZJ23V8sNiBLkUSjBwlxNrn7ZDXcymwOVWi3oBbVph3ew1pB0do A==;
X-CSE-ConnectionGUID: 0Yz38nRjRJagFe7PH2j8Gw==
X-CSE-MsgGUID: D8ISGJJrTb+e2ZlX/MBvbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="64019877"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="64019877"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:25:56 -0700
X-CSE-ConnectionGUID: ug4DYUoDTtGavL0eQ/HFHw==
X-CSE-MsgGUID: cjkPEfiCTbWDgQzAww53Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217038051"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 31 Oct 2025 20:25:54 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v5 20/25] drm/i915/ltphy: Enable/Disable Tx after Non TBT
 Enable sequence
Date: Sat,  1 Nov 2025 08:55:08 +0530
Message-Id: <20251101032513.4171255-21-suraj.kandpal@intel.com>
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

We need to enable and disable the Tx for each active lane after the
Non-TBT enable sequence is done.

Bspec: 74500, 74497, 74701
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 87 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  4 +
 2 files changed, 91 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index eb6ec4de8045..5f75e72abd34 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1507,6 +1507,92 @@ intel_lt_phy_program_pll(struct intel_encoder *encoder,
 	}
 }
 
+static void
+intel_lt_phy_enable_disable_tx(struct intel_encoder *encoder,
+			       const struct intel_crtc_state *crtc_state)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->lane_reversal;
+	u8 lane_count = crtc_state->lane_count;
+	bool is_dp_alt =
+		intel_tc_port_in_dp_alt_mode(dig_port);
+	enum intel_tc_pin_assignment tc_pin =
+		intel_tc_port_get_pin_assignment(dig_port);
+	u8 transmitter_mask = 0;
+
+	/*
+	 * We have a two transmitters per lane and total of 2 PHY lanes so a total
+	 * of 4 transmitters. We prepare a mask of the lanes that need to be activated
+	 * and the transmitter which need to be activated for each lane. TX 0,1 correspond
+	 * to LANE0 and TX 2, 3 correspond to LANE1.
+	 */
+
+	switch (lane_count) {
+	case 1:
+		transmitter_mask = lane_reversal ? REG_BIT8(3) : REG_BIT8(0);
+		if (is_dp_alt) {
+			if (tc_pin == INTEL_TC_PIN_ASSIGNMENT_D)
+				transmitter_mask = REG_BIT8(0);
+			else
+				transmitter_mask = REG_BIT8(1);
+		}
+		break;
+	case 2:
+		transmitter_mask = lane_reversal ? REG_GENMASK8(3, 2) : REG_GENMASK8(1, 0);
+		if (is_dp_alt)
+			transmitter_mask = REG_GENMASK8(1, 0);
+		break;
+	case 3:
+		transmitter_mask = lane_reversal ? REG_GENMASK8(3, 1) : REG_GENMASK8(2, 0);
+		if (is_dp_alt)
+			transmitter_mask = REG_GENMASK8(2, 0);
+		break;
+	case 4:
+		transmitter_mask = REG_GENMASK8(3, 0);
+		break;
+	default:
+		MISSING_CASE(lane_count);
+		transmitter_mask = REG_GENMASK8(3, 0);
+		break;
+	}
+
+	if (transmitter_mask & BIT(0)) {
+		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_TXY_CTL10(0),
+				       LT_PHY_TX_LANE_ENABLE, LT_PHY_TXY_CTL10_MAC(0),
+				       LT_PHY_TX_LANE_ENABLE);
+	} else {
+		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_TXY_CTL10(0),
+				       0, LT_PHY_TXY_CTL10_MAC(0), 0);
+	}
+
+	if (transmitter_mask & BIT(1)) {
+		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_TXY_CTL10(1),
+				       LT_PHY_TX_LANE_ENABLE, LT_PHY_TXY_CTL10_MAC(1),
+				       LT_PHY_TX_LANE_ENABLE);
+	} else {
+		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_TXY_CTL10(1),
+				       0, LT_PHY_TXY_CTL10_MAC(1), 0);
+	}
+
+	if (transmitter_mask & BIT(2)) {
+		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE1, LT_PHY_TXY_CTL10(0),
+				       LT_PHY_TX_LANE_ENABLE, LT_PHY_TXY_CTL10_MAC(0),
+				       LT_PHY_TX_LANE_ENABLE);
+	} else {
+		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE1, LT_PHY_TXY_CTL10(0),
+				       0, LT_PHY_TXY_CTL10_MAC(0), 0);
+	}
+
+	if (transmitter_mask & BIT(3)) {
+		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE1, LT_PHY_TXY_CTL10(1),
+				       LT_PHY_TX_LANE_ENABLE, LT_PHY_TXY_CTL10_MAC(1),
+				       LT_PHY_TX_LANE_ENABLE);
+	} else {
+		intel_lt_phy_p2p_write(encoder, INTEL_LT_PHY_LANE1, LT_PHY_TXY_CTL10(1),
+				       0, LT_PHY_TXY_CTL10_MAC(1), 0);
+	}
+}
+
 void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state)
 {
@@ -1633,6 +1719,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
 					       XELPDP_P0_STATE_ACTIVE);
 
+	intel_lt_phy_enable_disable_tx(encoder, crtc_state);
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
index da83a7c5faa3..9223487d764e 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
@@ -32,6 +32,10 @@
 #define  LT_PHY_TX_CURSOR_MASK		REG_GENMASK8(5, 0)
 #define  LT_PHY_TX_CURSOR(val)		REG_FIELD_PREP8(LT_PHY_TX_CURSOR_MASK, val)
 
+#define LT_PHY_TXY_CTL10(idx)		(0x40A + (0x200 * (idx)))
+#define LT_PHY_TXY_CTL10_MAC(idx)	_MMIO(LT_PHY_TXY_CTL10(idx))
+#define  LT_PHY_TX_LANE_ENABLE		REG_BIT8(0)
+
 /* LT Phy Vendor Register */
 #define LT_PHY_VDR_0_CONFIG	0xC02
 #define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
-- 
2.34.1

