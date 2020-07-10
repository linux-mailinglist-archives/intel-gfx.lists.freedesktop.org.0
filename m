Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 858DB21B469
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 13:59:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C6386EBE4;
	Fri, 10 Jul 2020 11:59:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AACC6EBEE
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 11:59:32 +0000 (UTC)
IronPort-SDR: Ecs8aR5qHzWwfdSgx76ULdPwwFKZ1lp885s7alhL0E4BZym4akK4AIcjPNsXpnHxjLd7YQkDqi
 XpcUgfWgi6iA==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149653674"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="149653674"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:32 -0700
IronPort-SDR: QOb9pWRJtVDPo/x9yENbAAbaIjUez4P1aoPWlUMVkkFs3HskcP3GqobjBCTTfyyNLuAbveawMz
 tnmcm1MbPmnw==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257413"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:30 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:10 +0100
Message-Id: <20200710115757.290984-14-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 13/60] drm/i915/dg1: Add and setup DPLLs for DG1
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
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
index aeb6ee395cce..25c6dca096ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3504,7 +3504,17 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 
 	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
 
-	if (IS_ELKHARTLAKE(dev_priv) && port != PORT_A)
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
+	} else if (IS_ELKHARTLAKE(dev_priv) && port != PORT_A)
 		dpll_mask =
 			BIT(DPLL_ID_EHL_DPLL4) |
 			BIT(DPLL_ID_ICL_DPLL1) |
@@ -3791,7 +3801,10 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
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
@@ -3844,7 +3857,10 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
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
@@ -4276,6 +4292,21 @@ static const struct intel_dpll_mgr tgl_pll_mgr = {
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
@@ -4289,7 +4320,9 @@ void intel_shared_dpll_init(struct drm_device *dev)
 	const struct dpll_info *dpll_info;
 	int i;
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (IS_DG1(dev_priv))
+		dpll_mgr = &dg1_pll_mgr;
+	else if (INTEL_GEN(dev_priv) >= 12)
 		dpll_mgr = &tgl_pll_mgr;
 	else if (IS_ELKHARTLAKE(dev_priv))
 		dpll_mgr = &ehl_pll_mgr;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
