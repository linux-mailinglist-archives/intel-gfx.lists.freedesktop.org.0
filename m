Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3D6518C37
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E9310E48A;
	Tue,  3 May 2022 18:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7868C10E756
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602202; x=1683138202;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DFNqa7XZXS/ofYGWxuNLUg7ce2n9dFfG/Wi+G56LNXU=;
 b=nHaV4r48B6kAzXDt0Z3L64sK5QqFwRyiNDH6/PdWE2UoEWSAlIfBjNay
 mB2HLwjxH0z3mzkfxyP8oi9jo0MhrHlrMNgDAGecdva86fWysn/sDxLi6
 bwHxJBV88T00QeiT5ao11u7etVm3DQjuXCZIB1GmiD2gMmczbURJ7qquk
 A7Aciju2SiTfyrzZhwMF5r86JPEdSRdCNbVO8tRH2h6BMMU/a/EomBrPw
 3DfzllTXHoI3/vikelpDm9BwWeZXtY0YU5bUgfytj8bkoTBUCtpjuCG5k
 goCT+CSmpyDVvc4UkSjGmPawxCPNAMY8rdta4ia0x//O8xa7J5DtHcD5L w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="353991439"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="353991439"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="547720070"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga002.jf.intel.com with SMTP; 03 May 2022 11:23:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:28 +0300
Message-Id: <20220503182242.18797-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/26] drm/i915: Feed the DPLL output freq back
 into crtc_state
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

Fill port_clock and hw.adjusted_mode.crtc_clock with the actual
frequency we're going to be getting from the hardware. This will
let us accurately compute all derived state that depends on those.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      |  2 +
 drivers/gpu/drm/i915/display/intel_dpll.c     | 64 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 36 ++++++++++-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  9 +++
 .../gpu/drm/i915/display/intel_pch_refclk.h   |  1 +
 5 files changed, 108 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index d746c85e7e8c..a225af030ad7 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -445,6 +445,8 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
 	/* FDI must always be 2.7 GHz */
 	pipe_config->port_clock = 135000 * 2;
 
+	adjusted_mode->crtc_clock = lpt_iclkip(pipe_config);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index afd30c6cc34c..4a9d7b6d16cc 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -930,6 +930,8 @@ static void i8xx_compute_dpll(struct intel_crtc_state *crtc_state,
 	crtc_state->dpll_hw_state.dpll = dpll;
 }
 
+int intel_crtc_dotclock(const struct intel_crtc_state *crtc_state);
+
 static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
@@ -938,12 +940,25 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
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
@@ -969,8 +984,15 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
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
@@ -1096,6 +1118,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit;
 	int refclk = 120000;
+	int ret;
 
 	/* CPU eDP is the only output that doesn't need a PCH PLL of its own. */
 	if (!crtc_state->has_pch_encoder)
@@ -1132,7 +1155,14 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
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
@@ -1198,6 +1228,13 @@ static int chv_crtc_compute_clock(struct intel_atomic_state *state,
 
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
 
@@ -1217,6 +1254,13 @@ static int vlv_crtc_compute_clock(struct intel_atomic_state *state,
 
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
 
@@ -1259,6 +1303,9 @@ static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
 	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
 
+	crtc_state->port_clock = crtc_state->dpll.dot;
+	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+
 	return 0;
 }
 
@@ -1292,6 +1339,9 @@ static int pnv_crtc_compute_clock(struct intel_atomic_state *state,
 	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
 
+	crtc_state->port_clock = crtc_state->dpll.dot;
+	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+
 	return 0;
 }
 
@@ -1325,6 +1375,9 @@ static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
 	i9xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
 
+	crtc_state->port_clock = crtc_state->dpll.dot;
+	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+
 	return 0;
 }
 
@@ -1360,6 +1413,9 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 	i8xx_compute_dpll(crtc_state, &crtc_state->dpll,
 			  &crtc_state->dpll);
 
+	crtc_state->port_clock = crtc_state->dpll.dot;
+	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
+
 	return 0;
 }
 
@@ -1401,6 +1457,8 @@ static const struct intel_dpll_funcs i8xx_dpll_funcs = {
 	.crtc_compute_clock = i8xx_crtc_compute_clock,
 };
 
+int intel_calculate_dotclock(const struct intel_crtc_state *crtc_state);
+
 int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 64708e874b13..416d78f9e140 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -905,10 +905,15 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
 	*r2_out = best.r2;
 }
 
+static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
+				  const struct intel_shared_dpll *pll,
+				  const struct intel_dpll_hw_state *pll_state);
+
 static int
 hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	unsigned int p, n2, r2;
@@ -920,6 +925,9 @@ hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
 		WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
 		WRPLL_DIVIDER_POST(p);
 
+	crtc_state->port_clock = hsw_ddi_wrpll_get_freq(i915, NULL,
+							&crtc_state->dpll_hw_state);
+
 	return 0;
 }
 
@@ -1618,6 +1626,10 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
 	return 0;
 }
 
+static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
+				  const struct intel_shared_dpll *pll,
+				  const struct intel_dpll_hw_state *pll_state);
+
 static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
@@ -1652,6 +1664,9 @@ static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 	crtc_state->dpll_hw_state.cfgcr1 = cfgcr1;
 	crtc_state->dpll_hw_state.cfgcr2 = cfgcr2;
 
+	crtc_state->port_clock = skl_ddi_wrpll_get_freq(i915, NULL,
+							&crtc_state->dpll_hw_state);
+
 	return 0;
 }
 
@@ -2255,14 +2270,27 @@ bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
 }
 
+static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
+				const struct intel_shared_dpll *pll,
+				const struct intel_dpll_hw_state *pll_state);
+
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
 
 static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
@@ -3197,6 +3225,9 @@ static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
 
 	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
 
+	crtc_state->port_clock = icl_ddi_combo_pll_get_freq(dev_priv, NULL,
+							    &port_dpll->hw_state);
+
 	return 0;
 }
 
@@ -3282,6 +3313,9 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(dev_priv, NULL,
+							 &port_dpll->hw_state);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 6610160cf825..5fb7ead97c90 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -166,6 +166,15 @@ static void lpt_compute_iclkip(struct iclkip_params *p, int clock)
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
-- 
2.35.1

