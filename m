Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE51C2763B
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:05:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF3A910EC18;
	Sat,  1 Nov 2025 03:05:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AdLbHFiq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D1BD10EC17;
 Sat,  1 Nov 2025 03:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761966319; x=1793502319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=svCwYgGfXfzURu7gKSheuPlc8P8xY4baWRoDnoGYv6I=;
 b=AdLbHFiqRRBXLKZLjwAcwsEAvVsC5DI2A9YGWH0Ok2OIPxmAIWv1IxsL
 HB6ifDCsJf077L77WeNX11tBm0TCOcPJrORIsG718HQ6J4Hs6rVA/E4MM
 h9zjC6y9snX4lewQ2OxqWgk6jZH6+IDKQK3XIjz0rt4LV8faHSZCtjQrE
 90ZXegFgrRyiDXD1KAHCdAMs+yiE7gZFCeEJu57o6DHsK0+IyajE63ZmV
 LuKUdVjp3ZHE42ISCU6R2/hJKoxPc2aCqUWdq4azkpsoXw7SBIwDZziTp
 LeCdmmFS1Gohbi/vxJbyUScqM0KwPm2Ijd5qK/vsPsbXp2x+6y+QiYPNP g==;
X-CSE-ConnectionGUID: 0S8rv0EcTM+oPXWOU5KqaA==
X-CSE-MsgGUID: idxAoat3QC+KMXcFLOwDGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="81759529"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="81759529"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:05:19 -0700
X-CSE-ConnectionGUID: ShHE/DqTQ3qESA0eUrEuMQ==
X-CSE-MsgGUID: jz70S9HJQliTwgZhOYkj+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217222700"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 31 Oct 2025 20:05:15 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v4 14/25] drm/i915/ltphy: Program the rest of the
 PORT_CLOCK_CTL steps
Date: Sat,  1 Nov 2025 08:34:23 +0530
Message-Id: <20251101030434.4159839-15-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101030434.4159839-1-suraj.kandpal@intel.com>
References: <20251101030434.4159839-1-suraj.kandpal@intel.com>
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

Program the rest of the steps with regards to PORT_CLOCK_CTL in
Non-TBT PLL enable sequence.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 25 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  1 +
 2 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index da5115c691e3..f8617a010a59 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1506,6 +1506,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->lane_reversal;
 	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
+	enum phy phy = intel_encoder_to_phy(encoder);
+	enum port port = encoder->port;
 	intel_wakeref_t wakeref = 0;
 
 	wakeref = intel_lt_phy_transaction_begin(encoder);
@@ -1546,19 +1548,42 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 				       LT_PHY_PCLKIN_GATE);
 
 		/* 7. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0. */
+		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
+			     XELPDP_LANE_PCLK_PLL_REQUEST(0), 0);
+
 		/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
+		if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
+					 XELPDP_LANE_PCLK_PLL_ACK(0), 0,
+					 XE3PLPD_MACCLK_TURNOFF_LATENCY_US, 0, NULL))
+			drm_warn(display->drm, "PHY %c PLL MacCLK Ack deassertion Timeout after %dus.\n",
+				 phy_name(phy), XE3PLPD_MACCLK_TURNOFF_LATENCY_US);
+
 		/*
 		 * 9. Follow the Display Voltage Frequency Switching - Sequence Before Frequency
 		 * Change. We handle this step in bxt_set_cdclk().
 		 */
 		/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
 		/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
+		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
+			     XELPDP_LANE_PCLK_PLL_REQUEST(0),
+			     XELPDP_LANE_PCLK_PLL_REQUEST(0));
+
 		/* 12. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 1. */
+		if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
+					 XELPDP_LANE_PCLK_PLL_ACK(0),
+					 XELPDP_LANE_PCLK_PLL_ACK(0),
+					 XE3PLPD_MACCLK_TURNON_LATENCY_US, 2, NULL))
+			drm_warn(display->drm, "PHY %c PLL MacCLK Ack assertion Timeout after %dus.\n",
+				 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_US);
 	} else {
 		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), crtc_state->port_clock);
 	}
 
 	/* 13. Ungate the forward clock by setting PORT_CLOCK_CTL[Forward Clock Ungate] = 1. */
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
+		     XELPDP_FORWARD_CLOCK_UNGATE,
+		     XELPDP_FORWARD_CLOCK_UNGATE);
+
 	/* 14. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
 	/*
 	 * 15. Clear the PHY VDR register 0xCC4[Rate Control VDR Update] over PHY message bus for
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
index eb3a3dd53ab8..06829ab28b7c 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
@@ -9,6 +9,7 @@
 #define XE3PLPD_MSGBUS_TIMEOUT_FAST_US	500
 #define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
 #define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
+#define XE3PLPD_MACCLK_TURNOFF_LATENCY_US	1
 #define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
 #define XE3PLPD_RESET_START_LATENCY_US	10
 #define XE3PLPD_RESET_END_LATENCY_US		200
-- 
2.34.1

