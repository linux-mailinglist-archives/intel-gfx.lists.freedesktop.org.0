Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1059AC24814
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:37:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BCD110EB26;
	Fri, 31 Oct 2025 10:37:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k6ACvw3y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C01BE10EB22;
 Fri, 31 Oct 2025 10:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907053; x=1793443053;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UF6F9XreOAnO2hKEve2Xgd3D9FT5Zi2KvCke0mDKDVs=;
 b=k6ACvw3yH7vOwVpKozYVxX8GmdYSpM1agPCkonCP2iJOAeaj23Tfp3Qi
 pxBu3/oUNg/xV6Cl6y1ZxwPWEBNSX1qP+VWvUoOw7ZvohswNq141Y08vs
 CZkigLbrdIcBCfG0hYPkqBUaJsNbTGmlYlWom/b7k53U8VziKw0tNJx4k
 CSkZKDEkJg738UhglstcCYxQ5Uuk6kWu/Nk4OEqj9eb7poTyKAe20pu1r
 FTWnO7uRzF1g1/K0tuhUJHAPSgEXM+9acDLAA0By7c2QX0GKJF+eLZWGQ
 6iFeBjBxMDrQp48Rel3p4mLN2WT6blD6MMKiuUFDyRSUvzcmCK1lZ54dy A==;
X-CSE-ConnectionGUID: vEYsS/g0RkCC/n9U4/GYDw==
X-CSE-MsgGUID: duRp4ZcsT8+aLNlZlywXBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="86690884"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="86690884"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:37:33 -0700
X-CSE-ConnectionGUID: OdW0yUQXSjO1AwoX7xO6Lw==
X-CSE-MsgGUID: /Ams4J3uToai+3F8XkgCcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="190554697"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 31 Oct 2025 03:37:30 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 16/25] drm/i915/ltphy: Program LT Phy Non-TBT PLL disable
 sequence
Date: Fri, 31 Oct 2025 16:06:34 +0530
Message-Id: <20251031103643.4147868-17-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103643.4147868-1-suraj.kandpal@intel.com>
References: <20251031103643.4147868-1-suraj.kandpal@intel.com>
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

Program in the steps for Non TBT PLL disable sequence.
The whole function can be defined in one shot since most of
prequiste functions are already coded in.

Bspec: 74492
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 78 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  1 +
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  1 +
 3 files changed, 80 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 0d1670d4741a..6d56e3c11bff 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1624,3 +1624,81 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
+
+void intel_lt_phy_pll_disable(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	enum phy phy = intel_encoder_to_phy(encoder);
+	enum port port = encoder->port;
+	intel_wakeref_t wakeref;
+	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
+	u32 lane_pipe_reset = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
+				? (XELPDP_LANE_PIPE_RESET(0) |
+				   XELPDP_LANE_PIPE_RESET(1))
+				: XELPDP_LANE_PIPE_RESET(0);
+	u32 lane_phy_current_status = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
+					? (XELPDP_LANE_PHY_CURRENT_STATUS(0) |
+					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
+					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
+	u32 lane_phy_pulse_status = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
+					? (XE3PLPDP_LANE_PHY_PULSE_STATUS(0) |
+					   XE3PLPDP_LANE_PHY_PULSE_STATUS(1))
+					: XE3PLPDP_LANE_PHY_PULSE_STATUS(0);
+
+	wakeref = intel_lt_phy_transaction_begin(encoder);
+
+	/* 1. Clear PORT_BUF_CTL2 [PHY Pulse Status]. */
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
+		     lane_phy_pulse_status,
+		     lane_phy_pulse_status);
+
+	/* 2. Set PORT_BUF_CTL2<port> Lane<PHY Lanes Owned> Pipe Reset to 1. */
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_pipe_reset,
+		     lane_pipe_reset);
+
+	/* 3. Poll for PORT_BUF_CTL2<port> Lane<PHY Lanes Owned> PHY Current Status == 1. */
+	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
+				 lane_phy_current_status,
+				 lane_phy_current_status,
+				 XE3PLPD_RESET_START_LATENCY_US, 0, NULL))
+		drm_warn(display->drm,
+			 "PHY %c failed to reset Lane after %dms.\n",
+			 phy_name(phy), XE3PLPD_RESET_START_LATENCY_US);
+
+	/* 4. Clear for PHY pulse status on owned PHY lanes. */
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
+		     lane_phy_pulse_status,
+		     lane_phy_pulse_status);
+
+	/*
+	 * 5. Follow the Display Voltage Frequency Switching -
+	 * Sequence Before Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+	/* 6. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0. */
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
+		     XELPDP_LANE_PCLK_PLL_REQUEST(0), 0);
+
+	/* 7. Program DDI_CLK_VALFREQ to 0. */
+	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), 0);
+
+	/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
+	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
+				 XELPDP_LANE_PCLK_PLL_ACK(0), 0,
+				 XE3PLPD_MACCLK_TURNOFF_LATENCY_US, 0, NULL))
+		drm_warn(display->drm, "PHY %c PLL MacCLK Ack deassertion Timeout after %dus.\n",
+			 phy_name(phy), XE3PLPD_MACCLK_TURNOFF_LATENCY_US);
+
+	/*
+	 *  9. Follow the Display Voltage Frequency Switching -
+	 *  Sequence After Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+	/* 10. Program PORT_CLOCK_CTL register to disable and gate clocks. */
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
+		     XELPDP_DDI_CLOCK_SELECT_MASK(display) | XELPDP_FORWARD_CLOCK_UNGATE, 0);
+
+	/* 11. Program PORT_BUF_CTL5[MacCLK Reset_0] = 1 to assert MacCLK reset. */
+	intel_de_rmw(display, XE3PLPD_PORT_BUF_CTL5(port),
+		     XE3PLPD_MACCLK_RESET_0, XE3PLPD_MACCLK_RESET_0);
+
+	intel_lt_phy_transaction_end(encoder, wakeref);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 5b4e0d9c940f..499091e04e82 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -14,6 +14,7 @@ struct intel_lt_phy_pll_state;
 
 void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state);
+void intel_lt_phy_pll_disable(struct intel_encoder *encoder);
 int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
index 06829ab28b7c..1f4e48177c8b 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
@@ -12,6 +12,7 @@
 #define XE3PLPD_MACCLK_TURNOFF_LATENCY_US	1
 #define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
 #define XE3PLPD_RESET_START_LATENCY_US	10
+#define XE3PLPD_PWRDN_TO_RDY_LATENCY_US	4
 #define XE3PLPD_RESET_END_LATENCY_US		200
 
 /* LT Phy MAC Register */
-- 
2.34.1

