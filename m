Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6081DA6B91E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 11:53:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3D1C10E78F;
	Fri, 21 Mar 2025 10:53:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GB4SFq86";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB0610E791;
 Fri, 21 Mar 2025 10:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742554391; x=1774090391;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6M1vNSwoFBubMlZcE9wzEU1d3lYTDZfqBHSpc6mBIXg=;
 b=GB4SFq86iSUFYe3WlrZgIUMTXERc94iouN5TCHRZwhcYtCYObPQppqxV
 vkmL9VByqJT444/DmOXUhWWZyw9LPukeOTDW7v5W50+JeGkIs/1SiQ9c5
 1f1/9C4n8EtRo/fKm2nWy9JuFcFxFxFX05Z1Ui3UqFkK9YDIMrjB1DJRd
 XAtGv2tH32sNbP0BvfjGHdEuS4CaPCZ/PrLQzBy93w4YceRGCb3RhXR/h
 Q3QjDqz606N+K3X9WxOKlUtgq9YiJZeO9pyk36n1BBTEdL2xXvjgJe4wb
 dNqOuaU0BPhBu54C1nCJSn1ro1aHydJtmWy8oMNxKeI/HyK0QgrZM2fMh A==;
X-CSE-ConnectionGUID: a6IGaEkiSwS4C0UqfrluVQ==
X-CSE-MsgGUID: RiAGFmnLRe+iW508w/+4hA==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="54483881"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="54483881"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:10 -0700
X-CSE-ConnectionGUID: SI7ZrduyShaz+x+UDeYr5g==
X-CSE-MsgGUID: sioOBDR4RR637/Hl9X0Zyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123830023"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/12] drm/i915/dsi: convert vlv_dsi_pll.[ch] to struct
 intel_display
Date: Fri, 21 Mar 2025 12:52:46 +0200
Message-Id: <9d34d8b91c6bc8b2dd8e2081194ee496b251bbf3.1742554320.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742554320.git.jani.nikula@intel.com>
References: <cover.1742554320.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of vlv_dsi_pll.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |   3 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c       |   3 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c   | 118 +++++++++----------
 drivers/gpu/drm/i915/display/vlv_dsi_pll.h   |   5 +-
 4 files changed, 63 insertions(+), 66 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d7243848fb23..222bc01d4682 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3834,7 +3834,6 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 					 struct intel_display_power_domain_set *power_domain_set)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder;
 	enum port port;
 	u32 tmp;
@@ -3856,7 +3855,7 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 		 * registers/MIPI[BXT]. We can break out here early, since we
 		 * need the same DSI PLL to be enabled for both DSI ports.
 		 */
-		if (!bxt_dsi_pll_is_enabled(dev_priv))
+		if (!bxt_dsi_pll_is_enabled(display))
 			break;
 
 		/* XXX: this works for video mode only */
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 6ddf33de85d3..346737f15fa9 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -936,7 +936,6 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 				   enum pipe *pipe)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	intel_wakeref_t wakeref;
 	enum port port;
@@ -955,7 +954,7 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 	 * machine. See BSpec North Display Engine registers/MIPI[BXT].
 	 */
 	if ((display->platform.geminilake || display->platform.broxton) &&
-	    !bxt_dsi_pll_is_enabled(dev_priv))
+	    !bxt_dsi_pll_is_enabled(display))
 		goto out_put_power;
 
 	/* XXX: this only works for one DSI output */
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index 2ed47e7d1051..7ce924a5ef90 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -57,7 +57,7 @@ static u32 dsi_clk_from_pclk(u32 pclk, enum mipi_dsi_pixel_format fmt,
 	return dsi_clk_khz;
 }
 
-static int dsi_calc_mnp(struct drm_i915_private *dev_priv,
+static int dsi_calc_mnp(struct intel_display *display,
 			struct intel_crtc_state *config,
 			int target_dsi_clk)
 {
@@ -68,11 +68,11 @@ static int dsi_calc_mnp(struct drm_i915_private *dev_priv,
 
 	/* target_dsi_clk is expected in kHz */
 	if (target_dsi_clk < 300000 || target_dsi_clk > 1150000) {
-		drm_err(&dev_priv->drm, "DSI CLK Out of Range\n");
+		drm_err(display->drm, "DSI CLK Out of Range\n");
 		return -ECHRNG;
 	}
 
-	if (IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.cherryview) {
 		ref_clk = 100000;
 		n = 4;
 		m_min = 70;
@@ -116,13 +116,13 @@ static int dsi_calc_mnp(struct drm_i915_private *dev_priv,
 static int vlv_dsi_pclk(struct intel_encoder *encoder,
 			struct intel_crtc_state *config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 	u32 dsi_clock;
 	u32 pll_ctl, pll_div;
 	u32 m = 0, p = 0, n;
-	int refclk = IS_CHERRYVIEW(dev_priv) ? 100000 : 25000;
+	int refclk = display->platform.cherryview ? 100000 : 25000;
 	int i;
 
 	pll_ctl = config->dsi_pll.ctrl;
@@ -147,7 +147,7 @@ static int vlv_dsi_pclk(struct intel_encoder *encoder,
 	p--;
 
 	if (!p) {
-		drm_err(&dev_priv->drm, "wrong P1 divisor\n");
+		drm_err(display->drm, "wrong P1 divisor\n");
 		return 0;
 	}
 
@@ -157,7 +157,7 @@ static int vlv_dsi_pclk(struct intel_encoder *encoder,
 	}
 
 	if (i == ARRAY_SIZE(lfsr_converts)) {
-		drm_err(&dev_priv->drm, "wrong m_seed programmed\n");
+		drm_err(display->drm, "wrong m_seed programmed\n");
 		return 0;
 	}
 
@@ -175,16 +175,16 @@ static int vlv_dsi_pclk(struct intel_encoder *encoder,
 int vlv_dsi_pll_compute(struct intel_encoder *encoder,
 			struct intel_crtc_state *config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	int pclk, dsi_clk, ret;
 
 	dsi_clk = dsi_clk_from_pclk(intel_dsi->pclk, intel_dsi->pixel_format,
 				    intel_dsi->lane_count);
 
-	ret = dsi_calc_mnp(dev_priv, config, dsi_clk);
+	ret = dsi_calc_mnp(display, config, dsi_clk);
 	if (ret) {
-		drm_dbg_kms(&dev_priv->drm, "dsi_calc_mnp failed\n");
+		drm_dbg_kms(display->drm, "dsi_calc_mnp failed\n");
 		return ret;
 	}
 
@@ -196,7 +196,7 @@ int vlv_dsi_pll_compute(struct intel_encoder *encoder,
 
 	config->dsi_pll.ctrl |= DSI_PLL_VCO_EN;
 
-	drm_dbg_kms(&dev_priv->drm, "dsi pll div %08x, ctrl %08x\n",
+	drm_dbg_kms(display->drm, "dsi pll div %08x, ctrl %08x\n",
 		    config->dsi_pll.div, config->dsi_pll.ctrl);
 
 	pclk = vlv_dsi_pclk(encoder, config);
@@ -213,9 +213,10 @@ int vlv_dsi_pll_compute(struct intel_encoder *encoder,
 void vlv_dsi_pll_enable(struct intel_encoder *encoder,
 			const struct intel_crtc_state *config)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	drm_dbg_kms(&dev_priv->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 
 	vlv_cck_get(dev_priv);
 
@@ -235,20 +236,21 @@ void vlv_dsi_pll_enable(struct intel_encoder *encoder,
 						DSI_PLL_LOCK, 20)) {
 
 		vlv_cck_put(dev_priv);
-		drm_err(&dev_priv->drm, "DSI PLL lock failed\n");
+		drm_err(display->drm, "DSI PLL lock failed\n");
 		return;
 	}
 	vlv_cck_put(dev_priv);
 
-	drm_dbg_kms(&dev_priv->drm, "DSI PLL locked\n");
+	drm_dbg_kms(display->drm, "DSI PLL locked\n");
 }
 
 void vlv_dsi_pll_disable(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u32 tmp;
 
-	drm_dbg_kms(&dev_priv->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 
 	vlv_cck_get(dev_priv);
 
@@ -260,14 +262,14 @@ void vlv_dsi_pll_disable(struct intel_encoder *encoder)
 	vlv_cck_put(dev_priv);
 }
 
-bool bxt_dsi_pll_is_enabled(struct drm_i915_private *dev_priv)
+bool bxt_dsi_pll_is_enabled(struct intel_display *display)
 {
 	bool enabled;
 	u32 val;
 	u32 mask;
 
 	mask = BXT_DSI_PLL_DO_ENABLE | BXT_DSI_PLL_LOCKED;
-	val = intel_de_read(dev_priv, BXT_DSI_PLL_ENABLE);
+	val = intel_de_read(display, BXT_DSI_PLL_ENABLE);
 	enabled = (val & mask) == mask;
 
 	if (!enabled)
@@ -281,17 +283,17 @@ bool bxt_dsi_pll_is_enabled(struct drm_i915_private *dev_priv)
 	 * times, and since accessing DSI registers with invalid dividers
 	 * causes a system hang.
 	 */
-	val = intel_de_read(dev_priv, BXT_DSI_PLL_CTL);
-	if (IS_GEMINILAKE(dev_priv)) {
+	val = intel_de_read(display, BXT_DSI_PLL_CTL);
+	if (display->platform.geminilake) {
 		if (!(val & BXT_DSIA_16X_MASK)) {
-			drm_dbg(&dev_priv->drm,
-				"Invalid PLL divider (%08x)\n", val);
+			drm_dbg_kms(display->drm,
+				    "Invalid PLL divider (%08x)\n", val);
 			enabled = false;
 		}
 	} else {
 		if (!(val & BXT_DSIA_16X_MASK) || !(val & BXT_DSIC_16X_MASK)) {
-			drm_dbg(&dev_priv->drm,
-				"Invalid PLL divider (%08x)\n", val);
+			drm_dbg_kms(display->drm,
+				    "Invalid PLL divider (%08x)\n", val);
 			enabled = false;
 		}
 	}
@@ -301,29 +303,30 @@ bool bxt_dsi_pll_is_enabled(struct drm_i915_private *dev_priv)
 
 void bxt_dsi_pll_disable(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	drm_dbg_kms(&dev_priv->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 
-	intel_de_rmw(dev_priv, BXT_DSI_PLL_ENABLE, BXT_DSI_PLL_DO_ENABLE, 0);
+	intel_de_rmw(display, BXT_DSI_PLL_ENABLE, BXT_DSI_PLL_DO_ENABLE, 0);
 
 	/*
 	 * PLL lock should deassert within 200us.
 	 * Wait up to 1ms before timing out.
 	 */
-	if (intel_de_wait_for_clear(dev_priv, BXT_DSI_PLL_ENABLE,
+	if (intel_de_wait_for_clear(display, BXT_DSI_PLL_ENABLE,
 				    BXT_DSI_PLL_LOCKED, 1))
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Timeout waiting for PLL lock deassertion\n");
 }
 
 u32 vlv_dsi_get_pclk(struct intel_encoder *encoder,
 		     struct intel_crtc_state *config)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u32 pll_ctl, pll_div;
 
-	drm_dbg_kms(&dev_priv->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 
 	vlv_cck_get(dev_priv);
 	pll_ctl = vlv_cck_read(dev_priv, CCK_REG_DSI_PLL_CONTROL);
@@ -352,14 +355,14 @@ static int bxt_dsi_pclk(struct intel_encoder *encoder,
 u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
 		     struct intel_crtc_state *config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	u32 pclk;
 
-	config->dsi_pll.ctrl = intel_de_read(dev_priv, BXT_DSI_PLL_CTL);
+	config->dsi_pll.ctrl = intel_de_read(display, BXT_DSI_PLL_CTL);
 
 	pclk = bxt_dsi_pclk(encoder, config);
 
-	drm_dbg(&dev_priv->drm, "Calculated pclk=%u\n", pclk);
+	drm_dbg_kms(display->drm, "Calculated pclk=%u\n", pclk);
 	return pclk;
 }
 
@@ -375,10 +378,9 @@ void vlv_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
 		       temp | intel_dsi->escape_clk_div << ESCAPE_CLOCK_DIVIDER_SHIFT);
 }
 
-static void glk_dsi_program_esc_clock(struct drm_device *dev,
-				   const struct intel_crtc_state *config)
+static void glk_dsi_program_esc_clock(struct intel_display *display,
+				      const struct intel_crtc_state *config)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	u32 dsi_rate = 0;
 	u32 pll_ratio = 0;
 	u32 ddr_clk = 0;
@@ -415,17 +417,16 @@ static void glk_dsi_program_esc_clock(struct drm_device *dev,
 
 	txesc2_div = min_t(u32, div2_value, 10);
 
-	intel_de_write(dev_priv, MIPIO_TXESC_CLK_DIV1,
+	intel_de_write(display, MIPIO_TXESC_CLK_DIV1,
 		       (1 << (txesc1_div - 1)) & GLK_TX_ESC_CLK_DIV1_MASK);
-	intel_de_write(dev_priv, MIPIO_TXESC_CLK_DIV2,
+	intel_de_write(display, MIPIO_TXESC_CLK_DIV2,
 		       (1 << (txesc2_div - 1)) & GLK_TX_ESC_CLK_DIV2_MASK);
 }
 
 /* Program BXT Mipi clocks and dividers */
-static void bxt_dsi_program_clocks(struct drm_device *dev, enum port port,
+static void bxt_dsi_program_clocks(struct intel_display *display, enum port port,
 				   const struct intel_crtc_state *config)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	u32 tmp;
 	u32 dsi_rate = 0;
 	u32 pll_ratio = 0;
@@ -436,7 +437,7 @@ static void bxt_dsi_program_clocks(struct drm_device *dev, enum port port,
 	u32 mipi_8by3_divider;
 
 	/* Clear old configurations */
-	tmp = intel_de_read(dev_priv, BXT_MIPI_CLOCK_CTL);
+	tmp = intel_de_read(display, BXT_MIPI_CLOCK_CTL);
 	tmp &= ~(BXT_MIPI_TX_ESCLK_FIXDIV_MASK(port));
 	tmp &= ~(BXT_MIPI_RX_ESCLK_UPPER_FIXDIV_MASK(port));
 	tmp &= ~(BXT_MIPI_8X_BY3_DIVIDER_MASK(port));
@@ -472,13 +473,13 @@ static void bxt_dsi_program_clocks(struct drm_device *dev, enum port port,
 	tmp |= BXT_MIPI_RX_ESCLK_LOWER_DIVIDER(port, rx_div_lower);
 	tmp |= BXT_MIPI_RX_ESCLK_UPPER_DIVIDER(port, rx_div_upper);
 
-	intel_de_write(dev_priv, BXT_MIPI_CLOCK_CTL, tmp);
+	intel_de_write(display, BXT_MIPI_CLOCK_CTL, tmp);
 }
 
 int bxt_dsi_pll_compute(struct intel_encoder *encoder,
 			struct intel_crtc_state *config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	u8 dsi_ratio, dsi_ratio_min, dsi_ratio_max;
 	u32 dsi_clk;
@@ -494,7 +495,7 @@ int bxt_dsi_pll_compute(struct intel_encoder *encoder,
 	 */
 	dsi_ratio = DIV_ROUND_UP(dsi_clk * 2, BXT_REF_CLOCK_KHZ);
 
-	if (IS_BROXTON(dev_priv)) {
+	if (display->platform.broxton) {
 		dsi_ratio_min = BXT_DSI_PLL_RATIO_MIN;
 		dsi_ratio_max = BXT_DSI_PLL_RATIO_MAX;
 	} else {
@@ -503,11 +504,11 @@ int bxt_dsi_pll_compute(struct intel_encoder *encoder,
 	}
 
 	if (dsi_ratio < dsi_ratio_min || dsi_ratio > dsi_ratio_max) {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Can't get a suitable ratio from DSI PLL ratios\n");
 		return -ECHRNG;
 	} else
-		drm_dbg_kms(&dev_priv->drm, "DSI PLL calculation is Done!!\n");
+		drm_dbg_kms(display->drm, "DSI PLL calculation is Done!!\n");
 
 	/*
 	 * Program DSI ratio and Select MIPIC and MIPIA PLL output as 8x
@@ -519,7 +520,7 @@ int bxt_dsi_pll_compute(struct intel_encoder *encoder,
 	/* As per recommendation from hardware team,
 	 * Prog PVD ratio =1 if dsi ratio <= 50
 	 */
-	if (IS_BROXTON(dev_priv) && dsi_ratio <= 50)
+	if (display->platform.broxton && dsi_ratio <= 50)
 		config->dsi_pll.ctrl |= BXT_DSI_PLL_PVD_RATIO_1;
 
 	pclk = bxt_dsi_pclk(encoder, config);
@@ -536,46 +537,45 @@ int bxt_dsi_pll_compute(struct intel_encoder *encoder,
 void bxt_dsi_pll_enable(struct intel_encoder *encoder,
 			const struct intel_crtc_state *config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 
-	drm_dbg_kms(&dev_priv->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 
 	/* Configure PLL vales */
-	intel_de_write(dev_priv, BXT_DSI_PLL_CTL, config->dsi_pll.ctrl);
-	intel_de_posting_read(dev_priv, BXT_DSI_PLL_CTL);
+	intel_de_write(display, BXT_DSI_PLL_CTL, config->dsi_pll.ctrl);
+	intel_de_posting_read(display, BXT_DSI_PLL_CTL);
 
 	/* Program TX, RX, Dphy clocks */
-	if (IS_BROXTON(dev_priv)) {
+	if (display->platform.broxton) {
 		for_each_dsi_port(port, intel_dsi->ports)
-			bxt_dsi_program_clocks(encoder->base.dev, port, config);
+			bxt_dsi_program_clocks(display, port, config);
 	} else {
-		glk_dsi_program_esc_clock(encoder->base.dev, config);
+		glk_dsi_program_esc_clock(display, config);
 	}
 
 	/* Enable DSI PLL */
-	intel_de_rmw(dev_priv, BXT_DSI_PLL_ENABLE, 0, BXT_DSI_PLL_DO_ENABLE);
+	intel_de_rmw(display, BXT_DSI_PLL_ENABLE, 0, BXT_DSI_PLL_DO_ENABLE);
 
 	/* Timeout and fail if PLL not locked */
-	if (intel_de_wait_for_set(dev_priv, BXT_DSI_PLL_ENABLE,
+	if (intel_de_wait_for_set(display, BXT_DSI_PLL_ENABLE,
 				  BXT_DSI_PLL_LOCKED, 1)) {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Timed out waiting for DSI PLL to lock\n");
 		return;
 	}
 
-	drm_dbg_kms(&dev_priv->drm, "DSI PLL locked\n");
+	drm_dbg_kms(display->drm, "DSI PLL locked\n");
 }
 
 void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u32 tmp;
 
 	/* Clear old configurations */
-	if (IS_BROXTON(dev_priv)) {
+	if (display->platform.broxton) {
 		tmp = intel_de_read(display, BXT_MIPI_CLOCK_CTL);
 		tmp &= ~(BXT_MIPI_TX_ESCLK_FIXDIV_MASK(port));
 		tmp &= ~(BXT_MIPI_RX_ESCLK_UPPER_FIXDIV_MASK(port));
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.h b/drivers/gpu/drm/i915/display/vlv_dsi_pll.h
index f975660fa609..f26e31a7dd69 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.h
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.h
@@ -9,7 +9,6 @@
 #include <linux/types.h>
 
 enum port;
-struct drm_i915_private;
 struct intel_crtc_state;
 struct intel_display;
 struct intel_encoder;
@@ -33,11 +32,11 @@ u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
 void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port);
 
 #ifdef I915
-bool bxt_dsi_pll_is_enabled(struct drm_i915_private *dev_priv);
+bool bxt_dsi_pll_is_enabled(struct intel_display *display);
 void assert_dsi_pll_enabled(struct intel_display *display);
 void assert_dsi_pll_disabled(struct intel_display *display);
 #else
-static inline bool bxt_dsi_pll_is_enabled(struct drm_i915_private *dev_priv)
+static inline bool bxt_dsi_pll_is_enabled(struct intel_display *display)
 {
 	return false;
 }
-- 
2.39.5

