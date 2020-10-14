Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5250828E54A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 19:24:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AD9589D5F;
	Wed, 14 Oct 2020 17:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E208C89D5F
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 17:24:40 +0000 (UTC)
IronPort-SDR: ji/mj1iVvG5lm1JvXsFJMM6vICwCu2pC25W/YaD94YzEMil1EKP/23SwAZJu8nex832xKViSwd
 rASdFWfljobA==
X-IronPort-AV: E=McAfee;i="6000,8403,9774"; a="166272386"
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; d="scan'208";a="166272386"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 10:24:39 -0700
IronPort-SDR: J4rLnGvBioaVF35XNAQvpuK7IvpdvWjl5ecbjh+3vdkxExMVRg9y4H4qG589g1LBUneyEmTrn8
 b18dfIYW00uw==
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; d="scan'208";a="521501795"
Received: from kabaloak-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.228.174])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 10:24:38 -0700
Date: Wed, 14 Oct 2020 10:24:36 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201014172436.kwzj7wbj2hcw7kln@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20201012212959.871513-1-lucas.demarchi@intel.com>
 <20201012212959.871513-6-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201012212959.871513-6-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 05/15] drm/i915/dg1: Add and setup DPLLs
 for DG1
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 12, 2020 at 02:29:49PM -0700, Lucas De Marchi wrote:
>From: Aditya Swarup <aditya.swarup@intel.com>
>
>Add entries for dg1 plls and setup dg1_pll_mgr to reuse ICL callbacks.
>Initial setup for shared dplls DPLL0/1 for DDIA/DDIB and DPLL2/3 for
>DDI-TC1/DDI-TC2. Configure dpll cfgcrx registers to drive the plls on
>DG1.
>
>v2 (Lucas): Reword commit message and add missing update_ref_clks hook
>   (requested by Matt Roper)
>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 42 +++++++++++++++++--
> 1 file changed, 38 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>index 2cc0e84e41ea..6f093e4e6b43 100644
>--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>@@ -3546,7 +3546,17 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
>
> 	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
>
>-	if (IS_ROCKETLAKE(dev_priv)) {
>+	if (IS_DG1(dev_priv)) {
>+		if (port == PORT_D || port == PORT_E) {
>+			dpll_mask =
>+				BIT(DPLL_ID_DG1_DPLL2) |
>+				BIT(DPLL_ID_DG1_DPLL3);
>+		} else {
>+			dpll_mask =
>+				BIT(DPLL_ID_DG1_DPLL0) |
>+				BIT(DPLL_ID_DG1_DPLL1);
>+		}
>+	} else if (IS_ROCKETLAKE(dev_priv)) {
> 		dpll_mask =
> 			BIT(DPLL_ID_EHL_DPLL4) |
> 			BIT(DPLL_ID_ICL_DPLL1) |
>@@ -3842,7 +3852,10 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
> 	if (!(val & PLL_ENABLE))
> 		goto out;
>
>-	if (IS_ROCKETLAKE(dev_priv)) {
>+	if (IS_DG1(dev_priv)) {
>+		hw_state->cfgcr0 = intel_de_read(dev_priv, DG1_DPLL_CFGCR0(id));
>+		hw_state->cfgcr1 = intel_de_read(dev_priv, DG1_DPLL_CFGCR1(id));
>+	} else if (IS_ROCKETLAKE(dev_priv)) {
> 		hw_state->cfgcr0 = intel_de_read(dev_priv,
> 						 RKL_DPLL_CFGCR0(id));
> 		hw_state->cfgcr1 = intel_de_read(dev_priv,
>@@ -3895,7 +3908,10 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
> 	const enum intel_dpll_id id = pll->info->id;
> 	i915_reg_t cfgcr0_reg, cfgcr1_reg;
>
>-	if (IS_ROCKETLAKE(dev_priv)) {
>+	if (IS_DG1(dev_priv)) {
>+		cfgcr0_reg = DG1_DPLL_CFGCR0(id);
>+		cfgcr1_reg = DG1_DPLL_CFGCR1(id);
>+	} else if (IS_ROCKETLAKE(dev_priv)) {
> 		cfgcr0_reg = RKL_DPLL_CFGCR0(id);
> 		cfgcr1_reg = RKL_DPLL_CFGCR1(id);
> 	} else if (INTEL_GEN(dev_priv) >= 12) {
>@@ -4339,6 +4355,22 @@ static const struct intel_dpll_mgr rkl_pll_mgr = {
> 	.dump_hw_state = icl_dump_hw_state,
> };
>
>+static const struct dpll_info dg1_plls[] = {
>+	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_DG1_DPLL0, 0 },
>+	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_DG1_DPLL1, 0 },
>+	{ "DPLL 2", &combo_pll_funcs, DPLL_ID_DG1_DPLL2, 0 },
>+	{ "DPLL 3", &combo_pll_funcs, DPLL_ID_DG1_DPLL3, 0 },
>+	{ },
>+};
>+
>+static const struct intel_dpll_mgr dg1_pll_mgr = {
>+	.dpll_info = dg1_plls,
>+	.get_dplls = icl_get_dplls,
>+	.put_dplls = icl_put_dplls,
>+	.update_ref_clks = icl_update_dpll_ref_clks,
>+	.dump_hw_state = icl_dump_hw_state,
>+};
>+
> /**
>  * intel_shared_dpll_init - Initialize shared DPLLs
>  * @dev: drm device
>@@ -4352,7 +4384,9 @@ void intel_shared_dpll_init(struct drm_device *dev)
> 	const struct dpll_info *dpll_info;
> 	int i;
>
>-	if (IS_ROCKETLAKE(dev_priv))
>+	if (IS_DG1(dev_priv))
>+		dpll_mgr = &dg1_pll_mgr;
>+	else if (IS_ROCKETLAKE(dev_priv))
> 		dpll_mgr = &rkl_pll_mgr;
> 	else if (INTEL_GEN(dev_priv) >= 12)
> 		dpll_mgr = &tgl_pll_mgr;
>-- 
>2.28.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
