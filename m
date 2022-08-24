Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F58159FB18
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:19:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7F52B5267;
	Wed, 24 Aug 2022 13:18:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6046B515A
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347065; x=1692883065;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xInLJ3nNqTnvb74kh6DHMM4N4XYAhTqSDKJUxtyFZr4=;
 b=GQtWbN3wMkRdGQeyrGVQHSEFJTecHP+NS6NdzpdmTu9hcDqhH1fBBtP6
 QRPDJkoSWFpFgBLliAf81noJRWQ4+edIU04/YE1skJ/cqMwB4RJru0zLZ
 wvwzoRjLaBOz431lnrOS00RaZRrP6rSv+dlHt5gFZ7pRs6tid4B0/imzy
 uwzs0+L2Ftuwx6jGgU89ov2M4Qhce5+U2Ffx/jG0ZUFSOqYpFxtoFZ4MB
 wonwk1CPymFYmcpemF4yU7QqlXj6n+GRagZ69c57Bm7VwOkAWV4XPkig/
 sPSO0VN51t10X3oPiMLoPuwS3DcQoc3+x97Ge8ivHCEfnO8thBsMXUY2V Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="273714129"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="273714129"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:17:44 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="586428461"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga006-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:17:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:47 +0300
Message-Id: <2e4c59eff9cf6c4d4bdfce70549fa28ecdc9dd09.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 21/38] drm/i915: move and group cdclk under
 display.cdclk
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display cdclk related members under drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |   6 +-
 .../gpu/drm/i915/display/intel_backlight.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 206 +++++++++---------
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  10 +-
 .../gpu/drm/i915/display/intel_display_core.h |  14 ++
 .../drm/i915/display/intel_display_power.c    |   2 +-
 .../i915/display/intel_display_power_well.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   4 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   4 +-
 .../drm/i915/display/intel_modeset_setup.c    |   4 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   4 +-
 drivers/gpu/drm/i915/i915_drv.h               |  15 --
 15 files changed, 141 insertions(+), 142 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 861dcd2eb890..a5be4af792cb 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -202,7 +202,7 @@ bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
 	 * Should measure whether using a lower cdclk w/o IPS
 	 */
 	if (IS_BROADWELL(i915) &&
-	    crtc_state->pixel_rate > i915->max_cdclk_freq * 95 / 100)
+	    crtc_state->pixel_rate > i915->display.cdclk.max_cdclk_freq * 95 / 100)
 		return false;
 
 	return true;
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index a74fc79b7910..aacbc6da84ef 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -532,7 +532,7 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
 	h_total = crtc_state->hw.adjusted_mode.crtc_htotal;
 	pixel_clk = crtc_state->hw.adjusted_mode.crtc_clock;
 	vdsc_bpp = crtc_state->dsc.compressed_bpp;
-	cdclk = i915->cdclk.hw.cdclk;
+	cdclk = i915->display.cdclk.hw.cdclk;
 	/* fec= 0.972261, using rounding multiplier of 1000000 */
 	fec_coeff = 972261;
 	link_clk = crtc_state->port_clock;
@@ -971,7 +971,7 @@ void intel_audio_cdclk_change_post(struct drm_i915_private *i915)
 	struct aud_ts_cdclk_m_n aud_ts;
 
 	if (DISPLAY_VER(i915) >= 13) {
-		get_aud_ts_cdclk_m_n(i915->cdclk.hw.ref, i915->cdclk.hw.cdclk, &aud_ts);
+		get_aud_ts_cdclk_m_n(i915->display.cdclk.hw.ref, i915->display.cdclk.hw.cdclk, &aud_ts);
 
 		intel_de_write(i915, AUD_TS_CDCLK_N, aud_ts.n);
 		intel_de_write(i915, AUD_TS_CDCLK_M, aud_ts.m | AUD_TS_CDCLK_M_EN);
@@ -1119,7 +1119,7 @@ static int i915_audio_component_get_cdclk_freq(struct device *kdev)
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_DDI(dev_priv)))
 		return -ENODEV;
 
-	return dev_priv->cdclk.hw.cdclk;
+	return dev_priv->display.cdclk.hw.cdclk;
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 681ebcda97ad..354e2794ed92 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -1113,7 +1113,7 @@ static u32 i9xx_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 	if (IS_PINEVIEW(dev_priv))
 		clock = KHz(RUNTIME_INFO(dev_priv)->rawclk_freq);
 	else
-		clock = KHz(dev_priv->cdclk.hw.cdclk);
+		clock = KHz(dev_priv->display.cdclk.hw.cdclk);
 
 	return DIV_ROUND_CLOSEST(clock, pwm_freq_hz * 32);
 }
@@ -1131,7 +1131,7 @@ static u32 i965_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 	if (IS_G4X(dev_priv))
 		clock = KHz(RUNTIME_INFO(dev_priv)->rawclk_freq);
 	else
-		clock = KHz(dev_priv->cdclk.hw.cdclk);
+		clock = KHz(dev_priv->display.cdclk.hw.cdclk);
 
 	return DIV_ROUND_CLOSEST(clock, pwm_freq_hz * 128);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ea40c75c2986..9f8bbf9ddfa1 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -548,7 +548,7 @@ static void vlv_program_pfi_credits(struct drm_i915_private *dev_priv)
 	else
 		default_credits = PFI_CREDIT(8);
 
-	if (dev_priv->cdclk.hw.cdclk >= dev_priv->czclk_freq) {
+	if (dev_priv->display.cdclk.hw.cdclk >= dev_priv->czclk_freq) {
 		/* CHV suggested value is 31 or 63 */
 		if (IS_CHERRYVIEW(dev_priv))
 			credits = PFI_CREDIT_63;
@@ -1026,7 +1026,7 @@ static void skl_dpll0_enable(struct drm_i915_private *dev_priv, int vco)
 	if (intel_de_wait_for_set(dev_priv, LCPLL1_CTL, LCPLL_PLL_LOCK, 5))
 		drm_err(&dev_priv->drm, "DPLL0 not locked\n");
 
-	dev_priv->cdclk.hw.vco = vco;
+	dev_priv->display.cdclk.hw.vco = vco;
 
 	/* We'll want to keep using the current vco from now on. */
 	skl_set_preferred_cdclk_vco(dev_priv, vco);
@@ -1040,7 +1040,7 @@ static void skl_dpll0_disable(struct drm_i915_private *dev_priv)
 	if (intel_de_wait_for_clear(dev_priv, LCPLL1_CTL, LCPLL_PLL_LOCK, 1))
 		drm_err(&dev_priv->drm, "Couldn't disable DPLL0\n");
 
-	dev_priv->cdclk.hw.vco = 0;
+	dev_priv->display.cdclk.hw.vco = 0;
 }
 
 static u32 skl_cdclk_freq_sel(struct drm_i915_private *dev_priv,
@@ -1049,7 +1049,7 @@ static u32 skl_cdclk_freq_sel(struct drm_i915_private *dev_priv,
 	switch (cdclk) {
 	default:
 		drm_WARN_ON(&dev_priv->drm,
-			    cdclk != dev_priv->cdclk.hw.bypass);
+			    cdclk != dev_priv->display.cdclk.hw.bypass);
 		drm_WARN_ON(&dev_priv->drm, vco != 0);
 		fallthrough;
 	case 308571:
@@ -1098,13 +1098,13 @@ static void skl_set_cdclk(struct drm_i915_private *dev_priv,
 
 	freq_select = skl_cdclk_freq_sel(dev_priv, cdclk, vco);
 
-	if (dev_priv->cdclk.hw.vco != 0 &&
-	    dev_priv->cdclk.hw.vco != vco)
+	if (dev_priv->display.cdclk.hw.vco != 0 &&
+	    dev_priv->display.cdclk.hw.vco != vco)
 		skl_dpll0_disable(dev_priv);
 
 	cdclk_ctl = intel_de_read(dev_priv, CDCLK_CTL);
 
-	if (dev_priv->cdclk.hw.vco != vco) {
+	if (dev_priv->display.cdclk.hw.vco != vco) {
 		/* Wa Display #1183: skl,kbl,cfl */
 		cdclk_ctl &= ~(CDCLK_FREQ_SEL_MASK | CDCLK_FREQ_DECIMAL_MASK);
 		cdclk_ctl |= freq_select | skl_cdclk_decimal(cdclk);
@@ -1116,7 +1116,7 @@ static void skl_set_cdclk(struct drm_i915_private *dev_priv,
 	intel_de_write(dev_priv, CDCLK_CTL, cdclk_ctl);
 	intel_de_posting_read(dev_priv, CDCLK_CTL);
 
-	if (dev_priv->cdclk.hw.vco != vco)
+	if (dev_priv->display.cdclk.hw.vco != vco)
 		skl_dpll0_enable(dev_priv, vco);
 
 	/* Wa Display #1183: skl,kbl,cfl */
@@ -1151,11 +1151,11 @@ static void skl_sanitize_cdclk(struct drm_i915_private *dev_priv)
 		goto sanitize;
 
 	intel_update_cdclk(dev_priv);
-	intel_cdclk_dump_config(dev_priv, &dev_priv->cdclk.hw, "Current CDCLK");
+	intel_cdclk_dump_config(dev_priv, &dev_priv->display.cdclk.hw, "Current CDCLK");
 
 	/* Is PLL enabled and locked ? */
-	if (dev_priv->cdclk.hw.vco == 0 ||
-	    dev_priv->cdclk.hw.cdclk == dev_priv->cdclk.hw.bypass)
+	if (dev_priv->display.cdclk.hw.vco == 0 ||
+	    dev_priv->display.cdclk.hw.cdclk == dev_priv->display.cdclk.hw.bypass)
 		goto sanitize;
 
 	/* DPLL okay; verify the cdclock
@@ -1166,7 +1166,7 @@ static void skl_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	 */
 	cdctl = intel_de_read(dev_priv, CDCLK_CTL);
 	expected = (cdctl & CDCLK_FREQ_SEL_MASK) |
-		skl_cdclk_decimal(dev_priv->cdclk.hw.cdclk);
+		skl_cdclk_decimal(dev_priv->display.cdclk.hw.cdclk);
 	if (cdctl == expected)
 		/* All well; nothing to sanitize */
 		return;
@@ -1175,9 +1175,9 @@ static void skl_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	drm_dbg_kms(&dev_priv->drm, "Sanitizing cdclk programmed by pre-os\n");
 
 	/* force cdclk programming */
-	dev_priv->cdclk.hw.cdclk = 0;
+	dev_priv->display.cdclk.hw.cdclk = 0;
 	/* force full PLL disable + enable */
-	dev_priv->cdclk.hw.vco = -1;
+	dev_priv->display.cdclk.hw.vco = -1;
 }
 
 static void skl_cdclk_init_hw(struct drm_i915_private *dev_priv)
@@ -1186,19 +1186,19 @@ static void skl_cdclk_init_hw(struct drm_i915_private *dev_priv)
 
 	skl_sanitize_cdclk(dev_priv);
 
-	if (dev_priv->cdclk.hw.cdclk != 0 &&
-	    dev_priv->cdclk.hw.vco != 0) {
+	if (dev_priv->display.cdclk.hw.cdclk != 0 &&
+	    dev_priv->display.cdclk.hw.vco != 0) {
 		/*
 		 * Use the current vco as our initial
 		 * guess as to what the preferred vco is.
 		 */
 		if (dev_priv->skl_preferred_vco_freq == 0)
 			skl_set_preferred_cdclk_vco(dev_priv,
-						    dev_priv->cdclk.hw.vco);
+						    dev_priv->display.cdclk.hw.vco);
 		return;
 	}
 
-	cdclk_config = dev_priv->cdclk.hw;
+	cdclk_config = dev_priv->display.cdclk.hw;
 
 	cdclk_config.vco = dev_priv->skl_preferred_vco_freq;
 	if (cdclk_config.vco == 0)
@@ -1211,7 +1211,7 @@ static void skl_cdclk_init_hw(struct drm_i915_private *dev_priv)
 
 static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
 {
-	struct intel_cdclk_config cdclk_config = dev_priv->cdclk.hw;
+	struct intel_cdclk_config cdclk_config = dev_priv->display.cdclk.hw;
 
 	cdclk_config.cdclk = cdclk_config.bypass;
 	cdclk_config.vco = 0;
@@ -1352,35 +1352,35 @@ static const struct intel_cdclk_vals dg2_cdclk_table[] = {
 
 static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
 {
-	const struct intel_cdclk_vals *table = dev_priv->cdclk.table;
+	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
 	int i;
 
 	for (i = 0; table[i].refclk; i++)
-		if (table[i].refclk == dev_priv->cdclk.hw.ref &&
+		if (table[i].refclk == dev_priv->display.cdclk.hw.ref &&
 		    table[i].cdclk >= min_cdclk)
 			return table[i].cdclk;
 
 	drm_WARN(&dev_priv->drm, 1,
 		 "Cannot satisfy minimum cdclk %d with refclk %u\n",
-		 min_cdclk, dev_priv->cdclk.hw.ref);
+		 min_cdclk, dev_priv->display.cdclk.hw.ref);
 	return 0;
 }
 
 static int bxt_calc_cdclk_pll_vco(struct drm_i915_private *dev_priv, int cdclk)
 {
-	const struct intel_cdclk_vals *table = dev_priv->cdclk.table;
+	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
 	int i;
 
-	if (cdclk == dev_priv->cdclk.hw.bypass)
+	if (cdclk == dev_priv->display.cdclk.hw.bypass)
 		return 0;
 
 	for (i = 0; table[i].refclk; i++)
-		if (table[i].refclk == dev_priv->cdclk.hw.ref &&
+		if (table[i].refclk == dev_priv->display.cdclk.hw.ref &&
 		    table[i].cdclk == cdclk)
-			return dev_priv->cdclk.hw.ref * table[i].ratio;
+			return dev_priv->display.cdclk.hw.ref * table[i].ratio;
 
 	drm_WARN(&dev_priv->drm, 1, "cdclk %d not valid for refclk %u\n",
-		 cdclk, dev_priv->cdclk.hw.ref);
+		 cdclk, dev_priv->display.cdclk.hw.ref);
 	return 0;
 }
 
@@ -1554,12 +1554,12 @@ static void bxt_de_pll_disable(struct drm_i915_private *dev_priv)
 				    BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
 		drm_err(&dev_priv->drm, "timeout waiting for DE PLL unlock\n");
 
-	dev_priv->cdclk.hw.vco = 0;
+	dev_priv->display.cdclk.hw.vco = 0;
 }
 
 static void bxt_de_pll_enable(struct drm_i915_private *dev_priv, int vco)
 {
-	int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->cdclk.hw.ref);
+	int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->display.cdclk.hw.ref);
 
 	intel_de_rmw(dev_priv, BXT_DE_PLL_CTL,
 		     BXT_DE_PLL_RATIO_MASK, BXT_DE_PLL_RATIO(ratio));
@@ -1571,7 +1571,7 @@ static void bxt_de_pll_enable(struct drm_i915_private *dev_priv, int vco)
 				  BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
 		drm_err(&dev_priv->drm, "timeout waiting for DE PLL lock\n");
 
-	dev_priv->cdclk.hw.vco = vco;
+	dev_priv->display.cdclk.hw.vco = vco;
 }
 
 static void icl_cdclk_pll_disable(struct drm_i915_private *dev_priv)
@@ -1583,12 +1583,12 @@ static void icl_cdclk_pll_disable(struct drm_i915_private *dev_priv)
 	if (intel_de_wait_for_clear(dev_priv, BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
 		drm_err(&dev_priv->drm, "timeout waiting for CDCLK PLL unlock\n");
 
-	dev_priv->cdclk.hw.vco = 0;
+	dev_priv->display.cdclk.hw.vco = 0;
 }
 
 static void icl_cdclk_pll_enable(struct drm_i915_private *dev_priv, int vco)
 {
-	int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->cdclk.hw.ref);
+	int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->display.cdclk.hw.ref);
 	u32 val;
 
 	val = ICL_CDCLK_PLL_RATIO(ratio);
@@ -1601,12 +1601,12 @@ static void icl_cdclk_pll_enable(struct drm_i915_private *dev_priv, int vco)
 	if (intel_de_wait_for_set(dev_priv, BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
 		drm_err(&dev_priv->drm, "timeout waiting for CDCLK PLL lock\n");
 
-	dev_priv->cdclk.hw.vco = vco;
+	dev_priv->display.cdclk.hw.vco = vco;
 }
 
 static void adlp_cdclk_pll_crawl(struct drm_i915_private *dev_priv, int vco)
 {
-	int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->cdclk.hw.ref);
+	int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->display.cdclk.hw.ref);
 	u32 val;
 
 	/* Write PLL ratio without disabling */
@@ -1625,7 +1625,7 @@ static void adlp_cdclk_pll_crawl(struct drm_i915_private *dev_priv, int vco)
 	val &= ~BXT_DE_PLL_FREQ_REQ;
 	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
 
-	dev_priv->cdclk.hw.vco = vco;
+	dev_priv->display.cdclk.hw.vco = vco;
 }
 
 static u32 bxt_cdclk_cd2x_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
@@ -1655,7 +1655,7 @@ static u32 bxt_cdclk_cd2x_div_sel(struct drm_i915_private *dev_priv,
 	switch (DIV_ROUND_CLOSEST(vco, cdclk)) {
 	default:
 		drm_WARN_ON(&dev_priv->drm,
-			    cdclk != dev_priv->cdclk.hw.bypass);
+			    cdclk != dev_priv->display.cdclk.hw.bypass);
 		drm_WARN_ON(&dev_priv->drm, vco != 0);
 		fallthrough;
 	case 2:
@@ -1672,19 +1672,19 @@ static u32 bxt_cdclk_cd2x_div_sel(struct drm_i915_private *dev_priv,
 static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
 				 int cdclk)
 {
-	const struct intel_cdclk_vals *table = dev_priv->cdclk.table;
+	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
 	int i;
 
-	if (cdclk == dev_priv->cdclk.hw.bypass)
+	if (cdclk == dev_priv->display.cdclk.hw.bypass)
 		return 0;
 
 	for (i = 0; table[i].refclk; i++)
-		if (table[i].refclk == dev_priv->cdclk.hw.ref &&
+		if (table[i].refclk == dev_priv->display.cdclk.hw.ref &&
 		    table[i].cdclk == cdclk)
 			return table[i].waveform;
 
 	drm_WARN(&dev_priv->drm, 1, "cdclk %d not valid for refclk %u\n",
-		 cdclk, dev_priv->cdclk.hw.ref);
+		 cdclk, dev_priv->display.cdclk.hw.ref);
 
 	return 0xffff;
 }
@@ -1721,22 +1721,22 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0) {
-		if (dev_priv->cdclk.hw.vco != vco)
+	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0) {
+		if (dev_priv->display.cdclk.hw.vco != vco)
 			adlp_cdclk_pll_crawl(dev_priv, vco);
 	} else if (DISPLAY_VER(dev_priv) >= 11) {
-		if (dev_priv->cdclk.hw.vco != 0 &&
-		    dev_priv->cdclk.hw.vco != vco)
+		if (dev_priv->display.cdclk.hw.vco != 0 &&
+		    dev_priv->display.cdclk.hw.vco != vco)
 			icl_cdclk_pll_disable(dev_priv);
 
-		if (dev_priv->cdclk.hw.vco != vco)
+		if (dev_priv->display.cdclk.hw.vco != vco)
 			icl_cdclk_pll_enable(dev_priv, vco);
 	} else {
-		if (dev_priv->cdclk.hw.vco != 0 &&
-		    dev_priv->cdclk.hw.vco != vco)
+		if (dev_priv->display.cdclk.hw.vco != 0 &&
+		    dev_priv->display.cdclk.hw.vco != vco)
 			bxt_de_pll_disable(dev_priv);
 
-		if (dev_priv->cdclk.hw.vco != vco)
+		if (dev_priv->display.cdclk.hw.vco != vco)
 			bxt_de_pll_enable(dev_priv, vco);
 	}
 
@@ -1803,7 +1803,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		 * Can't read out the voltage level :(
 		 * Let's just assume everything is as expected.
 		 */
-		dev_priv->cdclk.hw.voltage_level = cdclk_config->voltage_level;
+		dev_priv->display.cdclk.hw.voltage_level = cdclk_config->voltage_level;
 }
 
 static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
@@ -1812,10 +1812,10 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	int cdclk, clock, vco;
 
 	intel_update_cdclk(dev_priv);
-	intel_cdclk_dump_config(dev_priv, &dev_priv->cdclk.hw, "Current CDCLK");
+	intel_cdclk_dump_config(dev_priv, &dev_priv->display.cdclk.hw, "Current CDCLK");
 
-	if (dev_priv->cdclk.hw.vco == 0 ||
-	    dev_priv->cdclk.hw.cdclk == dev_priv->cdclk.hw.bypass)
+	if (dev_priv->display.cdclk.hw.vco == 0 ||
+	    dev_priv->display.cdclk.hw.cdclk == dev_priv->display.cdclk.hw.bypass)
 		goto sanitize;
 
 	/* DPLL okay; verify the cdclock
@@ -1833,32 +1833,32 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	cdctl &= ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
 
 	/* Make sure this is a legal cdclk value for the platform */
-	cdclk = bxt_calc_cdclk(dev_priv, dev_priv->cdclk.hw.cdclk);
-	if (cdclk != dev_priv->cdclk.hw.cdclk)
+	cdclk = bxt_calc_cdclk(dev_priv, dev_priv->display.cdclk.hw.cdclk);
+	if (cdclk != dev_priv->display.cdclk.hw.cdclk)
 		goto sanitize;
 
 	/* Make sure the VCO is correct for the cdclk */
 	vco = bxt_calc_cdclk_pll_vco(dev_priv, cdclk);
-	if (vco != dev_priv->cdclk.hw.vco)
+	if (vco != dev_priv->display.cdclk.hw.vco)
 		goto sanitize;
 
 	expected = skl_cdclk_decimal(cdclk);
 
 	/* Figure out what CD2X divider we should be using for this cdclk */
 	if (has_cdclk_squasher(dev_priv))
-		clock = dev_priv->cdclk.hw.vco / 2;
+		clock = dev_priv->display.cdclk.hw.vco / 2;
 	else
-		clock = dev_priv->cdclk.hw.cdclk;
+		clock = dev_priv->display.cdclk.hw.cdclk;
 
 	expected |= bxt_cdclk_cd2x_div_sel(dev_priv, clock,
-					   dev_priv->cdclk.hw.vco);
+					   dev_priv->display.cdclk.hw.vco);
 
 	/*
 	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
 	 * enable otherwise.
 	 */
 	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
-	    dev_priv->cdclk.hw.cdclk >= 500000)
+	    dev_priv->display.cdclk.hw.cdclk >= 500000)
 		expected |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
 
 	if (cdctl == expected)
@@ -1869,10 +1869,10 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	drm_dbg_kms(&dev_priv->drm, "Sanitizing cdclk programmed by pre-os\n");
 
 	/* force cdclk programming */
-	dev_priv->cdclk.hw.cdclk = 0;
+	dev_priv->display.cdclk.hw.cdclk = 0;
 
 	/* force full PLL disable + enable */
-	dev_priv->cdclk.hw.vco = -1;
+	dev_priv->display.cdclk.hw.vco = -1;
 }
 
 static void bxt_cdclk_init_hw(struct drm_i915_private *dev_priv)
@@ -1881,11 +1881,11 @@ static void bxt_cdclk_init_hw(struct drm_i915_private *dev_priv)
 
 	bxt_sanitize_cdclk(dev_priv);
 
-	if (dev_priv->cdclk.hw.cdclk != 0 &&
-	    dev_priv->cdclk.hw.vco != 0)
+	if (dev_priv->display.cdclk.hw.cdclk != 0 &&
+	    dev_priv->display.cdclk.hw.vco != 0)
 		return;
 
-	cdclk_config = dev_priv->cdclk.hw;
+	cdclk_config = dev_priv->display.cdclk.hw;
 
 	/*
 	 * FIXME:
@@ -1902,7 +1902,7 @@ static void bxt_cdclk_init_hw(struct drm_i915_private *dev_priv)
 
 static void bxt_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
 {
-	struct intel_cdclk_config cdclk_config = dev_priv->cdclk.hw;
+	struct intel_cdclk_config cdclk_config = dev_priv->display.cdclk.hw;
 
 	cdclk_config.cdclk = cdclk_config.bypass;
 	cdclk_config.vco = 0;
@@ -1916,7 +1916,7 @@ static void bxt_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
  * intel_cdclk_init_hw - Initialize CDCLK hardware
  * @i915: i915 device
  *
- * Initialize CDCLK. This consists mainly of initializing dev_priv->cdclk.hw and
+ * Initialize CDCLK. This consists mainly of initializing dev_priv->display.cdclk.hw and
  * sanitizing the state of the hardware if needed. This is generally done only
  * during the display core initialization sequence, after which the DMC will
  * take care of turning CDCLK off/on as needed.
@@ -2077,7 +2077,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 {
 	struct intel_encoder *encoder;
 
-	if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
+	if (!intel_cdclk_changed(&dev_priv->display.cdclk.hw, cdclk_config))
 		return;
 
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->display.funcs.cdclk->set_cdclk))
@@ -2124,9 +2124,9 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	intel_audio_cdclk_change_post(dev_priv);
 
 	if (drm_WARN(&dev_priv->drm,
-		     intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config),
+		     intel_cdclk_changed(&dev_priv->display.cdclk.hw, cdclk_config),
 		     "cdclk state doesn't match!\n")) {
-		intel_cdclk_dump_config(dev_priv, &dev_priv->cdclk.hw, "[hw state]");
+		intel_cdclk_dump_config(dev_priv, &dev_priv->display.cdclk.hw, "[hw state]");
 		intel_cdclk_dump_config(dev_priv, cdclk_config, "[sw state]");
 	}
 }
@@ -2315,7 +2315,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 		 */
 		min_cdclk = max_t(int, min_cdclk,
 				  min_t(int, crtc_state->pixel_rate,
-					dev_priv->max_cdclk_freq));
+					dev_priv->display.cdclk.max_cdclk_freq));
 	}
 
 	return min_cdclk;
@@ -2368,10 +2368,10 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 	for_each_pipe(dev_priv, pipe)
 		min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);
 
-	if (min_cdclk > dev_priv->max_cdclk_freq) {
+	if (min_cdclk > dev_priv->display.cdclk.max_cdclk_freq) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
-			    min_cdclk, dev_priv->max_cdclk_freq);
+			    min_cdclk, dev_priv->display.cdclk.max_cdclk_freq);
 		return -EINVAL;
 	}
 
@@ -2643,7 +2643,7 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_global_state *cdclk_state;
 
-	cdclk_state = intel_atomic_get_global_obj_state(state, &dev_priv->cdclk.obj);
+	cdclk_state = intel_atomic_get_global_obj_state(state, &dev_priv->display.cdclk.obj);
 	if (IS_ERR(cdclk_state))
 		return ERR_CAST(cdclk_state);
 
@@ -2693,7 +2693,7 @@ int intel_cdclk_init(struct drm_i915_private *dev_priv)
 	if (!cdclk_state)
 		return -ENOMEM;
 
-	intel_atomic_global_obj_init(dev_priv, &dev_priv->cdclk.obj,
+	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.cdclk.obj,
 				     &cdclk_state->base, &intel_cdclk_funcs);
 
 	return 0;
@@ -2799,7 +2799,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 
 static int intel_compute_max_dotclk(struct drm_i915_private *dev_priv)
 {
-	int max_cdclk_freq = dev_priv->max_cdclk_freq;
+	int max_cdclk_freq = dev_priv->display.cdclk.max_cdclk_freq;
 
 	if (DISPLAY_VER(dev_priv) >= 10)
 		return 2 * max_cdclk_freq;
@@ -2825,19 +2825,19 @@ static int intel_compute_max_dotclk(struct drm_i915_private *dev_priv)
 void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 {
 	if (IS_JSL_EHL(dev_priv)) {
-		if (dev_priv->cdclk.hw.ref == 24000)
-			dev_priv->max_cdclk_freq = 552000;
+		if (dev_priv->display.cdclk.hw.ref == 24000)
+			dev_priv->display.cdclk.max_cdclk_freq = 552000;
 		else
-			dev_priv->max_cdclk_freq = 556800;
+			dev_priv->display.cdclk.max_cdclk_freq = 556800;
 	} else if (DISPLAY_VER(dev_priv) >= 11) {
-		if (dev_priv->cdclk.hw.ref == 24000)
-			dev_priv->max_cdclk_freq = 648000;
+		if (dev_priv->display.cdclk.hw.ref == 24000)
+			dev_priv->display.cdclk.max_cdclk_freq = 648000;
 		else
-			dev_priv->max_cdclk_freq = 652800;
+			dev_priv->display.cdclk.max_cdclk_freq = 652800;
 	} else if (IS_GEMINILAKE(dev_priv)) {
-		dev_priv->max_cdclk_freq = 316800;
+		dev_priv->display.cdclk.max_cdclk_freq = 316800;
 	} else if (IS_BROXTON(dev_priv)) {
-		dev_priv->max_cdclk_freq = 624000;
+		dev_priv->display.cdclk.max_cdclk_freq = 624000;
 	} else if (DISPLAY_VER(dev_priv) == 9) {
 		u32 limit = intel_de_read(dev_priv, SKL_DFSM) & SKL_DFSM_CDCLK_LIMIT_MASK;
 		int max_cdclk, vco;
@@ -2859,7 +2859,7 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 		else
 			max_cdclk = 308571;
 
-		dev_priv->max_cdclk_freq = skl_calc_cdclk(max_cdclk, vco);
+		dev_priv->display.cdclk.max_cdclk_freq = skl_calc_cdclk(max_cdclk, vco);
 	} else if (IS_BROADWELL(dev_priv))  {
 		/*
 		 * FIXME with extra cooling we can allow
@@ -2868,26 +2868,26 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 		 * available? PCI ID, VTB, something else?
 		 */
 		if (intel_de_read(dev_priv, FUSE_STRAP) & HSW_CDCLK_LIMIT)
-			dev_priv->max_cdclk_freq = 450000;
+			dev_priv->display.cdclk.max_cdclk_freq = 450000;
 		else if (IS_BDW_ULX(dev_priv))
-			dev_priv->max_cdclk_freq = 450000;
+			dev_priv->display.cdclk.max_cdclk_freq = 450000;
 		else if (IS_BDW_ULT(dev_priv))
-			dev_priv->max_cdclk_freq = 540000;
+			dev_priv->display.cdclk.max_cdclk_freq = 540000;
 		else
-			dev_priv->max_cdclk_freq = 675000;
+			dev_priv->display.cdclk.max_cdclk_freq = 675000;
 	} else if (IS_CHERRYVIEW(dev_priv)) {
-		dev_priv->max_cdclk_freq = 320000;
+		dev_priv->display.cdclk.max_cdclk_freq = 320000;
 	} else if (IS_VALLEYVIEW(dev_priv)) {
-		dev_priv->max_cdclk_freq = 400000;
+		dev_priv->display.cdclk.max_cdclk_freq = 400000;
 	} else {
 		/* otherwise assume cdclk is fixed */
-		dev_priv->max_cdclk_freq = dev_priv->cdclk.hw.cdclk;
+		dev_priv->display.cdclk.max_cdclk_freq = dev_priv->display.cdclk.hw.cdclk;
 	}
 
 	dev_priv->max_dotclk_freq = intel_compute_max_dotclk(dev_priv);
 
 	drm_dbg(&dev_priv->drm, "Max CD clock rate: %d kHz\n",
-		dev_priv->max_cdclk_freq);
+		dev_priv->display.cdclk.max_cdclk_freq);
 
 	drm_dbg(&dev_priv->drm, "Max dotclock rate: %d kHz\n",
 		dev_priv->max_dotclk_freq);
@@ -2901,7 +2901,7 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
  */
 void intel_update_cdclk(struct drm_i915_private *dev_priv)
 {
-	intel_cdclk_get_cdclk(dev_priv, &dev_priv->cdclk.hw);
+	intel_cdclk_get_cdclk(dev_priv, &dev_priv->display.cdclk.hw);
 
 	/*
 	 * 9:0 CMBUS [sic] CDCLK frequency (cdfreq):
@@ -2911,7 +2911,7 @@ void intel_update_cdclk(struct drm_i915_private *dev_priv)
 	 */
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		intel_de_write(dev_priv, GMBUSFREQ_VLV,
-			       DIV_ROUND_UP(dev_priv->cdclk.hw.cdclk, 1000));
+			       DIV_ROUND_UP(dev_priv->display.cdclk.hw.cdclk, 1000));
 }
 
 static int dg1_rawclk(struct drm_i915_private *dev_priv)
@@ -3188,32 +3188,32 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 {
 	if (IS_DG2(dev_priv)) {
 		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
-		dev_priv->cdclk.table = dg2_cdclk_table;
+		dev_priv->display.cdclk.table = dg2_cdclk_table;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
 		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
 		/* Wa_22011320316:adl-p[a0] */
 		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
-			dev_priv->cdclk.table = adlp_a_step_cdclk_table;
+			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
 		else
-			dev_priv->cdclk.table = adlp_cdclk_table;
+			dev_priv->display.cdclk.table = adlp_cdclk_table;
 	} else if (IS_ROCKETLAKE(dev_priv)) {
 		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
-		dev_priv->cdclk.table = rkl_cdclk_table;
+		dev_priv->display.cdclk.table = rkl_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
-		dev_priv->cdclk.table = icl_cdclk_table;
+		dev_priv->display.cdclk.table = icl_cdclk_table;
 	} else if (IS_JSL_EHL(dev_priv)) {
 		dev_priv->display.funcs.cdclk = &ehl_cdclk_funcs;
-		dev_priv->cdclk.table = icl_cdclk_table;
+		dev_priv->display.cdclk.table = icl_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		dev_priv->display.funcs.cdclk = &icl_cdclk_funcs;
-		dev_priv->cdclk.table = icl_cdclk_table;
+		dev_priv->display.cdclk.table = icl_cdclk_table;
 	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
 		dev_priv->display.funcs.cdclk = &bxt_cdclk_funcs;
 		if (IS_GEMINILAKE(dev_priv))
-			dev_priv->cdclk.table = glk_cdclk_table;
+			dev_priv->display.cdclk.table = glk_cdclk_table;
 		else
-			dev_priv->cdclk.table = bxt_cdclk_table;
+			dev_priv->display.cdclk.table = bxt_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) == 9) {
 		dev_priv->display.funcs.cdclk = &skl_cdclk_funcs;
 	} else if (IS_BROADWELL(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index b535cf6a7d9e..c674879a84a5 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -77,9 +77,9 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
 
 #define to_intel_cdclk_state(x) container_of((x), struct intel_cdclk_state, base)
 #define intel_atomic_get_old_cdclk_state(state) \
-	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))
+	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
 #define intel_atomic_get_new_cdclk_state(state) \
-	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))
+	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
 
 int intel_cdclk_init(struct drm_i915_private *dev_priv);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 41be7e76a921..aabdcafc04c7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2658,7 +2658,7 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
 
 	if (DISPLAY_VER(i915) < 4) {
-		clock_limit = i915->max_cdclk_freq * 9 / 10;
+		clock_limit = i915->display.cdclk.max_cdclk_freq * 9 / 10;
 
 		/*
 		 * Enable double wide mode when the dot clock
@@ -8394,11 +8394,11 @@ void intel_modeset_init_hw(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
-	cdclk_state = to_intel_cdclk_state(i915->cdclk.obj.state);
+	cdclk_state = to_intel_cdclk_state(i915->display.cdclk.obj.state);
 
 	intel_update_cdclk(i915);
-	intel_cdclk_dump_config(i915, &i915->cdclk.hw, "Current CDCLK");
-	cdclk_state->logical = cdclk_state->actual = i915->cdclk.hw;
+	intel_cdclk_dump_config(i915, &i915->display.cdclk.hw, "Current CDCLK");
+	cdclk_state->logical = cdclk_state->actual = i915->display.cdclk.hw;
 }
 
 static int sanitize_watermarks_add_affected(struct drm_atomic_state *state)
@@ -8767,7 +8767,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 
 	intel_hdcp_component_init(i915);
 
-	if (i915->max_cdclk_freq == 0)
+	if (i915->display.cdclk.max_cdclk_freq == 0)
 		intel_update_max_cdclk(i915);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 4257555fcc3a..88e6bc61f5e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -11,6 +11,7 @@
 #include <linux/wait.h>
 #include <linux/workqueue.h>
 
+#include "intel_cdclk.h"
 #include "intel_display.h"
 #include "intel_dmc.h"
 #include "intel_dpll_mgr.h"
@@ -25,6 +26,7 @@ struct i915_hdcp_comp_master;
 struct intel_atomic_state;
 struct intel_audio_funcs;
 struct intel_cdclk_funcs;
+struct intel_cdclk_vals;
 struct intel_color_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -230,6 +232,18 @@ struct intel_display {
 		} max[6];
 	} bw;
 
+	struct {
+		/* The current hardware cdclk configuration */
+		struct intel_cdclk_config hw;
+
+		/* cdclk, divider, and ratio table from bspec */
+		const struct intel_cdclk_vals *table;
+
+		struct intel_global_obj obj;
+
+		unsigned int max_cdclk_freq;
+	} cdclk;
+
 	struct {
 		/* list of fbdev register on this device */
 		struct intel_fbdev *fbdev;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 31962a8fee3a..167e210c7101 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1310,7 +1310,7 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
 	intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
 
 	intel_update_cdclk(dev_priv);
-	intel_cdclk_dump_config(dev_priv, &dev_priv->cdclk.hw, "Current CDCLK");
+	intel_cdclk_dump_config(dev_priv, &dev_priv->display.cdclk.hw, "Current CDCLK");
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index e442055f1d6c..7482580f62fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -972,7 +972,7 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
+		    intel_cdclk_needs_modeset(&dev_priv->display.cdclk.hw,
 					      &cdclk_config));
 
 	gen9_assert_dbuf_enabled(dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6cb695e506f5..9a230857ca63 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -720,7 +720,7 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 
 	if (bigjoiner) {
 		u32 max_bpp_bigjoiner =
-			i915->max_cdclk_freq * 48 /
+			i915->display.cdclk.max_cdclk_freq * 48 /
 			intel_dp_mode_to_fec_clock(mode_clock);
 
 		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
@@ -1546,7 +1546,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * is greater than the maximum Cdclock and if slice count is even
 	 * then we need to use 2 VDSC instances.
 	 */
-	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
+	if (adjusted_mode->crtc_clock > dev_priv->display.cdclk.max_cdclk_freq ||
 	    pipe_config->bigjoiner_pipes) {
 		if (pipe_config->dsc.slice_count < 2) {
 			drm_dbg_kms(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 227fbee88b89..f2ad1d09ab43 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -86,7 +86,7 @@ static u32 ilk_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
 	 * divide by 2000 and use that
 	 */
 	if (dig_port->aux_ch == AUX_CH_A)
-		freq = dev_priv->cdclk.hw.cdclk;
+		freq = dev_priv->display.cdclk.hw.cdclk;
 	else
 		freq = RUNTIME_INFO(dev_priv)->rawclk_freq;
 	return DIV_ROUND_CLOSEST(freq, 2000);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index bbe142056c7c..d324bc8b5ef0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1858,7 +1858,7 @@ static int skl_ddi_pll_get_freq(struct drm_i915_private *i915,
 static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
 {
 	/* No SSC ref */
-	i915->display.dpll.ref_clks.nssc = i915->cdclk.hw.ref;
+	i915->display.dpll.ref_clks.nssc = i915->display.cdclk.hw.ref;
 }
 
 static void skl_dump_hw_state(struct drm_i915_private *dev_priv,
@@ -3967,7 +3967,7 @@ static void mg_pll_disable(struct drm_i915_private *dev_priv,
 static void icl_update_dpll_ref_clks(struct drm_i915_private *i915)
 {
 	/* No SSC ref */
-	i915->display.dpll.ref_clks.nssc = i915->cdclk.hw.ref;
+	i915->display.dpll.ref_clks.nssc = i915->display.cdclk.hw.ref;
 }
 
 static void icl_dump_hw_state(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 5010a18fd993..def782794184 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -32,7 +32,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	struct intel_bw_state *bw_state =
 		to_intel_bw_state(i915->display.bw.obj.state);
 	struct intel_cdclk_state *cdclk_state =
-		to_intel_cdclk_state(i915->cdclk.obj.state);
+		to_intel_cdclk_state(i915->display.cdclk.obj.state);
 	struct intel_dbuf_state *dbuf_state =
 		to_intel_dbuf_state(i915->dbuf.obj.state);
 	struct intel_crtc_state *crtc_state =
@@ -415,7 +415,7 @@ static void readout_plane_state(struct drm_i915_private *i915)
 static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 {
 	struct intel_cdclk_state *cdclk_state =
-		to_intel_cdclk_state(i915->cdclk.obj.state);
+		to_intel_cdclk_state(i915->display.cdclk.obj.state);
 	struct intel_dbuf_state *dbuf_state =
 		to_intel_dbuf_state(i915->dbuf.obj.state);
 	enum pipe pipe;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 40bdd4cb629f..108b9e76c32e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -504,8 +504,8 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
 		drm_puts(p, "no P-state info available\n");
 	}
 
-	drm_printf(p, "Current CD clock frequency: %d kHz\n", i915->cdclk.hw.cdclk);
-	drm_printf(p, "Max CD clock frequency: %d kHz\n", i915->max_cdclk_freq);
+	drm_printf(p, "Current CD clock frequency: %d kHz\n", i915->display.cdclk.hw.cdclk);
+	drm_printf(p, "Max CD clock frequency: %d kHz\n", i915->display.cdclk.max_cdclk_freq);
 	drm_printf(p, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_freq);
 
 	intel_runtime_pm_put(uncore->rpm, wakeref);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index fe3f352b0f9c..459814b98e7e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -37,7 +37,6 @@
 #include <drm/drm_connector.h>
 #include <drm/ttm/ttm_device.h>
 
-#include "display/intel_cdclk.h"
 #include "display/intel_display.h"
 #include "display/intel_display_core.h"
 #include "display/intel_display_power.h"
@@ -74,9 +73,6 @@
 struct drm_i915_clock_gating_funcs;
 struct drm_i915_gem_object;
 struct drm_i915_private;
-struct intel_cdclk_config;
-struct intel_cdclk_state;
-struct intel_cdclk_vals;
 struct intel_connector;
 struct intel_dp;
 struct intel_encoder;
@@ -338,23 +334,12 @@ struct drm_i915_private {
 
 	unsigned int fsb_freq, mem_freq, is_ddr3;
 	unsigned int skl_preferred_vco_freq;
-	unsigned int max_cdclk_freq;
 
 	unsigned int max_dotclk_freq;
 	unsigned int hpll_freq;
 	unsigned int fdi_pll_freq;
 	unsigned int czclk_freq;
 
-	struct {
-		/* The current hardware cdclk configuration */
-		struct intel_cdclk_config hw;
-
-		/* cdclk, divider, and ratio table from bspec */
-		const struct intel_cdclk_vals *table;
-
-		struct intel_global_obj obj;
-	} cdclk;
-
 	struct {
 		/* The current hardware dbuf configuration */
 		u8 enabled_slices;
-- 
2.34.1

