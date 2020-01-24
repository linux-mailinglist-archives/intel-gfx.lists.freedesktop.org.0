Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7C214861A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:27:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9345072A98;
	Fri, 24 Jan 2020 13:27:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08DD372A9A
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:27:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:27:19 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="230291586"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:27:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:54 +0200
Message-Id: <3a89bf4c8b312c233e6b219e9c73203608c3eaec.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 33/33] drm/i915/vlv_dsi_pll: use intel_de_*()
 functions for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c | 49 +++++++++++-----------
 1 file changed, 25 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index 6b89e67b120f..8a68a86e2dc8 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -201,7 +201,7 @@ bool bxt_dsi_pll_is_enabled(struct drm_i915_private *dev_priv)
 	u32 mask;
 
 	mask = BXT_DSI_PLL_DO_ENABLE | BXT_DSI_PLL_LOCKED;
-	val = I915_READ(BXT_DSI_PLL_ENABLE);
+	val = intel_de_read(dev_priv, BXT_DSI_PLL_ENABLE);
 	enabled = (val & mask) == mask;
 
 	if (!enabled)
@@ -215,7 +215,7 @@ bool bxt_dsi_pll_is_enabled(struct drm_i915_private *dev_priv)
 	 * times, and since accessing DSI registers with invalid dividers
 	 * causes a system hang.
 	 */
-	val = I915_READ(BXT_DSI_PLL_CTL);
+	val = intel_de_read(dev_priv, BXT_DSI_PLL_CTL);
 	if (IS_GEMINILAKE(dev_priv)) {
 		if (!(val & BXT_DSIA_16X_MASK)) {
 			DRM_DEBUG_DRIVER("Invalid PLL divider (%08x)\n", val);
@@ -238,9 +238,9 @@ void bxt_dsi_pll_disable(struct intel_encoder *encoder)
 
 	DRM_DEBUG_KMS("\n");
 
-	val = I915_READ(BXT_DSI_PLL_ENABLE);
+	val = intel_de_read(dev_priv, BXT_DSI_PLL_ENABLE);
 	val &= ~BXT_DSI_PLL_DO_ENABLE;
-	I915_WRITE(BXT_DSI_PLL_ENABLE, val);
+	intel_de_write(dev_priv, BXT_DSI_PLL_ENABLE, val);
 
 	/*
 	 * PLL lock should deassert within 200us.
@@ -325,7 +325,7 @@ u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 
-	config->dsi_pll.ctrl = I915_READ(BXT_DSI_PLL_CTL);
+	config->dsi_pll.ctrl = intel_de_read(dev_priv, BXT_DSI_PLL_CTL);
 
 	dsi_ratio = config->dsi_pll.ctrl & BXT_DSI_PLL_RATIO_MASK;
 
@@ -343,11 +343,10 @@ void vlv_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 
-	temp = I915_READ(MIPI_CTRL(port));
+	temp = intel_de_read(dev_priv, MIPI_CTRL(port));
 	temp &= ~ESCAPE_CLOCK_DIVIDER_MASK;
-	I915_WRITE(MIPI_CTRL(port), temp |
-			intel_dsi->escape_clk_div <<
-			ESCAPE_CLOCK_DIVIDER_SHIFT);
+	intel_de_write(dev_priv, MIPI_CTRL(port),
+		       temp | intel_dsi->escape_clk_div << ESCAPE_CLOCK_DIVIDER_SHIFT);
 }
 
 static void glk_dsi_program_esc_clock(struct drm_device *dev,
@@ -393,8 +392,10 @@ static void glk_dsi_program_esc_clock(struct drm_device *dev,
 	else
 		txesc2_div = 10;
 
-	I915_WRITE(MIPIO_TXESC_CLK_DIV1, (1 << (txesc1_div - 1)) & GLK_TX_ESC_CLK_DIV1_MASK);
-	I915_WRITE(MIPIO_TXESC_CLK_DIV2, (1 << (txesc2_div - 1)) & GLK_TX_ESC_CLK_DIV2_MASK);
+	intel_de_write(dev_priv, MIPIO_TXESC_CLK_DIV1,
+		       (1 << (txesc1_div - 1)) & GLK_TX_ESC_CLK_DIV1_MASK);
+	intel_de_write(dev_priv, MIPIO_TXESC_CLK_DIV2,
+		       (1 << (txesc2_div - 1)) & GLK_TX_ESC_CLK_DIV2_MASK);
 }
 
 /* Program BXT Mipi clocks and dividers */
@@ -412,7 +413,7 @@ static void bxt_dsi_program_clocks(struct drm_device *dev, enum port port,
 	u32 mipi_8by3_divider;
 
 	/* Clear old configurations */
-	tmp = I915_READ(BXT_MIPI_CLOCK_CTL);
+	tmp = intel_de_read(dev_priv, BXT_MIPI_CLOCK_CTL);
 	tmp &= ~(BXT_MIPI_TX_ESCLK_FIXDIV_MASK(port));
 	tmp &= ~(BXT_MIPI_RX_ESCLK_UPPER_FIXDIV_MASK(port));
 	tmp &= ~(BXT_MIPI_8X_BY3_DIVIDER_MASK(port));
@@ -448,7 +449,7 @@ static void bxt_dsi_program_clocks(struct drm_device *dev, enum port port,
 	tmp |= BXT_MIPI_RX_ESCLK_LOWER_DIVIDER(port, rx_div_lower);
 	tmp |= BXT_MIPI_RX_ESCLK_UPPER_DIVIDER(port, rx_div_upper);
 
-	I915_WRITE(BXT_MIPI_CLOCK_CTL, tmp);
+	intel_de_write(dev_priv, BXT_MIPI_CLOCK_CTL, tmp);
 }
 
 int bxt_dsi_pll_compute(struct intel_encoder *encoder,
@@ -510,8 +511,8 @@ void bxt_dsi_pll_enable(struct intel_encoder *encoder,
 	DRM_DEBUG_KMS("\n");
 
 	/* Configure PLL vales */
-	I915_WRITE(BXT_DSI_PLL_CTL, config->dsi_pll.ctrl);
-	POSTING_READ(BXT_DSI_PLL_CTL);
+	intel_de_write(dev_priv, BXT_DSI_PLL_CTL, config->dsi_pll.ctrl);
+	intel_de_posting_read(dev_priv, BXT_DSI_PLL_CTL);
 
 	/* Program TX, RX, Dphy clocks */
 	if (IS_BROXTON(dev_priv)) {
@@ -522,9 +523,9 @@ void bxt_dsi_pll_enable(struct intel_encoder *encoder,
 	}
 
 	/* Enable DSI PLL */
-	val = I915_READ(BXT_DSI_PLL_ENABLE);
+	val = intel_de_read(dev_priv, BXT_DSI_PLL_ENABLE);
 	val |= BXT_DSI_PLL_DO_ENABLE;
-	I915_WRITE(BXT_DSI_PLL_ENABLE, val);
+	intel_de_write(dev_priv, BXT_DSI_PLL_ENABLE, val);
 
 	/* Timeout and fail if PLL not locked */
 	if (intel_de_wait_for_set(dev_priv, BXT_DSI_PLL_ENABLE,
@@ -544,20 +545,20 @@ void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
 
 	/* Clear old configurations */
 	if (IS_BROXTON(dev_priv)) {
-		tmp = I915_READ(BXT_MIPI_CLOCK_CTL);
+		tmp = intel_de_read(dev_priv, BXT_MIPI_CLOCK_CTL);
 		tmp &= ~(BXT_MIPI_TX_ESCLK_FIXDIV_MASK(port));
 		tmp &= ~(BXT_MIPI_RX_ESCLK_UPPER_FIXDIV_MASK(port));
 		tmp &= ~(BXT_MIPI_8X_BY3_DIVIDER_MASK(port));
 		tmp &= ~(BXT_MIPI_RX_ESCLK_LOWER_FIXDIV_MASK(port));
-		I915_WRITE(BXT_MIPI_CLOCK_CTL, tmp);
+		intel_de_write(dev_priv, BXT_MIPI_CLOCK_CTL, tmp);
 	} else {
-		tmp = I915_READ(MIPIO_TXESC_CLK_DIV1);
+		tmp = intel_de_read(dev_priv, MIPIO_TXESC_CLK_DIV1);
 		tmp &= ~GLK_TX_ESC_CLK_DIV1_MASK;
-		I915_WRITE(MIPIO_TXESC_CLK_DIV1, tmp);
+		intel_de_write(dev_priv, MIPIO_TXESC_CLK_DIV1, tmp);
 
-		tmp = I915_READ(MIPIO_TXESC_CLK_DIV2);
+		tmp = intel_de_read(dev_priv, MIPIO_TXESC_CLK_DIV2);
 		tmp &= ~GLK_TX_ESC_CLK_DIV2_MASK;
-		I915_WRITE(MIPIO_TXESC_CLK_DIV2, tmp);
+		intel_de_write(dev_priv, MIPIO_TXESC_CLK_DIV2, tmp);
 	}
-	I915_WRITE(MIPI_EOT_DISABLE(port), CLOCKSTOP);
+	intel_de_write(dev_priv, MIPI_EOT_DISABLE(port), CLOCKSTOP);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
