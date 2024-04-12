Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5B88A35A6
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4729510F7A0;
	Fri, 12 Apr 2024 18:27:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RELw/Jzr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D07110F7A8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946450; x=1744482450;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HujrwIvdedwXCxz/CbCv+6yslRLAPlK8L1qC65FXU/c=;
 b=RELw/Jzrw1TCfOrQIZLTe09T8l6akAJxO+ixAl+XagRk6n1yQwZQZ8Ze
 BM2QljZc9r5tZzSX2H0HMh9CHP+p089gIJSZyCu1x+PgDd69Aq3rQfosZ
 57/BhXWiEoCJahLEt1SuqKIlhbTO3StDuGONJMZ53sKCtVVMZqxST7DOI
 leCWdhkILXAD4vVj7xp+y6JiQoEdYs6Y44iQb5iZYvZiAgr2nXFMisrJe
 6Bq24XpVTn7kcIFVGYgP2V0kWKtff+vSpoBKUjz2q8aJEL43SZ2qsHWMN
 LJzVFk2Pr1zMtYkx1z19Hot3e1mg0FsYi0rh/VapRWmDXgbC446NBlu08 Q==;
X-CSE-ConnectionGUID: OhkCyItcRbiCAUAhvvwT5g==
X-CSE-MsgGUID: LVtTxvKgRxiSremq5duxlg==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560540"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560540"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:29 -0700
X-CSE-ConnectionGUID: IZH9jwl6R0OPHcxs87RkMg==
X-CSE-MsgGUID: uSaRIUH2Rq6BmaZf6qBzng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394608"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/18] drm/i915: Pass the PLL hw_state to pll->enable()
Date: Fri, 12 Apr 2024 21:26:53 +0300
Message-ID: <20240412182703.19916-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
References: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Stop rummaging around inside pll->state directly in the low
level pll->enable() functions, and instead let the higher level
code figure out where the correct state is stored and pass it in.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 69 ++++++++++---------
 1 file changed, 37 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 51a7d8df0ca3..1a78093e41f5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -64,7 +64,8 @@ struct intel_shared_dpll_funcs {
 	 * the pll is not already enabled.
 	 */
 	void (*enable)(struct drm_i915_private *i915,
-		       struct intel_shared_dpll *pll);
+		       struct intel_shared_dpll *pll,
+		       const struct intel_dpll_hw_state *dpll_hw_state);
 
 	/*
 	 * Hook for disabling the pll, called from intel_disable_shared_dpll()
@@ -227,7 +228,7 @@ static void _intel_enable_shared_dpll(struct drm_i915_private *i915,
 	if (pll->info->power_domain)
 		pll->wakeref = intel_display_power_get(i915, pll->info->power_domain);
 
-	pll->info->funcs->enable(i915, pll);
+	pll->info->funcs->enable(i915, pll, &pll->state.hw_state);
 	pll->on = true;
 }
 
@@ -553,9 +554,9 @@ static void ibx_assert_pch_refclk_enabled(struct drm_i915_private *i915)
 }
 
 static void ibx_pch_dpll_enable(struct drm_i915_private *i915,
-				struct intel_shared_dpll *pll)
+				struct intel_shared_dpll *pll,
+				const struct intel_dpll_hw_state *hw_state)
 {
-	const struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	const enum intel_dpll_id id = pll->info->id;
 
 	/* PCH refclock must be enabled first */
@@ -677,9 +678,9 @@ static const struct intel_dpll_mgr pch_pll_mgr = {
 };
 
 static void hsw_ddi_wrpll_enable(struct drm_i915_private *i915,
-				 struct intel_shared_dpll *pll)
+				 struct intel_shared_dpll *pll,
+				 const struct intel_dpll_hw_state *hw_state)
 {
-	const struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	const enum intel_dpll_id id = pll->info->id;
 
 	intel_de_write(i915, WRPLL_CTL(id), hw_state->wrpll);
@@ -688,10 +689,9 @@ static void hsw_ddi_wrpll_enable(struct drm_i915_private *i915,
 }
 
 static void hsw_ddi_spll_enable(struct drm_i915_private *i915,
-				struct intel_shared_dpll *pll)
+				struct intel_shared_dpll *pll,
+				const struct intel_dpll_hw_state *hw_state)
 {
-	const struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
-
 	intel_de_write(i915, SPLL_CTL, hw_state->spll);
 	intel_de_posting_read(i915, SPLL_CTL);
 	udelay(20);
@@ -1259,7 +1259,8 @@ static const struct intel_shared_dpll_funcs hsw_ddi_spll_funcs = {
 };
 
 static void hsw_ddi_lcpll_enable(struct drm_i915_private *i915,
-				 struct intel_shared_dpll *pll)
+				 struct intel_shared_dpll *pll,
+				 const struct intel_dpll_hw_state *hw_state)
 {
 }
 
@@ -1337,9 +1338,9 @@ static const struct skl_dpll_regs skl_dpll_regs[4] = {
 };
 
 static void skl_ddi_pll_write_ctrl1(struct drm_i915_private *i915,
-				    struct intel_shared_dpll *pll)
+				    struct intel_shared_dpll *pll,
+				    const struct intel_dpll_hw_state *hw_state)
 {
-	const struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	const enum intel_dpll_id id = pll->info->id;
 
 	intel_de_rmw(i915, DPLL_CTRL1,
@@ -1351,13 +1352,13 @@ static void skl_ddi_pll_write_ctrl1(struct drm_i915_private *i915,
 }
 
 static void skl_ddi_pll_enable(struct drm_i915_private *i915,
-			       struct intel_shared_dpll *pll)
+			       struct intel_shared_dpll *pll,
+			       const struct intel_dpll_hw_state *hw_state)
 {
-	const struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
 
-	skl_ddi_pll_write_ctrl1(i915, pll);
+	skl_ddi_pll_write_ctrl1(i915, pll, hw_state);
 
 	intel_de_write(i915, regs[id].cfgcr1, hw_state->cfgcr1);
 	intel_de_write(i915, regs[id].cfgcr2, hw_state->cfgcr2);
@@ -1372,9 +1373,10 @@ static void skl_ddi_pll_enable(struct drm_i915_private *i915,
 }
 
 static void skl_ddi_dpll0_enable(struct drm_i915_private *i915,
-				 struct intel_shared_dpll *pll)
+				 struct intel_shared_dpll *pll,
+				 const struct intel_dpll_hw_state *hw_state)
 {
-	skl_ddi_pll_write_ctrl1(i915, pll);
+	skl_ddi_pll_write_ctrl1(i915, pll, hw_state);
 }
 
 static void skl_ddi_pll_disable(struct drm_i915_private *i915,
@@ -1996,9 +1998,9 @@ static const struct intel_dpll_mgr skl_pll_mgr = {
 };
 
 static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
-			       struct intel_shared_dpll *pll)
+			       struct intel_shared_dpll *pll,
+			       const struct intel_dpll_hw_state *hw_state)
 {
-	const struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 	enum dpio_phy phy;
 	enum dpio_channel ch;
@@ -3697,9 +3699,9 @@ static bool tbt_pll_get_hw_state(struct drm_i915_private *i915,
 }
 
 static void icl_dpll_write(struct drm_i915_private *i915,
-			   struct intel_shared_dpll *pll)
+			   struct intel_shared_dpll *pll,
+			   const struct intel_dpll_hw_state *hw_state)
 {
-	struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	const enum intel_dpll_id id = pll->info->id;
 	i915_reg_t cfgcr0_reg, cfgcr1_reg, div0_reg = INVALID_MMIO_REG;
 
@@ -3739,9 +3741,9 @@ static void icl_dpll_write(struct drm_i915_private *i915,
 }
 
 static void icl_mg_pll_write(struct drm_i915_private *i915,
-			     struct intel_shared_dpll *pll)
+			     struct intel_shared_dpll *pll,
+			     const struct intel_dpll_hw_state *hw_state)
 {
-	struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	enum tc_port tc_port = icl_pll_id_to_tc_port(pll->info->id);
 
 	/*
@@ -3782,9 +3784,9 @@ static void icl_mg_pll_write(struct drm_i915_private *i915,
 }
 
 static void dkl_pll_write(struct drm_i915_private *i915,
-			  struct intel_shared_dpll *pll)
+			  struct intel_shared_dpll *pll,
+			  const struct intel_dpll_hw_state *hw_state)
 {
-	struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	enum tc_port tc_port = icl_pll_id_to_tc_port(pll->info->id);
 	u32 val;
 
@@ -3897,13 +3899,14 @@ static void adlp_cmtg_clock_gating_wa(struct drm_i915_private *i915, struct inte
 }
 
 static void combo_pll_enable(struct drm_i915_private *i915,
-			     struct intel_shared_dpll *pll)
+			     struct intel_shared_dpll *pll,
+			     const struct intel_dpll_hw_state *hw_state)
 {
 	i915_reg_t enable_reg = intel_combo_pll_enable_reg(i915, pll);
 
 	icl_pll_power_enable(i915, pll, enable_reg);
 
-	icl_dpll_write(i915, pll);
+	icl_dpll_write(i915, pll, hw_state);
 
 	/*
 	 * DVFS pre sequence would be here, but in our driver the cdclk code
@@ -3919,11 +3922,12 @@ static void combo_pll_enable(struct drm_i915_private *i915,
 }
 
 static void tbt_pll_enable(struct drm_i915_private *i915,
-			   struct intel_shared_dpll *pll)
+			   struct intel_shared_dpll *pll,
+			   const struct intel_dpll_hw_state *hw_state)
 {
 	icl_pll_power_enable(i915, pll, TBT_PLL_ENABLE);
 
-	icl_dpll_write(i915, pll);
+	icl_dpll_write(i915, pll, hw_state);
 
 	/*
 	 * DVFS pre sequence would be here, but in our driver the cdclk code
@@ -3937,16 +3941,17 @@ static void tbt_pll_enable(struct drm_i915_private *i915,
 }
 
 static void mg_pll_enable(struct drm_i915_private *i915,
-			  struct intel_shared_dpll *pll)
+			  struct intel_shared_dpll *pll,
+			  const struct intel_dpll_hw_state *hw_state)
 {
 	i915_reg_t enable_reg = intel_tc_pll_enable_reg(i915, pll);
 
 	icl_pll_power_enable(i915, pll, enable_reg);
 
 	if (DISPLAY_VER(i915) >= 12)
-		dkl_pll_write(i915, pll);
+		dkl_pll_write(i915, pll, hw_state);
 	else
-		icl_mg_pll_write(i915, pll);
+		icl_mg_pll_write(i915, pll, hw_state);
 
 	/*
 	 * DVFS pre sequence would be here, but in our driver the cdclk code
-- 
2.43.2

