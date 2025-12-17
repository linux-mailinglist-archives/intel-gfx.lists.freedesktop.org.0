Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74127CC86EC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 16:28:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C68FA10E8C9;
	Wed, 17 Dec 2025 15:28:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SLQCKHnB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D06F210E8C7;
 Wed, 17 Dec 2025 15:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765985324; x=1797521324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EgDoHjiKSx7aoYQD4P5jhMoqhi4VckScANMV2g539f8=;
 b=SLQCKHnBGfo1uU0biQL7qiUZRFKanDcV03hHIXKwSouJaogy6u1Scxg2
 mua2WURZ6pMk+duaPMgRjwlpmFG4aQyIX69YxW+9ds6jqMyf7ohmJ9K0y
 UjnTbHr/ZrSbp2R5Cu3W5MomF5o+dPM4PYAt27ouBx4hVdCEd3woaN1UP
 PrfampS3NtwcN0TjfIsBj/rusP8vswOOT0KiLOSV7bZta7G815J7EyIMP
 IDL+BV8MidgZ6MhwZas2gvgFqrj/3xKX7G78fEJcLTAJP9FcjEaymtBhk
 nL2Tz578aPB3j++afzxxu62MN/37cMnFrrizcYOjCWggtZ5X2sw9l40+z g==;
X-CSE-ConnectionGUID: tZocHrRUSQyclpGnPQGHTQ==
X-CSE-MsgGUID: xVd6/ztWQdqV8JG8XgO8Rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="71781428"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="71781428"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 07:28:44 -0800
X-CSE-ConnectionGUID: D/N6G4a3Qr6GG0tDWk1LnQ==
X-CSE-MsgGUID: A9OJ0x9jRpya79kvHghWEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198097293"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa009.jf.intel.com with ESMTP; 17 Dec 2025 07:28:42 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 03/15] drm/i915/cx0: Drop Cx0 crtc_state from HDMI TMDS pll
 divider calculation
Date: Wed, 17 Dec 2025 17:19:43 +0200
Message-Id: <20251217151955.1690202-4-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251217151955.1690202-1-mika.kahola@intel.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
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

Drop crtc_state from hdmi tmds calculation and replace with the
parameters that are only required. Follow-up changes will call
these functions without a crtc_state available.

v2: Keep required crtc_state param for intel_c20_pll_tables_get()
    and other functions calling this one.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 1deb865618b7..664c48dc0ce3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2414,9 +2414,8 @@ static bool is_arrowlake_s_by_host_bridge(void)
 	return pdev && IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(host_bridge_pci_dev_id);
 }
 
-static u16 intel_c20_hdmi_tmds_tx_cgf_1(const struct intel_crtc_state *crtc_state)
+static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_display *display)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
 	u16 tx_misc;
 	u16 tx_dcc_cal_dac_ctrl_range = 8;
 	u16 tx_term_ctrl = 2;
@@ -2438,7 +2437,8 @@ static u16 intel_c20_hdmi_tmds_tx_cgf_1(const struct intel_crtc_state *crtc_stat
 		C20_PHY_TX_DCC_BYPASS | C20_PHY_TX_TERM_CTL(tx_term_ctrl));
 }
 
-static int intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state *crtc_state,
+static int intel_c20_compute_hdmi_tmds_pll(struct intel_display *display,
+					   int port_clock,
 					   struct intel_c20pll_state *pll_state)
 {
 	u64 datarate;
@@ -2452,10 +2452,10 @@ static int intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state *crtc_s
 	u8  mpllb_ana_freq_vco;
 	u8  mpll_div_multiplier;
 
-	if (crtc_state->port_clock < 25175 || crtc_state->port_clock > 600000)
+	if (port_clock < 25175 || port_clock > 600000)
 		return -EINVAL;
 
-	datarate = ((u64)crtc_state->port_clock * 1000) * 10;
+	datarate = ((u64)port_clock * 1000) * 10;
 	mpll_tx_clk_div = ilog2(div64_u64((u64)CLOCK_9999MHZ, (u64)datarate));
 	vco_freq_shift = ilog2(div64_u64((u64)CLOCK_4999MHZ * (u64)256, (u64)datarate));
 	vco_freq = (datarate << vco_freq_shift) >> 8;
@@ -2477,9 +2477,9 @@ static int intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state *crtc_s
 	else
 		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_0;
 
-	pll_state->clock	= crtc_state->port_clock;
+	pll_state->clock	= port_clock;
 	pll_state->tx[0]	= 0xbe88;
-	pll_state->tx[1]	= intel_c20_hdmi_tmds_tx_cgf_1(crtc_state);
+	pll_state->tx[1]	= intel_c20_hdmi_tmds_tx_cgf_1(display);
 	pll_state->tx[2]	= 0x0000;
 	pll_state->cmn[0]	= 0x0500;
 	pll_state->cmn[1]	= 0x0005;
@@ -2724,7 +2724,8 @@ static int intel_c20pll_calc_state(const struct intel_crtc_state *crtc_state,
 	/* try computed C20 HDMI tables before using consolidated tables */
 	if (!is_dp)
 		/* TODO: Update SSC state for HDMI as well */
-		err = intel_c20_compute_hdmi_tmds_pll(crtc_state, &hw_state->cx0pll.c20);
+		err = intel_c20_compute_hdmi_tmds_pll(display, crtc_state->port_clock,
+						      &hw_state->cx0pll.c20);
 
 	if (err)
 		err = intel_c20pll_calc_state_from_table(crtc_state, encoder,
-- 
2.34.1

