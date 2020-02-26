Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC211709D0
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 21:35:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2EF16EBCC;
	Wed, 26 Feb 2020 20:35:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 567766EBBA
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 20:35:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 12:35:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="238155030"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 26 Feb 2020 12:35:46 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 22:34:52 +0200
Message-Id: <20200226203455.23032-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
References: <20200226203455.23032-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/13] drm/i915/hsw: Split out the WRPLL, LCPLL,
 SPLL frequency calculation
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Split out the PLL parameter->frequency conversion logic for each type of
PLL for symmetry with their corresponding inverse conversion functions.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 91 ++++++++++++-------
 1 file changed, 56 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 87661f797a02..ebd55fdaf4cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -877,9 +877,11 @@ hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
 	return pll;
 }
 
-static int hsw_ddi_calc_wrpll_link(struct drm_i915_private *dev_priv,
-				   i915_reg_t reg)
+static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
+				  const struct intel_shared_dpll *pll)
 {
+	i915_reg_t reg = pll->info->id == DPLL_ID_WRPLL1 ?
+					  WRPLL_CTL(0) : WRPLL_CTL(1);
 	int refclk;
 	int n, p, r;
 	u32 wrpll;
@@ -921,7 +923,7 @@ static int hsw_ddi_calc_wrpll_link(struct drm_i915_private *dev_priv,
 	n = (wrpll & WRPLL_DIVIDER_FB_MASK) >> WRPLL_DIVIDER_FB_SHIFT;
 
 	/* Convert to KHz, p & r have a fixed point portion */
-	return (refclk * n * 100) / (p * r);
+	return (refclk * n * 100) / (p * r) * 2;
 }
 
 static struct intel_shared_dpll *
@@ -956,6 +958,29 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 	return pll;
 }
 
+static int hsw_ddi_lcpll_get_freq(struct drm_i915_private *i915,
+				  const struct intel_shared_dpll *pll)
+{
+	int link_clock = 0;
+
+	switch (pll->info->id) {
+	case DPLL_ID_LCPLL_810:
+		link_clock = 81000;
+		break;
+	case DPLL_ID_LCPLL_1350:
+		link_clock = 135000;
+		break;
+	case DPLL_ID_LCPLL_2700:
+		link_clock = 270000;
+		break;
+	default:
+		drm_WARN(&i915->drm, 1, "bad port clock sel\n");
+		break;
+	}
+
+	return link_clock * 2;
+}
+
 static struct intel_shared_dpll *
 hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc)
@@ -973,6 +998,29 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
 				      BIT(DPLL_ID_SPLL));
 }
 
+static int hsw_ddi_spll_get_freq(struct drm_i915_private *i915,
+				 const struct intel_shared_dpll *pll)
+{
+	int link_clock = 0;
+
+	switch (intel_de_read(i915, SPLL_CTL) & SPLL_FREQ_MASK) {
+	case SPLL_FREQ_810MHz:
+		link_clock = 81000;
+		break;
+	case SPLL_FREQ_1350MHz:
+		link_clock = 135000;
+		break;
+	case SPLL_FREQ_2700MHz:
+		link_clock = 270000;
+		break;
+	default:
+		drm_WARN(&i915->drm, 1, "bad spll freq\n");
+		break;
+	}
+
+	return link_clock * 2;
+}
+
 static bool hsw_get_dpll(struct intel_atomic_state *state,
 			 struct intel_crtc *crtc,
 			 struct intel_encoder *encoder)
@@ -1008,44 +1056,17 @@ static int hsw_ddi_clock_get(struct intel_encoder *encoder,
 			     struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	int link_clock = 0;
-	u32 pll;
+	struct intel_shared_dpll *pll = pipe_config->shared_dpll;
 
-	switch (pipe_config->shared_dpll->info->id) {
-	case DPLL_ID_LCPLL_810:
-		link_clock = 81000;
-		break;
-	case DPLL_ID_LCPLL_1350:
-		link_clock = 135000;
-		break;
-	case DPLL_ID_LCPLL_2700:
-		link_clock = 270000;
-		break;
+	switch (pll->info->id) {
 	case DPLL_ID_WRPLL1:
-		link_clock = hsw_ddi_calc_wrpll_link(dev_priv, WRPLL_CTL(0));
-		break;
 	case DPLL_ID_WRPLL2:
-		link_clock = hsw_ddi_calc_wrpll_link(dev_priv, WRPLL_CTL(1));
-		break;
+		return hsw_ddi_wrpll_get_freq(dev_priv, pll);
 	case DPLL_ID_SPLL:
-		pll = intel_de_read(dev_priv, SPLL_CTL) & SPLL_FREQ_MASK;
-		if (pll == SPLL_FREQ_810MHz)
-			link_clock = 81000;
-		else if (pll == SPLL_FREQ_1350MHz)
-			link_clock = 135000;
-		else if (pll == SPLL_FREQ_2700MHz)
-			link_clock = 270000;
-		else {
-			drm_WARN(&dev_priv->drm, 1, "bad spll freq\n");
-			break;
-		}
-		break;
+		return hsw_ddi_spll_get_freq(dev_priv, pll);
 	default:
-		drm_WARN(&dev_priv->drm, 1, "bad port clock sel\n");
-		break;
+		return hsw_ddi_lcpll_get_freq(dev_priv, pll);
 	}
-
-	return link_clock * 2;
 }
 
 static void hsw_dump_hw_state(struct drm_i915_private *dev_priv,
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
