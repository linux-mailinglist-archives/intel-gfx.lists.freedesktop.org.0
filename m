Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KqJDUkwqGm+pQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B5C200383
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 14:14:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DA4010EA0A;
	Wed,  4 Mar 2026 13:14:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BUwCSeZx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C1C10EA10;
 Wed,  4 Mar 2026 13:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772630086; x=1804166086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q7jkx3sIalidjN7BarwSCZgWuFy9b5Ycrcqz/SJAeGg=;
 b=BUwCSeZxNrNjwV+rWMbvJZnrobxNV0DCr2Jv4wsIiOe4YehNZ2Fjjvmr
 PZkLfoM6BNDiV9KKBULTavyo1LO1cDUJ9RhetXJY77hv8IcWnvkpuoJyf
 N8/poPElY2E3fxWXjCr/aUwK4CYwxXnMIjtq8ym4PyZ3lXKNTpmTo4YrM
 xDgXumQRa3aFPdUdcqqJdy0NIqm5bTOzBhLKwSv+sw+bFfheWaohBxnSc
 7AGQ1adbZBQxzO0xXViAzISfyl5cfb0B76iuKHUERLsSw8ptq8pNF7+Tf
 /mYy8lz1YRQ5r8HRRUYyN9w2BKWPuGZdoUu+FwCCEUbp3wiUYSIh1nf3K w==;
X-CSE-ConnectionGUID: 2Nh0c8gOSmitRUa9JbSHJw==
X-CSE-MsgGUID: 3fAlWxKBRROwh5g0yLKp8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77293479"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="77293479"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 05:14:46 -0800
X-CSE-ConnectionGUID: tm5HStpnTgKFHF7SUsBCoA==
X-CSE-MsgGUID: YPvL48jYS/2iACnj/kb1Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="241350839"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa002.fm.intel.com with ESMTP; 04 Mar 2026 05:14:45 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 17/24] drm/i915/lt_phy: Add .enable_clock hook on DDI
Date: Wed,  4 Mar 2026 13:14:16 +0000
Message-ID: <20260304131423.1017821-18-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304131423.1017821-1-mika.kahola@intel.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: D5B5C200383
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Enable PLL clock on DDI by moving part of the PLL enabling
sequence into a DDI clock enabling function.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 ++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 33 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_lt_phy.h   | 10 ++++--
 4 files changed, 43 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 76ba308f32ad..51403d09c477 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5298,7 +5298,7 @@ void intel_ddi_init(struct intel_display *display,
 	encoder->pipe_mask = ~0;
 
 	if (HAS_LT_PHY(display)) {
-		encoder->enable_clock = intel_xe3plpd_pll_enable;
+		encoder->enable_clock = intel_xe3plpd_pll_enable_clock;
 		encoder->disable_clock = intel_xe3plpd_pll_disable;
 		encoder->port_pll_type = intel_mtl_port_pll_type;
 		encoder->get_config = xe3plpd_ddi_get_config;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 412582e29ca6..54c7a255b3a5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4595,7 +4595,20 @@ static int xe3plpd_pll_get_freq(struct intel_display *display,
 	return intel_lt_phy_calc_port_clock(display, &dpll_hw_state->ltpll);
 }
 
+static void xe3plpd_pll_enable(struct intel_display *display,
+			       struct intel_dpll *pll,
+			       const struct intel_dpll_hw_state *dpll_hw_state)
+{
+	struct intel_encoder *encoder = get_intel_encoder(display, pll);
+
+	if (drm_WARN_ON(display->drm, !encoder))
+		return;
+
+	intel_xe3plpd_pll_enable(encoder, pll, dpll_hw_state);
+}
+
 static const struct intel_dpll_funcs xe3plpd_pll_funcs = {
+	.enable = xe3plpd_pll_enable,
 	.get_hw_state = xe3plpd_pll_get_hw_state,
 	.get_freq = xe3plpd_pll_get_freq,
 };
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index c3686ac6adc9..6bc32d1734a7 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1883,9 +1883,11 @@ intel_lt_phy_enable_disable_tx(struct intel_encoder *encoder,
 }
 
 void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
-			     const struct intel_crtc_state *crtc_state)
+			     struct intel_dpll *pll,
+			     const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
+	int port_clock = intel_lt_phy_calc_port_clock(display, &dpll_hw_state->ltpll);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->lane_reversal;
 	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
@@ -1901,11 +1903,11 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	wakeref = intel_lt_phy_transaction_begin(encoder);
 
 	/* 1. Enable MacCLK at default 162 MHz frequency. */
-	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
+	intel_lt_phy_lane_reset(encoder, dpll_hw_state->ltpll.lane_count);
 
 	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes, gating, and SSC. */
-	intel_lt_phy_program_port_clock_ctl(encoder, &crtc_state->dpll_hw_state.ltpll,
-					    crtc_state->port_clock, lane_reversal);
+	intel_lt_phy_program_port_clock_ctl(encoder, &dpll_hw_state->ltpll,
+					    port_clock, lane_reversal);
 
 	/* 3. Change owned PHY lanes power to Ready state. */
 	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
@@ -1915,12 +1917,12 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
 	 * encoded rate and encoded mode.
 	 */
-	if (intel_lt_phy_config_changed(encoder, &crtc_state->dpll_hw_state.ltpll)) {
+	if (intel_lt_phy_config_changed(encoder, &dpll_hw_state->ltpll)) {
 		/*
 		 * 5. Program the PHY internal PLL registers over PHY message bus for the desired
 		 * frequency and protocol type
 		 */
-		intel_lt_phy_program_pll(encoder, &crtc_state->dpll_hw_state.ltpll);
+		intel_lt_phy_program_pll(encoder, &dpll_hw_state->ltpll);
 
 		/* 6. Use the P2P transaction flow */
 		/*
@@ -1952,8 +1954,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 		 * Change. We handle this step in bxt_set_cdclk().
 		 */
 		/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
-		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
-			       crtc_state->port_clock);
+		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), port_clock);
 
 		/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
 		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
@@ -2000,7 +2001,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 			     lane_phy_pulse_status,
 			     lane_phy_pulse_status);
 	} else {
-		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), crtc_state->port_clock);
+		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), port_clock);
 	}
 
 	/*
@@ -2011,7 +2012,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
 					       XELPDP_P0_STATE_ACTIVE);
 
-	intel_lt_phy_enable_disable_tx(encoder, &crtc_state->dpll_hw_state.ltpll);
+	intel_lt_phy_enable_disable_tx(encoder, &dpll_hw_state->ltpll);
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
@@ -2282,14 +2283,22 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 }
 
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
-			      const struct intel_crtc_state *crtc_state)
+			      struct intel_dpll *pll,
+			      const struct intel_dpll_hw_state *dpll_hw_state)
+{
+	intel_lt_phy_pll_enable(encoder, pll, dpll_hw_state);
+}
+
+void intel_xe3plpd_pll_enable_clock(struct intel_encoder *encoder,
+				    const struct intel_crtc_state *crtc_state)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
 	else
-		intel_lt_phy_pll_enable(encoder, crtc_state);
+		/* TODO: remove when PLL mgr is in place. */
+		intel_xe3plpd_pll_enable(encoder, NULL, &crtc_state->dpll_hw_state);
 }
 
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 0053bb5489e5..9188ce980119 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -11,13 +11,16 @@
 struct drm_printer;
 struct intel_atomic_state;
 struct intel_display;
+struct intel_dpll;
+struct intel_dpll_hw_state;
 struct intel_encoder;
 struct intel_crtc_state;
 struct intel_crtc;
 struct intel_lt_phy_pll_state;
 
 void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
-			     const struct intel_crtc_state *crtc_state);
+			     struct intel_dpll *pll,
+			     const struct intel_dpll_hw_state *dpll_hw_state);
 void intel_lt_phy_pll_disable(struct intel_encoder *encoder);
 int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
@@ -40,8 +43,11 @@ int
 intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 				  u32 frequency_khz);
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
-			      const struct intel_crtc_state *crtc_state);
+			      struct intel_dpll *pll,
+			      const struct intel_dpll_hw_state *dpll_hw_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
 void intel_lt_phy_verify_plls(struct intel_display *display);
+void intel_xe3plpd_pll_enable_clock(struct intel_encoder *encoder,
+				    const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_LT_PHY_H__ */
-- 
2.43.0

