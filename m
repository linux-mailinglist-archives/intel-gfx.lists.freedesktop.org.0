Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E90ACE907E
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Dec 2025 09:31:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3436D10E86C;
	Tue, 30 Dec 2025 08:31:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EhuDskl+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FA9510E86B;
 Tue, 30 Dec 2025 08:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767083511; x=1798619511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0hQXFoE5iJMI3oSZ5RdOFdsHMHR/hbKVxmBbmnvDAr4=;
 b=EhuDskl+7U90hq0LpdHTkMdOluuXgiVANioOj3C5u/8+FH+7aW6Ns1X9
 LDoOW6liAWt5TWFILSm4zk9z8TmsjVDzpDkBbdwr0eIzoDOIHyk3GEK3L
 DJMFwASAjEtZ87SAHSowSdTsBBROLG5AeYXY2tPMts/7rCxwJhgBTLGva
 UAzyosbNVwa8u87LU2qMUGzRmazKy4qBiRPRJnDuAoN44KHxncPoqRmWo
 FtzwgqcoDoxhTLWnZPAlspzZsVYOABqr9xwzAjeFdABclivgKtu6KoOFp
 DZNSQkWAboSZ8NjpsaZ/0jVqjheqGwP1uFP+jFF7g9nc6+ooYgNw0N+Cj w==;
X-CSE-ConnectionGUID: QpCRPXQnRpS1kSNWwJAHow==
X-CSE-MsgGUID: 0n2YbT4LQI6LsbUvvTyZug==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="72298391"
X-IronPort-AV: E=Sophos;i="6.21,188,1763452800"; d="scan'208";a="72298391"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 00:31:51 -0800
X-CSE-ConnectionGUID: 6mb7oOE3SAu60kpQsUVTWg==
X-CSE-MsgGUID: y3dubUCEQFyoHUqydTN49Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,188,1763452800"; d="scan'208";a="238604438"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 30 Dec 2025 00:31:50 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/3] drm/i915/cx0: Split PLL enabling/disabling in two parts
Date: Tue, 30 Dec 2025 14:01:40 +0530
Message-Id: <20251230083142.70064-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251230083142.70064-1-suraj.kandpal@intel.com>
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
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

From: Mika Kahola <mika.kahola@intel.com>

Split PLL enabling/disabling in two parts - one for pll setting
pll dividers and second one to enable/disable pll clock. PLL
clock enabling/disbling happens via encoder->enable_clock/disable_clock
function hook. The reason for doing this is that we need to make sure
the clock enablement happens after PPS ON step to be inline with the
sequences which we end up violating otherwise. As a result of this
violation we end up in a hanged state if machine stays idle for more
that 15 mins.

PLL state verification happens now earlier than the clock is enabled
which causes a drm warn to be thrown. Silence this warning by
allowing this check for only earlier platforms than MeteorLake.

Bspec: 49190
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 87 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 12 +--
 2 files changed, 64 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 7288065d2461..f3baba264e88 100644
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
@@ -3284,27 +3281,6 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
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
 	/*
 	 * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
 	 *
@@ -3403,6 +3379,42 @@ static int intel_mtl_tbt_clock_select(struct intel_display *display,
 	}
 }
 
+static void intel_cx0pll_enable_clock(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	enum phy phy = intel_encoder_to_phy(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->lane_reversal;
+					  INTEL_CX0_LANE0;
+	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
+					INTEL_CX0_LANE0;
+
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
+	intel_cx0_phy_transaction_end(encoder, wakeref);
+}
+
 void intel_mtl_tbt_pll_enable_clock(struct intel_encoder *encoder, int port_clock)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -3472,6 +3484,8 @@ void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
+	else
+		intel_cx0pll_enable_clock(encoder);
 }
 
 /*
@@ -3567,12 +3581,6 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
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
 
@@ -3586,6 +3594,20 @@ static bool intel_cx0_pll_is_enabled(struct intel_encoder *encoder)
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
@@ -3635,6 +3657,9 @@ void intel_mtl_pll_disable_clock(struct intel_encoder *encoder)
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_disable_clock(encoder);
+	else
+		intel_cx0pll_disable_clock(encoder);
+
 }
 
 enum icl_port_dpll_id
@@ -3783,6 +3808,8 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
 			    encoder->base.base.id, encoder->base.name);
 
 		intel_cx0pll_enable(encoder, &pll_state);
+		intel_cx0pll_enable_clock(encoder);
 		intel_cx0pll_disable(encoder);
+		intel_cx0pll_disable_clock(encoder);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 9aa84a430f09..59395076103c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -186,11 +186,13 @@ void assert_dpll(struct intel_display *display,
 		     "asserting DPLL %s with no DPLL\n", str_on_off(state)))
 		return;
 
-	cur_state = intel_dpll_get_hw_state(display, pll, &hw_state);
-	INTEL_DISPLAY_STATE_WARN(display, cur_state != state,
-				 "%s assertion failure (expected %s, current %s)\n",
-				 pll->info->name, str_on_off(state),
-				 str_on_off(cur_state));
+	if (DISPLAY_VER(display) < 14) {
+		cur_state = intel_dpll_get_hw_state(display, pll, &hw_state);
+		INTEL_DISPLAY_STATE_WARN(display, cur_state != state,
+					 "%s assertion failure (expected %s, current %s)\n",
+					 pll->info->name, str_on_off(state),
+					 str_on_off(cur_state));
+	}
 }
 
 static enum tc_port icl_pll_id_to_tc_port(enum intel_dpll_id id)
-- 
2.34.1

