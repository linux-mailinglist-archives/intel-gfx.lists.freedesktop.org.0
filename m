Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC77BDC6A7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:09:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5E410E729;
	Wed, 15 Oct 2025 04:09:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ivV/y7X6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1300910E728;
 Wed, 15 Oct 2025 04:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501344; x=1792037344;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/kkYUPmFujX6v+DWDJbAf/sCiYxRB0k5AagA9oFvtfA=;
 b=ivV/y7X6IfMRn83iCnHuFa6x1iGDO3i5jh+0k8S8RccxXwIqr+rdPONW
 49AbQGBh5U/nU3iHqxyGvK5+dUqxudX4+k8v52Ha7MVdkkC3MYYLu8sg4
 R0GL4uWpQXSra82Yr2gxJZ2Q4OdsR5oGCdUxf/H6Z1Jykomt2OaO+0hrt
 A6NZiSk6QaauTteJTpG0zb9KEQ+Vz/pqODWBSAgMSw3XK5YZ6Ij46on90
 A/WGAHIrzaUoq+mV8/OZuZ7tbb2vmUV2stdkNiZ2OxUJl361li3RNo3gi
 9aiPs/LGH2qmCDJRamDiRrQLvvFXeSNEvwI4tMYaqLWaCB0T0RuKBVI24 Q==;
X-CSE-ConnectionGUID: kyRlhqn9SXKtg/1/C7PDJw==
X-CSE-MsgGUID: LLm22umqQ/Wl+eISDSuQhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66318966"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66318966"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:09:04 -0700
X-CSE-ConnectionGUID: c3xowt3hQfCQcxpI8XLIVg==
X-CSE-MsgGUID: StHQ5psJTAW+bN7KfLL9iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="219196205"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:09:01 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 13/25] drm/i915/ltphy: Program the rest of the PORT_CLOCK_CTL
 steps
Date: Wed, 15 Oct 2025 09:38:05 +0530
Message-Id: <20251015040817.3431297-14-suraj.kandpal@intel.com>
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

Program the rest of the steps with regards to PORT_CLOCK_CTL in
Non-TBT PLL enable sequence.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 25 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  1 +
 2 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 32a5a60fe92f..08a5ed27d2d7 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1493,6 +1493,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->lane_reversal;
 	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
+	enum phy phy = intel_encoder_to_phy(encoder);
+	enum port port = encoder->port;
 	intel_wakeref_t wakeref = 0;
 
 	wakeref = intel_lt_phy_transaction_begin(encoder);
@@ -1533,19 +1535,42 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
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
index 5fb4331c387f..283ee0c55724 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
@@ -12,6 +12,7 @@
 #define XE3PLPD_MSGBUS_TIMEOUT_FAST_US	500
 #define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
 #define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
+#define XE3PLPD_MACCLK_TURNOFF_LATENCY_US	1
 #define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
 #define XE3PLPD_RESET_START_LATENCY_US	10
 #define XE3PLPD_RESET_END_LATENCY_US	200
-- 
2.34.1

