Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F174E7384
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 13:32:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24E7410E594;
	Fri, 25 Mar 2022 12:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 685D610E677
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 12:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648211531; x=1679747531;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PEEJtsGrBpVQF8zGnp+1bMRISq1cnO/9mHpwS5wtRM4=;
 b=j6Zvh7+aXgbMQM5eU6QRunYnPgCwshumPY9KgVhmEkeFlIP7heGVDLVq
 2DYS5g5SAkERwJoxhJUo1zaqRUox0qeaqwKAiNI6E22Wxy6jnhqBx+6Jc
 dEE8feacjPn7A3cXT//esOiSCQF1q0xc2aRG7qBaMJjO4etvjhEKazsvV
 F96a7nclqe8/G2SQ3gEhJ+YC89CFt/A5RK5d+XFb7Gr8MmXIL/Pyqi1dE
 HVQc4De64yG8ZP6Xb11xvYBe8vj9kGggGINocOaVmzL5IpHwRdzeDN5D8
 Nkr8kFcdR5zzjhvBPjKZaOqyEwlreBIwvy8qXRBdFr5LgwChO1B5VQhGg Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258589956"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258589956"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:32:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="520187266"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga006.jf.intel.com with SMTP; 25 Mar 2022 05:32:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 14:32:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 14:31:53 +0200
Message-Id: <20220325123205.22140-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/13] drm/i915: Make .get_dplls() return int
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

Get rid of the confusing back and forth between bools and ints
in the .get_dplls() stuff. Just make everything return an int.

Initial conversion done with cocci, with some manual fixups on top:
@find@
identifier func !~ "get_hw_state|_is_|needed";
typedef bool;
parameter list[N] P;
@@
- bool
+ int
 func(P)
{
<...
(
- return true;
+ return 0;
|
- return false;
+ return -EINVAL;
)
...>
}

@@
identifier find.func;
expression list[find.N] E;
expression X;
@@
- if (!func(E))
+ ret = func(E);
+ if (ret)
  {
  ...
- return X;
+ return ret;
  }

@@
identifier find.func;
expression X;
expression list[find.N] E;
@@
- if (!func(E))
+ ret = func(E);
+ if (ret)
- return X;
+ return ret;

@@
identifier find.func;
expression list[find.N] E;
expression O, X;
typedef bool;
bool B;
@@
- B = func(E);
- if (O && !B)
+ if (O) {
+ ret = func(E);
+ if (ret)
- return X;
+ return ret;
+ }

@@
identifier find.func;
expression list[find.N] E;
expression O, X;
@@
- if (O && !func(E))
+ if (O) {
+ ret = func(E);
+ if (ret)
- return X;
+ return ret;
+ }

@@
identifier find.func;
expression list[find.N] E;
expression X;
typedef bool;
bool B;
@@
- B = func(E);
- if (!B)
+ ret = func(E);
+ if (ret)
  {
  ...
- return X;
+ return ret;
  }

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c     |  12 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 242 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   6 +-
 3 files changed, 131 insertions(+), 129 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 95b9d327ed4d..1bd4a05dff7c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -935,6 +935,7 @@ static int hsw_crtc_compute_clock(struct intel_crtc_state *crtc_state)
 		to_intel_atomic_state(crtc_state->uapi.state);
 	struct intel_encoder *encoder =
 		intel_get_crtc_new_encoder(state, crtc_state);
+	int ret;
 
 	if (IS_DG2(dev_priv))
 		return intel_mpllb_calc_state(crtc_state, encoder);
@@ -943,11 +944,12 @@ static int hsw_crtc_compute_clock(struct intel_crtc_state *crtc_state)
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
-	if (!intel_reserve_shared_dplls(state, crtc, encoder)) {
+	ret = intel_reserve_shared_dplls(state, crtc, encoder);
+	if (ret) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "failed to find PLL for pipe %c\n",
 			    pipe_name(crtc->pipe));
-		return -EINVAL;
+		return ret;
 	}
 
 	return 0;
@@ -1076,6 +1078,7 @@ static int ilk_crtc_compute_clock(struct intel_crtc_state *crtc_state)
 		to_intel_atomic_state(crtc_state->uapi.state);
 	const struct intel_limit *limit;
 	int refclk = 120000;
+	int ret;
 
 	memset(&crtc_state->dpll_hw_state, 0,
 	       sizeof(crtc_state->dpll_hw_state));
@@ -1118,11 +1121,12 @@ static int ilk_crtc_compute_clock(struct intel_crtc_state *crtc_state)
 	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
 			 &crtc_state->dpll);
 
-	if (!intel_reserve_shared_dplls(state, crtc, NULL)) {
+	ret = intel_reserve_shared_dplls(state, crtc, NULL);
+	if (ret) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "failed to find PLL for pipe %c\n",
 			    pipe_name(crtc->pipe));
-		return -EINVAL;
+		return ret;
 	}
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b7071da4b7e5..1d52796333ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -90,9 +90,9 @@ struct intel_shared_dpll_funcs {
 struct intel_dpll_mgr {
 	const struct dpll_info *dpll_info;
 
-	bool (*get_dplls)(struct intel_atomic_state *state,
-			  struct intel_crtc *crtc,
-			  struct intel_encoder *encoder);
+	int (*get_dplls)(struct intel_atomic_state *state,
+			 struct intel_crtc *crtc,
+			 struct intel_encoder *encoder);
 	void (*put_dplls)(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc);
 	void (*update_active_dpll)(struct intel_atomic_state *state,
@@ -514,9 +514,9 @@ static void ibx_pch_dpll_disable(struct drm_i915_private *dev_priv,
 	udelay(200);
 }
 
-static bool ibx_get_dpll(struct intel_atomic_state *state,
-			 struct intel_crtc *crtc,
-			 struct intel_encoder *encoder)
+static int ibx_get_dpll(struct intel_atomic_state *state,
+			struct intel_crtc *crtc,
+			struct intel_encoder *encoder)
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -541,7 +541,7 @@ static bool ibx_get_dpll(struct intel_atomic_state *state,
 	}
 
 	if (!pll)
-		return false;
+		return -EINVAL;
 
 	/* reference the pll */
 	intel_reference_shared_dpll(state, crtc,
@@ -549,7 +549,7 @@ static bool ibx_get_dpll(struct intel_atomic_state *state,
 
 	crtc_state->shared_dpll = pll;
 
-	return true;
+	return 0;
 }
 
 static void ibx_dump_hw_state(struct drm_i915_private *dev_priv,
@@ -584,7 +584,7 @@ static const struct intel_dpll_mgr pch_pll_mgr = {
 };
 
 static void hsw_ddi_wrpll_enable(struct drm_i915_private *dev_priv,
-			       struct intel_shared_dpll *pll)
+				 struct intel_shared_dpll *pll)
 {
 	const enum intel_dpll_id id = pll->info->id;
 
@@ -1060,13 +1060,13 @@ static int hsw_ddi_spll_get_freq(struct drm_i915_private *i915,
 	return link_clock * 2;
 }
 
-static bool hsw_get_dpll(struct intel_atomic_state *state,
-			 struct intel_crtc *crtc,
-			 struct intel_encoder *encoder)
+static int hsw_get_dpll(struct intel_atomic_state *state,
+			struct intel_crtc *crtc,
+			struct intel_encoder *encoder)
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_shared_dpll *pll;
+	struct intel_shared_dpll *pll = NULL;
 
 	memset(&crtc_state->dpll_hw_state, 0,
 	       sizeof(crtc_state->dpll_hw_state));
@@ -1077,18 +1077,16 @@ static bool hsw_get_dpll(struct intel_atomic_state *state,
 		pll = hsw_ddi_lcpll_get_dpll(crtc_state);
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG))
 		pll = hsw_ddi_spll_get_dpll(state, crtc);
-	else
-		return false;
 
 	if (!pll)
-		return false;
+		return -EINVAL;
 
 	intel_reference_shared_dpll(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
 
 	crtc_state->shared_dpll = pll;
 
-	return true;
+	return 0;
 }
 
 static void hsw_update_dpll_ref_clks(struct drm_i915_private *i915)
@@ -1493,7 +1491,7 @@ static void skl_wrpll_params_populate(struct skl_wrpll_params *params,
 			 params->dco_integer * MHz(1)) * 0x8000, MHz(1));
 }
 
-static bool
+static int
 skl_ddi_calculate_wrpll(int clock /* in Hz */,
 			int ref_clock,
 			struct skl_wrpll_params *wrpll_params)
@@ -1552,7 +1550,7 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
 
 	if (!ctx.p) {
 		DRM_DEBUG_DRIVER("No valid divider found for %dHz\n", clock);
-		return false;
+		return -EINVAL;
 	}
 
 	/*
@@ -1564,14 +1562,15 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
 	skl_wrpll_params_populate(wrpll_params, afe_clock, ref_clock,
 				  ctx.central_freq, p0, p1, p2);
 
-	return true;
+	return 0;
 }
 
-static bool skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
+static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct skl_wrpll_params wrpll_params = {};
 	u32 ctrl1, cfgcr1, cfgcr2;
+	int ret;
 
 	/*
 	 * See comment in intel_dpll_hw_state to understand why we always use 0
@@ -1581,10 +1580,10 @@ static bool skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 
 	ctrl1 |= DPLL_CTRL1_HDMI_MODE(0);
 
-	if (!skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000,
-				     i915->dpll.ref_clks.nssc,
-				     &wrpll_params))
-		return false;
+	ret = skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000,
+				      i915->dpll.ref_clks.nssc, &wrpll_params);
+	if (ret)
+		return ret;
 
 	cfgcr1 = DPLL_CFGCR1_FREQ_ENABLE |
 		DPLL_CFGCR1_DCO_FRACTION(wrpll_params.dco_fraction) |
@@ -1602,7 +1601,8 @@ static bool skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 	crtc_state->dpll_hw_state.ctrl1 = ctrl1;
 	crtc_state->dpll_hw_state.cfgcr1 = cfgcr1;
 	crtc_state->dpll_hw_state.cfgcr2 = cfgcr2;
-	return true;
+
+	return 0;
 }
 
 static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
@@ -1676,7 +1676,7 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 	return dco_freq / (p0 * p1 * p2 * 5);
 }
 
-static bool
+static int
 skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
 	u32 ctrl1;
@@ -1713,7 +1713,7 @@ skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 
 	crtc_state->dpll_hw_state.ctrl1 = ctrl1;
 
-	return true;
+	return 0;
 }
 
 static int skl_ddi_lcpll_get_freq(struct drm_i915_private *i915,
@@ -1750,33 +1750,23 @@ static int skl_ddi_lcpll_get_freq(struct drm_i915_private *i915,
 	return link_clock * 2;
 }
 
-static bool skl_get_dpll(struct intel_atomic_state *state,
-			 struct intel_crtc *crtc,
-			 struct intel_encoder *encoder)
+static int skl_get_dpll(struct intel_atomic_state *state,
+			struct intel_crtc *crtc,
+			struct intel_encoder *encoder)
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll;
-	bool bret;
+	int ret;
 
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
-		bret = skl_ddi_hdmi_pll_dividers(crtc_state);
-		if (!bret) {
-			drm_dbg_kms(&i915->drm,
-				    "Could not get HDMI pll dividers.\n");
-			return false;
-		}
-	} else if (intel_crtc_has_dp_encoder(crtc_state)) {
-		bret = skl_ddi_dp_set_dpll_hw_state(crtc_state);
-		if (!bret) {
-			drm_dbg_kms(&i915->drm,
-				    "Could not set DP dpll HW state.\n");
-			return false;
-		}
-	} else {
-		return false;
-	}
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		ret = skl_ddi_hdmi_pll_dividers(crtc_state);
+	else if (intel_crtc_has_dp_encoder(crtc_state))
+		ret = skl_ddi_dp_set_dpll_hw_state(crtc_state);
+	else
+		ret = -EINVAL;
+	if (ret)
+		return ret;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
 		pll = intel_find_shared_dpll(state, crtc,
@@ -1789,14 +1779,14 @@ static bool skl_get_dpll(struct intel_atomic_state *state,
 					     BIT(DPLL_ID_SKL_DPLL2) |
 					     BIT(DPLL_ID_SKL_DPLL1));
 	if (!pll)
-		return false;
+		return -EINVAL;
 
 	intel_reference_shared_dpll(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
 
 	crtc_state->shared_dpll = pll;
 
-	return true;
+	return 0;
 }
 
 static int skl_ddi_pll_get_freq(struct drm_i915_private *i915,
@@ -2095,7 +2085,7 @@ static const struct dpll bxt_dp_clk_val[] = {
 	{ .dot = 432000, .p1 = 3, .p2 = 1, .n = 1, .m1 = 2, .m2 = 0x819999a /* 32.4 */ },
 };
 
-static bool
+static int
 bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
 			  struct dpll *clk_div)
 {
@@ -2111,12 +2101,12 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
 		drm_dbg(&i915->drm, "no PLL dividers found for clock %d pipe %c\n",
 			crtc_state->port_clock,
 			pipe_name(crtc->pipe));
-		return false;
+		return -EINVAL;
 	}
 
 	drm_WARN_ON(&i915->drm, clk_div->m1 != 2);
 
-	return true;
+	return 0;
 }
 
 static void bxt_ddi_dp_pll_dividers(struct intel_crtc_state *crtc_state,
@@ -2139,8 +2129,8 @@ static void bxt_ddi_dp_pll_dividers(struct intel_crtc_state *crtc_state,
 		    clk_div->dot != crtc_state->port_clock);
 }
 
-static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
-				      const struct dpll *clk_div)
+static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
+				     const struct dpll *clk_div)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_dpll_hw_state *dpll_hw_state = &crtc_state->dpll_hw_state;
@@ -2169,7 +2159,7 @@ static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 		targ_cnt = 9;
 	} else {
 		drm_err(&i915->drm, "Invalid VCO\n");
-		return false;
+		return -EINVAL;
 	}
 
 	if (clock > 270000)
@@ -2206,10 +2196,10 @@ static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 
 	dpll_hw_state->pcsdw12 = LANESTAGGER_STRAP_OVRD | lanestagger;
 
-	return true;
+	return 0;
 }
 
-static bool
+static int
 bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
 	struct dpll clk_div = {};
@@ -2219,7 +2209,7 @@ bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
 }
 
-static bool
+static int
 bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
 	struct dpll clk_div = {};
@@ -2246,23 +2236,25 @@ static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
 	return chv_calc_dpll_params(i915->dpll.ref_clks.nssc, &clock);
 }
 
-static bool bxt_get_dpll(struct intel_atomic_state *state,
-			 struct intel_crtc *crtc,
-			 struct intel_encoder *encoder)
+static int bxt_get_dpll(struct intel_atomic_state *state,
+			struct intel_crtc *crtc,
+			struct intel_encoder *encoder)
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll;
 	enum intel_dpll_id id;
+	int ret;
 
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
-	    !bxt_ddi_hdmi_set_dpll_hw_state(crtc_state))
-		return false;
-
-	if (intel_crtc_has_dp_encoder(crtc_state) &&
-	    !bxt_ddi_dp_set_dpll_hw_state(crtc_state))
-		return false;
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		ret = bxt_ddi_hdmi_set_dpll_hw_state(crtc_state);
+	else if (intel_crtc_has_dp_encoder(crtc_state))
+		ret = bxt_ddi_dp_set_dpll_hw_state(crtc_state);
+	else
+		ret = -EINVAL;
+	if (ret)
+		return ret;
 
 	/* 1:1 mapping between ports and PLLs */
 	id = (enum intel_dpll_id) encoder->port;
@@ -2276,7 +2268,7 @@ static bool bxt_get_dpll(struct intel_atomic_state *state,
 
 	crtc_state->shared_dpll = pll;
 
-	return true;
+	return 0;
 }
 
 static void bxt_update_dpll_ref_clks(struct drm_i915_private *i915)
@@ -2513,8 +2505,8 @@ static const struct skl_wrpll_params tgl_tbt_pll_24MHz_values = {
 	/* the following params are unused */
 };
 
-static bool icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
-				  struct skl_wrpll_params *pll_params)
+static int icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
+				 struct skl_wrpll_params *pll_params)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	const struct icl_combo_pll_params *params =
@@ -2527,16 +2519,16 @@ static bool icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
 	for (i = 0; i < ARRAY_SIZE(icl_dp_combo_pll_24MHz_values); i++) {
 		if (clock == params[i].clock) {
 			*pll_params = params[i].wrpll;
-			return true;
+			return 0;
 		}
 	}
 
 	MISSING_CASE(clock);
-	return false;
+	return -EINVAL;
 }
 
-static bool icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
-			     struct skl_wrpll_params *pll_params)
+static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
+			    struct skl_wrpll_params *pll_params)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
@@ -2568,7 +2560,7 @@ static bool icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	return true;
+	return 0;
 }
 
 static int icl_ddi_tbt_pll_get_freq(struct drm_i915_private *i915,
@@ -2598,7 +2590,7 @@ static int icl_wrpll_ref_clock(struct drm_i915_private *i915)
 	return ref_clock;
 }
 
-static bool
+static int
 icl_calc_wrpll(struct intel_crtc_state *crtc_state,
 	       struct skl_wrpll_params *wrpll_params)
 {
@@ -2633,13 +2625,13 @@ icl_calc_wrpll(struct intel_crtc_state *crtc_state,
 	}
 
 	if (best_div == 0)
-		return false;
+		return -EINVAL;
 
 	icl_wrpll_get_multipliers(best_div, &pdiv, &qdiv, &kdiv);
 	icl_wrpll_params_populate(wrpll_params, best_dco, ref_clock,
 				  pdiv, qdiv, kdiv);
 
-	return true;
+	return 0;
 }
 
 static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
@@ -2731,10 +2723,10 @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
 		pll_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(i915->vbt.override_afc_startup_val);
 }
 
-static bool icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
-				     u32 *target_dco_khz,
-				     struct intel_dpll_hw_state *state,
-				     bool is_dkl)
+static int icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
+				    u32 *target_dco_khz,
+				    struct intel_dpll_hw_state *state,
+				    bool is_dkl)
 {
 	static const u8 div1_vals[] = { 7, 5, 3, 2 };
 	u32 dco_min_freq, dco_max_freq;
@@ -2800,19 +2792,19 @@ static bool icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
 				hsdiv |
 				MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO(div2);
 
-			return true;
+			return 0;
 		}
 	}
 
-	return false;
+	return -EINVAL;
 }
 
 /*
  * The specification for this function uses real numbers, so the math had to be
  * adapted to integer-only calculation, that's why it looks so different.
  */
-static bool icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
-				  struct intel_dpll_hw_state *pll_state)
+static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
+				 struct intel_dpll_hw_state *pll_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	int refclk_khz = dev_priv->dpll.ref_clks.nssc;
@@ -2826,14 +2818,16 @@ static bool icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 	bool use_ssc = false;
 	bool is_dp = !intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI);
 	bool is_dkl = DISPLAY_VER(dev_priv) >= 12;
+	int ret;
 
 	memset(pll_state, 0, sizeof(*pll_state));
 
-	if (!icl_mg_pll_find_divisors(clock, is_dp, use_ssc, &dco_khz,
-				      pll_state, is_dkl)) {
+	ret = icl_mg_pll_find_divisors(clock, is_dp, use_ssc, &dco_khz,
+				       pll_state, is_dkl);
+	if (ret) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Failed to find divisors for clock %d\n", clock);
-		return false;
+		return ret;
 	}
 
 	m1div = 2;
@@ -2848,7 +2842,7 @@ static bool icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 			drm_dbg_kms(&dev_priv->drm,
 				    "Failed to find mdiv for clock %d\n",
 				    clock);
-			return false;
+			return -EINVAL;
 		}
 	}
 	m2div_rem = dco_khz % (refclk_khz * m1div);
@@ -2875,7 +2869,7 @@ static bool icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 		break;
 	default:
 		MISSING_CASE(refclk_khz);
-		return false;
+		return -EINVAL;
 	}
 
 	/*
@@ -3018,7 +3012,7 @@ static bool icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 		pll_state->mg_pll_bias &= pll_state->mg_pll_bias_mask;
 	}
 
-	return true;
+	return 0;
 }
 
 static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *dev_priv,
@@ -3140,9 +3134,9 @@ static u32 intel_get_hti_plls(struct drm_i915_private *i915)
 	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, i915->hti_state);
 }
 
-static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
-				   struct intel_crtc *crtc,
-				   struct intel_encoder *encoder)
+static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc,
+				  struct intel_encoder *encoder)
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -3160,11 +3154,10 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 	else
 		ret = icl_calc_dp_combo_pll(crtc_state, &pll_params);
 
-	if (!ret) {
+	if (ret) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Could not calculate combo PHY PLL state.\n");
-
-		return false;
+		return ret;
 	}
 
 	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
@@ -3209,7 +3202,7 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 		drm_dbg_kms(&dev_priv->drm,
 			    "No combo PHY PLL found for [ENCODER:%d:%s]\n",
 			    encoder->base.base.id, encoder->base.name);
-		return false;
+		return -EINVAL;
 	}
 
 	intel_reference_shared_dpll(state, crtc,
@@ -3217,12 +3210,12 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 
 	icl_update_active_dpll(state, crtc, encoder);
 
-	return true;
+	return 0;
 }
 
-static bool icl_get_tc_phy_dplls(struct intel_atomic_state *state,
-				 struct intel_crtc *crtc,
-				 struct intel_encoder *encoder)
+static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
+				struct intel_crtc *crtc,
+				struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
@@ -3230,12 +3223,14 @@ static bool icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 	struct skl_wrpll_params pll_params = { };
 	struct icl_port_dpll *port_dpll;
 	enum intel_dpll_id dpll_id;
+	int ret;
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
-	if (!icl_calc_tbt_pll(crtc_state, &pll_params)) {
+	ret = icl_calc_tbt_pll(crtc_state, &pll_params);
+	if (ret) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Could not calculate TBT PLL state.\n");
-		return false;
+		return ret;
 	}
 
 	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
@@ -3245,14 +3240,15 @@ static bool icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 						BIT(DPLL_ID_ICL_TBTPLL));
 	if (!port_dpll->pll) {
 		drm_dbg_kms(&dev_priv->drm, "No TBT-ALT PLL found\n");
-		return false;
+		return -EINVAL;
 	}
 	intel_reference_shared_dpll(state, crtc,
 				    port_dpll->pll, &port_dpll->hw_state);
 
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
-	if (!icl_calc_mg_pll_state(crtc_state, &port_dpll->hw_state)) {
+	ret = icl_calc_mg_pll_state(crtc_state, &port_dpll->hw_state);
+	if (ret) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Could not calculate MG PHY PLL state.\n");
 		goto err_unreference_tbt_pll;
@@ -3264,6 +3260,7 @@ static bool icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 						&port_dpll->hw_state,
 						BIT(dpll_id));
 	if (!port_dpll->pll) {
+		ret = -EINVAL;
 		drm_dbg_kms(&dev_priv->drm, "No MG PHY PLL found\n");
 		goto err_unreference_tbt_pll;
 	}
@@ -3272,18 +3269,18 @@ static bool icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 
 	icl_update_active_dpll(state, crtc, encoder);
 
-	return true;
+	return 0;
 
 err_unreference_tbt_pll:
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
 	intel_unreference_shared_dpll(state, crtc, port_dpll->pll);
 
-	return false;
+	return ret;
 }
 
-static bool icl_get_dplls(struct intel_atomic_state *state,
-			  struct intel_crtc *crtc,
-			  struct intel_encoder *encoder)
+static int icl_get_dplls(struct intel_atomic_state *state,
+			 struct intel_crtc *crtc,
+			 struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
@@ -3295,7 +3292,7 @@ static bool icl_get_dplls(struct intel_atomic_state *state,
 
 	MISSING_CASE(phy);
 
-	return false;
+	return -EINVAL;
 }
 
 static void icl_put_dplls(struct intel_atomic_state *state,
@@ -4154,17 +4151,18 @@ void intel_shared_dpll_init(struct drm_device *dev)
  * intel_release_shared_dplls().
  *
  * Returns:
- * True if all required DPLLs were successfully reserved.
+ * 0 if all required DPLLs were successfully reserved,
+ * negative error code otherwise.
  */
-bool intel_reserve_shared_dplls(struct intel_atomic_state *state,
-				struct intel_crtc *crtc,
-				struct intel_encoder *encoder)
+int intel_reserve_shared_dplls(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc,
+			       struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll.mgr;
 
 	if (drm_WARN_ON(&dev_priv->drm, !dpll_mgr))
-		return false;
+		return -EINVAL;
 
 	return dpll_mgr->get_dplls(state, crtc, encoder);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index ba2fdfce1579..499a43e39123 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -337,9 +337,9 @@ void assert_shared_dpll(struct drm_i915_private *dev_priv,
 			bool state);
 #define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p, true)
 #define assert_shared_dpll_disabled(d, p) assert_shared_dpll(d, p, false)
-bool intel_reserve_shared_dplls(struct intel_atomic_state *state,
-				struct intel_crtc *crtc,
-				struct intel_encoder *encoder);
+int intel_reserve_shared_dplls(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc,
+			       struct intel_encoder *encoder);
 void intel_release_shared_dplls(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
 void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
-- 
2.34.1

