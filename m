Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E21CC8AC724
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F9DD1128C5;
	Mon, 22 Apr 2024 08:35:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WA+uRcGf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9D151128C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774919; x=1745310919;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iTse4qUjH+HGuJkaH+szf8X0Rxj2XTyj8Ifm5lvtAKc=;
 b=WA+uRcGf/2GhmjfuVbxsax61HZhnSoWMCYWUGtzwa3d/CAY3J4tjBzTa
 Y4QBLu2hC5LV+fTuszer/7aZooeUbfyT24Jz0FNP4bS10TQYXA8iDws05
 1F1bVFg7ddZIcvXGEHXkKlybJ/X0LNnCtHqMWqh9KZCQfOleQoYVNE9lC
 pBnsMj/CipRhBTc+PsvQRpCnI7j9b/jt6dO8Mx/V/zUSN4ayb7yUNoLYJ
 LeNA2ZNRMbGPpxTJuhxaKXA6AxH4BW0QqX78GcxHuX7pWrXN7bQxhyUfr
 y0UDy+uW3Q9adqOG7ax03jwjDxy7XDYFH0qBqaBz72aylhiQ3OdAZHW2e Q==;
X-CSE-ConnectionGUID: KHTv7+tqR5ya/U4VphrO1w==
X-CSE-MsgGUID: OpJRGZ9+TUG58QRdFZWbqw==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453473"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453473"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:19 -0700
X-CSE-ConnectionGUID: Zl3/cxNwTxCjrgrex9dBjw==
X-CSE-MsgGUID: eBu3B4uGR1yoDifkXErNDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021811"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:35:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:35:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/14] drm/i915/dpio: s/port/ch/
Date: Mon, 22 Apr 2024 11:34:50 +0300
Message-ID: <20240422083457.23815-8-ville.syrjala@linux.intel.com>
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

Stop calling the DPIO PHY channel "port". Just say "ch", which
is already used in a bunch of places.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 44 +++++++--------
 drivers/gpu/drm/i915/display/intel_dpll.c     | 54 +++++++++----------
 2 files changed, 49 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 6cbee88e608f..e4a04c9b5b19 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -1069,23 +1069,23 @@ void vlv_set_phy_signal_level(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
+	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 
 	vlv_dpio_get(dev_priv);
 
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5(port), 0x00000000);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW4(port), demph_reg_value);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW2(port),
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5(ch), 0x00000000);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW4(ch), demph_reg_value);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW2(ch),
 			 uniqtranscale_reg_value);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW3(port), 0x0C782040);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW3(ch), 0x0C782040);
 
 	if (tx3_demph)
-		vlv_dpio_write(dev_priv, phy, VLV_TX3_DW4(port), tx3_demph);
+		vlv_dpio_write(dev_priv, phy, VLV_TX3_DW4(ch), tx3_demph);
 
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW11(port), 0x00030000);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW9(port), preemph_reg_value);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5(port), DPIO_TX_OCALINIT_EN);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW11(ch), 0x00030000);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW9(ch), preemph_reg_value);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5(ch), DPIO_TX_OCALINIT_EN);
 
 	vlv_dpio_put(dev_priv);
 }
@@ -1096,25 +1096,25 @@ void vlv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
+	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 
 	/* Program Tx lane resets to default */
 	vlv_dpio_get(dev_priv);
 
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(port),
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(ch),
 			 DPIO_PCS_TX_LANE2_RESET |
 			 DPIO_PCS_TX_LANE1_RESET);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(port),
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(ch),
 			 DPIO_PCS_CLK_CRI_RXEB_EIOS_EN |
 			 DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN |
 			 (1<<DPIO_PCS_CLK_DATAWIDTH_SHIFT) |
 				 DPIO_PCS_CLK_SOFT_RESET);
 
 	/* Fix up inter-pair skew failure */
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW12(port), 0x00750f00);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW11(port), 0x00001500);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW14(port), 0x40400000);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW12(ch), 0x00750f00);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW11(ch), 0x00001500);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW14(ch), 0x40400000);
 
 	vlv_dpio_put(dev_priv);
 }
@@ -1126,7 +1126,7 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
+	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum pipe pipe = crtc->pipe;
 	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
 	u32 val;
@@ -1140,11 +1140,11 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	else
 		val &= ~(1<<21);
 	val |= 0x001000c4;
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW8(port), val);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW8(ch), val);
 
 	/* Program lane clock */
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW14(port), 0x00760018);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW23(port), 0x00400888);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW14(ch), 0x00760018);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW23(ch), 0x00400888);
 
 	vlv_dpio_put(dev_priv);
 }
@@ -1155,11 +1155,11 @@ void vlv_phy_reset_lanes(struct intel_encoder *encoder,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
+	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 
 	vlv_dpio_get(dev_priv);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(port), 0x00000000);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(port), 0x00e00060);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(ch), 0x00000000);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(ch), 0x00e00060);
 	vlv_dpio_put(dev_priv);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 0a738b491c40..743cc466ee39 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -539,7 +539,7 @@ void chv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum dpio_channel port = vlv_pipe_to_channel(crtc->pipe);
+	enum dpio_channel ch = vlv_pipe_to_channel(crtc->pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	struct dpll clock;
@@ -551,11 +551,11 @@ void chv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 		return;
 
 	vlv_dpio_get(dev_priv);
-	cmn_dw13 = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW13(port));
-	pll_dw0 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW0(port));
-	pll_dw1 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW1(port));
-	pll_dw2 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW2(port));
-	pll_dw3 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(port));
+	cmn_dw13 = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW13(ch));
+	pll_dw0 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW0(ch));
+	pll_dw1 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW1(ch));
+	pll_dw2 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW2(ch));
+	pll_dw3 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(ch));
 	vlv_dpio_put(dev_priv);
 
 	clock.m1 = (pll_dw1 & 0x7) == DPIO_CHV_M1_DIV_BY_2 ? 2 : 0;
@@ -2027,7 +2027,7 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct dpll *clock = &crtc_state->dpll;
 	enum pipe pipe = crtc->pipe;
-	enum dpio_channel port = vlv_pipe_to_channel(pipe);
+	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	u32 tmp, loopfilter, tribuf_calcntr;
 	u32 m2_frac;
@@ -2038,41 +2038,41 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	vlv_dpio_get(dev_priv);
 
 	/* p1 and p2 divider */
-	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW13(port),
+	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW13(ch),
 		       5 << DPIO_CHV_S1_DIV_SHIFT |
 		       clock->p1 << DPIO_CHV_P1_DIV_SHIFT |
 		       clock->p2 << DPIO_CHV_P2_DIV_SHIFT |
 		       1 << DPIO_CHV_K_DIV_SHIFT);
 
 	/* Feedback post-divider - m2 */
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW0(port),
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW0(ch),
 		       clock->m2 >> 22);
 
 	/* Feedback refclk divider - n and m1 */
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW1(port),
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW1(ch),
 		       DPIO_CHV_M1_DIV_BY_2 |
 		       1 << DPIO_CHV_N_DIV_SHIFT);
 
 	/* M2 fraction division */
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW2(port),
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW2(ch),
 		       m2_frac);
 
 	/* M2 fraction division enable */
-	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(port));
+	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(ch));
 	tmp &= ~(DPIO_CHV_FEEDFWD_GAIN_MASK | DPIO_CHV_FRAC_DIV_EN);
 	tmp |= (2 << DPIO_CHV_FEEDFWD_GAIN_SHIFT);
 	if (m2_frac)
 		tmp |= DPIO_CHV_FRAC_DIV_EN;
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW3(port), tmp);
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW3(ch), tmp);
 
 	/* Program digital lock detect threshold */
-	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW9(port));
+	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW9(ch));
 	tmp &= ~(DPIO_CHV_INT_LOCK_THRESHOLD_MASK |
 					DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE);
 	tmp |= (0x5 << DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT);
 	if (!m2_frac)
 		tmp |= DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE;
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW9(port), tmp);
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW9(ch), tmp);
 
 	/* Loop filter */
 	if (clock->vco == 5400000) {
@@ -2097,17 +2097,17 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 		loopfilter |= (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
 		tribuf_calcntr = 0;
 	}
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW6(port), loopfilter);
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW6(ch), loopfilter);
 
-	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW8(port));
+	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW8(ch));
 	tmp &= ~DPIO_CHV_TDC_TARGET_CNT_MASK;
 	tmp |= (tribuf_calcntr << DPIO_CHV_TDC_TARGET_CNT_SHIFT);
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW8(port), tmp);
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW8(ch), tmp);
 
 	/* AFC Recal */
-	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(port),
-			vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(port)) |
-			DPIO_AFC_RECAL);
+	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(ch),
+		       vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(ch)) |
+		       DPIO_AFC_RECAL);
 
 	vlv_dpio_put(dev_priv);
 }
@@ -2118,16 +2118,16 @@ static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	enum pipe pipe = crtc->pipe;
-	enum dpio_channel port = vlv_pipe_to_channel(pipe);
+	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	u32 tmp;
 
 	vlv_dpio_get(dev_priv);
 
 	/* Enable back the 10bit clock to display controller */
-	tmp = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(port));
+	tmp = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(ch));
 	tmp |= DPIO_DCLKP_EN;
-	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(port), tmp);
+	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(ch), tmp);
 
 	vlv_dpio_put(dev_priv);
 
@@ -2246,7 +2246,7 @@ void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	enum dpio_channel port = vlv_pipe_to_channel(pipe);
+	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
 	u32 val;
 
@@ -2264,9 +2264,9 @@ void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 	vlv_dpio_get(dev_priv);
 
 	/* Disable 10bit clock to display controller */
-	val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(port));
+	val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(ch));
 	val &= ~DPIO_DCLKP_EN;
-	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(port), val);
+	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(ch), val);
 
 	vlv_dpio_put(dev_priv);
 }
-- 
2.43.2

