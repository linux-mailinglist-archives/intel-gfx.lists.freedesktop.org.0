Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F3A1FDA6D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:43:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D95246E209;
	Thu, 18 Jun 2020 00:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FFD76E150
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:42:53 +0000 (UTC)
IronPort-SDR: uUsoe6qSVbYiGYcaoqSbnZeeOSgFDkkcbI+EcoRwHGBsIJwoHxsAkmKy9mKZTdz7iK5thZPQBU
 kQIFgR+tvXaA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:42:52 -0700
IronPort-SDR: wfq4+tBeBfuMzAaAHK8cg0ZuPSZKjJhmy5Cj4gyTzoamp1CYXtxtXkSUb+KcaYlvXUYGff2TiU
 aHivZFjpEjMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="477011883"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2020 17:42:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:42:26 -0700
Message-Id: <20200618004240.16263-19-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618004240.16263-1-lucas.demarchi@intel.com>
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 18/32] drm/i915/dg1: Add and setup DPLLs for
 DG1
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

Add entries for dg1 plls and setup dg1_pll_mgr to reuse icl callbacks.
Initial setup for shared dplls DPLL0/1 for DDIA/B and DPLL2/3 for
DDIC/D. Configure dpll cfgcrx registers to drive the plls on DG1.

Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 41 +++++++++++++++++--
 1 file changed, 37 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6f59f9ec453bf..ed2d007d2687e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3527,7 +3527,17 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 		return false;
 	}
 
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
@@ -3817,7 +3827,10 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	if (!(val & PLL_ENABLE))
 		goto out;
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (IS_DG1(dev_priv)) {
+		hw_state->cfgcr0 = intel_de_read(dev_priv, DG1_DPLL_CFGCR0(id));
+		hw_state->cfgcr1 = intel_de_read(dev_priv, DG1_DPLL_CFGCR1(id));
+	} else if (INTEL_GEN(dev_priv) >= 12) {
 		hw_state->cfgcr0 = intel_de_read(dev_priv,
 						 TGL_DPLL_CFGCR0(id));
 		hw_state->cfgcr1 = intel_de_read(dev_priv,
@@ -3870,7 +3883,10 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
 	const enum intel_dpll_id id = pll->info->id;
 	i915_reg_t cfgcr0_reg, cfgcr1_reg;
 
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (IS_DG1(dev_priv)) {
+		cfgcr0_reg = DG1_DPLL_CFGCR0(id);
+		cfgcr1_reg = DG1_DPLL_CFGCR1(id);
+	} else if (INTEL_GEN(dev_priv) >= 12) {
 		cfgcr0_reg = TGL_DPLL_CFGCR0(id);
 		cfgcr1_reg = TGL_DPLL_CFGCR1(id);
 	} else {
@@ -4317,6 +4333,21 @@ static const struct intel_dpll_mgr rkl_pll_mgr = {
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
+	.dump_hw_state = icl_dump_hw_state,
+};
+
 /**
  * intel_shared_dpll_init - Initialize shared DPLLs
  * @dev: drm device
@@ -4330,7 +4361,9 @@ void intel_shared_dpll_init(struct drm_device *dev)
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
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
