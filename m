Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C54DCBDC689
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:08:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2689810E6FE;
	Wed, 15 Oct 2025 04:08:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b1NF9PN4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3644D10E6FE;
 Wed, 15 Oct 2025 04:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501317; x=1792037317;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L9HGMB2+0CN1R/YbxiHOePGDdeBcw7P/dUK1KiJ00I8=;
 b=b1NF9PN4a6Rmm/8xdcxNc4sADrQIBd0zzU8CkRjlCYtVTwy2A5d1kC5r
 GDn+42UlLWiXd8tcrjHoLKgcQ0j0r1iVEMk12ssa1vNLTVQXaMu+eqCxi
 v0xPWbmxx6d1nJqn9Fj6P1Ft2m4jv425JJA6Grf7KFex+osZvo7k795tb
 /pqAav8We5Vr3ycW2niT9Q7NrZIfXahwwVPUND6sEgoi3CfPZ0FCDz9Mh
 rZgpFCsi9tYIWwvv/nk/wmOKOmq8f0u/WckDVvQUuicl+hrvwAPGZLR4m
 3fnuIsi1+ZvrXraTg5f0VghUX/WJdAN7AMsJN6/JnL52IGsSS11dlxZOd Q==;
X-CSE-ConnectionGUID: rpzQJgueRcqqjHyXhUnBIQ==
X-CSE-MsgGUID: acJipUckTAS4yvyDgokZNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66318946"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66318946"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:08:37 -0700
X-CSE-ConnectionGUID: YJURX2ABTVa/HmQvjikbEw==
X-CSE-MsgGUID: doiafrJ5TNSUeiEp5pereA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="219196100"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:08:35 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 04/25] drm/i915/ltphy: Program sequence for PORT_CLOCK_CTL for
 LT Phy
Date: Wed, 15 Oct 2025 09:37:56 +0530
Message-Id: <20251015040817.3431297-5-suraj.kandpal@intel.com>
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

Program sequence from port clock ctl except for the SSC
enablement part which will be taken care of later.

Bspec: 74492
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  8 ++---
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 36 ++++++++++++++++++++
 3 files changed, 41 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index db2b05521c62..eab49c08d7ff 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2585,7 +2585,7 @@ static bool is_dp2(u32 clock)
 	return false;
 }
 
-static bool is_hdmi_frl(u32 clock)
+bool intel_cx0_is_hdmi_frl(u32 clock)
 {
 	switch (clock) {
 	case 300000: /* 3 Gbps */
@@ -2612,7 +2612,7 @@ static int intel_get_c20_custom_width(u32 clock, bool dp)
 {
 	if (dp && is_dp2(clock))
 		return 2;
-	else if (is_hdmi_frl(clock))
+	else if (intel_cx0_is_hdmi_frl(clock))
 		return 1;
 	else
 		return 0;
@@ -2706,7 +2706,7 @@ static void intel_c20_pll_program(struct intel_display *display,
 	} else {
 		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
 			      BIT(7) | PHY_C20_CUSTOM_SERDES_MASK,
-			      is_hdmi_frl(port_clock) ? BIT(7) : 0,
+			      intel_cx0_is_hdmi_frl(port_clock) ? BIT(7) : 0,
 			      MB_WRITE_COMMITTED);
 
 		intel_cx0_write(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
@@ -2766,7 +2766,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 
 	val |= XELPDP_FORWARD_CLOCK_UNGATE;
 
-	if (!is_dp && is_hdmi_frl(port_clock))
+	if (!is_dp && intel_cx0_is_hdmi_frl(port_clock))
 		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
 	else
 		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index c92026fe7b8f..b111a893b428 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -43,6 +43,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
 int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
 void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
+bool intel_cx0_is_hdmi_frl(u32 clock);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 void intel_cx0_pll_power_save_wa(struct intel_display *display);
 void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index c65333cc9494..8c6f60d9e0ac 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -108,13 +108,49 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_phy_pulse_status, 0);
 }
 
+static void
+intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
+				    const struct intel_crtc_state *crtc_state,
+				    bool lane_reversal)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	u32 val = 0;
+
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, encoder->port),
+		     XELPDP_PORT_REVERSAL,
+		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
+
+	val |= XELPDP_FORWARD_CLOCK_UNGATE;
+
+	/*
+	 * We actually mean MACCLK here and not MAXPCLK when using LT Phy
+	 * but since the register bits still remain the same we use
+	 * the same definition
+	 */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
+	    intel_cx0_is_hdmi_frl(crtc_state->port_clock))
+		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
+	else
+		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
+
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
+		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
+		     XELPDP_DDI_CLOCK_SELECT_MASK(display) | XELPDP_SSC_ENABLE_PLLA |
+		     XELPDP_SSC_ENABLE_PLLB, val);
+}
+
 void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state)
 {
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->lane_reversal;
+
 	/* 1. Enable MacCLK at default 162 MHz frequency. */
 	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
 
 	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes, gating, and SSC. */
+	intel_lt_phy_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
+
 	/* 3. Change owned PHY lanes power to Ready state. */
 	/*
 	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
-- 
2.34.1

