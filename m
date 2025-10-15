Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AD9BDC68F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:08:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB21010E6EF;
	Wed, 15 Oct 2025 04:08:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F0xmscHL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F6BF10E703;
 Wed, 15 Oct 2025 04:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501323; x=1792037323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2OCGpTjFKkNXQWtXqlVnBLtYy/FC/ZOU3geuDPoaF2M=;
 b=F0xmscHLcuUvEn/2MteAyFwa3QuzTEFbcwnQSZJKAPGyXKt5eeeKHgD6
 RnLKLOVwdOz9smary2f2J0bknz9q40iLHXm1u8Jx/SNUM50mnbeLxVriK
 TdXqzb2T9GmYTkfEfvL+fv9kQsf2l4l7bI+NmZ89fZArT4p9e5WFnkO54
 RUBeS9xPZSFurju7YMWg5QyAfxQbqbD9i1u9HK0HGJhQd+6d/pJlP7frS
 MPd7nn0xKaHXbwoktkIps7wgEcjFVowWdWi9p4rRplVAGav+sbC1CVESU
 SWu+wFlkZBqMQu5hNmVmUWH1xfV9XjsrKqUtAqFftPxOhhJz+NLm7Cjso g==;
X-CSE-ConnectionGUID: 3EntVKdvQB6XSoYb4G97Vg==
X-CSE-MsgGUID: IvXd55V9Q+uUJxrjxZmrew==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66318952"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66318952"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:08:43 -0700
X-CSE-ConnectionGUID: ocn4/62TQEuZqtpbNcK5rg==
X-CSE-MsgGUID: WSFgzYkATFa0dI62Wi7DDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="219196114"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:08:40 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 06/25] drm/i915/ltphy: Read PHY_VDR_0_CONFIG register
Date: Wed, 15 Oct 2025 09:37:58 +0530
Message-Id: <20251015040817.3431297-7-suraj.kandpal@intel.com>
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

Read PHY_VDR_0_CONFIG to check if there is any change in the register and
decide based on that if some steps need to be executed or not. This
scenario only happens if the requested mode uses 1.62Gbps with DP mode
since LT PHY defaults to this mode if any other mode is requested we
need to follow the whole sequence.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |   4 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |   2 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 146 ++++++++++++++++---
 3 files changed, 127 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 8455d0725968..4e074754a78f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -271,8 +271,8 @@ static u8 __intel_cx0_read(struct intel_encoder *encoder,
 	return 0;
 }
 
-static u8 intel_cx0_read(struct intel_encoder *encoder,
-			 u8 lane_mask, u16 addr)
+u8 intel_cx0_read(struct intel_encoder *encoder,
+		  u8 lane_mask, u16 addr)
 {
 	int lane = lane_mask_to_lane(lane_mask);
 
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 8c9b97f0922d..b448ce936c37 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -46,6 +46,8 @@ void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
 int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
 void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
 bool intel_cx0_is_hdmi_frl(u32 clock);
+u8 intel_cx0_read(struct intel_encoder *encoder,
+		  u8 lane_mask, u16 addr);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 void intel_cx0_pll_power_save_wa(struct intel_display *display);
 void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 263e9780b55c..c2d5e4b82db5 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -6,6 +6,7 @@
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_de.h"
@@ -13,12 +14,14 @@
 #include "intel_display_types.h"
 #include "intel_lt_phy.h"
 #include "intel_lt_phy_regs.h"
+#include "intel_psr.h"
 #include "intel_tc.h"
 
 #define INTEL_LT_PHY_LANE0		BIT(0)
 #define INTEL_LT_PHY_LANE1		BIT(1)
 #define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
 					 INTEL_LT_PHY_LANE0)
+#define MODE_DP				3
 
 static u8 intel_lt_phy_get_owned_lane_mask(struct intel_encoder *encoder)
 {
@@ -31,6 +34,12 @@ static u8 intel_lt_phy_get_owned_lane_mask(struct intel_encoder *encoder)
 		? INTEL_LT_PHY_BOTH_LANES : INTEL_LT_PHY_LANE0;
 }
 
+static u8 intel_lt_phy_read(struct intel_encoder *encoder,
+			    u8 lane_mask, u16 addr)
+{
+	return intel_cx0_read(encoder, lane_mask, addr);
+}
+
 static void
 intel_lt_phy_setup_powerdown(struct intel_encoder *encoder, u8 lane_count)
 {
@@ -148,12 +157,96 @@ intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
 		     XELPDP_SSC_ENABLE_PLLB, val);
 }
 
+static u32
+intel_lt_phy_get_dp_clock(u8 rate)
+{
+	switch (rate) {
+	case 0:
+		return 162000;
+	case 1:
+		return 270000;
+	case 2:
+		return 540000;
+	case 3:
+		return 810000;
+	case 4:
+		return 216000;
+	case 5:
+		return 243000;
+	case 6:
+		return 324000;
+	case 7:
+		return 432000;
+	case 8:
+		return 1000000;
+	case 9:
+		return 1350000;
+	case 10:
+		return 2000000;
+	case 11:
+		return 675000;
+	default:
+		MISSING_CASE(rate);
+		return 0;
+	}
+}
+
+static bool
+intel_lt_phy_config_changed(struct intel_encoder *encoder,
+			    const struct intel_crtc_state *crtc_state)
+{
+	u8 val, rate;
+	u32 clock;
+
+	val = intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0,
+				LT_PHY_VDR_0_CONFIG);
+	rate = REG_FIELD_GET8(LT_PHY_VDR_RATE_ENCODING_MASK, val);
+
+	/*
+	 * The only time we do not reconfigure the PLL is when we are
+	 * using 1.62 Gbps clock since PHY PLL defaults to that
+	 * otherwise we always need to reconfigure it.
+	 */
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		clock = intel_lt_phy_get_dp_clock(rate);
+		if (crtc_state->port_clock == 1620000 && crtc_state->port_clock == clock)
+			return false;
+	}
+
+	return true;
+}
+
+static intel_wakeref_t intel_lt_phy_transaction_begin(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	intel_wakeref_t wakeref;
+
+	intel_psr_pause(intel_dp);
+	wakeref = intel_display_power_get(display, POWER_DOMAIN_DC_OFF);
+
+	return wakeref;
+}
+
+static void intel_lt_phy_transaction_end(struct intel_encoder *encoder, intel_wakeref_t wakeref)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_psr_resume(intel_dp);
+	intel_display_power_put(display, POWER_DOMAIN_DC_OFF, wakeref);
+}
+
 void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->lane_reversal;
 	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
+	intel_wakeref_t wakeref = 0;
+
+	wakeref = intel_lt_phy_transaction_begin(encoder);
 
 	/* 1. Enable MacCLK at default 162 MHz frequency. */
 	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
@@ -169,29 +262,34 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
 	 * encoded rate and encoded mode.
 	 */
-	/*
-	 * 5. Program the PHY internal PLL registers over PHY message bus for the desired
-	 * frequency and protocol type
-	 */
-	/* 6. Use the P2P transaction flow */
-	/*
-	 * 6.1. Set the PHY VDR register 0xCC4[Rate Control VDR Update] = 1 over PHY message
-	 * bus for Owned PHY Lanes.
-	 */
-	/*
-	 * 6.2. Poll for P2P Transaction Ready = "1" and read the MAC message bus VDR register
-	 * at offset 0xC00 for Owned PHY Lanes.
-	 */
-	/* 6.3. Clear P2P transaction Ready bit. */
-	/* 7. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0. */
-	/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
-	/*
-	 * 9. Follow the Display Voltage Frequency Switching - Sequence Before Frequency Change.
-	 * We handle this step in bxt_set_cdclk()
-	 */
-	/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
-	/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
-	/* 12. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 1. */
+	if (intel_lt_phy_config_changed(encoder, crtc_state)) {
+		/*
+		 * 5. Program the PHY internal PLL registers over PHY message bus for the desired
+		 * frequency and protocol type
+		 */
+		/* 6. Use the P2P transaction flow */
+		/*
+		 * 6.1. Set the PHY VDR register 0xCC4[Rate Control VDR Update] = 1 over PHY message
+		 * bus for Owned PHY Lanes.
+		 */
+		/*
+		 * 6.2. Poll for P2P Transaction Ready = "1" and read the MAC message bus VDR
+		 * register at offset 0xC00 for Owned PHY Lanes*.
+		 */
+		/* 6.3. Clear P2P transaction Ready bit. */
+		/* 7. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0. */
+		/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
+		/*
+		 * 9. Follow the Display Voltage Frequency Switching - Sequence Before Frequency
+		 * Change. We handle this step in bxt_set_cdclk().
+		 */
+		/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
+		/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
+		/* 12. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 1. */
+	} else {
+		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), crtc_state->port_clock);
+	}
+
 	/* 13. Ungate the forward clock by setting PORT_CLOCK_CTL[Forward Clock Ungate] = 1. */
 	/* 14. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
 	/*
@@ -205,4 +303,6 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	 * We handle this step in bxt_set_cdclk()
 	 */
 	/* 19. Move the PHY powerdown state to Active and program to enable/disable transmitters */
+
+	intel_lt_phy_transaction_end(encoder, wakeref);
 }
-- 
2.34.1

