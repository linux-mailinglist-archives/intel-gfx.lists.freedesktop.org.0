Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 693F664DBC0
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 13:57:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46D2B10E009;
	Thu, 15 Dec 2022 12:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A208810E009
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 12:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671108996; x=1702644996;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=z/UwewbhgruI5nLYE284Q8zdsTOhG003Xy1OdVxQxo8=;
 b=aAnuC6cU0ttQwFBPp1MFDYEq1coLj5pJU7Yofns8s5Ko64Mzw/cxVzHA
 13Bb0Zwt9EoBq034GAljoOrwN6POUZcKZm27tjjtQigLxlkJBKL3uUmcM
 oD1NGPo8+8lRgjI4UoNX+Mq8ZiDTY2TLwuquxY+TplxmX83I+gh+gNk0j
 2D26p6UJuMnqc6OuH+3m3FMRE6vHERhVfV1mQRb5ht+Dc6tTDFC/1xvGh
 iMDlwCY2C+/uwpgZEz9wx4ITFEG3EZ6PJb1of6YO6y0dtSBMK1w3exrSM
 jologIia/MlcKCuEEeRl70WVul53j5rs8+WBnLUJAA7IIwrlTxs8lWRc1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="319809695"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="319809695"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 04:56:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="681850726"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="681850726"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 04:56:33 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Dec 2022 13:56:10 +0100
Message-Id: <20221215125610.1161729-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/fdi: use intel_de_rmw if
 possible
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The helper makes the code more compact and readable.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fdi.c | 148 +++++++----------------
 1 file changed, 44 insertions(+), 104 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 063f1da4f229cf..f62d9a9313498c 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -439,19 +439,11 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
 		drm_err(&dev_priv->drm, "FDI train 1 fail!\n");
 
 	/* Train 2 */
-	reg = FDI_TX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
-	temp &= ~FDI_LINK_TRAIN_NONE;
-	temp |= FDI_LINK_TRAIN_PATTERN_2;
-	intel_de_write(dev_priv, reg, temp);
-
-	reg = FDI_RX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
-	temp &= ~FDI_LINK_TRAIN_NONE;
-	temp |= FDI_LINK_TRAIN_PATTERN_2;
-	intel_de_write(dev_priv, reg, temp);
-
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
+		     FDI_LINK_TRAIN_NONE, FDI_LINK_TRAIN_PATTERN_2);
+	intel_de_rmw(dev_priv, FDI_RX_CTL(pipe),
+		     FDI_LINK_TRAIN_NONE, FDI_LINK_TRAIN_PATTERN_2);
+	intel_de_posting_read(dev_priv, FDI_RX_CTL(pipe));
 	udelay(150);
 
 	reg = FDI_RX_IIR(pipe);
@@ -538,13 +530,9 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 	udelay(150);
 
 	for (i = 0; i < 4; i++) {
-		reg = FDI_TX_CTL(pipe);
-		temp = intel_de_read(dev_priv, reg);
-		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
-		temp |= snb_b_fdi_train_param[i];
-		intel_de_write(dev_priv, reg, temp);
-
-		intel_de_posting_read(dev_priv, reg);
+		intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
+			     FDI_LINK_TRAIN_VOL_EMP_MASK, snb_b_fdi_train_param[i]);
+		intel_de_posting_read(dev_priv, FDI_TX_CTL(pipe));
 		udelay(500);
 
 		for (retry = 0; retry < 5; retry++) {
@@ -593,13 +581,9 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 	udelay(150);
 
 	for (i = 0; i < 4; i++) {
-		reg = FDI_TX_CTL(pipe);
-		temp = intel_de_read(dev_priv, reg);
-		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
-		temp |= snb_b_fdi_train_param[i];
-		intel_de_write(dev_priv, reg, temp);
-
-		intel_de_posting_read(dev_priv, reg);
+		intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
+			     FDI_LINK_TRAIN_VOL_EMP_MASK, snb_b_fdi_train_param[i]);
+		intel_de_posting_read(dev_priv, FDI_TX_CTL(pipe));
 		udelay(500);
 
 		for (retry = 0; retry < 5; retry++) {
@@ -719,19 +703,13 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 		}
 
 		/* Train 2 */
-		reg = FDI_TX_CTL(pipe);
-		temp = intel_de_read(dev_priv, reg);
-		temp &= ~FDI_LINK_TRAIN_NONE_IVB;
-		temp |= FDI_LINK_TRAIN_PATTERN_2_IVB;
-		intel_de_write(dev_priv, reg, temp);
-
-		reg = FDI_RX_CTL(pipe);
-		temp = intel_de_read(dev_priv, reg);
-		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
-		temp |= FDI_LINK_TRAIN_PATTERN_2_CPT;
-		intel_de_write(dev_priv, reg, temp);
-
-		intel_de_posting_read(dev_priv, reg);
+		intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
+			     FDI_LINK_TRAIN_NONE_IVB,
+			     FDI_LINK_TRAIN_PATTERN_2_IVB);
+		intel_de_rmw(dev_priv, FDI_RX_CTL(pipe),
+			     FDI_LINK_TRAIN_PATTERN_MASK_CPT,
+			     FDI_LINK_TRAIN_PATTERN_2_CPT);
+		intel_de_posting_read(dev_priv, FDI_RX_CTL(pipe));
 		udelay(2); /* should be 1.5us */
 
 		for (i = 0; i < 4; i++) {
@@ -837,9 +815,8 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		udelay(30);
 
 		/* Unset FDI_RX_MISC pwrdn lanes */
-		temp = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
-		temp &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
-		intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), temp);
+		intel_de_rmw(dev_priv, FDI_RX_MISC(PIPE_A),
+			     FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK, 0);
 		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
 
 		/* Wait for FDI auto training time */
@@ -865,25 +842,21 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
 		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
 
-		temp = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
-		temp &= ~DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), temp);
+		intel_de_rmw(dev_priv, DDI_BUF_CTL(PORT_E), DDI_BUF_CTL_ENABLE, 0);
 		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
 
 		/* Disable DP_TP_CTL and FDI_RX_CTL and retry */
-		temp = intel_de_read(dev_priv, DP_TP_CTL(PORT_E));
-		temp &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
-		temp |= DP_TP_CTL_LINK_TRAIN_PAT1;
-		intel_de_write(dev_priv, DP_TP_CTL(PORT_E), temp);
+		intel_de_rmw(dev_priv, DP_TP_CTL(PORT_E),
+			     DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK,
+			     DP_TP_CTL_LINK_TRAIN_PAT1);
 		intel_de_posting_read(dev_priv, DP_TP_CTL(PORT_E));
 
 		intel_wait_ddi_buf_idle(dev_priv, PORT_E);
 
 		/* Reset FDI_RX_MISC pwrdn lanes */
-		temp = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
-		temp &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
-		temp |= FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2);
-		intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), temp);
+		intel_de_rmw(dev_priv, FDI_RX_MISC(PIPE_A),
+			     FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK,
+			     FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2));
 		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
 	}
 
@@ -898,7 +871,6 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 void hsw_fdi_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 val;
 
 	/*
 	 * Bspec lists this as both step 13 (before DDI_BUF_CTL disable)
@@ -906,30 +878,15 @@ void hsw_fdi_disable(struct intel_encoder *encoder)
 	 * step 13 is the correct place for it. Step 18 is where it was
 	 * originally before the BUN.
 	 */
-	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
-	val &= ~FDI_RX_ENABLE;
-	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
-
-	val = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
-	val &= ~DDI_BUF_CTL_ENABLE;
-	intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), val);
-
+	intel_de_rmw(dev_priv, FDI_RX_CTL(PIPE_A), FDI_RX_ENABLE, 0);
+	intel_de_rmw(dev_priv, DDI_BUF_CTL(PORT_E), DDI_BUF_CTL_ENABLE, 0);
 	intel_wait_ddi_buf_idle(dev_priv, PORT_E);
-
 	intel_ddi_disable_clock(encoder);
-
-	val = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
-	val &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
-	val |= FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2);
-	intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), val);
-
-	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
-	val &= ~FDI_PCDCLK;
-	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
-
-	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
-	val &= ~FDI_RX_PLL_ENABLE;
-	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
+	intel_de_rmw(dev_priv, FDI_RX_MISC(PIPE_A),
+		     FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK,
+		     FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2));
+	intel_de_rmw(dev_priv, FDI_RX_CTL(PIPE_A), FDI_PCDCLK, 0);
+	intel_de_rmw(dev_priv, FDI_RX_CTL(PIPE_A), FDI_RX_PLL_ENABLE, 0);
 }
 
 void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
@@ -952,9 +909,7 @@ void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
 	udelay(200);
 
 	/* Switch from Rawclk to PCDclk */
-	temp = intel_de_read(dev_priv, reg);
-	intel_de_write(dev_priv, reg, temp | FDI_PCDCLK);
-
+	intel_de_rmw(dev_priv, reg, 0, FDI_PCDCLK);
 	intel_de_posting_read(dev_priv, reg);
 	udelay(200);
 
@@ -974,28 +929,18 @@ void ilk_fdi_pll_disable(struct intel_crtc *crtc)
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum pipe pipe = crtc->pipe;
-	i915_reg_t reg;
-	u32 temp;
 
 	/* Switch from PCDclk to Rawclk */
-	reg = FDI_RX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
-	intel_de_write(dev_priv, reg, temp & ~FDI_PCDCLK);
+	intel_de_rmw(dev_priv, FDI_RX_CTL(pipe), FDI_PCDCLK, 0);
 
 	/* Disable CPU FDI TX PLL */
-	reg = FDI_TX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
-	intel_de_write(dev_priv, reg, temp & ~FDI_TX_PLL_ENABLE);
-
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_rmw(dev_priv, FDI_TX_CTL(pipe), FDI_TX_PLL_ENABLE, 0);
+	intel_de_posting_read(dev_priv, FDI_TX_CTL(pipe));
 	udelay(100);
 
-	reg = FDI_RX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
-	intel_de_write(dev_priv, reg, temp & ~FDI_RX_PLL_ENABLE);
-
 	/* Wait for the clocks to turn off. */
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_rmw(dev_priv, FDI_RX_CTL(pipe), FDI_RX_PLL_ENABLE, 0);
+	intel_de_posting_read(dev_priv, FDI_RX_CTL(pipe));
 	udelay(100);
 }
 
@@ -1007,10 +952,8 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
 	u32 temp;
 
 	/* disable CPU FDI tx and PCH FDI rx */
-	reg = FDI_TX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
-	intel_de_write(dev_priv, reg, temp & ~FDI_TX_ENABLE);
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_rmw(dev_priv, FDI_TX_CTL(pipe), FDI_TX_ENABLE, 0);
+	intel_de_posting_read(dev_priv, FDI_TX_CTL(pipe));
 
 	reg = FDI_RX_CTL(pipe);
 	temp = intel_de_read(dev_priv, reg);
@@ -1027,11 +970,8 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
 			       FDI_RX_PHASE_SYNC_POINTER_OVR);
 
 	/* still set train pattern 1 */
-	reg = FDI_TX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
-	temp &= ~FDI_LINK_TRAIN_NONE;
-	temp |= FDI_LINK_TRAIN_PATTERN_1;
-	intel_de_write(dev_priv, reg, temp);
+	intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
+		     FDI_LINK_TRAIN_NONE, FDI_LINK_TRAIN_PATTERN_1);
 
 	reg = FDI_RX_CTL(pipe);
 	temp = intel_de_read(dev_priv, reg);
-- 
2.34.1

