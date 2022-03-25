Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D17A4E738B
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 13:32:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E5010E48C;
	Fri, 25 Mar 2022 12:32:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCA5210E327
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 12:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648211545; x=1679747545;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0fHJwBLMKbrpggszeU1nLQSTKCy2i2WbC7FPhiIH33s=;
 b=OPVk5+cimjdhfKfB0AwDTc6885gQjvomdC8Pb3nmodjJpdH3C8n8D0YD
 8PHnNLj4Yng2bk9JpS1dzuT5Ko0p4zScLVi/DBNke2Dp12loI57aQRo+D
 YzOA1DHhzKcmwlO3i94AjkiB1Sk2pM6jaKA66s0IfFgHTzD3ci5/QbklG
 ANggu3thancJOqUjWQcO+3XTQQ/8MtUFVdlJYKWeURQXuQ1HFXRlH/zqN
 iCknPV7q/eG6hLNMIEdSukmQ77ZqplOKfuHBRjFc6KSvgx9a30wcuPmDM
 kejEkgz6OSDFNpaYT+HIS2msQJp5n4OEu+jeuwrZpHZcIYpuK06RHLc5M Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="283493538"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="283493538"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:32:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="648247605"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga002.fm.intel.com with SMTP; 25 Mar 2022 05:32:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 14:32:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 14:31:58 +0200
Message-Id: <20220325123205.22140-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/13] drm/i915: Move the dpll_hw_state clearing
 to intel_dpll_crtc_compute_clock()
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

All .crtc_compute_clock() implementations do the same memset() to
clear the dpll_hw_state (since we preserve it across
intel_crtc_prepare_cleared_state()). Move the memset() to the common
wrapper.

Also clear it when we're about disable the pipe. Previously
it looks like we just left the old junk in there.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c     | 24 +++----------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 15 ------------
 2 files changed, 3 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 88d78a585304..494a343850e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1081,9 +1081,6 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 	int refclk = 120000;
 	int ret;
 
-	memset(&crtc_state->dpll_hw_state, 0,
-	       sizeof(crtc_state->dpll_hw_state));
-
 	/* CPU eDP is the only output that doesn't need a PCH PLL of its own. */
 	if (!crtc_state->has_pch_encoder)
 		return 0;
@@ -1177,9 +1174,6 @@ static int chv_crtc_compute_clock(struct intel_atomic_state *state,
 	const struct intel_limit *limit = &intel_limits_chv;
 	int refclk = 100000;
 
-	memset(&crtc_state->dpll_hw_state, 0,
-	       sizeof(crtc_state->dpll_hw_state));
-
 	if (!crtc_state->clock_set &&
 	    !chv_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
 				refclk, NULL, &crtc_state->dpll)) {
@@ -1201,9 +1195,6 @@ static int vlv_crtc_compute_clock(struct intel_atomic_state *state,
 	const struct intel_limit *limit = &intel_limits_vlv;
 	int refclk = 100000;
 
-	memset(&crtc_state->dpll_hw_state, 0,
-	       sizeof(crtc_state->dpll_hw_state));
-
 	if (!crtc_state->clock_set &&
 	    !vlv_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
 				refclk, NULL, &crtc_state->dpll)) {
@@ -1225,9 +1216,6 @@ static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
 	const struct intel_limit *limit;
 	int refclk = 96000;
 
-	memset(&crtc_state->dpll_hw_state, 0,
-	       sizeof(crtc_state->dpll_hw_state));
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
 			refclk = dev_priv->vbt.lvds_ssc_freq;
@@ -1273,9 +1261,6 @@ static int pnv_crtc_compute_clock(struct intel_atomic_state *state,
 	const struct intel_limit *limit;
 	int refclk = 96000;
 
-	memset(&crtc_state->dpll_hw_state, 0,
-	       sizeof(crtc_state->dpll_hw_state));
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
 			refclk = dev_priv->vbt.lvds_ssc_freq;
@@ -1312,9 +1297,6 @@ static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
 	const struct intel_limit *limit;
 	int refclk = 96000;
 
-	memset(&crtc_state->dpll_hw_state, 0,
-	       sizeof(crtc_state->dpll_hw_state));
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
 			refclk = dev_priv->vbt.lvds_ssc_freq;
@@ -1351,9 +1333,6 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 	const struct intel_limit *limit;
 	int refclk = 48000;
 
-	memset(&crtc_state->dpll_hw_state, 0,
-	       sizeof(crtc_state->dpll_hw_state));
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(dev_priv)) {
 			refclk = dev_priv->vbt.lvds_ssc_freq;
@@ -1430,6 +1409,9 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 	if (!crtc_state->hw.enable)
 		return 0;
 
+	memset(&crtc_state->dpll_hw_state, 0,
+	       sizeof(crtc_state->dpll_hw_state));
+
 	return i915->dpll_funcs->crtc_compute_clock(state, crtc);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index dc3c889b0aa6..22f55574a35c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1068,9 +1068,6 @@ static int hsw_get_dpll(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_shared_dpll *pll = NULL;
 
-	memset(&crtc_state->dpll_hw_state, 0,
-	       sizeof(crtc_state->dpll_hw_state));
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		pll = hsw_ddi_wrpll_get_dpll(state, crtc);
 	else if (intel_crtc_has_dp_encoder(crtc_state))
@@ -1595,9 +1592,6 @@ static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 		DPLL_CFGCR2_PDIV(wrpll_params.pdiv) |
 		wrpll_params.central_freq;
 
-	memset(&crtc_state->dpll_hw_state, 0,
-	       sizeof(crtc_state->dpll_hw_state));
-
 	crtc_state->dpll_hw_state.ctrl1 = ctrl1;
 	crtc_state->dpll_hw_state.cfgcr1 = cfgcr1;
 	crtc_state->dpll_hw_state.cfgcr2 = cfgcr2;
@@ -1708,9 +1702,6 @@ skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 		break;
 	}
 
-	memset(&crtc_state->dpll_hw_state, 0,
-	       sizeof(crtc_state->dpll_hw_state));
-
 	crtc_state->dpll_hw_state.ctrl1 = ctrl1;
 
 	return 0;
@@ -2139,8 +2130,6 @@ static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 	u32 prop_coef, int_coef, gain_ctl, targ_cnt;
 	u32 lanestagger;
 
-	memset(dpll_hw_state, 0, sizeof(*dpll_hw_state));
-
 	if (vco >= 6200000 && vco <= 6700000) {
 		prop_coef = 4;
 		int_coef = 9;
@@ -2701,8 +2690,6 @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
 {
 	u32 dco_fraction = pll_params->dco_fraction;
 
-	memset(pll_state, 0, sizeof(*pll_state));
-
 	if (ehl_combo_pll_div_frac_wa_needed(i915))
 		dco_fraction = DIV_ROUND_CLOSEST(dco_fraction, 2);
 
@@ -2820,8 +2807,6 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 	bool is_dkl = DISPLAY_VER(dev_priv) >= 12;
 	int ret;
 
-	memset(pll_state, 0, sizeof(*pll_state));
-
 	ret = icl_mg_pll_find_divisors(clock, is_dp, use_ssc, &dco_khz,
 				       pll_state, is_dkl);
 	if (ret) {
-- 
2.34.1

