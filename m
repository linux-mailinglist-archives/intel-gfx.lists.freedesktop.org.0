Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELriNPN5sWk2vgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:19:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88116265488
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:19:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17C6A10E909;
	Wed, 11 Mar 2026 14:19:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aRdpAINi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B70BD10E8C5;
 Wed, 11 Mar 2026 14:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773238769; x=1804774769;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VUVdlyu0DxhhqBDlR9gdoig+I6XlrHeFh2tcl5eLS2o=;
 b=aRdpAINidxK/36j97nE+wuSpe+1C+apZ01AH96R+EBY7IhVbWCs6lAi1
 z71NRfM9xNMxNSaYhzo1QOx53G3BfRryOA9aoJeRJiHKS5JK2Ffhs6ZXj
 oPF4yv1cqSZLy3X+Z3lluusbGCQusyc+hVUTnRbzlur4hj2YX2hTEObXW
 bACCU+0pT22RXUnJMkP+dwVivaSffPisvoLEt7Um7JRUZS1lSiTdwNfjj
 ne1RhG7Q+CC8N8bNleA0DBjxmc3Dax39cIIYml4+SyYNro91I+WKjKoh+
 6IHqnGnopHFenQpIebY8zSaz71+pxO6VK+aqzrm7sdMkpJ1KiqY2fZsm+ w==;
X-CSE-ConnectionGUID: 2GtUQV02RmiOkLKkgkPJDQ==
X-CSE-MsgGUID: n6GgJ8v1S5GEz8zoPHUiug==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="99775253"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="99775253"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:19:29 -0700
X-CSE-ConnectionGUID: eYbzlNt3QPWDtScYSjyPdw==
X-CSE-MsgGUID: /Wu9e2UPTryw7HPmh8bc1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="216730521"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa006.fm.intel.com with ESMTP; 11 Mar 2026 07:19:27 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 16/24] drm/i915/lt_phy: Add .enable_clock hook on DDI
Date: Wed, 11 Mar 2026 14:18:57 +0000
Message-ID: <20260311141905.2526418-17-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260311141905.2526418-1-mika.kahola@intel.com>
References: <20260311141905.2526418-1-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: 88116265488
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
	RCPT_COUNT_THREE(0.00)[4];
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

v2: Reuse intel_mtl_pll_enable_clock for DDI clock enabling

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> (v1)
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 ++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 31 +++++++++----------
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  8 +++--
 4 files changed, 34 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index dbf3f344e014..93f62d995e96 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5298,7 +5298,7 @@ void intel_ddi_init(struct intel_display *display,
 	encoder->pipe_mask = ~0;
 
 	if (HAS_LT_PHY(display)) {
-		encoder->enable_clock = intel_xe3plpd_pll_enable;
+		encoder->enable_clock = intel_mtl_pll_enable_clock;
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
index 478ab0b87132..dfcff3d6ad33 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1901,9 +1901,11 @@ intel_lt_phy_enable_disable_tx(struct intel_encoder *encoder,
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
@@ -1919,11 +1921,11 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
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
@@ -1933,12 +1935,12 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
 	 * encoded rate and encoded mode.
 	 */
-	if (intel_lt_phy_config_changed(encoder, &crtc_state->dpll_hw_state.ltpll, crtc_state->port_clock)) {
+	if (intel_lt_phy_config_changed(encoder, &dpll_hw_state->ltpll, port_clock)) {
 		/*
 		 * 5. Program the PHY internal PLL registers over PHY message bus for the desired
 		 * frequency and protocol type
 		 */
-		intel_lt_phy_program_pll(encoder, &crtc_state->dpll_hw_state.ltpll);
+		intel_lt_phy_program_pll(encoder, &dpll_hw_state->ltpll);
 
 		/* 6. Use the P2P transaction flow */
 		/*
@@ -1970,8 +1972,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 		 * Change. We handle this step in bxt_set_cdclk().
 		 */
 		/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
-		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
-			       crtc_state->port_clock);
+		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), port_clock);
 
 		/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
 		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
@@ -2018,7 +2019,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 			     lane_phy_pulse_status,
 			     lane_phy_pulse_status);
 	} else {
-		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), crtc_state->port_clock);
+		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), port_clock);
 	}
 
 	/*
@@ -2029,7 +2030,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
 					       XELPDP_P0_STATE_ACTIVE);
 
-	intel_lt_phy_enable_disable_tx(encoder, &crtc_state->dpll_hw_state.ltpll);
+	intel_lt_phy_enable_disable_tx(encoder, &dpll_hw_state->ltpll);
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
@@ -2287,14 +2288,10 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 }
 
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
-			      const struct intel_crtc_state *crtc_state)
+			      struct intel_dpll *pll,
+			      const struct intel_dpll_hw_state *dpll_hw_state)
 {
-	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-
-	if (intel_tc_port_in_tbt_alt_mode(dig_port))
-		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
-	else
-		intel_lt_phy_pll_enable(encoder, crtc_state);
+	intel_lt_phy_pll_enable(encoder, pll, dpll_hw_state);
 }
 
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 0053bb5489e5..d8d5c2064b6b 100644
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
@@ -40,7 +43,8 @@ int
 intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 				  u32 frequency_khz);
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
-			      const struct intel_crtc_state *crtc_state);
+			      struct intel_dpll *pll,
+			      const struct intel_dpll_hw_state *dpll_hw_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
 void intel_lt_phy_verify_plls(struct intel_display *display);
 
-- 
2.43.0

