Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0600527B8DD
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 02:29:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE2689F19;
	Tue, 29 Sep 2020 00:29:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD8C89D63
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 00:29:35 +0000 (UTC)
IronPort-SDR: ipgsCM0DOUEFwqm2Xlszqg/pvOo1QO75qGurPM6Rgn3V8L7AuIpk01yUkAN9PgE4j1g3npV2Us
 A+5vkJxH5+ZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="180242829"
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="180242829"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 17:29:34 -0700
IronPort-SDR: LwMEMejqD3kvUtU0dYCeBxkkimM+r28f01iJQ05DGttOc5Xsx1GcBztIQEwrzoTtTJ+xAKv7Oh
 8pniRkbxlioQ==
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="488817653"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 17:29:33 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 03:29:26 +0300
Message-Id: <20200929002929.783620-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200929002929.783620-1-imre.deak@intel.com>
References: <20200929002929.783620-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Factor out skl_wrpll_calc_freq()
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

The WRPLL parameter -> frequency formula is the same for all platforms
starting with SKL. Factor out the helper for this for clarity and so
that we can use the same formula when selecting the ICL WRPLL dividers
for DP mode in an upcoming patch (to cross-check the frequency
calculated using the formula wrt. hard-coded freq values in the ICL DP
PLL tables).

While at it add the MISSING_CASE() for incorrect divider encodings.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 160 +++++++++++-------
 drivers/gpu/drm/i915/i915_reg.h               |   3 +
 2 files changed, 101 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 095b53fe3a21..e3370c8dccc8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1576,31 +1576,31 @@ static bool skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 	return true;
 }
 
-static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
-				  const struct intel_shared_dpll *pll)
+static int skl_wrpll_calc_freq(int ref_clock,
+			       u32 dco_integer, u32 dco_fraction,
+			       u32 pdiv, u32 qdiv, u32 kdiv)
 {
-	const struct intel_dpll_hw_state *pll_state = &pll->state.hw_state;
-	int ref_clock = i915->dpll.ref_clks.nssc;
-	u32 p0, p1, p2, dco_freq;
+	u32 dco_freq;
 
-	p0 = pll_state->cfgcr2 & DPLL_CFGCR2_PDIV_MASK;
-	p2 = pll_state->cfgcr2 & DPLL_CFGCR2_KDIV_MASK;
+	dco_freq = ref_clock * dco_integer;
+	dco_freq += dco_fraction * ref_clock / 0x8000;
 
-	if (pll_state->cfgcr2 &  DPLL_CFGCR2_QDIV_MODE(1))
-		p1 = (pll_state->cfgcr2 & DPLL_CFGCR2_QDIV_RATIO_MASK) >> 8;
-	else
-		p1 = 1;
+	return dco_freq / (pdiv * qdiv * kdiv * 5);
+}
 
-
-	switch (p0) {
+static void skl_wrpll_decode_divs(struct drm_i915_private *i915,
+				  const struct skl_wrpll_params *wrpll_params,
+				  u32 *pdiv, u32 *qdiv, u32 *kdiv)
+{
+	switch (DPLL_CFGCR2_PDIV(wrpll_params->pdiv)) {
 	case DPLL_CFGCR2_PDIV_1:
-		p0 = 1;
+		*pdiv = 1;
 		break;
 	case DPLL_CFGCR2_PDIV_2:
-		p0 = 2;
+		*pdiv = 2;
 		break;
 	case DPLL_CFGCR2_PDIV_3:
-		p0 = 3;
+		*pdiv = 3;
 		break;
 	case DPLL_CFGCR2_PDIV_7 | (1 << DPLL_CFGCR2_PDIV_SHIFT):
 		/*
@@ -1608,38 +1608,63 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 		 * handling it the same way as PDIV_7.
 		 */
 		drm_err(&i915->drm, "Invalid WRPLL PDIV divider value, fixing it.\n");
-		p0 = 7;
+		*pdiv = 7;
 		break;
+	default:
+		MISSING_CASE(wrpll_params->pdiv);
+		fallthrough;
 	case DPLL_CFGCR2_PDIV_7:
-		p0 = 7;
+		*pdiv = 7;
 		break;
 	}
 
-	switch (p2) {
+	*qdiv = wrpll_params->qdiv_mode ? wrpll_params->qdiv_ratio : 1;
+
+	switch (DPLL_CFGCR2_KDIV(wrpll_params->kdiv)) {
+	default:
+		MISSING_CASE(wrpll_params->kdiv);
+		fallthrough;
 	case DPLL_CFGCR2_KDIV_5:
-		p2 = 5;
+		*kdiv = 5;
 		break;
 	case DPLL_CFGCR2_KDIV_2:
-		p2 = 2;
+		*kdiv = 2;
 		break;
 	case DPLL_CFGCR2_KDIV_3:
-		p2 = 3;
+		*kdiv = 3;
 		break;
 	case DPLL_CFGCR2_KDIV_1:
-		p2 = 1;
+		*kdiv = 1;
 		break;
 	}
+}
 
-	dco_freq = (pll_state->cfgcr1 & DPLL_CFGCR1_DCO_INTEGER_MASK) *
-		   ref_clock;
+static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
+				  const struct intel_shared_dpll *pll)
+{
+	const struct intel_dpll_hw_state *pll_state = &pll->state.hw_state;
+	struct skl_wrpll_params wrpll_params = { };
+	int ref_clock = i915->dpll.ref_clks.nssc;
+	u32 pdiv;
+	u32 qdiv;
+	u32 kdiv;
+	u32 dco_integer;
+	u32 dco_fraction;
 
-	dco_freq += ((pll_state->cfgcr1 & DPLL_CFGCR1_DCO_FRACTION_MASK) >> 9) *
-		    ref_clock / 0x8000;
+	wrpll_params.pdiv = (pll_state->cfgcr2 & DPLL_CFGCR2_PDIV_MASK) >> DPLL_CFGCR2_PDIV_SHIFT;
+	wrpll_params.kdiv = (pll_state->cfgcr2 & DPLL_CFGCR2_KDIV_MASK) >> DPLL_CFGCR2_KDIV_SHIFT;
 
-	if (drm_WARN_ON(&i915->drm, p0 == 0 || p1 == 0 || p2 == 0))
-		return 0;
+	wrpll_params.qdiv_mode = !!(pll_state->cfgcr2 &  DPLL_CFGCR2_QDIV_MODE(1));
+	wrpll_params.qdiv_ratio = (pll_state->cfgcr2 & DPLL_CFGCR2_QDIV_RATIO_MASK) >>
+				  DPLL_CFGCR2_QDIV_RATIO_SHIFT;
 
-	return dco_freq / (p0 * p1 * p2 * 5);
+	skl_wrpll_decode_divs(i915, &wrpll_params, &pdiv, &qdiv, &kdiv);
+
+	dco_integer = pll_state->cfgcr1 & DPLL_CFGCR1_DCO_INTEGER_MASK;
+	dco_fraction = (pll_state->cfgcr1 & DPLL_CFGCR1_DCO_FRACTION_MASK) >>
+			DPLL_CFGCR1_DCO_FRACTION_SHIFT;
+
+	return skl_wrpll_calc_freq(ref_clock, dco_integer, dco_fraction, pdiv, qdiv, kdiv);
 }
 
 static bool
@@ -2630,60 +2655,71 @@ static bool cnl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 	return true;
 }
 
-static int __cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
-				    const struct intel_shared_dpll *pll,
-				    int ref_clock)
+static void cnl_wrpll_decode_divs(const struct skl_wrpll_params *wrpll_params,
+				  u32 *pdiv, u32 *qdiv, u32 *kdiv)
 {
-	const struct intel_dpll_hw_state *pll_state = &pll->state.hw_state;
-	u32 p0, p1, p2, dco_freq;
-
-	p0 = pll_state->cfgcr1 & DPLL_CFGCR1_PDIV_MASK;
-	p2 = pll_state->cfgcr1 & DPLL_CFGCR1_KDIV_MASK;
-
-	if (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_MODE(1))
-		p1 = (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_RATIO_MASK) >>
-			DPLL_CFGCR1_QDIV_RATIO_SHIFT;
-	else
-		p1 = 1;
-
-
-	switch (p0) {
+	switch (DPLL_CFGCR1_PDIV(wrpll_params->pdiv)) {
 	case DPLL_CFGCR1_PDIV_2:
-		p0 = 2;
+		*pdiv = 2;
 		break;
 	case DPLL_CFGCR1_PDIV_3:
-		p0 = 3;
+		*pdiv = 3;
 		break;
 	case DPLL_CFGCR1_PDIV_5:
-		p0 = 5;
+		*pdiv = 5;
 		break;
+	default:
+		MISSING_CASE(wrpll_params->pdiv);
+		fallthrough;
 	case DPLL_CFGCR1_PDIV_7:
-		p0 = 7;
+		*pdiv = 7;
 		break;
 	}
 
-	switch (p2) {
+	*qdiv = wrpll_params->qdiv_mode ? wrpll_params->qdiv_ratio : 1;
+
+	switch (DPLL_CFGCR1_KDIV(wrpll_params->kdiv)) {
 	case DPLL_CFGCR1_KDIV_1:
-		p2 = 1;
+		*kdiv = 1;
 		break;
 	case DPLL_CFGCR1_KDIV_2:
-		p2 = 2;
+		*kdiv = 2;
 		break;
+	default:
+		MISSING_CASE(wrpll_params->kdiv);
+		fallthrough;
 	case DPLL_CFGCR1_KDIV_3:
-		p2 = 3;
+		*kdiv = 3;
 		break;
 	}
+}
 
-	dco_freq = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_INTEGER_MASK) *
-		   ref_clock;
+static int __cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
+				    const struct intel_shared_dpll *pll,
+				    int ref_clock)
+{
+	const struct intel_dpll_hw_state *pll_state = &pll->state.hw_state;
+	struct skl_wrpll_params wrpll_params = { };
+	u32 pdiv;
+	u32 qdiv;
+	u32 kdiv;
+	u32 dco_integer;
+	u32 dco_fraction;
 
-	dco_freq += (((pll_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
-		      DPLL_CFGCR0_DCO_FRACTION_SHIFT) * ref_clock) / 0x8000;
+	wrpll_params.pdiv = (pll_state->cfgcr1 & DPLL_CFGCR1_PDIV_MASK) >> DPLL_CFGCR1_PDIV_SHIFT;
+	wrpll_params.kdiv = (pll_state->cfgcr1 & DPLL_CFGCR1_KDIV_MASK) >> DPLL_CFGCR1_KDIV_SHIFT;
 
-	if (drm_WARN_ON(&dev_priv->drm, p0 == 0 || p1 == 0 || p2 == 0))
-		return 0;
+	wrpll_params.qdiv_mode = !!(pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_MODE(1));
+	wrpll_params.qdiv_ratio = (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_RATIO_MASK) >>
+				  DPLL_CFGCR1_QDIV_RATIO_SHIFT;
 
-	return dco_freq / (p0 * p1 * p2 * 5);
+	cnl_wrpll_decode_divs(&wrpll_params, &pdiv, &qdiv, &kdiv);
+
+	dco_integer = pll_state->cfgcr0 & DPLL_CFGCR0_DCO_INTEGER_MASK;
+	dco_fraction = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
+		       DPLL_CFGCR0_DCO_FRACTION_SHIFT;
+
+	return skl_wrpll_calc_freq(ref_clock, dco_integer, dco_fraction, pdiv, qdiv, kdiv);
 }
 
 static int cnl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f70e45bd3810..4409c712030c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10237,6 +10237,7 @@ enum skl_power_gate {
 #define _DPLL3_CFGCR1	0x6C050
 #define  DPLL_CFGCR1_FREQ_ENABLE	(1 << 31)
 #define  DPLL_CFGCR1_DCO_FRACTION_MASK	(0x7fff << 9)
+#define  DPLL_CFGCR1_DCO_FRACTION_SHIFT	9
 #define  DPLL_CFGCR1_DCO_FRACTION(x)	((x) << 9)
 #define  DPLL_CFGCR1_DCO_INTEGER_MASK	(0x1ff)
 
@@ -10244,9 +10245,11 @@ enum skl_power_gate {
 #define _DPLL2_CFGCR2	0x6C04C
 #define _DPLL3_CFGCR2	0x6C054
 #define  DPLL_CFGCR2_QDIV_RATIO_MASK	(0xff << 8)
+#define  DPLL_CFGCR2_QDIV_RATIO_SHIFT	8
 #define  DPLL_CFGCR2_QDIV_RATIO(x)	((x) << 8)
 #define  DPLL_CFGCR2_QDIV_MODE(x)	((x) << 7)
 #define  DPLL_CFGCR2_KDIV_MASK		(3 << 5)
+#define  DPLL_CFGCR2_KDIV_SHIFT		5
 #define  DPLL_CFGCR2_KDIV(x)		((x) << 5)
 #define  DPLL_CFGCR2_KDIV_5 (0 << 5)
 #define  DPLL_CFGCR2_KDIV_2 (1 << 5)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
