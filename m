Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 171A65B0006
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:11:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BBCF10E495;
	Wed,  7 Sep 2022 09:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C5EC10E480
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662541875; x=1694077875;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BLWfTcpST+2uaW3efJCAMEkzlaQalQPNc0iE0BeVkDY=;
 b=b9wbFi1DdZwwInvY5XHQaHQPArkJj6RD0WBMDg+HSNU1k+Z2vDObWuqJ
 GkhroYPv19CyJJTi+A6mPC91Ct0Ulpwx7RbuiEL/tJloSee9mT3EqOzo8
 Np9HLHtbaMalBi66aB0i6/59nkJy6iLXg79jwvbYUlJ7tbYGr2jQF/e/Z
 INxixiE8F2PZ8pjztLFYMs5CXD8KS/Lx/1xrs6QtGFrI39azlXwD/pTHA
 OyUxJJ5iPq7S9mY3kqN9k2gQy2iZi05Wu6qvohqxymXZ3ZysVcyp2aWv+
 xLX1qHXN2veeOkuBbCLiKzHMuXt+x/3ilmfe2d5G3lfFFXtqugnSdRPP9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="295557364"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="295557364"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:11:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="614416677"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 07 Sep 2022 02:11:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:11:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:10:44 +0300
Message-Id: <20220907091057.11572-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 04/17] drm/i915/dsi: Extract {vlv,
 bxt}_get_pclk()
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

Extract the state->freq computation for VLV/BXT DSI PLL
into small helpers. We want to use these during the state
computation as well.

Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c | 121 ++++++++++++---------
 1 file changed, 68 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index 5894b0138343..2606dbf09ccc 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -113,6 +113,61 @@ static int dsi_calc_mnp(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
+static int vlv_dsi_pclk(struct intel_encoder *encoder,
+			struct intel_crtc_state *config)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
+	int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
+	u32 dsi_clock;
+	u32 pll_ctl, pll_div;
+	u32 m = 0, p = 0, n;
+	int refclk = IS_CHERRYVIEW(dev_priv) ? 100000 : 25000;
+	int i;
+
+	pll_ctl = config->dsi_pll.ctrl;
+	pll_div = config->dsi_pll.div;
+
+	/* mask out other bits and extract the P1 divisor */
+	pll_ctl &= DSI_PLL_P1_POST_DIV_MASK;
+	pll_ctl = pll_ctl >> (DSI_PLL_P1_POST_DIV_SHIFT - 2);
+
+	/* N1 divisor */
+	n = (pll_div & DSI_PLL_N1_DIV_MASK) >> DSI_PLL_N1_DIV_SHIFT;
+	n = 1 << n; /* register has log2(N1) */
+
+	/* mask out the other bits and extract the M1 divisor */
+	pll_div &= DSI_PLL_M1_DIV_MASK;
+	pll_div = pll_div >> DSI_PLL_M1_DIV_SHIFT;
+
+	while (pll_ctl) {
+		pll_ctl = pll_ctl >> 1;
+		p++;
+	}
+	p--;
+
+	if (!p) {
+		drm_err(&dev_priv->drm, "wrong P1 divisor\n");
+		return 0;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(lfsr_converts); i++) {
+		if (lfsr_converts[i] == pll_div)
+			break;
+	}
+
+	if (i == ARRAY_SIZE(lfsr_converts)) {
+		drm_err(&dev_priv->drm, "wrong m_seed programmed\n");
+		return 0;
+	}
+
+	m = i + 62;
+
+	dsi_clock = (m * refclk) / (p * n);
+
+	return DIV_ROUND_CLOSEST(dsi_clock * intel_dsi->lane_count, bpp);
+}
+
 /*
  * XXX: The muxing and gating is hard coded for now. Need to add support for
  * sharing PLLs with two DSI outputs.
@@ -262,13 +317,7 @@ u32 vlv_dsi_get_pclk(struct intel_encoder *encoder,
 		     struct intel_crtc_state *config)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
-	int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
-	u32 dsi_clock, pclk;
 	u32 pll_ctl, pll_div;
-	u32 m = 0, p = 0, n;
-	int refclk = IS_CHERRYVIEW(dev_priv) ? 100000 : 25000;
-	int i;
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
 
@@ -280,65 +329,31 @@ u32 vlv_dsi_get_pclk(struct intel_encoder *encoder,
 	config->dsi_pll.ctrl = pll_ctl & ~DSI_PLL_LOCK;
 	config->dsi_pll.div = pll_div;
 
-	/* mask out other bits and extract the P1 divisor */
-	pll_ctl &= DSI_PLL_P1_POST_DIV_MASK;
-	pll_ctl = pll_ctl >> (DSI_PLL_P1_POST_DIV_SHIFT - 2);
+	return vlv_dsi_pclk(encoder, config);
+}
 
-	/* N1 divisor */
-	n = (pll_div & DSI_PLL_N1_DIV_MASK) >> DSI_PLL_N1_DIV_SHIFT;
-	n = 1 << n; /* register has log2(N1) */
+static int bxt_dsi_pclk(struct intel_encoder *encoder,
+			const struct intel_crtc_state *config)
+{
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
+	int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
+	u32 dsi_ratio, dsi_clk;
 
-	/* mask out the other bits and extract the M1 divisor */
-	pll_div &= DSI_PLL_M1_DIV_MASK;
-	pll_div = pll_div >> DSI_PLL_M1_DIV_SHIFT;
+	dsi_ratio = config->dsi_pll.ctrl & BXT_DSI_PLL_RATIO_MASK;
+	dsi_clk = (dsi_ratio * BXT_REF_CLOCK_KHZ) / 2;
 
-	while (pll_ctl) {
-		pll_ctl = pll_ctl >> 1;
-		p++;
-	}
-	p--;
-
-	if (!p) {
-		drm_err(&dev_priv->drm, "wrong P1 divisor\n");
-		return 0;
-	}
-
-	for (i = 0; i < ARRAY_SIZE(lfsr_converts); i++) {
-		if (lfsr_converts[i] == pll_div)
-			break;
-	}
-
-	if (i == ARRAY_SIZE(lfsr_converts)) {
-		drm_err(&dev_priv->drm, "wrong m_seed programmed\n");
-		return 0;
-	}
-
-	m = i + 62;
-
-	dsi_clock = (m * refclk) / (p * n);
-
-	pclk = DIV_ROUND_CLOSEST(dsi_clock * intel_dsi->lane_count, bpp);
-
-	return pclk;
+	return DIV_ROUND_CLOSEST(dsi_clk * intel_dsi->lane_count, bpp);
 }
 
 u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
 		     struct intel_crtc_state *config)
 {
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u32 pclk;
-	u32 dsi_clk;
-	u32 dsi_ratio;
-	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 
 	config->dsi_pll.ctrl = intel_de_read(dev_priv, BXT_DSI_PLL_CTL);
 
-	dsi_ratio = config->dsi_pll.ctrl & BXT_DSI_PLL_RATIO_MASK;
-
-	dsi_clk = (dsi_ratio * BXT_REF_CLOCK_KHZ) / 2;
-
-	pclk = DIV_ROUND_CLOSEST(dsi_clk * intel_dsi->lane_count, bpp);
+	pclk = bxt_dsi_pclk(encoder, config);
 
 	drm_dbg(&dev_priv->drm, "Calculated pclk=%u\n", pclk);
 	return pclk;
-- 
2.35.1

