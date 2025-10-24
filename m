Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54549C057FC
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 12:08:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A79A610EA2F;
	Fri, 24 Oct 2025 10:08:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iD616mbt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA0B10EA2D;
 Fri, 24 Oct 2025 10:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761300480; x=1792836480;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5wT9VWm3I4CvrTLJcV8sZE0+ym0XjAlNQ1tOGhdZB5E=;
 b=iD616mbtDGroLNliH52RAs70Yvk8+xFfIrT0RsN7j9RUAJ8PvLEuDuPW
 T5ve6454nVfGUm/HEwSMZ9LFBfnqQ+PPssW4LiaGO1fVeDb0Q4gJcWTuq
 p5ZPaGnj1CnPpQe8gZ+2qqJGxjRgTtFPbtMXvoQ43TN57/7ND9oQh/MWs
 Zctw5t1dDcJ0S4ldJFWjH9VlgG0WE3qAjabXZ8EPOka/bw8MG1zXVB3t/
 1JHvHkDz77Gwz8ni4Z1CaL14I40U2neTXMOdJE+y19Q9JRA6OYmqcNLXA
 GE8t5B7uhb8mZizKn0qf5pWFNrSucifCTpXXJl1B3LQkGb2+Y2KbHSKRq Q==;
X-CSE-ConnectionGUID: pjt6DAy9S+asz6nZXNbW+Q==
X-CSE-MsgGUID: +qUz4xwLSF+qOON4k0YTTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67346826"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="67346826"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 03:07:59 -0700
X-CSE-ConnectionGUID: 8p/6JqZaSj2qrWyDXOuEmQ==
X-CSE-MsgGUID: /UTTQ0peQHqzNxWglqBbDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="208039276"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa002.fm.intel.com with ESMTP; 24 Oct 2025 03:07:57 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 14/26] drm/i915/ltphy: Program the rest of the
 PORT_CLOCK_CTL steps
Date: Fri, 24 Oct 2025 15:37:00 +0530
Message-Id: <20251024100712.3776261-15-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251024100712.3776261-1-suraj.kandpal@intel.com>
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
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
index 281f4c5eb4a1..1b2d373e05ba 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1489,6 +1489,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->lane_reversal;
 	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
+	enum phy phy = intel_encoder_to_phy(encoder);
+	enum port port = encoder->port;
 	intel_wakeref_t wakeref = 0;
 
 	wakeref = intel_lt_phy_transaction_begin(encoder);
@@ -1529,19 +1531,42 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
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

