Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 730618AC72D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B59921128C1;
	Mon, 22 Apr 2024 08:35:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D/Mj8en2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A4551128C1
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774935; x=1745310935;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8V39oM5M3SPtefWKgK3GZT7aD9+5MSqHjpsrYBm50B0=;
 b=D/Mj8en2kBpVSfGWJNsDdPrVRGFDM2vY0nYUOnYFSvWASUcs418weHmY
 KCWYM8d8N/lUrQL9Tl0wgRo8zHagbkuyHTxA6IpN0vYj2vyV205zH1CAM
 RkEsjDlx6pUHsASq/vfGwu4sxD0TczZlLQ5wOz3pz4yKRmeaQ+ZPmZMvI
 p6ib6LulFJOuvrZ2RjjFprMamHiWH0xzuUhJC3GQ9mlzs+yNiwM7VlUtO
 h4FMZIal6b+dUUBq53/TzvqtpzQVHNo5H0RvcNN2bSlzmJk9o0sgL/tsj
 qJiTkczhbv6giqNAk4khhaDGxX32873/XoOWT0uif+VIO7XG7pn87gnBC g==;
X-CSE-ConnectionGUID: PoVS8B57QFy2aDeg/pZs0w==
X-CSE-MsgGUID: ffVRKgpIQpOodrM41a2z1w==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453506"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453506"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:35 -0700
X-CSE-ConnectionGUID: Y2kfqrZPSjijh2on/IsiWw==
X-CSE-MsgGUID: +L8Paw9cQ8m3sPZqmUsHsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021837"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:35:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:35:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 13/14] drm/i915/dpio: Clean up the vlv/chv PHY register bits
Date: Mon, 22 Apr 2024 11:34:56 +0300
Message-ID: <20240422083457.23815-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use REG_BIT() & co. for the vlv/chv DPIO PHY registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../i915/display/intel_display_power_well.c   |   7 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  59 ++--
 drivers/gpu/drm/i915/display/intel_dpll.c     |  85 +++--
 drivers/gpu/drm/i915/i915_reg.h               | 294 ++++++++++--------
 4 files changed, 236 insertions(+), 209 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 49114afc9a61..e4ba6efc90e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1553,10 +1553,11 @@ static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpi
 	}
 
 	if (ch == DPIO_CH0)
-		actual = val >> DPIO_ANYDL_POWERDOWN_SHIFT_CH0;
+		actual = REG_FIELD_GET(DPIO_ANYDL_POWERDOWN_CH0 |
+				       DPIO_ALLDL_POWERDOWN_CH0, val);
 	else
-		actual = val >> DPIO_ANYDL_POWERDOWN_SHIFT_CH1;
-	actual &= DPIO_ALLDL_POWERDOWN | DPIO_ANYDL_POWERDOWN;
+		actual = REG_FIELD_GET(DPIO_ANYDL_POWERDOWN_CH1 |
+				       DPIO_ALLDL_POWERDOWN_CH1, val);
 
 	drm_WARN(&dev_priv->drm, actual != expected,
 		 "Unexpected DPIO lane power down: all %d, any %d. Expected: all %d, any %d. (0x%x = 0x%08x)\n",
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index fa665d353df9..11875d18a8fc 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -757,7 +757,7 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 	for (i = 0; i < crtc_state->lane_count; i++) {
 		val = vlv_dpio_read(dev_priv, phy, CHV_TX_DW4(ch, i));
 		val &= ~DPIO_SWING_DEEMPH9P5_MASK;
-		val |= deemph_reg_value << DPIO_SWING_DEEMPH9P5_SHIFT;
+		val |= DPIO_SWING_DEEMPH9P5(deemph_reg_value);
 		vlv_dpio_write(dev_priv, phy, CHV_TX_DW4(ch, i), val);
 	}
 
@@ -766,15 +766,15 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 		val = vlv_dpio_read(dev_priv, phy, CHV_TX_DW2(ch, i));
 
 		val &= ~DPIO_SWING_MARGIN000_MASK;
-		val |= margin_reg_value << DPIO_SWING_MARGIN000_SHIFT;
+		val |= DPIO_SWING_MARGIN000(margin_reg_value);
 
 		/*
 		 * Supposedly this value shouldn't matter when unique transition
 		 * scale is disabled, but in fact it does matter. Let's just
 		 * always program the same value and hope it's OK.
 		 */
-		val &= ~(0xff << DPIO_UNIQ_TRANS_SCALE_SHIFT);
-		val |= 0x9a << DPIO_UNIQ_TRANS_SCALE_SHIFT;
+		val &= ~DPIO_UNIQ_TRANS_SCALE_MASK;
+		val |= DPIO_UNIQ_TRANS_SCALE(0x9a);
 
 		vlv_dpio_write(dev_priv, phy, CHV_TX_DW2(ch, i), val);
 	}
@@ -902,20 +902,20 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 
 	/* program clock channel usage */
 	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW8(ch));
-	val |= CHV_PCS_USEDCLKCHANNEL_OVRRIDE;
-	if (pipe != PIPE_B)
-		val &= ~CHV_PCS_USEDCLKCHANNEL;
+	val |= DPIO_PCS_USEDCLKCHANNEL_OVRRIDE;
+	if (pipe == PIPE_B)
+		val |= DPIO_PCS_USEDCLKCHANNEL;
 	else
-		val |= CHV_PCS_USEDCLKCHANNEL;
+		val &= ~DPIO_PCS_USEDCLKCHANNEL;
 	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW8(ch), val);
 
 	if (crtc_state->lane_count > 2) {
 		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW8(ch));
-		val |= CHV_PCS_USEDCLKCHANNEL_OVRRIDE;
-		if (pipe != PIPE_B)
-			val &= ~CHV_PCS_USEDCLKCHANNEL;
+		val |= DPIO_PCS_USEDCLKCHANNEL_OVRRIDE;
+		if (pipe == PIPE_B)
+			val |= DPIO_PCS_USEDCLKCHANNEL;
 		else
-			val |= CHV_PCS_USEDCLKCHANNEL;
+			val &= ~DPIO_PCS_USEDCLKCHANNEL;
 		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW8(ch), val);
 	}
 
@@ -925,10 +925,10 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	 * pick the CL based on the port.
 	 */
 	val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW19(ch));
-	if (pipe != PIPE_B)
-		val &= ~CHV_CMN_USEDCLKCHANNEL;
-	else
+	if (pipe == PIPE_B)
 		val |= CHV_CMN_USEDCLKCHANNEL;
+	else
+		val &= ~CHV_CMN_USEDCLKCHANNEL;
 	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW19(ch), val);
 
 	vlv_dpio_put(dev_priv);
@@ -962,11 +962,10 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	for (i = 0; i < crtc_state->lane_count; i++) {
 		/* Set the upar bit */
 		if (crtc_state->lane_count == 1)
-			data = 0x0;
+			data = 0;
 		else
-			data = (i == 1) ? 0x0 : 0x1;
-		vlv_dpio_write(dev_priv, phy, CHV_TX_DW14(ch, i),
-				data << DPIO_UPAR_SHIFT);
+			data = (i == 1) ? 0 : DPIO_UPAR;
+		vlv_dpio_write(dev_priv, phy, CHV_TX_DW14(ch, i), data);
 	}
 
 	/* Data lane stagger programming */
@@ -1099,13 +1098,13 @@ void vlv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	vlv_dpio_get(dev_priv);
 
 	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0_GRP(ch),
-			 DPIO_PCS_TX_LANE2_RESET |
-			 DPIO_PCS_TX_LANE1_RESET);
+		       DPIO_PCS_TX_LANE2_RESET |
+		       DPIO_PCS_TX_LANE1_RESET);
 	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1_GRP(ch),
-			 DPIO_PCS_CLK_CRI_RXEB_EIOS_EN |
-			 DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN |
-			 (1<<DPIO_PCS_CLK_DATAWIDTH_SHIFT) |
-				 DPIO_PCS_CLK_SOFT_RESET);
+		       DPIO_PCS_CLK_CRI_RXEB_EIOS_EN |
+		       DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN |
+		       DPIO_PCS_CLK_DATAWIDTH_8_10 |
+		       DPIO_PCS_CLK_SOFT_RESET);
 
 	/* Fix up inter-pair skew failure */
 	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW12_GRP(ch), 0x00750f00);
@@ -1130,12 +1129,10 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	vlv_dpio_get(dev_priv);
 
 	/* Enable clock channels for this port */
-	val = 0;
-	if (pipe)
-		val |= (1<<21);
-	else
-		val &= ~(1<<21);
-	val |= 0x001000c4;
+	val = DPIO_PCS_USEDCLKCHANNEL_OVRRIDE;
+	if (pipe == PIPE_B)
+		val |= DPIO_PCS_USEDCLKCHANNEL;
+	val |= 0xc4;
 	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW8_GRP(ch), val);
 
 	/* Program lane clock */
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 861f4a735251..c2ee95993a96 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -527,11 +527,11 @@ void vlv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW3(ch));
 	vlv_dpio_put(dev_priv);
 
-	clock.m1 = (tmp >> DPIO_M1DIV_SHIFT) & 7;
-	clock.m2 = tmp & DPIO_M2DIV_MASK;
-	clock.n = (tmp >> DPIO_N_SHIFT) & 0xf;
-	clock.p1 = (tmp >> DPIO_P1_SHIFT) & 7;
-	clock.p2 = (tmp >> DPIO_P2_SHIFT) & 0x1f;
+	clock.m1 = REG_FIELD_GET(DPIO_M1_DIV_MASK, tmp);
+	clock.m2 = REG_FIELD_GET(DPIO_M2_DIV_MASK, tmp);
+	clock.n = REG_FIELD_GET(DPIO_N_DIV_MASK, tmp);
+	clock.p1 = REG_FIELD_GET(DPIO_P1_DIV_MASK, tmp);
+	clock.p2 = REG_FIELD_GET(DPIO_P2_DIV_MASK, tmp);
 
 	crtc_state->port_clock = vlv_calc_dpll_params(refclk, &clock);
 }
@@ -559,13 +559,13 @@ void chv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 	pll_dw3 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(ch));
 	vlv_dpio_put(dev_priv);
 
-	clock.m1 = (pll_dw1 & 0x7) == DPIO_CHV_M1_DIV_BY_2 ? 2 : 0;
-	clock.m2 = (pll_dw0 & 0xff) << 22;
+	clock.m1 = REG_FIELD_GET(DPIO_CHV_M1_DIV_MASK, pll_dw1) == DPIO_CHV_M1_DIV_BY_2 ? 2 : 0;
+	clock.m2 = REG_FIELD_GET(DPIO_CHV_M2_DIV_MASK, pll_dw0) << 22;
 	if (pll_dw3 & DPIO_CHV_FRAC_DIV_EN)
-		clock.m2 |= pll_dw2 & 0x3fffff;
-	clock.n = (pll_dw1 >> DPIO_CHV_N_DIV_SHIFT) & 0xf;
-	clock.p1 = (cmn_dw13 >> DPIO_CHV_P1_DIV_SHIFT) & 0x7;
-	clock.p2 = (cmn_dw13 >> DPIO_CHV_P2_DIV_SHIFT) & 0x1f;
+		clock.m2 |= REG_FIELD_GET(DPIO_CHV_M2_FRAC_DIV_MASK, pll_dw2);
+	clock.n = REG_FIELD_GET(DPIO_CHV_N_DIV_MASK, pll_dw1);
+	clock.p1 = REG_FIELD_GET(DPIO_CHV_P1_DIV_MASK, cmn_dw13);
+	clock.p2 = REG_FIELD_GET(DPIO_CHV_P2_DIV_MASK, cmn_dw13);
 
 	crtc_state->port_clock = chv_calc_dpll_params(refclk, &clock);
 }
@@ -1926,19 +1926,19 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	vlv_dpio_write(dev_priv, phy, VLV_CMN_DW0, 0x610);
 
 	/* Set idtafcrecal before PLL is enabled */
-	tmp = (clock->m1 << DPIO_M1DIV_SHIFT) |
-		(clock->m2 & DPIO_M2DIV_MASK) |
-		(clock->p1 << DPIO_P1_SHIFT) |
-		(clock->p2 << DPIO_P2_SHIFT) |
-		(clock->n << DPIO_N_SHIFT) |
-		(1 << DPIO_K_SHIFT);
+	tmp = DPIO_M1_DIV(clock->m1) |
+		DPIO_M2_DIV(clock->m2) |
+		DPIO_P1_DIV(clock->p1) |
+		DPIO_P2_DIV(clock->p2) |
+		DPIO_N_DIV(clock->n) |
+		DPIO_K_DIV(1);
 
 	/*
 	 * Post divider depends on pixel clock rate, DAC vs digital (and LVDS,
 	 * but we don't support that).
 	 * Note: don't use the DAC post divider as it seems unstable.
 	 */
-	tmp |= (DPIO_POST_DIV_HDMIDP << DPIO_POST_DIV_SHIFT);
+	tmp |= DPIO_S1_DIV(DPIO_S1_DIV_HDMIDP);
 	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(ch), tmp);
 
 	tmp |= DPIO_ENABLE_CALIBRATION;
@@ -2034,34 +2034,33 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	u32 m2_frac;
 
 	m2_frac = clock->m2 & 0x3fffff;
-	loopfilter = 0;
 
 	vlv_dpio_get(dev_priv);
 
 	/* p1 and p2 divider */
 	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW13(ch),
-		       5 << DPIO_CHV_S1_DIV_SHIFT |
-		       clock->p1 << DPIO_CHV_P1_DIV_SHIFT |
-		       clock->p2 << DPIO_CHV_P2_DIV_SHIFT |
-		       1 << DPIO_CHV_K_DIV_SHIFT);
+		       DPIO_CHV_S1_DIV(5) |
+		       DPIO_CHV_P1_DIV(clock->p1) |
+		       DPIO_CHV_P2_DIV(clock->p2) |
+		       DPIO_CHV_K_DIV(1));
 
 	/* Feedback post-divider - m2 */
 	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW0(ch),
-		       clock->m2 >> 22);
+		       DPIO_CHV_M2_DIV(clock->m2 >> 22));
 
 	/* Feedback refclk divider - n and m1 */
 	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW1(ch),
-		       DPIO_CHV_M1_DIV_BY_2 |
-		       1 << DPIO_CHV_N_DIV_SHIFT);
+		       DPIO_CHV_M1_DIV(DPIO_CHV_M1_DIV_BY_2) |
+		       DPIO_CHV_N_DIV(1));
 
 	/* M2 fraction division */
 	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW2(ch),
-		       m2_frac);
+		       DPIO_CHV_M2_FRAC_DIV(m2_frac));
 
 	/* M2 fraction division enable */
 	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(ch));
 	tmp &= ~(DPIO_CHV_FEEDFWD_GAIN_MASK | DPIO_CHV_FRAC_DIV_EN);
-	tmp |= (2 << DPIO_CHV_FEEDFWD_GAIN_SHIFT);
+	tmp |= DPIO_CHV_FEEDFWD_GAIN(2);
 	if (m2_frac)
 		tmp |= DPIO_CHV_FRAC_DIV_EN;
 	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW3(ch), tmp);
@@ -2069,40 +2068,40 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	/* Program digital lock detect threshold */
 	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW9(ch));
 	tmp &= ~(DPIO_CHV_INT_LOCK_THRESHOLD_MASK |
-					DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE);
-	tmp |= (0x5 << DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT);
+		      DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE);
+	tmp |= DPIO_CHV_INT_LOCK_THRESHOLD(0x5);
 	if (!m2_frac)
 		tmp |= DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE;
 	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW9(ch), tmp);
 
 	/* Loop filter */
 	if (clock->vco == 5400000) {
-		loopfilter |= (0x3 << DPIO_CHV_PROP_COEFF_SHIFT);
-		loopfilter |= (0x8 << DPIO_CHV_INT_COEFF_SHIFT);
-		loopfilter |= (0x1 << DPIO_CHV_GAIN_CTRL_SHIFT);
+		loopfilter = DPIO_CHV_PROP_COEFF(0x3) |
+			DPIO_CHV_INT_COEFF(0x8) |
+			DPIO_CHV_GAIN_CTRL(0x1);
 		tribuf_calcntr = 0x9;
 	} else if (clock->vco <= 6200000) {
-		loopfilter |= (0x5 << DPIO_CHV_PROP_COEFF_SHIFT);
-		loopfilter |= (0xB << DPIO_CHV_INT_COEFF_SHIFT);
-		loopfilter |= (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
+		loopfilter = DPIO_CHV_PROP_COEFF(0x5) |
+			DPIO_CHV_INT_COEFF(0xB) |
+			DPIO_CHV_GAIN_CTRL(0x3);
 		tribuf_calcntr = 0x9;
 	} else if (clock->vco <= 6480000) {
-		loopfilter |= (0x4 << DPIO_CHV_PROP_COEFF_SHIFT);
-		loopfilter |= (0x9 << DPIO_CHV_INT_COEFF_SHIFT);
-		loopfilter |= (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
+		loopfilter = DPIO_CHV_PROP_COEFF(0x4) |
+			DPIO_CHV_INT_COEFF(0x9) |
+			DPIO_CHV_GAIN_CTRL(0x3);
 		tribuf_calcntr = 0x8;
 	} else {
 		/* Not supported. Apply the same limits as in the max case */
-		loopfilter |= (0x4 << DPIO_CHV_PROP_COEFF_SHIFT);
-		loopfilter |= (0x9 << DPIO_CHV_INT_COEFF_SHIFT);
-		loopfilter |= (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
+		loopfilter = DPIO_CHV_PROP_COEFF(0x4) |
+			DPIO_CHV_INT_COEFF(0x9) |
+			DPIO_CHV_GAIN_CTRL(0x3);
 		tribuf_calcntr = 0;
 	}
 	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW6(ch), loopfilter);
 
 	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW8(ch));
 	tmp &= ~DPIO_CHV_TDC_TARGET_CNT_MASK;
-	tmp |= (tribuf_calcntr << DPIO_CHV_TDC_TARGET_CNT_SHIFT);
+	tmp |= DPIO_CHV_TDC_TARGET_CNT(tribuf_calcntr);
 	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW8(ch), tmp);
 
 	/* AFC Recal */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6d16f9944eff..a2313658ecae 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -211,27 +211,33 @@
  * Per pipe/PLL DPIO regs
  */
 #define VLV_PLL_DW3(ch)			_VLV_PLL((ch), 3)
-#define   DPIO_POST_DIV_SHIFT		(28) /* 3 bits */
-#define   DPIO_POST_DIV_DAC		0
-#define   DPIO_POST_DIV_HDMIDP		1 /* DAC 225-400M rate */
-#define   DPIO_POST_DIV_LVDS1		2
-#define   DPIO_POST_DIV_LVDS2		3
-#define   DPIO_K_SHIFT			(24) /* 4 bits */
-#define   DPIO_P1_SHIFT			(21) /* 3 bits */
-#define   DPIO_P2_SHIFT			(16) /* 5 bits */
-#define   DPIO_N_SHIFT			(12) /* 4 bits */
-#define   DPIO_ENABLE_CALIBRATION	(1 << 11)
-#define   DPIO_M1DIV_SHIFT		(8) /* 3 bits */
-#define   DPIO_M2DIV_MASK		0xff
+#define   DPIO_S1_DIV_MASK		REG_GENMASK(30, 28)
+#define   DPIO_S1_DIV(s1)		REG_FIELD_PREP(DPIO_S1_DIV_MASK, (s1))
+#define   DPIO_S1_DIV_DAC		0 /* 10, DAC 25-225M rate */
+#define   DPIO_S1_DIV_HDMIDP		1 /* 5, DAC 225-400M rate */
+#define   DPIO_S1_DIV_LVDS1		2 /* 14 */
+#define   DPIO_S1_DIV_LVDS2		3 /* 7 */
+#define   DPIO_K_DIV_MASK		REG_GENMASK(27, 24)
+#define   DPIO_K_DIV(k)			REG_FIELD_PREP(DPIO_K_DIV_MASK, (k))
+#define   DPIO_P1_DIV_MASK		REG_GENMASK(23, 21)
+#define   DPIO_P1_DIV(p1)		REG_FIELD_PREP(DPIO_P1_DIV_MASK, (p1))
+#define   DPIO_P2_DIV_MASK		REG_GENMASK(20, 16)
+#define   DPIO_P2_DIV(p2)		REG_FIELD_PREP(DPIO_P2_DIV_MASK, (p2))
+#define   DPIO_N_DIV_MASK		REG_GENMASK(15, 12)
+#define   DPIO_N_DIV(n)			REG_FIELD_PREP(DPIO_N_DIV_MASK, (n))
+#define   DPIO_ENABLE_CALIBRATION	REG_BIT(11)
+#define   DPIO_M1_DIV_MASK		REG_GENMASK(10, 8)
+#define   DPIO_M1_DIV(m1)		REG_FIELD_PREP(DPIO_M1_DIV_MASK, (m1))
+#define   DPIO_M2_DIV_MASK		REG_GENMASK(7, 0)
+#define   DPIO_M2_DIV(m2)		REG_FIELD_PREP(DPIO_M2_DIV_MASK, (m2))
 
 #define VLV_PLL_DW5(ch)			_VLV_PLL((ch), 5)
-#define   DPIO_REFSEL_OVERRIDE		27
-#define   DPIO_PLL_MODESEL_SHIFT	24 /* 3 bits */
-#define   DPIO_BIAS_CURRENT_CTL_SHIFT	21 /* 3 bits, always 0x7 */
-#define   DPIO_PLL_REFCLK_SEL_SHIFT	16 /* 2 bits */
-#define   DPIO_PLL_REFCLK_SEL_MASK	3
-#define   DPIO_DRIVER_CTL_SHIFT		12 /* always set to 0x8 */
-#define   DPIO_CLK_BIAS_CTL_SHIFT	8 /* always set to 0x5 */
+#define   DPIO_REFSEL_OVERRIDE		REG_BIT(27)
+#define   DPIO_PLL_MODESEL_MASK		REG_GENMASK(26, 24)
+#define   DPIO_BIAS_CURRENT_CTL_MASK	REG_GENMASK(22, 20) /* always 0x7 */
+#define   DPIO_PLL_REFCLK_SEL_MASK	REG_GENMASK(17, 16)
+#define   DPIO_DRIVER_CTL_MASK		REG_GENMASK(15, 12) /* always set to 0x8 */
+#define   DPIO_CLK_BIAS_CTL_MASK	REG_GENMASK(11, 8) /* always set to 0x5 */
 
 #define VLV_PLL_DW7(ch)			_VLV_PLL((ch), 7)
 
@@ -253,101 +259,110 @@
 #define VLV_PCS_DW0_GRP(ch)		_VLV_PCS_GRP((ch), 0)
 #define VLV_PCS01_DW0(ch)		_VLV_PCS((ch), 0, 0)
 #define VLV_PCS23_DW0(ch)		_VLV_PCS((ch), 1, 0)
-#define   DPIO_PCS_TX_LANE2_RESET	(1 << 16)
-#define   DPIO_PCS_TX_LANE1_RESET	(1 << 7)
-#define   DPIO_LEFT_TXFIFO_RST_MASTER2	(1 << 4)
-#define   DPIO_RIGHT_TXFIFO_RST_MASTER2	(1 << 3)
+#define   DPIO_PCS_TX_LANE2_RESET	REG_BIT(16)
+#define   DPIO_PCS_TX_LANE1_RESET	REG_BIT(7)
+#define   DPIO_LEFT_TXFIFO_RST_MASTER2	REG_BIT(4)
+#define   DPIO_RIGHT_TXFIFO_RST_MASTER2	REG_BIT(3)
 
-#define VLV_PCS_DW1_GRP(ch)		_VLV_PCS_GRP((ch), 1)
-#define VLV_PCS01_DW1(ch)		_VLV_PCS((ch), 0, 1)
-#define VLV_PCS23_DW1(ch)		_VLV_PCS((ch), 1, 1)
-#define   CHV_PCS_REQ_SOFTRESET_EN	(1 << 23)
-#define   DPIO_PCS_CLK_CRI_RXEB_EIOS_EN	(1 << 22)
-#define   DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN (1 << 21)
-#define   DPIO_PCS_CLK_DATAWIDTH_SHIFT	(6)
-#define   DPIO_PCS_CLK_SOFT_RESET	(1 << 5)
+#define VLV_PCS_DW1_GRP(ch)		 _VLV_PCS_GRP((ch), 1)
+#define VLV_PCS01_DW1(ch) _VLV_PCS((ch), 0, 1)
+#define VLV_PCS23_DW1(ch) _VLV_PCS((ch), 1, 1)
+#define   CHV_PCS_REQ_SOFTRESET_EN		REG_BIT(23)
+#define   DPIO_PCS_CLK_CRI_RXEB_EIOS_EN		REG_BIT(22)
+#define   DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN	REG_BIT(21)
+#define   DPIO_PCS_CLK_DATAWIDTH_MASK		REG_GENMASK(7, 6)
+#define   DPIO_PCS_CLK_DATAWIDTH_8_10		REG_FIELD_PREP(DPIO_PCS_CLK_DATAWIDTH_MASK, 1)
+#define   DPIO_PCS_CLK_DATAWIDTH_16_20		REG_FIELD_PREP(DPIO_PCS_CLK_DATAWIDTH_MASK, 2)
+#define   DPIO_PCS_CLK_DATAWIDTH_32_40		REG_FIELD_PREP(DPIO_PCS_CLK_DATAWIDTH_MASK, 3)
+#define   DPIO_PCS_CLK_SOFT_RESET		REG_BIT(5)
 
 #define VLV_PCS_DW8_GRP(ch)		_VLV_PCS_GRP((ch), 8)
 #define VLV_PCS01_DW8(ch)		_VLV_PCS((ch), 0, 8)
 #define VLV_PCS23_DW8(ch)		_VLV_PCS((ch), 1, 8)
-#define   CHV_PCS_USEDCLKCHANNEL_OVRRIDE	(1 << 20)
-#define   CHV_PCS_USEDCLKCHANNEL		(1 << 21)
+#define   DPIO_PCS_USEDCLKCHANNEL		REG_BIT(21)
+#define   DPIO_PCS_USEDCLKCHANNEL_OVRRIDE	REG_BIT(20)
 
-#define VLV_PCS_DW9_GRP(ch)		_VLV_PCS_GRP((ch), 9)
+#define	VLV_PCS_DW9_GRP(ch)		_VLV_PCS_GRP((ch), 9)
 #define VLV_PCS01_DW9(ch)		_VLV_PCS((ch), 0, 9)
 #define VLV_PCS23_DW9(ch)		_VLV_PCS((ch), 1, 9)
-#define   DPIO_PCS_TX2MARGIN_MASK	(0x7 << 13)
-#define   DPIO_PCS_TX2MARGIN_000	(0 << 13)
-#define   DPIO_PCS_TX2MARGIN_101	(1 << 13)
-#define   DPIO_PCS_TX1MARGIN_MASK	(0x7 << 10)
-#define   DPIO_PCS_TX1MARGIN_000	(0 << 10)
-#define   DPIO_PCS_TX1MARGIN_101	(1 << 10)
+#define   DPIO_PCS_TX2MARGIN_MASK	REG_GENMASK(15, 13)
+#define   DPIO_PCS_TX2MARGIN_000	REG_FIELD_PREP(DPIO_PCS_TX2MARGIN_MASK, 0)
+#define   DPIO_PCS_TX2MARGIN_101	REG_FIELD_PREP(DPIO_PCS_TX2MARGIN_MASK, 1)
+#define   DPIO_PCS_TX1MARGIN_MASK	REG_GENMASK(12, 10)
+#define   DPIO_PCS_TX1MARGIN_000	REG_FIELD_PREP(DPIO_PCS_TX1MARGIN_MASK, 0)
+#define   DPIO_PCS_TX1MARGIN_101	REG_FIELD_PREP(DPIO_PCS_TX1MARGIN_MASK, 1)
 
-#define VLV_PCS_DW10_GRP(ch)		_VLV_PCS_GRP((ch), 10)
+#define	VLV_PCS_DW10_GRP(ch)		_VLV_PCS_GRP((ch), 10)
 #define VLV_PCS01_DW10(ch)		_VLV_PCS((ch), 0, 10)
 #define VLV_PCS23_DW10(ch)		_VLV_PCS((ch), 1, 10)
-#define   DPIO_PCS_SWING_CALC_TX0_TX2	(1 << 30)
-#define   DPIO_PCS_SWING_CALC_TX1_TX3	(1 << 31)
-#define   DPIO_PCS_TX2DEEMP_MASK	(0xf << 24)
-#define   DPIO_PCS_TX2DEEMP_9P5		(0 << 24)
-#define   DPIO_PCS_TX2DEEMP_6P0		(2 << 24)
-#define   DPIO_PCS_TX1DEEMP_MASK	(0xf << 16)
-#define   DPIO_PCS_TX1DEEMP_9P5		(0 << 16)
-#define   DPIO_PCS_TX1DEEMP_6P0		(2 << 16)
+#define   DPIO_PCS_SWING_CALC_TX1_TX3	REG_BIT(31)
+#define   DPIO_PCS_SWING_CALC_TX0_TX2	REG_BIT(30)
+#define   DPIO_PCS_TX2DEEMP_MASK	REG_GENMASK(27, 24)
+#define   DPIO_PCS_TX2DEEMP_9P5		REG_FIELD_PREP(DPIO_PCS_TX2DEEMP_MASK, 0)
+#define   DPIO_PCS_TX2DEEMP_6P0		REG_FIELD_PREP(DPIO_PCS_TX2DEEMP_MASK, 2)
+#define   DPIO_PCS_TX1DEEMP_MASK	REG_GENMASK(19, 16)
+#define   DPIO_PCS_TX1DEEMP_9P5		REG_FIELD_PREP(DPIO_PCS_TX1DEEMP_MASK, 0)
+#define   DPIO_PCS_TX1DEEMP_6P0		REG_FIELD_PREP(DPIO_PCS_TX1DEEMP_MASK, 2)
 
-#define VLV_PCS_DW11_GRP(ch)		_VLV_PCS_GRP((ch), 11)
+#define	VLV_PCS_DW11_GRP(ch)		_VLV_PCS_GRP((ch), 11)
 #define VLV_PCS01_DW11(ch)		_VLV_PCS((ch), 0, 11)
 #define VLV_PCS23_DW11(ch)		_VLV_PCS((ch), 1, 11)
-#define   DPIO_TX2_STAGGER_MASK(x)	((x) << 24)
-#define   DPIO_LANEDESKEW_STRAP_OVRD	(1 << 3)
-#define   DPIO_LEFT_TXFIFO_RST_MASTER	(1 << 1)
-#define   DPIO_RIGHT_TXFIFO_RST_MASTER	(1 << 0)
+#define   DPIO_TX2_STAGGER_MASK_MASK	REG_GENMASK(28, 24)
+#define   DPIO_TX2_STAGGER_MASK(x)	REG_FIELD_PREP(DPIO_TX2_STAGGER_MASK_MASK, (x))
+#define   DPIO_LANEDESKEW_STRAP_OVRD	REG_BIT(3)
+#define   DPIO_LEFT_TXFIFO_RST_MASTER	REG_BIT(1)
+#define   DPIO_RIGHT_TXFIFO_RST_MASTER	REG_BIT(0)
 
-#define VLV_PCS_DW12_GRP(ch)		_VLV_PCS_GRP((ch), 12)
+#define	VLV_PCS_DW12_GRP(ch)		_VLV_PCS_GRP((ch), 12)
 #define VLV_PCS01_DW12(ch)		_VLV_PCS((ch), 0, 12)
 #define VLV_PCS23_DW12(ch)		_VLV_PCS((ch), 1, 12)
-#define   DPIO_TX2_STAGGER_MULT(x)	((x) << 20)
-#define   DPIO_TX1_STAGGER_MULT(x)	((x) << 16)
-#define   DPIO_TX1_STAGGER_MASK(x)	((x) << 8)
-#define   DPIO_LANESTAGGER_STRAP_OVRD	(1 << 6)
-#define   DPIO_LANESTAGGER_STRAP(x)	((x) << 0)
+#define   DPIO_TX2_STAGGER_MULT_MASK	REG_GENMASK(22, 20)
+#define   DPIO_TX2_STAGGER_MULT(x)	REG_FIELD_PREP(DPIO_TX2_STAGGER_MULT_MASK, (x))
+#define   DPIO_TX1_STAGGER_MULT_MASK	REG_GENMASK(20, 16)
+#define   DPIO_TX1_STAGGER_MULT(x)	REG_FIELD_PREP(DPIO_TX1_STAGGER_MULT_MASK, (x))
+#define   DPIO_TX1_STAGGER_MASK_MASK	REG_GENMASK(12, 8)
+#define   DPIO_TX1_STAGGER_MASK(x)	REG_FIELD_PREP(DPIO_TX1_STAGGER_MASK_MASK, (x))
+#define   DPIO_LANESTAGGER_STRAP_OVRD	REG_BIT(6)
+#define   DPIO_LANESTAGGER_STRAP_MASK	REG_GENMASK(4, 0)
+#define   DPIO_LANESTAGGER_STRAP(x)	REG_FIELD_PREP(DPIO_LANESTAGGER_STRAP_MASK, (x))
 
-#define VLV_PCS_DW14_GRP(ch)		_VLV_PCS_GRP((ch), 14)
+#define	VLV_PCS_DW14_GRP(ch)		_VLV_PCS_GRP((ch), 14)
 #define VLV_PCS01_DW14(ch)		_VLV_PCS((ch), 0, 14)
 #define VLV_PCS23_DW14(ch)		_VLV_PCS((ch), 1, 14)
 
-#define VLV_PCS_DW17_BCAST		_VLV_PCS_BCAST(17)
-#define VLV_PCS_DW17_GRP(ch)		_VLV_PCS_GRP((ch), 17)
+#define	VLV_PCS_DW17_BCAST		_VLV_PCS_BCAST(17)
+#define	VLV_PCS_DW17_GRP(ch)		_VLV_PCS_GRP((ch), 17)
 #define VLV_PCS01_DW17(ch)		_VLV_PCS((ch), 0, 17)
 #define VLV_PCS23_DW17(ch)		_VLV_PCS((ch), 1, 17)
 
-#define VLV_PCS_DW23_GRP(ch)		_VLV_PCS_GRP((ch), 23)
+#define	VLV_PCS_DW23_GRP(ch)		_VLV_PCS_GRP((ch), 23)
 #define VLV_PCS01_DW23(ch)		_VLV_PCS((ch), 0, 23)
 #define VLV_PCS23_DW23(ch)		_VLV_PCS((ch), 1, 23)
 
 #define VLV_TX_DW2_GRP(ch)		_VLV_TX_GRP((ch), 2)
 #define VLV_TX_DW2(ch, lane)		_VLV_TX((ch), (lane), 2)
-#define   DPIO_SWING_MARGIN000_SHIFT	16
-#define   DPIO_SWING_MARGIN000_MASK	(0xff << DPIO_SWING_MARGIN000_SHIFT)
-#define   DPIO_UNIQ_TRANS_SCALE_SHIFT	8
+#define   DPIO_SWING_MARGIN000_MASK	REG_GENMASK(23, 16)
+#define   DPIO_SWING_MARGIN000(x)	REG_FIELD_PREP(DPIO_SWING_MARGIN000_MASK, (x))
+#define   DPIO_UNIQ_TRANS_SCALE_MASK	REG_GENMASK(15, 8)
+#define   DPIO_UNIQ_TRANS_SCALE(x)	REG_FIELD_PREP(DPIO_UNIQ_TRANS_SCALE_MASK, (x))
 
 #define VLV_TX_DW3_GRP(ch)		_VLV_TX_GRP((ch), 3)
 #define VLV_TX_DW3(ch, lane)		_VLV_TX((ch), (lane), 3)
 /* The following bit for CHV phy */
-#define   DPIO_TX_UNIQ_TRANS_SCALE_EN	(1 << 27)
-#define   DPIO_SWING_MARGIN101_SHIFT	16
-#define   DPIO_SWING_MARGIN101_MASK	(0xff << DPIO_SWING_MARGIN101_SHIFT)
+#define   DPIO_TX_UNIQ_TRANS_SCALE_EN	REG_BIT(27)
+#define   DPIO_SWING_MARGIN101_MASK	REG_GENMASK(23, 16)
+#define   DPIO_SWING_MARGIN101(x)	REG_FIELD_PREP(DPIO_SWING_MARGIN101_MASK, (x))
 
 #define VLV_TX_DW4_GRP(ch)		_VLV_TX_GRP((ch), 4)
 #define VLV_TX_DW4(ch, lane)		_VLV_TX((ch), (lane), 4)
-#define   DPIO_SWING_DEEMPH9P5_SHIFT	24
-#define   DPIO_SWING_DEEMPH9P5_MASK	(0xff << DPIO_SWING_DEEMPH9P5_SHIFT)
-#define   DPIO_SWING_DEEMPH6P0_SHIFT	16
-#define   DPIO_SWING_DEEMPH6P0_MASK	(0xff << DPIO_SWING_DEEMPH6P0_SHIFT)
+#define   DPIO_SWING_DEEMPH9P5_MASK	REG_GENMASK(31, 24)
+#define   DPIO_SWING_DEEMPH9P5(x)	REG_FIELD_PREP(DPIO_SWING_DEEMPH9P5_MASK, (x))
+#define   DPIO_SWING_DEEMPH6P0_MASK	REG_GENMASK(23, 16)
+#define   DPIO_SWING_DEEMPH6P0_SHIFT	REG_FIELD_PREP(DPIO_SWING_DEEMPH6P0_MASK, (x))
 
 #define VLV_TX_DW5_GRP(ch)		_VLV_TX_GRP((ch), 5)
 #define VLV_TX_DW5(ch, lane)		_VLV_TX((ch), (lane), 5)
-#define   DPIO_TX_OCALINIT_EN		(1 << 31)
+#define   DPIO_TX_OCALINIT_EN		REG_BIT(31)
 
 #define VLV_TX_DW11_GRP(ch)		_VLV_TX_GRP((ch), 11)
 #define VLV_TX_DW11(ch, lane)		_VLV_TX((ch), (lane), 11)
@@ -357,93 +372,107 @@
 
 /* CHV dpPhy registers */
 #define CHV_PLL_DW0(ch)			_CHV_PLL((ch), 0)
+#define   DPIO_CHV_M2_DIV_MASK		REG_GENMASK(7, 0)
+#define   DPIO_CHV_M2_DIV(m2)		REG_FIELD_PREP(DPIO_CHV_M2_DIV_MASK, (m2))
 
 #define CHV_PLL_DW1(ch)			_CHV_PLL((ch), 1)
-#define   DPIO_CHV_N_DIV_SHIFT		8
-#define   DPIO_CHV_M1_DIV_BY_2		(0 << 0)
+#define   DPIO_CHV_N_DIV_MASK		REG_GENMASK(11, 8)
+#define   DPIO_CHV_N_DIV(n)		REG_FIELD_PREP(DPIO_CHV_N_DIV_MASK, (n))
+#define   DPIO_CHV_M1_DIV_MASK		REG_GENMASK(2, 0)
+#define   DPIO_CHV_M1_DIV(m1)		REG_FIELD_PREP(DPIO_CHV_M1_DIV_MASK, (m1))
+#define   DPIO_CHV_M1_DIV_BY_2		0
 
 #define CHV_PLL_DW2(ch)			_CHV_PLL((ch), 2)
+#define   DPIO_CHV_M2_FRAC_DIV_MASK	REG_GENMASK(21, 0)
+#define   DPIO_CHV_M2_FRAC_DIV(m2_frac)	REG_FIELD_PREP(DPIO_CHV_M2_FRAC_DIV_MASK, (m2_frac))
 
 #define CHV_PLL_DW3(ch)			_CHV_PLL((ch), 3)
-#define  DPIO_CHV_FRAC_DIV_EN		(1 << 16)
-#define  DPIO_CHV_FIRST_MOD		(0 << 8)
-#define  DPIO_CHV_SECOND_MOD		(1 << 8)
-#define  DPIO_CHV_FEEDFWD_GAIN_SHIFT	0
-#define  DPIO_CHV_FEEDFWD_GAIN_MASK		(0xF << 0)
+#define   DPIO_CHV_FRAC_DIV_EN		REG_BIT(16)
+#define   DPIO_CHV_SECOND_MOD		REG_BIT(8)
+#define   DPIO_CHV_FEEDFWD_GAIN_MASK	REG_GENMASK(3, 0)
+#define   DPIO_CHV_FEEDFWD_GAIN(x)	REG_FIELD_PREP(DPIO_CHV_FEEDFWD_GAIN_MASK, (x))
 
 #define CHV_PLL_DW6(ch)			_CHV_PLL((ch), 6)
-#define   DPIO_CHV_GAIN_CTRL_SHIFT	16
-#define	  DPIO_CHV_INT_COEFF_SHIFT	8
-#define   DPIO_CHV_PROP_COEFF_SHIFT	0
+#define   DPIO_CHV_GAIN_CTRL_MASK	REG_GENMASK(18, 16)
+#define   DPIO_CHV_GAIN_CTRL(x)		REG_FIELD_PREP(DPIO_CHV_GAIN_CTRL_MASK, (x))
+#define   DPIO_CHV_INT_COEFF_MASK	REG_GENMASK(12, 8)
+#define   DPIO_CHV_INT_COEFF(x)		REG_FIELD_PREP(DPIO_CHV_INT_COEFF_MASK, (x))
+#define   DPIO_CHV_PROP_COEFF_MASK	REG_GENMASK(3, 0)
+#define   DPIO_CHV_PROP_COEFF(x)	REG_FIELD_PREP(DPIO_CHV_PROP_COEFF_MASK, (x))
 
 #define CHV_PLL_DW8(ch)			_CHV_PLL((ch), 8)
-#define   DPIO_CHV_TDC_TARGET_CNT_SHIFT 0
-#define   DPIO_CHV_TDC_TARGET_CNT_MASK  (0x3FF << 0)
+#define   DPIO_CHV_TDC_TARGET_CNT_MASK	REG_GENMASK(9, 0)
+#define   DPIO_CHV_TDC_TARGET_CNT(x)	REG_FIELD_PREP(DPIO_CHV_TDC_TARGET_CNT_MASK, (x))
 
 #define CHV_PLL_DW9(ch)			_CHV_PLL((ch), 9)
-#define  DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT		1 /* 3 bits */
-#define  DPIO_CHV_INT_LOCK_THRESHOLD_MASK		(7 << 1)
-#define  DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE	1 /* 1: coarse & 0 : fine  */
+#define   DPIO_CHV_INT_LOCK_THRESHOLD_MASK		REG_GENMASK(3, 1)
+#define   DPIO_CHV_INT_LOCK_THRESHOLD(x)		REG_FIELD_PREP(DPIO_CHV_INT_LOCK_THRESHOLD_MASK, (x))
+#define   DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE	REG_BIT(0) /* 1: coarse & 0 : fine  */
 
 #define CHV_CMN_DW0_CH0			_CHV_CMN(0, 0)
-#define   DPIO_ALLDL_POWERDOWN_SHIFT_CH0	19
-#define   DPIO_ANYDL_POWERDOWN_SHIFT_CH0	18
-#define   DPIO_ALLDL_POWERDOWN			(1 << 1)
-#define   DPIO_ANYDL_POWERDOWN			(1 << 0)
+#define   DPIO_ALLDL_POWERDOWN_CH0	REG_BIT(19)
+#define   DPIO_ANYDL_POWERDOWN_CH0	REG_BIT(18)
+#define   DPIO_ALLDL_POWERDOWN		BIT(1)
+#define   DPIO_ANYDL_POWERDOWN		BIT(0)
 
 #define CHV_CMN_DW5_CH0			_CHV_CMN(0, 5)
-#define   CHV_BUFRIGHTENA1_DISABLE	(0 << 20)
-#define   CHV_BUFRIGHTENA1_NORMAL	(1 << 20)
-#define   CHV_BUFRIGHTENA1_FORCE	(3 << 20)
-#define   CHV_BUFRIGHTENA1_MASK		(3 << 20)
-#define   CHV_BUFLEFTENA1_DISABLE	(0 << 22)
-#define   CHV_BUFLEFTENA1_NORMAL	(1 << 22)
-#define   CHV_BUFLEFTENA1_FORCE		(3 << 22)
-#define   CHV_BUFLEFTENA1_MASK		(3 << 22)
+#define   CHV_BUFRIGHTENA1_MASK		REG_GENMASK(21, 20)
+#define   CHV_BUFRIGHTENA1_DISABLE	REG_FIELD_PREP(CHV_BUFRIGHTENA1_MASK, 0)
+#define   CHV_BUFRIGHTENA1_NORMAL	REG_FIELD_PREP(CHV_BUFRIGHTENA1_MASK, 1)
+#define   CHV_BUFRIGHTENA1_FORCE	REG_FIELD_PREP(CHV_BUFRIGHTENA1_MASK, 3)
+#define   CHV_BUFLEFTENA1_MASK		REG_GENMASK(23, 22)
+#define   CHV_BUFLEFTENA1_DISABLE	REG_FIELD_PREP(CHV_BUFLEFTENA1_MASK, 0)
+#define   CHV_BUFLEFTENA1_NORMAL	REG_FIELD_PREP(CHV_BUFLEFTENA1_MASK, 1)
+#define   CHV_BUFLEFTENA1_FORCE		REG_FIELD_PREP(CHV_BUFLEFTENA1_MASK, 3)
 
 #define CHV_CMN_DW13_CH0		_CHV_CMN(0, 13)
 #define CHV_CMN_DW0_CH1			_CHV_CMN(1, 0)
-#define   DPIO_CHV_S1_DIV_SHIFT		21
-#define   DPIO_CHV_P1_DIV_SHIFT		13 /* 3 bits */
-#define   DPIO_CHV_P2_DIV_SHIFT		8  /* 5 bits */
-#define   DPIO_CHV_K_DIV_SHIFT		4
-#define   DPIO_PLL_FREQLOCK		(1 << 1)
-#define   DPIO_PLL_LOCK			(1 << 0)
+#define   DPIO_CHV_S1_DIV_MASK		REG_GENMASK(23, 21)
+#define   DPIO_CHV_S1_DIV(s1)		REG_FIELD_PREP(DPIO_CHV_S1_DIV_MASK, (s1))
+#define   DPIO_CHV_P1_DIV_MASK		REG_GENMASK(15, 13)
+#define   DPIO_CHV_P1_DIV(p1)		REG_FIELD_PREP(DPIO_CHV_P1_DIV_MASK, (p1))
+#define   DPIO_CHV_P2_DIV_MASK		REG_GENMASK(12, 8)
+#define   DPIO_CHV_P2_DIV(p2)		REG_FIELD_PREP(DPIO_CHV_P2_DIV_MASK, (p2))
+#define   DPIO_CHV_K_DIV_MASK		REG_GENMASK(7, 4)
+#define   DPIO_CHV_K_DIV(k)		REG_FIELD_PREP(DPIO_CHV_K_DIV_MASK, (k))
+#define   DPIO_PLL_FREQLOCK		REG_BIT(1)
+#define   DPIO_PLL_LOCK			REG_BIT(0)
 #define CHV_CMN_DW13(ch)		_PIPE(ch, CHV_CMN_DW13_CH0, CHV_CMN_DW0_CH1)
 
 #define CHV_CMN_DW14_CH0		_CHV_CMN(0, 14)
 #define CHV_CMN_DW1_CH1			_CHV_CMN(1, 1)
-#define   DPIO_AFC_RECAL		(1 << 14)
-#define   DPIO_DCLKP_EN			(1 << 13)
-#define   CHV_BUFLEFTENA2_DISABLE	(0 << 17) /* CL2 DW1 only */
-#define   CHV_BUFLEFTENA2_NORMAL	(1 << 17) /* CL2 DW1 only */
-#define   CHV_BUFLEFTENA2_FORCE		(3 << 17) /* CL2 DW1 only */
-#define   CHV_BUFLEFTENA2_MASK		(3 << 17) /* CL2 DW1 only */
-#define   CHV_BUFRIGHTENA2_DISABLE	(0 << 19) /* CL2 DW1 only */
-#define   CHV_BUFRIGHTENA2_NORMAL	(1 << 19) /* CL2 DW1 only */
-#define   CHV_BUFRIGHTENA2_FORCE	(3 << 19) /* CL2 DW1 only */
-#define   CHV_BUFRIGHTENA2_MASK		(3 << 19) /* CL2 DW1 only */
+#define   DPIO_AFC_RECAL		REG_BIT(14)
+#define   DPIO_DCLKP_EN			REG_BIT(13)
+#define   CHV_BUFLEFTENA2_MASK		REG_GENMASK(18, 17) /* CL2 DW1 only */
+#define   CHV_BUFLEFTENA2_DISABLE	REG_FIELD_PREP(CHV_BUFLEFTENA2_MASK, 0)
+#define   CHV_BUFLEFTENA2_NORMAL	REG_FIELD_PREP(CHV_BUFLEFTENA2_MASK, 1)
+#define   CHV_BUFLEFTENA2_FORCE		REG_FIELD_PREP(CHV_BUFLEFTENA2_MASK, 3)
+#define   CHV_BUFRIGHTENA2_MASK		REG_GENMASK(20, 19) /* CL2 DW1 only */
+#define   CHV_BUFRIGHTENA2_DISABLE	REG_FIELD_PREP(CHV_BUFRIGHTENA2_MASK, 0)
+#define   CHV_BUFRIGHTENA2_NORMAL	REG_FIELD_PREP(CHV_BUFRIGHTENA2_MASK, 1)
+#define   CHV_BUFRIGHTENA2_FORCE	REG_FIELD_PREP(CHV_BUFRIGHTENA2_MASK, 3)
 #define CHV_CMN_DW14(ch)		_PIPE(ch, CHV_CMN_DW14_CH0, CHV_CMN_DW1_CH1)
 
 #define CHV_CMN_DW19_CH0		_CHV_CMN(0, 19)
 #define CHV_CMN_DW6_CH1			_CHV_CMN(1, 6)
-#define   DPIO_ALLDL_POWERDOWN_SHIFT_CH1	30 /* CL2 DW6 only */
-#define   DPIO_ANYDL_POWERDOWN_SHIFT_CH1	29 /* CL2 DW6 only */
-#define   DPIO_DYNPWRDOWNEN_CH1		(1 << 28) /* CL2 DW6 only */
-#define   CHV_CMN_USEDCLKCHANNEL	(1 << 13)
+#define   DPIO_ALLDL_POWERDOWN_CH1	REG_BIT(30) /* CL2 DW6 only */
+#define   DPIO_ANYDL_POWERDOWN_CH1	REG_BIT(29) /* CL2 DW6 only */
+#define   DPIO_DYNPWRDOWNEN_CH1		REG_BIT(28) /* CL2 DW6 only */
+#define   CHV_CMN_USEDCLKCHANNEL	REG_BIT(13)
 #define CHV_CMN_DW19(ch)		_PIPE(ch, CHV_CMN_DW19_CH0, CHV_CMN_DW6_CH1)
 
 #define CHV_CMN_DW28			_CHV_CMN(0, 28)
-#define   DPIO_CL1POWERDOWNEN		(1 << 23)
-#define   DPIO_DYNPWRDOWNEN_CH0		(1 << 22)
-#define   DPIO_SUS_CLK_CONFIG_ON		(0 << 0)
-#define   DPIO_SUS_CLK_CONFIG_CLKREQ		(1 << 0)
-#define   DPIO_SUS_CLK_CONFIG_GATE		(2 << 0)
-#define   DPIO_SUS_CLK_CONFIG_GATE_CLKREQ	(3 << 0)
+#define   DPIO_CL1POWERDOWNEN			REG_BIT(23)
+#define   DPIO_DYNPWRDOWNEN_CH0			REG_BIT(22)
+#define   DPIO_SUS_CLK_CONFIG_MASK		REG_GENMASK(1, 0)
+#define   DPIO_SUS_CLK_CONFIG_ON		REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG_MASK, 0)
+#define   DPIO_SUS_CLK_CONFIG_CLKREQ		REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG_MASK, 1)
+#define   DPIO_SUS_CLK_CONFIG_GATE		REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG_MASK, 2)
+#define   DPIO_SUS_CLK_CONFIG_GATE_CLKREQ	REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG_MASK, 3)
 
 #define CHV_CMN_DW30			_CHV_CMN(0, 30)
-#define   DPIO_CL2_LDOFUSE_PWRENB	(1 << 6)
-#define   DPIO_LRC_BYPASS		(1 << 3)
+#define   DPIO_CL2_LDOFUSE_PWRENB	REG_BIT(6)
+#define   DPIO_LRC_BYPASS		REG_BIT(3)
 
 #define CHV_TX_DW0(ch, lane)		_VLV_TX((ch), (lane), 0)
 #define CHV_TX_DW1(ch, lane)		_VLV_TX((ch), (lane), 1)
@@ -458,10 +487,11 @@
 #define CHV_TX_DW10(ch, lane)		_VLV_TX((ch), (lane), 10)
 
 #define CHV_TX_DW11(ch, lane)		_VLV_TX((ch), (lane), 11)
-#define   DPIO_FRC_LATENCY_SHFIT	8
+#define   DPIO_FRC_LATENCY_MASK		REG_GENMASK(10, 8)
+#define   DPIO_FRC_LATENCY(x)		REG_FIELD_PREP(DPIO_FRC_LATENCY_MASK, (x))
 
 #define CHV_TX_DW14(ch, lane)		_VLV_TX((ch), (lane), 14)
-#define   DPIO_UPAR_SHIFT		30
+#define   DPIO_UPAR			REG_BIT(30)
 
 #define BXT_P_CR_GT_DISP_PWRON		_MMIO(0x138090)
 #define  MIPIO_RST_CTRL				(1 << 2)
-- 
2.43.2

