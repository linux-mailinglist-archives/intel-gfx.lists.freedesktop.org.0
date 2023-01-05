Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E6D65EC8C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:11:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC76910E71E;
	Thu,  5 Jan 2023 13:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8063E10E71A
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672924285; x=1704460285;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cPfJj/C2fbldlI/6jYtBLdhavu0Dqj82l9LcTFjB51I=;
 b=Vz7fBr7Q4a0DPFvgd2iMLolaq5/9FFF9ZQaTUbp34MBLGlshFaZ8lZTQ
 5CWxks91uHXxKHlt5NihiCcUBtLKT38hd0VREdgxhuIsNkfV/g4wG6WMu
 yTjZmxCoGWqbWwpKTBawJfZtoSGdHs04Qgl9da03X0XGlDL5YoP/KWNCY
 Bsc6pnzKn4KSVqAYW8KVEUpirmaGZ+gxf6gFhG3Jt+KOBZiF365k7UvFn
 dhyUgJ3Imt3lmD0WZ2lR5BXpPr3aE6gbPgUUWh6aWpPLrHvB4DC5wsMQ3
 S1Eq6aRcL7tSbwdCXCNcJttfJ3nOSWDvLCO2ALyuYgtWHx9RF2WsFkmmV w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="323429782"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="323429782"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="633129086"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="633129086"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:23 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:10:42 +0100
Message-Id: <20230105131046.2173431-5-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105131046.2173431-1-andrzej.hajda@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915/display/pch: use intel_de_rmw
 if possible
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
 .../gpu/drm/i915/display/intel_pch_display.c  | 41 +++++--------------
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 10 +----
 2 files changed, 13 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index cecc0d007cf39c..4b5e069a1b9051 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -307,7 +307,6 @@ static void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	i915_reg_t reg;
-	u32 val;
 
 	/* FDI relies on the transcoder */
 	assert_fdi_tx_disabled(dev_priv, pipe);
@@ -317,21 +316,16 @@ static void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
 	assert_pch_ports_disabled(dev_priv, pipe);
 
 	reg = PCH_TRANSCONF(pipe);
-	val = intel_de_read(dev_priv, reg);
-	val &= ~TRANS_ENABLE;
-	intel_de_write(dev_priv, reg, val);
+	intel_de_rmw(dev_priv, reg, TRANS_ENABLE, 0);
 	/* wait for PCH transcoder off, transcoder state */
 	if (intel_de_wait_for_clear(dev_priv, reg, TRANS_STATE_ENABLE, 50))
 		drm_err(&dev_priv->drm, "failed to disable transcoder %c\n",
 			pipe_name(pipe));
 
-	if (HAS_PCH_CPT(dev_priv)) {
+	if (HAS_PCH_CPT(dev_priv))
 		/* Workaround: Clear the timing override chicken bit again. */
-		reg = TRANS_CHICKEN2(pipe);
-		val = intel_de_read(dev_priv, reg);
-		val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
-		intel_de_write(dev_priv, reg, val);
-	}
+		intel_de_rmw(dev_priv, TRANS_CHICKEN2(pipe),
+			     TRANS_CHICKEN2_TIMING_OVERRIDE, 0);
 }
 
 void ilk_pch_pre_enable(struct intel_atomic_state *state,
@@ -456,21 +450,14 @@ void ilk_pch_post_disable(struct intel_atomic_state *state,
 	ilk_disable_pch_transcoder(crtc);
 
 	if (HAS_PCH_CPT(dev_priv)) {
-		i915_reg_t reg;
-		u32 temp;
-
 		/* disable TRANS_DP_CTL */
-		reg = TRANS_DP_CTL(pipe);
-		temp = intel_de_read(dev_priv, reg);
-		temp &= ~(TRANS_DP_OUTPUT_ENABLE |
-			  TRANS_DP_PORT_SEL_MASK);
-		temp |= TRANS_DP_PORT_SEL_NONE;
-		intel_de_write(dev_priv, reg, temp);
+		intel_de_rmw(dev_priv, TRANS_DP_CTL(pipe),
+			     TRANS_DP_OUTPUT_ENABLE | TRANS_DP_PORT_SEL_MASK,
+			     TRANS_DP_PORT_SEL_NONE);
 
 		/* disable DPLL_SEL */
-		temp = intel_de_read(dev_priv, PCH_DPLL_SEL);
-		temp &= ~(TRANS_DPLL_ENABLE(pipe) | TRANS_DPLLB_SEL(pipe));
-		intel_de_write(dev_priv, PCH_DPLL_SEL, temp);
+		intel_de_rmw(dev_priv, PCH_DPLL_SEL,
+			     TRANS_DPLL_ENABLE(pipe) | TRANS_DPLLB_SEL(pipe), 0);
 	}
 
 	ilk_fdi_pll_disable(crtc);
@@ -580,20 +567,14 @@ static void lpt_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 
 static void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv)
 {
-	u32 val;
-
-	val = intel_de_read(dev_priv, LPT_TRANSCONF);
-	val &= ~TRANS_ENABLE;
-	intel_de_write(dev_priv, LPT_TRANSCONF, val);
+	intel_de_rmw(dev_priv, LPT_TRANSCONF, TRANS_ENABLE, 0);
 	/* wait for PCH transcoder off, transcoder state */
 	if (intel_de_wait_for_clear(dev_priv, LPT_TRANSCONF,
 				    TRANS_STATE_ENABLE, 50))
 		drm_err(&dev_priv->drm, "Failed to disable PCH transcoder\n");
 
 	/* Workaround: clear timing override bit. */
-	val = intel_de_read(dev_priv, TRANS_CHICKEN2(PIPE_A));
-	val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
-	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
+	intel_de_rmw(dev_priv, TRANS_CHICKEN2(PIPE_A), TRANS_CHICKEN2_TIMING_OVERRIDE, 0);
 }
 
 void lpt_pch_enable(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 08a94365b7d13b..6780c8fd9a1d31 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -12,19 +12,13 @@
 
 static void lpt_fdi_reset_mphy(struct drm_i915_private *dev_priv)
 {
-	u32 tmp;
-
-	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
-	tmp |= FDI_MPHY_IOSFSB_RESET_CTL;
-	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
+	intel_de_rmw(dev_priv, SOUTH_CHICKEN2, 0, FDI_MPHY_IOSFSB_RESET_CTL);
 
 	if (wait_for_us(intel_de_read(dev_priv, SOUTH_CHICKEN2) &
 			FDI_MPHY_IOSFSB_RESET_STATUS, 100))
 		drm_err(&dev_priv->drm, "FDI mPHY reset assert timeout\n");
 
-	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
-	tmp &= ~FDI_MPHY_IOSFSB_RESET_CTL;
-	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
+	intel_de_rmw(dev_priv, SOUTH_CHICKEN2, FDI_MPHY_IOSFSB_RESET_CTL, 0);
 
 	if (wait_for_us((intel_de_read(dev_priv, SOUTH_CHICKEN2) &
 			 FDI_MPHY_IOSFSB_RESET_STATUS) == 0, 100))
-- 
2.34.1

