Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 345A328E72D
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 21:20:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51FCD6EB3B;
	Wed, 14 Oct 2020 19:20:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 177196EB34
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 19:20:50 +0000 (UTC)
IronPort-SDR: 4no8LrMBnFZWoc+asey/6Klq3GL66SFlEXtzCFUqNXgQ34FqWe7XlNNfnskZ/IF7sAg2AiCcsw
 KuDF9QxiuNAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9774"; a="183703015"
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; d="scan'208";a="183703015"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 12:20:44 -0700
IronPort-SDR: rBjCkqEN8JF8VrZjuvwlXZ0vElFJtaap7CAjkx5vM6ZTIwQKa7BUR6lVkh9ykya731QrKQqH8a
 4t0ETFx95JWA==
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; d="scan'208";a="345781245"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 12:20:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Oct 2020 12:19:31 -0700
Message-Id: <20201014191937.1266226-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014191937.1266226-1-lucas.demarchi@intel.com>
References: <20201014191937.1266226-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 05/11] drm/i915/dg1: Add and setup DPLLs for DG1
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

From: Aditya Swarup <aditya.swarup@intel.com>

Add entries for dg1 plls and setup dg1_pll_mgr to reuse ICL callbacks.
Initial setup for shared dplls DPLL0/1 for DDIA/DDIB and DPLL2/3 for
DDI-TC1/DDI-TC2. Configure dpll cfgcrx registers to drive the plls on
DG1.

v2 (Lucas): Reword commit message and add missing update_ref_clks hook
   (requested by Matt Roper)

Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 42 +++++++++++++++++--
 1 file changed, 38 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 48c30c50a301..2f412d2c9d09 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3546,7 +3546,17 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 
 	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
 
-	if (IS_ROCKETLAKE(dev_priv)) {
+	if (IS_DG1(dev_priv)) {
+		if (port == PORT_D || port == PORT_E) {
+			dpll_mask =
+				BIT(DPLL_ID_DG1_DPLL2) |
+				BIT(DPLL_ID_DG1_DPLL3);
+		} else {
+			dpll_mask =
+				BIT(DPLL_ID_DG1_DPLL0) |
+				BIT(DPLL_ID_DG1_DPLL1);
+		}
+	} else if (IS_ROCKETLAKE(dev_priv)) {
 		dpll_mask =
 			BIT(DPLL_ID_EHL_DPLL4) |
 			BIT(DPLL_ID_ICL_DPLL1) |
@@ -3842,7 +3852,10 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	if (!(val & PLL_ENABLE))
 		goto out;
 
-	if (IS_ROCKETLAKE(dev_priv)) {
+	if (IS_DG1(dev_priv)) {
+		hw_state->cfgcr0 = intel_de_read(dev_priv, DG1_DPLL_CFGCR0(id));
+		hw_state->cfgcr1 = intel_de_read(dev_priv, DG1_DPLL_CFGCR1(id));
+	} else if (IS_ROCKETLAKE(dev_priv)) {
 		hw_state->cfgcr0 = intel_de_read(dev_priv,
 						 RKL_DPLL_CFGCR0(id));
 		hw_state->cfgcr1 = intel_de_read(dev_priv,
@@ -3895,7 +3908,10 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
 	const enum intel_dpll_id id = pll->info->id;
 	i915_reg_t cfgcr0_reg, cfgcr1_reg;
 
-	if (IS_ROCKETLAKE(dev_priv)) {
+	if (IS_DG1(dev_priv)) {
+		cfgcr0_reg = DG1_DPLL_CFGCR0(id);
+		cfgcr1_reg = DG1_DPLL_CFGCR1(id);
+	} else if (IS_ROCKETLAKE(dev_priv)) {
 		cfgcr0_reg = RKL_DPLL_CFGCR0(id);
 		cfgcr1_reg = RKL_DPLL_CFGCR1(id);
 	} else if (INTEL_GEN(dev_priv) >= 12) {
@@ -4339,6 +4355,22 @@ static const struct intel_dpll_mgr rkl_pll_mgr = {
 	.dump_hw_state = icl_dump_hw_state,
 };
 
+static const struct dpll_info dg1_plls[] = {
+	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_DG1_DPLL0, 0 },
+	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_DG1_DPLL1, 0 },
+	{ "DPLL 2", &combo_pll_funcs, DPLL_ID_DG1_DPLL2, 0 },
+	{ "DPLL 3", &combo_pll_funcs, DPLL_ID_DG1_DPLL3, 0 },
+	{ },
+};
+
+static const struct intel_dpll_mgr dg1_pll_mgr = {
+	.dpll_info = dg1_plls,
+	.get_dplls = icl_get_dplls,
+	.put_dplls = icl_put_dplls,
+	.update_ref_clks = icl_update_dpll_ref_clks,
+	.dump_hw_state = icl_dump_hw_state,
+};
+
 /**
  * intel_shared_dpll_init - Initialize shared DPLLs
  * @dev: drm device
@@ -4352,7 +4384,9 @@ void intel_shared_dpll_init(struct drm_device *dev)
 	const struct dpll_info *dpll_info;
 	int i;
 
-	if (IS_ROCKETLAKE(dev_priv))
+	if (IS_DG1(dev_priv))
+		dpll_mgr = &dg1_pll_mgr;
+	else if (IS_ROCKETLAKE(dev_priv))
 		dpll_mgr = &rkl_pll_mgr;
 	else if (INTEL_GEN(dev_priv) >= 12)
 		dpll_mgr = &tgl_pll_mgr;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
