Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E26A789FD
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 10:32:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 468B710E704;
	Wed,  2 Apr 2025 08:32:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OwWvIaEt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B067A10E6F8;
 Wed,  2 Apr 2025 08:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743582750; x=1775118750;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PSKuPQeZKi7m4Ha1qcF8UZ8l83tgCqkIEpMU+uWxLXA=;
 b=OwWvIaEtXN4Uq76a6xuok/H5IkaEtZFLVELeLsaRR8CJWwZmjwoLZekv
 Cjc1tUXTbdb6LnqV/mApdFaMI33PA/hkMPUaazK8Cyu+E4UPiFbjRFlOO
 qbI+dhMTgZVGg7AhKtODBfUz9emNVIgH65UYL0vDsbMymFiNvwUHrXdw4
 r/ff9xEDzOzWp5UE+vOOxcfsY+Rj1kT2xifcovm/xdb7L1JVPFVd4E/Hy
 v0dp0+bRdQ5u48bGrYPVTpSurrRATEPbwGddAeAs3DUvDu0/2F+O9jwz4
 Gg5O66jauDSRXW6a0UldPfUssHJWv3t7hTtnPkiGAfAParOfJwH2VUib6 w==;
X-CSE-ConnectionGUID: bzwlwwtCQZGOVF/NZplTug==
X-CSE-MsgGUID: kyz6EDKSQHuzUJawaxgGDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44828725"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44828725"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 01:32:30 -0700
X-CSE-ConnectionGUID: lcMaggfDTeO9dovQnXkjAQ==
X-CSE-MsgGUID: /TimetrrQOmRbCm72FNl0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126612448"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2025 01:32:26 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 11/16] drm/i915/dpll: Change arguments for get_freq hook
Date: Wed,  2 Apr 2025 14:01:59 +0530
Message-Id: <20250402083204.1523470-12-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402083204.1523470-1-suraj.kandpal@intel.com>
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Change the arguments for get_freq hook in intel_dpll_global_funcs
to use only intel_crtc_state and intel_encoder since that all we need
and the rest can be derived from the above two.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 107 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   5 +-
 3 files changed, 57 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3fe330bf2636..2f1f7dd20e80 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4200,8 +4200,7 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
 
 	icl_set_active_port_dpll(crtc_state, port_dpll_id);
 
-	crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->dpll_global,
-						     &crtc_state->dpll_hw_state);
+	crtc_state->port_clock = intel_dpll_get_freq(crtc_state, encoder);
 }
 
 static void mtl_ddi_get_config(struct intel_encoder *encoder,
@@ -4313,8 +4312,7 @@ static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
 	if (icl_ddi_tc_pll_is_tbt(crtc_state->dpll_global))
 		crtc_state->port_clock = icl_calc_tbt_pll_link(display, encoder->port);
 	else
-		crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->dpll_global,
-							     &crtc_state->dpll_hw_state);
+		crtc_state->port_clock = intel_dpll_get_freq(crtc_state, encoder);
 }
 
 static void icl_ddi_tc_get_config(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 287ad58dc95c..8b4c35245190 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -76,7 +76,7 @@ struct intel_dpll_global_funcs {
 			struct intel_dpll_global *pll);
 
 	/*
-	 * Hook for disabling the shared pll, called from intel_disable_global_dpll()
+	 * Hook for disabling the shared pll, called from intel_disable_dpll_global()
 	 * only when it is safe to disable the pll, i.e., there are no more
 	 * tracked users for it.
 	 */
@@ -97,9 +97,8 @@ struct intel_dpll_global_funcs {
 	 * Hook for calculating the pll's output frequency based on its passed
 	 * in state.
 	 */
-	int (*get_freq)(struct intel_display *i915,
-			const struct intel_dpll_global *pll,
-			const struct intel_dpll_hw_state *dpll_hw_state);
+	int (*get_freq)(struct intel_crtc_state *crtc_state,
+			struct intel_encoder *encoder);
 };
 
 struct intel_dpll_mgr {
@@ -1006,11 +1005,11 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
 	*r2_out = best.r2;
 }
 
-static int hsw_ddi_wrpll_get_freq(struct intel_display *display,
-				  const struct intel_dpll_global *pll,
-				  const struct intel_dpll_hw_state *dpll_hw_state)
+static int hsw_ddi_wrpll_get_freq(struct intel_crtc_state *crtc_state,
+				  struct intel_encoder *encoder)
 {
-	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct hsw_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.hsw;
 	int refclk;
 	int n, p, r;
 	u32 wrpll = hw_state->wrpll;
@@ -1051,7 +1050,6 @@ static int
 hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
-	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct hsw_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.hsw;
@@ -1064,8 +1062,7 @@ hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
 		WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
 		WRPLL_DIVIDER_POST(p);
 
-	crtc_state->port_clock = hsw_ddi_wrpll_get_freq(display, NULL,
-							&crtc_state->dpll_hw_state);
+	crtc_state->port_clock = hsw_ddi_wrpll_get_freq(crtc_state, NULL);
 
 	return 0;
 }
@@ -1132,10 +1129,11 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 	return pll;
 }
 
-static int hsw_ddi_lcpll_get_freq(struct intel_display *display,
-				  const struct intel_dpll_global *pll,
-				  const struct intel_dpll_hw_state *dpll_hw_state)
+static int hsw_ddi_lcpll_get_freq(struct intel_crtc_state *crtc_state,
+				  struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_dpll_global *pll = crtc_state->dpll_global;
 	int link_clock = 0;
 
 	switch (pll->info->id) {
@@ -1184,11 +1182,11 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
 				      BIT(DPLL_ID_SPLL));
 }
 
-static int hsw_ddi_spll_get_freq(struct intel_display *display,
-				 const struct intel_dpll_global *pll,
-				 const struct intel_dpll_hw_state *dpll_hw_state)
+static int hsw_ddi_spll_get_freq(struct intel_crtc_state *crtc_state,
+				 struct intel_encoder *encoder)
 {
-	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct hsw_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.hsw;
 	int link_clock = 0;
 
 	switch (hw_state->spll & SPLL_FREQ_MASK) {
@@ -1977,20 +1975,21 @@ static int skl_get_dpll(struct intel_atomic_state *state,
 	return 0;
 }
 
-static int skl_ddi_pll_get_freq(struct intel_display *display,
-				const struct intel_dpll_global *pll,
-				const struct intel_dpll_hw_state *dpll_hw_state)
+static int skl_ddi_pll_get_freq(struct intel_crtc_state *crtc_state,
+				struct intel_encoder *encoder)
 {
-	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_dpll_global *pll = crtc_state->dpll_global;
+	const struct skl_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.skl;
 
 	/*
 	 * ctrl1 register is already shifted for each pll, just use 0 to get
 	 * the internal shift for each field
 	 */
 	if (hw_state->ctrl1 & DPLL_CTRL1_HDMI_MODE(0))
-		return skl_ddi_wrpll_get_freq(display, pll, dpll_hw_state);
+		return skl_ddi_wrpll_get_freq(display, pll, &crtc_state->dpll_hw_state);
 	else
-		return skl_ddi_lcpll_get_freq(display, pll, dpll_hw_state);
+		return skl_ddi_lcpll_get_freq(display, pll, &crtc_state->dpll_hw_state);
 }
 
 static void skl_update_dpll_ref_clks(struct intel_display *display)
@@ -2376,11 +2375,11 @@ static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static int bxt_ddi_pll_get_freq(struct intel_display *display,
-				const struct intel_dpll_global *pll,
-				const struct intel_dpll_hw_state *dpll_hw_state)
+static int bxt_ddi_pll_get_freq(struct intel_crtc_state *crtc_state,
+				struct intel_encoder *encoder)
 {
-	const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct bxt_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.bxt;
 	struct dpll clock;
 
 	clock.m1 = 2;
@@ -2408,7 +2407,6 @@ bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 static int
 bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
 	struct dpll clk_div = {};
 	int ret;
 
@@ -2418,8 +2416,7 @@ bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
-	crtc_state->port_clock = bxt_ddi_pll_get_freq(display, NULL,
-						      &crtc_state->dpll_hw_state);
+	crtc_state->port_clock = bxt_ddi_pll_get_freq(crtc_state, NULL);
 
 	return 0;
 }
@@ -2773,10 +2770,11 @@ static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static int icl_ddi_tbt_pll_get_freq(struct intel_display *display,
-				    const struct intel_dpll_global *pll,
-				    const struct intel_dpll_hw_state *dpll_hw_state)
+static int icl_ddi_tbt_pll_get_freq(struct intel_crtc_state *crtc_state,
+				    struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+
 	/*
 	 * The PLL outputs multiple frequencies at the same time, selection is
 	 * made at DDI clock mux level.
@@ -2844,11 +2842,11 @@ icl_calc_wrpll(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static int icl_ddi_combo_pll_get_freq(struct intel_display *display,
-				      const struct intel_dpll_global *pll,
-				      const struct intel_dpll_hw_state *dpll_hw_state)
+static int icl_ddi_combo_pll_get_freq(struct intel_crtc_state *crtc_state,
+				      struct intel_encoder *encoder)
 {
-	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct icl_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.icl;
 	int ref_clock = icl_wrpll_ref_clock(display);
 	u32 dco_fraction;
 	u32 p0, p1, p2, dco_freq;
@@ -3217,11 +3215,11 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static int icl_ddi_mg_pll_get_freq(struct intel_display *display,
-				   const struct intel_dpll_global *pll,
-				   const struct intel_dpll_hw_state *dpll_hw_state)
+static int icl_ddi_mg_pll_get_freq(struct intel_crtc_state *crtc_state,
+				   struct intel_encoder *encoder)
 {
-	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct icl_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.icl;
 	u32 m1, m2_int, m2_frac, div1, div2, ref_clock;
 	u64 tmp;
 
@@ -3354,8 +3352,7 @@ static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
 	/* this is mainly for the fastset check */
 	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
 
-	crtc_state->port_clock = icl_ddi_combo_pll_get_freq(display, NULL,
-							    &port_dpll->hw_state);
+	crtc_state->port_clock = icl_ddi_combo_pll_get_freq(crtc_state, NULL);
 
 	return 0;
 }
@@ -3453,8 +3450,7 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 	else
 		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
 
-	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(display, NULL,
-							 &port_dpll->hw_state);
+	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(crtc_state, NULL);
 
 	return 0;
 }
@@ -4502,20 +4498,23 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
 
 /**
  * intel_dpll_get_freq - calculate the DPLL's output frequency
- * @display: intel_display device
- * @pll: DPLL for which to calculate the output frequency
- * @dpll_hw_state: DPLL state from which to calculate the output frequency
+ * @crtc_state: crtc_state which contains the DPLL state from which we
+ * calculate frequency
+ * @encoder: Encoder for which the freq is calculated
  *
- * Return the output frequency corresponding to @pll's passed in @dpll_hw_state.
+ * Return the output frequency corresponding to @pll's passed in
+ * @crtc_state->dpll_hw_state.
  */
-int intel_dpll_get_freq(struct intel_display *display,
-			const struct intel_dpll_global *pll,
-			const struct intel_dpll_hw_state *dpll_hw_state)
+int intel_dpll_get_freq(struct intel_crtc_state *crtc_state,
+			struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_dpll_global *pll = crtc_state->dpll_global;
+
 	if (drm_WARN_ON(display->drm, !pll->info->funcs->get_freq))
 		return 0;
 
-	return pll->info->funcs->get_freq(display, pll, dpll_hw_state);
+	return pll->info->funcs->get_freq(crtc_state, encoder);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 6215da164ffc..d039056efbbc 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -412,9 +412,8 @@ void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
 void intel_update_active_dpll(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc,
 			      struct intel_encoder *encoder);
-int intel_dpll_get_freq(struct intel_display *display,
-			const struct intel_dpll_global *pll,
-			const struct intel_dpll_hw_state *dpll_hw_state);
+int intel_dpll_get_freq(struct intel_crtc_state *crtc_state,
+			struct intel_encoder *encoder);
 bool intel_dpll_get_hw_state(struct intel_display *display,
 			     struct intel_dpll_global *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state);
-- 
2.34.1

