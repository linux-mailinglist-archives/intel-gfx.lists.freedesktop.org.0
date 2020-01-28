Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F294814C08A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 20:04:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A9A56E108;
	Tue, 28 Jan 2020 19:04:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D86E86E062;
 Tue, 28 Jan 2020 19:04:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 10:27:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="310817191"
Received: from plaxmina-desktop.iind.intel.com ([10.145.162.62])
 by fmsmga001.fm.intel.com with ESMTP; 28 Jan 2020 10:27:47 -0800
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@linux.intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Tue, 28 Jan 2020 23:45:45 +0530
Message-Id: <20200128181603.27767-4-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200128181603.27767-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200128181603.27767-1-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 03/21] drm/i915/display/cdclk: Make WARN* drm
 specific where drm_priv ptr is available
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

drm specific WARN* calls include device information in the
backtrace, so we know what device the warnings originate from.

Covert all the calls of WARN* with device specific drm_WARN*
variants in functions where drm_i915_private struct pointer is readily
available.

The conversion was done automatically with below coccinelle semantic
patch. checkpatch errors/warnings are fixed manually.

@rule1@
identifier func, T;
@@
func(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-WARN(
+drm_WARN(&T->drm,
...)
|
-WARN_ON(
+drm_WARN_ON(&T->drm,
...)
|
-WARN_ONCE(
+drm_WARN_ONCE(&T->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&T->drm,
...)
)
...+>
}

@rule2@
identifier func, T;
@@
func(struct drm_i915_private *T,...) {
<+...
(
-WARN(
+drm_WARN(&T->drm,
...)
|
-WARN_ON(
+drm_WARN_ON(&T->drm,
...)
|
-WARN_ONCE(
+drm_WARN_ONCE(&T->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&T->drm,
...)
)
...+>
}

Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 81 +++++++++++++---------
 1 file changed, 47 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index e17b5a444887..3e80adee9b89 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -525,7 +525,8 @@ static void vlv_program_pfi_credits(struct drm_i915_private *dev_priv)
 	 * FIXME is this guaranteed to clear
 	 * immediately or should we poll for it?
 	 */
-	WARN_ON(intel_de_read(dev_priv, GCI_CONTROL) & PFI_CREDIT_RESEND);
+	drm_WARN_ON(&dev_priv->drm,
+		    intel_de_read(dev_priv, GCI_CONTROL) & PFI_CREDIT_RESEND);
 }
 
 static void vlv_set_cdclk(struct drm_i915_private *dev_priv,
@@ -727,12 +728,14 @@ static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
 	u32 val;
 	int ret;
 
-	if (WARN((intel_de_read(dev_priv, LCPLL_CTL) &
-		  (LCPLL_PLL_DISABLE | LCPLL_PLL_LOCK |
-		   LCPLL_CD_CLOCK_DISABLE | LCPLL_ROOT_CD_CLOCK_DISABLE |
-		   LCPLL_CD2X_CLOCK_DISABLE | LCPLL_POWER_DOWN_ALLOW |
-		   LCPLL_CD_SOURCE_FCLK)) != LCPLL_PLL_LOCK,
-		 "trying to change cdclk frequency with cdclk not enabled\n"))
+	if (drm_WARN(&dev_priv->drm, (intel_de_read(dev_priv, LCPLL_CTL) &
+				      (LCPLL_PLL_DISABLE | LCPLL_PLL_LOCK |
+				       LCPLL_CD_CLOCK_DISABLE |
+				       LCPLL_ROOT_CD_CLOCK_DISABLE |
+				       LCPLL_CD2X_CLOCK_DISABLE |
+				       LCPLL_POWER_DOWN_ALLOW |
+				       LCPLL_CD_SOURCE_FCLK)) != LCPLL_PLL_LOCK,
+		     "trying to change cdclk frequency with cdclk not enabled\n"))
 		return;
 
 	ret = sandybridge_pcode_write(dev_priv,
@@ -842,15 +845,16 @@ static void skl_dpll0_update(struct drm_i915_private *dev_priv,
 	if ((val & LCPLL_PLL_ENABLE) == 0)
 		return;
 
-	if (WARN_ON((val & LCPLL_PLL_LOCK) == 0))
+	if (drm_WARN_ON(&dev_priv->drm, (val & LCPLL_PLL_LOCK) == 0))
 		return;
 
 	val = intel_de_read(dev_priv, DPLL_CTRL1);
 
-	if (WARN_ON((val & (DPLL_CTRL1_HDMI_MODE(SKL_DPLL0) |
-			    DPLL_CTRL1_SSC(SKL_DPLL0) |
-			    DPLL_CTRL1_OVERRIDE(SKL_DPLL0))) !=
-		    DPLL_CTRL1_OVERRIDE(SKL_DPLL0)))
+	if (drm_WARN_ON(&dev_priv->drm,
+			(val & (DPLL_CTRL1_HDMI_MODE(SKL_DPLL0) |
+				DPLL_CTRL1_SSC(SKL_DPLL0) |
+				DPLL_CTRL1_OVERRIDE(SKL_DPLL0))) !=
+			DPLL_CTRL1_OVERRIDE(SKL_DPLL0)))
 		return;
 
 	switch (val & DPLL_CTRL1_LINK_RATE_MASK(SKL_DPLL0)) {
@@ -952,7 +956,7 @@ static void skl_dpll0_enable(struct drm_i915_private *dev_priv, int vco)
 {
 	u32 val;
 
-	WARN_ON(vco != 8100000 && vco != 8640000);
+	drm_WARN_ON(&dev_priv->drm, vco != 8100000 && vco != 8640000);
 
 	/*
 	 * We always enable DPLL0 with the lowest link rate possible, but still
@@ -1017,7 +1021,8 @@ static void skl_set_cdclk(struct drm_i915_private *dev_priv,
 	 * use the corresponding VCO freq as that always leads to using the
 	 * minimum 308MHz CDCLK.
 	 */
-	WARN_ON_ONCE(IS_SKYLAKE(dev_priv) && vco == 8640000);
+	drm_WARN_ON_ONCE(&dev_priv->drm,
+			 IS_SKYLAKE(dev_priv) && vco == 8640000);
 
 	ret = skl_pcode_request(dev_priv, SKL_PCODE_CDCLK_CONTROL,
 				SKL_CDCLK_PREPARE_FOR_CHANGE,
@@ -1032,8 +1037,9 @@ static void skl_set_cdclk(struct drm_i915_private *dev_priv,
 	/* Choose frequency for this cdclk */
 	switch (cdclk) {
 	default:
-		WARN_ON(cdclk != dev_priv->cdclk.hw.bypass);
-		WARN_ON(vco != 0);
+		drm_WARN_ON(&dev_priv->drm,
+			    cdclk != dev_priv->cdclk.hw.bypass);
+		drm_WARN_ON(&dev_priv->drm, vco != 0);
 		/* fall through */
 	case 308571:
 	case 337500:
@@ -1235,8 +1241,9 @@ static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
 		    table[i].cdclk >= min_cdclk)
 			return table[i].cdclk;
 
-	WARN(1, "Cannot satisfy minimum cdclk %d with refclk %u\n",
-	     min_cdclk, dev_priv->cdclk.hw.ref);
+	drm_WARN(&dev_priv->drm, 1,
+		 "Cannot satisfy minimum cdclk %d with refclk %u\n",
+		 min_cdclk, dev_priv->cdclk.hw.ref);
 	return 0;
 }
 
@@ -1253,8 +1260,8 @@ static int bxt_calc_cdclk_pll_vco(struct drm_i915_private *dev_priv, int cdclk)
 		    table[i].cdclk == cdclk)
 			return dev_priv->cdclk.hw.ref * table[i].ratio;
 
-	WARN(1, "cdclk %d not valid for refclk %u\n",
-	     cdclk, dev_priv->cdclk.hw.ref);
+	drm_WARN(&dev_priv->drm, 1, "cdclk %d not valid for refclk %u\n",
+		 cdclk, dev_priv->cdclk.hw.ref);
 	return 0;
 }
 
@@ -1387,15 +1394,17 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 		div = 2;
 		break;
 	case BXT_CDCLK_CD2X_DIV_SEL_1_5:
-		WARN(IS_GEMINILAKE(dev_priv) || INTEL_GEN(dev_priv) >= 10,
-		     "Unsupported divider\n");
+		drm_WARN(&dev_priv->drm,
+			 IS_GEMINILAKE(dev_priv) || INTEL_GEN(dev_priv) >= 10,
+			 "Unsupported divider\n");
 		div = 3;
 		break;
 	case BXT_CDCLK_CD2X_DIV_SEL_2:
 		div = 4;
 		break;
 	case BXT_CDCLK_CD2X_DIV_SEL_4:
-		WARN(INTEL_GEN(dev_priv) >= 10, "Unsupported divider\n");
+		drm_WARN(&dev_priv->drm, INTEL_GEN(dev_priv) >= 10,
+			 "Unsupported divider\n");
 		div = 8;
 		break;
 	default:
@@ -1535,22 +1544,25 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	/* cdclk = vco / 2 / div{1,1.5,2,4} */
 	switch (DIV_ROUND_CLOSEST(vco, cdclk)) {
 	default:
-		WARN_ON(cdclk != dev_priv->cdclk.hw.bypass);
-		WARN_ON(vco != 0);
+		drm_WARN_ON(&dev_priv->drm,
+			    cdclk != dev_priv->cdclk.hw.bypass);
+		drm_WARN_ON(&dev_priv->drm, vco != 0);
 		/* fall through */
 	case 2:
 		divider = BXT_CDCLK_CD2X_DIV_SEL_1;
 		break;
 	case 3:
-		WARN(IS_GEMINILAKE(dev_priv) || INTEL_GEN(dev_priv) >= 10,
-		     "Unsupported divider\n");
+		drm_WARN(&dev_priv->drm,
+			 IS_GEMINILAKE(dev_priv) || INTEL_GEN(dev_priv) >= 10,
+			 "Unsupported divider\n");
 		divider = BXT_CDCLK_CD2X_DIV_SEL_1_5;
 		break;
 	case 4:
 		divider = BXT_CDCLK_CD2X_DIV_SEL_2;
 		break;
 	case 8:
-		WARN(INTEL_GEN(dev_priv) >= 10, "Unsupported divider\n");
+		drm_WARN(&dev_priv->drm, INTEL_GEN(dev_priv) >= 10,
+			 "Unsupported divider\n");
 		divider = BXT_CDCLK_CD2X_DIV_SEL_4;
 		break;
 	}
@@ -1864,15 +1876,16 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_state))
 		return;
 
-	if (WARN_ON_ONCE(!dev_priv->display.set_cdclk))
+	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->display.set_cdclk))
 		return;
 
 	intel_dump_cdclk_state(cdclk_state, "Changing CDCLK to");
 
 	dev_priv->display.set_cdclk(dev_priv, cdclk_state, pipe);
 
-	if (WARN(intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_state),
-		 "cdclk state doesn't match!\n")) {
+	if (drm_WARN(&dev_priv->drm,
+		     intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_state),
+		     "cdclk state doesn't match!\n")) {
 		intel_dump_cdclk_state(&dev_priv->cdclk.hw, "[hw state]");
 		intel_dump_cdclk_state(cdclk_state, "[sw state]");
 	}
@@ -2478,7 +2491,7 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 		int max_cdclk, vco;
 
 		vco = dev_priv->skl_preferred_vco_freq;
-		WARN_ON(vco != 8100000 && vco != 8640000);
+		drm_WARN_ON(&dev_priv->drm, vco != 8100000 && vco != 8640000);
 
 		/*
 		 * Use the lower (vco 8640) cdclk values as a
@@ -2731,8 +2744,8 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 	else if (IS_I845G(dev_priv))
 		dev_priv->display.get_cdclk = fixed_200mhz_get_cdclk;
 	else { /* 830 */
-		WARN(!IS_I830(dev_priv),
-		     "Unknown platform. Assuming 133 MHz CDCLK\n");
+		drm_WARN(&dev_priv->drm, !IS_I830(dev_priv),
+			 "Unknown platform. Assuming 133 MHz CDCLK\n");
 		dev_priv->display.get_cdclk = fixed_133mhz_get_cdclk;
 	}
 }
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
