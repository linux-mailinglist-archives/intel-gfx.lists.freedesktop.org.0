Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C41DA436FC
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:09:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E5E10E5AB;
	Tue, 25 Feb 2025 08:09:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rf5WTCau";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DEBD10E5AB;
 Tue, 25 Feb 2025 08:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740470990; x=1772006990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RcIicXPGD2d7ejytOkxvjoNsPoVzPrVgBl429nS46zI=;
 b=Rf5WTCauUgkKsf3IWDOnvHSTOVijMmJwM7lm50q2llrq+Awf3vx5j2aZ
 WNQAbsNhc32ZpXP9lTtFsA1aS11BOTwXZQTdtrb2ukSvBdLdI33+AxEzX
 vuVYm1Nej2RvBVEEL44KWBpEC1zi2HhMLZctBB5REuKKMZh/N2iFv9SuD
 UdJJPJrW+qZ7PVJ63Rlt4Q92qFfxbxtnuP01HjD3HvJZXpLYfRYEOZMFC
 quZAylUy8U1l92UD+fcKrKpZ6mmqV0TxIV2aB6TPqpD4hR1k3bOGlHIR8
 b6ySo8UeoMqVeRQktEiqpfKWABqusCqRlzySDCt560ejql4KcezRgBFDj g==;
X-CSE-ConnectionGUID: 6KaCiZaXQRKr/v7t8G6EsA==
X-CSE-MsgGUID: Cw2c/r7HQvqyTYDrBsb0Rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="66634551"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="66634551"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:09:50 -0800
X-CSE-ConnectionGUID: kPkSYdYoQdmTpcjPDFaeyw==
X-CSE-MsgGUID: OWq2joBlSCSQNO+4XLZ48g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116519384"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 25 Feb 2025 00:09:47 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 07/11] drm/i915/dpll: Change argument for enable hook in
 intel_global_dpll_funcs
Date: Tue, 25 Feb 2025 13:39:23 +0530
Message-Id: <20250225080927.157437-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250225080927.157437-1-suraj.kandpal@intel.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
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

Change the arguments for enable hook in intel_global_dpll_funcs to only
accept crtc_state. This is because we really don't need those extra
arguments everything can be derived from crtc_state and we need
intel_encoder for PLL enablement when DISPLAY_VER() >= 14.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 100 ++++++++++--------
 1 file changed, 54 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index bd623fdddfdc..c39f7d73a89f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -66,9 +66,8 @@ struct intel_global_dpll_funcs {
 	 * Hook for enabling the pll, called from intel_enable_global_dpll() if
 	 * the pll is not already enabled.
 	 */
-	void (*enable)(struct intel_display *display,
-		       struct intel_global_dpll *pll,
-		       const struct intel_dpll_hw_state *dpll_hw_state);
+	void (*enable)(const struct intel_crtc_state *state,
+		       struct intel_encoder *encoder);
 
 	/*
 	 * Hook for disabling the pll, called from intel_disable_global_dpll()
@@ -226,13 +225,15 @@ intel_tc_pll_enable_reg(struct intel_display *display,
 	return MG_PLL_ENABLE(tc_port);
 }
 
-static void _intel_enable_shared_dpll(struct intel_display *display,
-				      struct intel_global_dpll *pll)
+static void _intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_global_dpll *pll = crtc_state->global_dpll;
+
 	if (pll->info->power_domain)
 		pll->wakeref = intel_display_power_get(display, pll->info->power_domain);
 
-	pll->info->funcs->enable(display, pll, &pll->state.hw_state);
+	pll->info->funcs->enable(crtc_state, NULL);
 	pll->on = true;
 }
 
@@ -286,7 +287,7 @@ void intel_enable_global_dpll(const struct intel_crtc_state *crtc_state)
 
 	drm_dbg_kms(display->drm, "enabling %s\n", pll->info->name);
 
-	_intel_enable_shared_dpll(display, pll);
+	_intel_enable_shared_dpll(crtc_state);
 
 out:
 	mutex_unlock(&display->dpll.lock);
@@ -558,11 +559,12 @@ static void ibx_assert_pch_refclk_enabled(struct intel_display *display)
 				 "PCH refclk assertion failure, should be active but is disabled\n");
 }
 
-static void ibx_pch_dpll_enable(struct intel_display *display,
-				struct intel_global_dpll *pll,
-				const struct intel_dpll_hw_state *dpll_hw_state)
+static void ibx_pch_dpll_enable(const struct intel_crtc_state *crtc_state,
+				struct intel_encoder *encoder)
 {
-	const struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_global_dpll *pll = crtc_state->global_dpll;
+	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	const enum intel_dpll_id id = pll->info->id;
 
 	/* PCH refclock must be enabled first */
@@ -689,11 +691,12 @@ static const struct intel_dpll_mgr pch_pll_mgr = {
 	.compare_hw_state = ibx_compare_hw_state,
 };
 
-static void hsw_ddi_wrpll_enable(struct intel_display *display,
-				 struct intel_global_dpll *pll,
-				 const struct intel_dpll_hw_state *dpll_hw_state)
+static void hsw_ddi_wrpll_enable(const struct intel_crtc_state *crtc_state,
+				 struct intel_encoder *encoder)
 {
-	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_global_dpll *pll = crtc_state->global_dpll;
+	const struct hsw_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.hsw;
 	const enum intel_dpll_id id = pll->info->id;
 
 	intel_de_write(display, WRPLL_CTL(id), hw_state->wrpll);
@@ -701,11 +704,11 @@ static void hsw_ddi_wrpll_enable(struct intel_display *display,
 	udelay(20);
 }
 
-static void hsw_ddi_spll_enable(struct intel_display *display,
-				struct intel_global_dpll *pll,
-				const struct intel_dpll_hw_state *dpll_hw_state)
+static void hsw_ddi_spll_enable(const struct intel_crtc_state *crtc_state,
+				struct intel_encoder *encoder)
 {
-	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct hsw_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.hsw;
 
 	intel_de_write(display, SPLL_CTL, hw_state->spll);
 	intel_de_posting_read(display, SPLL_CTL);
@@ -1284,9 +1287,8 @@ static const struct intel_global_dpll_funcs hsw_ddi_spll_funcs = {
 	.get_freq = hsw_ddi_spll_get_freq,
 };
 
-static void hsw_ddi_lcpll_enable(struct intel_display *display,
-				 struct intel_global_dpll *pll,
-				 const struct intel_dpll_hw_state *hw_state)
+static void hsw_ddi_lcpll_enable(const struct intel_crtc_state *crtc_state,
+				 struct intel_encoder *encoder)
 {
 }
 
@@ -1377,11 +1379,12 @@ static void skl_ddi_pll_write_ctrl1(struct intel_display *display,
 	intel_de_posting_read(display, DPLL_CTRL1);
 }
 
-static void skl_ddi_pll_enable(struct intel_display *display,
-			       struct intel_global_dpll *pll,
-			       const struct intel_dpll_hw_state *dpll_hw_state)
+static void skl_ddi_pll_enable(const struct intel_crtc_state *crtc_state,
+			       struct intel_encoder *encoder)
 {
-	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_global_dpll *pll = crtc_state->global_dpll;
+	const struct skl_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
 
@@ -1399,11 +1402,12 @@ static void skl_ddi_pll_enable(struct intel_display *display,
 		drm_err(display->drm, "DPLL %d not locked\n", id);
 }
 
-static void skl_ddi_dpll0_enable(struct intel_display *display,
-				 struct intel_global_dpll *pll,
-				 const struct intel_dpll_hw_state *dpll_hw_state)
+static void skl_ddi_dpll0_enable(const struct intel_crtc_state *crtc_state,
+				 struct intel_encoder *encoder)
 {
-	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_global_dpll *pll = crtc_state->global_dpll;
+	const struct skl_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.skl;
 
 	skl_ddi_pll_write_ctrl1(display, pll, hw_state);
 }
@@ -2037,11 +2041,12 @@ static const struct intel_dpll_mgr skl_pll_mgr = {
 	.compare_hw_state = skl_compare_hw_state,
 };
 
-static void bxt_ddi_pll_enable(struct intel_display *display,
-			       struct intel_global_dpll *pll,
-			       const struct intel_dpll_hw_state *dpll_hw_state)
+static void bxt_ddi_pll_enable(const struct intel_crtc_state *crtc_state,
+			       struct intel_encoder *encoder)
 {
-	const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_global_dpll *pll = crtc_state->global_dpll;
+	const struct bxt_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.bxt;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 	enum dpio_phy phy = DPIO_PHY0;
 	enum dpio_channel ch = DPIO_CH0;
@@ -3956,11 +3961,12 @@ static void adlp_cmtg_clock_gating_wa(struct intel_display *display, struct inte
 		drm_dbg_kms(display->drm, "Unexpected flags in TRANS_CMTG_CHICKEN: %08x\n", val);
 }
 
-static void combo_pll_enable(struct intel_display *display,
-			     struct intel_global_dpll *pll,
-			     const struct intel_dpll_hw_state *dpll_hw_state)
+static void combo_pll_enable(const struct intel_crtc_state *crtc_state,
+			     struct intel_encoder *encoder)
 {
-	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_global_dpll *pll = crtc_state->global_dpll;
+	const struct icl_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.icl;
 	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
 
 	icl_pll_power_enable(display, pll, enable_reg);
@@ -3980,11 +3986,12 @@ static void combo_pll_enable(struct intel_display *display,
 	/* DVFS post sequence would be here. See the comment above. */
 }
 
-static void tbt_pll_enable(struct intel_display *display,
-			   struct intel_global_dpll *pll,
-			   const struct intel_dpll_hw_state *dpll_hw_state)
+static void tbt_pll_enable(const struct intel_crtc_state *crtc_state,
+			   struct intel_encoder *encoder)
 {
-	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_global_dpll *pll = crtc_state->global_dpll;
+	const struct icl_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.icl;
 
 	icl_pll_power_enable(display, pll, TBT_PLL_ENABLE);
 
@@ -4001,11 +4008,12 @@ static void tbt_pll_enable(struct intel_display *display,
 	/* DVFS post sequence would be here. See the comment above. */
 }
 
-static void mg_pll_enable(struct intel_display *display,
-			  struct intel_global_dpll *pll,
-			  const struct intel_dpll_hw_state *dpll_hw_state)
+static void mg_pll_enable(const struct intel_crtc_state *crtc_state,
+			  struct intel_encoder *encoder)
 {
-	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_global_dpll *pll = crtc_state->global_dpll;
+	const struct icl_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.icl;
 	i915_reg_t enable_reg = intel_tc_pll_enable_reg(display, pll);
 
 	icl_pll_power_enable(display, pll, enable_reg);
-- 
2.34.1

