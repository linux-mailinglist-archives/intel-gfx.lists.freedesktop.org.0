Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC1AD1C493
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 04:43:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91E0110E573;
	Wed, 14 Jan 2026 03:43:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KdFyU8zZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E8A710E573;
 Wed, 14 Jan 2026 03:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768362187; x=1799898187;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mW8OrBeZCkD0YssK8rXR3TNDr2WJTFldcdtCKK0OUJ4=;
 b=KdFyU8zZyAUynlyN7D5JxDp548lBfAtbhEjIRdd1BiNMqz6g+QQ2ThOw
 4xdDNEieqmBnHTS7b+r1amYaCWgAsBdHwUKLRc/QTkZvYSxBH3l5Q2sbl
 iiBPghsFCaj34ZPMp956r9sMztCSL+gwPFww8KCX4gVsG3BBZRfx990ho
 +ZxGMnM92W3HbCXOK17COFQjsf6oak4KiASBM/Oqn405Q98sW4X8GIO2f
 P8w8zum4toTkBvk8ZfA/4osN7+Agp0jZZ1G0Lktiv0IpgCnFl+9pbS+xP
 CojAeXpEhGGHI9K9EZnp2jckFO++pJFDydQEQ93fV98xSJBzNehxUVzIz A==;
X-CSE-ConnectionGUID: XO8UyezoTX27lDgHpbe6pw==
X-CSE-MsgGUID: ZYYW4hgqTmGgNttTdj8K+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="68664592"
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="68664592"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 19:43:07 -0800
X-CSE-ConnectionGUID: UvGomBrJSZyHAS2gnngpsA==
X-CSE-MsgGUID: V/9zA5+GQtSfw72MhLzkGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="204833744"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 13 Jan 2026 19:43:05 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 1/3] drm/i915/cx0: Split PLL enabling/disabling in two parts
Date: Wed, 14 Jan 2026 09:12:57 +0530
Message-Id: <20260114034259.466605-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260114034259.466605-1-suraj.kandpal@intel.com>
References: <20260114034259.466605-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Mika Kahola <mika.kahola@intel.com>

Split PLL enabling/disabling in two parts - one for pll setting
pll dividers and second one to enable/disable pll clock. PLL
clock enabling/disbling happens via encoder->enable_clock/disable_clock
function hook.

PLL state verification happens now earlier than the clock is enabled
which causes a drm warn to be thrown. Silence this warning by
allowing this check for only earlier platforms than MeteorLake.

While at it also add the necessary argument to cx0_enable_clock
so that we can move step 12 of the enable sequence.

v2:
- Move state verification to enable_clock() function for
MTL+ platforms
- Squash patch 1 & 2 (Gustavo)
- Use correct Bspec references (Gustavo)
- Fix build error (Michal)

Bspec: 65448, 68849
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 120 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   7 +-
 2 files changed, 80 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 7288065d2461..3418a3ed28fd 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3225,11 +3225,8 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 {
 	int port_clock = pll_state->use_c10 ? pll_state->c10.clock : pll_state->c20.clock;
 	struct intel_display *display = to_intel_display(encoder);
-	enum phy phy = intel_encoder_to_phy(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->lane_reversal;
-	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
-					  INTEL_CX0_LANE0;
 	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/*
@@ -3284,42 +3281,6 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	 */
 	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), port_clock);
 
-	/*
-	 * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
-	 * LN<Lane for maxPCLK> to "1" to enable PLL.
-	 */
-	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
-		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
-		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
-
-	/* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
-	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
-			     intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
-			     intel_cx0_get_pclk_pll_ack(maxpclk_lane),
-			     XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, NULL))
-		drm_warn(display->drm, "Port %c PLL not locked\n",
-			 phy_name(phy));
-
-	/*
-	 * 11. Follow the Display Voltage Frequency Switching Sequence After
-	 * Frequency Change. We handle this step in bxt_set_cdclk().
-	 */
-
-	/*
-	 * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
-	 *
-	 * Wa_13013502646:
-	 * Fixes: HDMI lane to lane skew violations on C10 display PHYs.
-	 * Workaround: Toggle powerdown value by setting first to P0 and then to P2, for both
-	 * PHY lanes.
-	 */
-	if (!cx0pll_state_is_dp(pll_state) && pll_state->use_c10) {
-		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
-						    XELPDP_P0_STATE_ACTIVE);
-		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
-						    XELPDP_P2_STATE_READY);
-	}
-
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
@@ -3403,6 +3364,56 @@ static int intel_mtl_tbt_clock_select(struct intel_display *display,
 	}
 }
 
+static void intel_cx0pll_enable_clock(struct intel_encoder *encoder,
+				      const struct intel_cx0pll_state *pll_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	enum phy phy = intel_encoder_to_phy(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->lane_reversal;
+	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
+					  INTEL_CX0_LANE0;
+	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
+
+	/*
+	 * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
+	 * LN<Lane for maxPCLK> to "1" to enable PLL.
+	 */
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
+		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
+		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
+
+	/* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
+	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
+			     intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
+			     intel_cx0_get_pclk_pll_ack(maxpclk_lane),
+			     XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, NULL))
+		drm_warn(display->drm, "Port %c PLL not locked\n",
+			 phy_name(phy));
+
+	/*
+	 * 11. Follow the Display Voltage Frequency Switching Sequence After
+	 * Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/*
+	 * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
+	 *
+	 * Wa_13013502646:
+	 * Fixes: HDMI lane to lane skew violations on C10 display PHYs.
+	 * Workaround: Toggle powerdown value by setting first to P0 and then to P2, for both
+	 * PHY lanes.
+	 */
+	if (!cx0pll_state_is_dp(pll_state) && pll_state->use_c10) {
+		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
+						    XELPDP_P0_STATE_ACTIVE);
+		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
+						    XELPDP_P2_STATE_READY);
+	}
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
+}
+
 void intel_mtl_tbt_pll_enable_clock(struct intel_encoder *encoder, int port_clock)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -3468,10 +3479,16 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
 void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_dpll *pll = crtc_state->intel_dpll;
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
+	else
+		intel_cx0pll_enable_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
+
+	assert_dpll_enabled(display, pll);
 }
 
 /*
@@ -3567,12 +3584,6 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 	 * Frequency Change. We handle this step in bxt_set_cdclk().
 	 */
 
-	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
-	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
-		     XELPDP_DDI_CLOCK_SELECT_MASK(display), 0);
-	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
-		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
-
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
@@ -3586,6 +3597,20 @@ static bool intel_cx0_pll_is_enabled(struct intel_encoder *encoder)
 			     intel_cx0_get_pclk_pll_request(lane);
 }
 
+static void intel_cx0pll_disable_clock(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
+
+	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
+		     XELPDP_DDI_CLOCK_SELECT_MASK(display), 0);
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
+		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
+}
+
 void intel_mtl_tbt_pll_disable_clock(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -3635,6 +3660,9 @@ void intel_mtl_pll_disable_clock(struct intel_encoder *encoder)
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_disable_clock(encoder);
+	else
+		intel_cx0pll_disable_clock(encoder);
+
 }
 
 enum icl_port_dpll_id
@@ -3783,6 +3811,8 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
 			    encoder->base.base.id, encoder->base.name);
 
 		intel_cx0pll_enable(encoder, &pll_state);
+		intel_cx0pll_enable_clock(encoder, &pll_state);
 		intel_cx0pll_disable(encoder);
+		intel_cx0pll_disable_clock(encoder);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 9aa84a430f09..040c97d81302 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -298,7 +298,8 @@ void intel_dpll_enable(const struct intel_crtc_state *crtc_state)
 
 	if (old_mask) {
 		drm_WARN_ON(display->drm, !pll->on);
-		assert_dpll_enabled(display, pll);
+		if (DISPLAY_VER(display) < 14)
+			assert_dpll_enabled(display, pll);
 		goto out;
 	}
 	drm_WARN_ON(display->drm, pll->on);
@@ -342,7 +343,9 @@ void intel_dpll_disable(const struct intel_crtc_state *crtc_state)
 		    pll->info->name, pll->active_mask, pll->on,
 		    crtc->base.base.id, crtc->base.name);
 
-	assert_dpll_enabled(display, pll);
+	if (DISPLAY_VER(display) < 14)
+		assert_dpll_enabled(display, pll);
+
 	drm_WARN_ON(display->drm, !pll->on);
 
 	pll->active_mask &= ~pipe_mask;
-- 
2.34.1

