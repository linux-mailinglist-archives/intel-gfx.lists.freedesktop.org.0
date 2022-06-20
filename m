Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8F7552321
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:53:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96FAF10EE00;
	Mon, 20 Jun 2022 17:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57E9110EDFF
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655747595; x=1687283595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rZ+COG/u0+yP8IFpOR1N61VD/LCv/JYfcvJ89puVgfY=;
 b=jR4e8P4fAgOPdfCqj4IMb8JRDALNEt3RJ81htyMOYP3AmKiTHo1a9Gh3
 hexptRSMH+US/1Q/+UcZhtGH1FYE/jyZ9WZKYsW+PF5QXruwj2UoXiPPc
 X5zzBe1bXRMNV3S1qzD7lMwtrHXIv25tTKzejHJ52vbi5XpehDFBoU9ZR
 hMMUaPMeq5dY6LtPoAI/M/ru1V+wbkdw1uBYH3ZuaDIRhb+Z3lI0CCdba
 e5LtlBNUfXl0JCJ0r7jSNlJ11Q/DAyIq/oes6bRgHxg5rgbo+zGIUmPll
 m3+q+nWq/VqrgIQ0fncOaP1JUnbEVFM12eETO1z/sz/Ab/pDhDX1E75wG g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="279998516"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="279998516"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:52:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="614466661"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga008.jf.intel.com with SMTP; 20 Jun 2022 10:52:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:52:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 20:52:00 +0300
Message-Id: <20220620175210.28788-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 07/17] drm/i915: Feed the DPLL output freq
 back into crtc_state
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fill port_clock and hw.adjusted_mode.crtc_clock with the actual
frequency we're going to be getting from the hardware. This will
let us accurately compute all derived state that depends on those.

v2: Reintroduce iCLKIP WARN
v3: Try to deal with VLV/BXT DSI PLL as well

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      |  3 +
 drivers/gpu/drm/i915/display/intel_dpll.c     | 60 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 24 +++++++-
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 10 ++++
 .../gpu/drm/i915/display/intel_pch_refclk.h   |  1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        | 11 ++--
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    | 20 ++++++-
 7 files changed, 117 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 6a3893c8ff22..a225af030ad7 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -46,6 +46,7 @@
 #include "intel_gmbus.h"
 #include "intel_hotplug.h"
 #include "intel_pch_display.h"
+#include "intel_pch_refclk.h"
 
 /* Here's the desired hotplug mode */
 #define ADPA_HOTPLUG_BITS (ADPA_CRT_HOTPLUG_PERIOD_128 |		\
@@ -444,6 +445,8 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
 	/* FDI must always be 2.7 GHz */
 	pipe_config->port_clock = 135000 * 2;
 
+	adjusted_mode->crtc_clock = lpt_iclkip(pipe_config);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 69dc018385db..cffce8b86d64 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -938,12 +938,25 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder =
 		intel_get_crtc_new_encoder(state, crtc_state);
+	int ret;
 
 	if (DISPLAY_VER(dev_priv) < 11 &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
-	return intel_compute_shared_dplls(state, crtc, encoder);
+	ret = intel_compute_shared_dplls(state, crtc, encoder);
+	if (ret)
+		return ret;
+
+	/* FIXME this is a mess */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
+		return 0;
+
+	/* CRT dotclock is determined via other means */
+	if (!crtc_state->has_pch_encoder)
+		crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+
+	return 0;
 }
 
 static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
@@ -969,8 +982,15 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder =
 		intel_get_crtc_new_encoder(state, crtc_state);
+	int ret;
 
-	return intel_mpllb_calc_state(crtc_state, encoder);
+	ret = intel_mpllb_calc_state(crtc_state, encoder);
+	if (ret)
+		return ret;
+
+	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+
+	return 0;
 }
 
 static bool ilk_needs_fb_cb_tune(const struct dpll *dpll, int factor)
@@ -1096,6 +1116,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit;
 	int refclk = 120000;
+	int ret;
 
 	/* CPU eDP is the only output that doesn't need a PCH PLL of its own. */
 	if (!crtc_state->has_pch_encoder)
@@ -1132,7 +1153,14 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
 			 &crtc_state->dpll);
 
-	return intel_compute_shared_dplls(state, crtc, NULL);
+	ret = intel_compute_shared_dplls(state, crtc, NULL);
+	if (ret)
+		return ret;
+
+	crtc_state->port_clock = crtc_state->dpll.dot;
+	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+
+	return ret;
 }
 
 static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
@@ -1198,6 +1226,13 @@ static int chv_crtc_compute_clock(struct intel_atomic_state *state,
 
 	chv_compute_dpll(crtc_state);
 
+	/* FIXME this is a mess */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
+		return 0;
+
+	crtc_state->port_clock = crtc_state->dpll.dot;
+	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+
 	return 0;
 }
 
@@ -1217,6 +1252,13 @@ static int vlv_crtc_compute_clock(struct intel_atomic_state *state,
 
 	vlv_compute_dpll(crtc_state);
 
+	/* FIXME this is a mess */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
+		return 0;
+
+	crtc_state->port_clock = crtc_state->dpll.dot;
+	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+
 	return 0;
 }
 
@@ -1259,6 +1301,9 @@ static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
 	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
 
+	crtc_state->port_clock = crtc_state->dpll.dot;
+	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+
 	return 0;
 }
 
@@ -1292,6 +1337,9 @@ static int pnv_crtc_compute_clock(struct intel_atomic_state *state,
 	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
 
+	crtc_state->port_clock = crtc_state->dpll.dot;
+	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+
 	return 0;
 }
 
@@ -1325,6 +1373,9 @@ static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
 	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
 
+	crtc_state->port_clock = crtc_state->dpll.dot;
+	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+
 	return 0;
 }
 
@@ -1360,6 +1411,9 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 	i8xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
 
+	crtc_state->port_clock = crtc_state->dpll.dot;
+	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index bfccc96f16fe..09816526c5e4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -949,6 +949,7 @@ static int
 hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	unsigned int p, n2, r2;
@@ -960,6 +961,9 @@ hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
 		WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
 		WRPLL_DIVIDER_POST(p);
 
+	crtc_state->port_clock = hsw_ddi_wrpll_get_freq(i915, NULL,
+							&crtc_state->dpll_hw_state);
+
 	return 0;
 }
 
@@ -1723,6 +1727,9 @@ static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 	crtc_state->dpll_hw_state.cfgcr1 = cfgcr1;
 	crtc_state->dpll_hw_state.cfgcr2 = cfgcr2;
 
+	crtc_state->port_clock = skl_ddi_wrpll_get_freq(i915, NULL,
+							&crtc_state->dpll_hw_state);
+
 	return 0;
 }
 
@@ -2275,11 +2282,20 @@ bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 static int
 bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct dpll clk_div = {};
+	int ret;
 
 	bxt_ddi_hdmi_pll_dividers(crtc_state, &clk_div);
 
-	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
+	ret = bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
+	if (ret)
+		return ret;
+
+	crtc_state->port_clock = bxt_ddi_pll_get_freq(i915, NULL,
+						      &crtc_state->dpll_hw_state);
+
+	return 0;
 }
 
 static int bxt_compute_dpll(struct intel_atomic_state *state,
@@ -3197,6 +3213,9 @@ static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
 
 	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
 
+	crtc_state->port_clock = icl_ddi_combo_pll_get_freq(dev_priv, NULL,
+							    &port_dpll->hw_state);
+
 	return 0;
 }
 
@@ -3282,6 +3301,9 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(dev_priv, NULL,
+							 &port_dpll->hw_state);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 9934c8a9e240..55dfd37cb04e 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -167,6 +167,15 @@ static void lpt_compute_iclkip(struct iclkip_params *p, int clock)
 	}
 }
 
+int lpt_iclkip(const struct intel_crtc_state *crtc_state)
+{
+	struct iclkip_params p;
+
+	lpt_compute_iclkip(&p, crtc_state->hw.adjusted_mode.crtc_clock);
+
+	return lpt_iclkip_freq(&p);
+}
+
 /* Program iCLKIP clock to the desired frequency */
 void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 {
@@ -179,6 +188,7 @@ void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 	lpt_disable_iclkip(dev_priv);
 
 	lpt_compute_iclkip(&p, clock);
+	drm_WARN_ON(&dev_priv->drm, lpt_iclkip_freq(&p) != clock);
 
 	/* This should not happen with any sane values */
 	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIVSEL(p.divsel) &
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.h b/drivers/gpu/drm/i915/display/intel_pch_refclk.h
index 12ab2c75a800..9bcf56629f24 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.h
@@ -14,6 +14,7 @@ struct intel_crtc_state;
 void lpt_program_iclkip(const struct intel_crtc_state *crtc_state);
 void lpt_disable_iclkip(struct drm_i915_private *dev_priv);
 int lpt_get_iclkip(struct drm_i915_private *dev_priv);
+int lpt_iclkip(const struct intel_crtc_state *crtc_state);
 
 void intel_init_pch_refclk(struct drm_i915_private *dev_priv);
 void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index b9b1fed99874..b3faa12e08cf 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1277,13 +1277,12 @@ static void intel_dsi_get_config(struct intel_encoder *encoder,
 		pclk = vlv_dsi_get_pclk(encoder, pipe_config);
 	}
 
+	pipe_config->port_clock = pclk;
+
+	/* FIXME definitely not right for burst/cmd mode/pixel overlap */
+	pipe_config->hw.adjusted_mode.crtc_clock = pclk;
 	if (intel_dsi->dual_link)
-		pclk *= 2;
-
-	if (pclk) {
-		pipe_config->hw.adjusted_mode.crtc_clock = pclk;
-		pipe_config->port_clock = pclk;
-	}
+		pipe_config->hw.adjusted_mode.crtc_clock *= 2;
 }
 
 /* return txclkesc cycles in terms of divider and duration in us */
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index 2606dbf09ccc..af7402127cd9 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -177,8 +177,7 @@ int vlv_dsi_pll_compute(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
-	int ret;
-	u32 dsi_clk;
+	int pclk, dsi_clk, ret;
 
 	dsi_clk = dsi_clk_from_pclk(intel_dsi->pclk, intel_dsi->pixel_format,
 				    intel_dsi->lane_count);
@@ -200,6 +199,14 @@ int vlv_dsi_pll_compute(struct intel_encoder *encoder,
 	drm_dbg_kms(&dev_priv->drm, "dsi pll div %08x, ctrl %08x\n",
 		    config->dsi_pll.div, config->dsi_pll.ctrl);
 
+	pclk = vlv_dsi_pclk(encoder, config);
+	config->port_clock = pclk;
+
+	/* FIXME definitely not right for burst/cmd mode/pixel overlap */
+	config->hw.adjusted_mode.crtc_clock = pclk;
+	if (intel_dsi->dual_link)
+		config->hw.adjusted_mode.crtc_clock *= 2;
+
 	return 0;
 }
 
@@ -478,6 +485,7 @@ int bxt_dsi_pll_compute(struct intel_encoder *encoder,
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	u8 dsi_ratio, dsi_ratio_min, dsi_ratio_max;
 	u32 dsi_clk;
+	int pclk;
 
 	dsi_clk = dsi_clk_from_pclk(intel_dsi->pclk, intel_dsi->pixel_format,
 				    intel_dsi->lane_count);
@@ -517,6 +525,14 @@ int bxt_dsi_pll_compute(struct intel_encoder *encoder,
 	if (IS_BROXTON(dev_priv) && dsi_ratio <= 50)
 		config->dsi_pll.ctrl |= BXT_DSI_PLL_PVD_RATIO_1;
 
+	pclk = bxt_dsi_pclk(encoder, config);
+	config->port_clock = pclk;
+
+	/* FIXME definitely not right for burst/cmd mode/pixel overlap */
+	config->hw.adjusted_mode.crtc_clock = pclk;
+	if (intel_dsi->dual_link)
+		config->hw.adjusted_mode.crtc_clock *= 2;
+
 	return 0;
 }
 
-- 
2.35.1

