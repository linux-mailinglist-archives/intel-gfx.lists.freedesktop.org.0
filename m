Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7942116ED
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 01:55:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4862B6EA21;
	Wed,  1 Jul 2020 23:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 268EE6EA1B
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 23:54:52 +0000 (UTC)
IronPort-SDR: LzzVenYuD7kIrsEyk+Bgb0tSzASy8RcyBrJgv1gEQEv1mXC0ikVMe5+HwOiFnEeLfof54+SpVh
 WepO+mqWRQdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="164785966"
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; d="scan'208";a="164785966"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 16:54:51 -0700
IronPort-SDR: RuqOeqi8Z7L3lXsw8zpYAkN2m999JeDhMtknhL6NZrF+5obgyEuMLS5tlA9cbunLIQO8IHqO9p
 hK9SFexugKgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; d="scan'208";a="356276382"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga001.jf.intel.com with ESMTP; 01 Jul 2020 16:54:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 16:53:25 -0700
Message-Id: <20200701235339.32608-15-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200701235339.32608-1-lucas.demarchi@intel.com>
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 14/28] drm/i915/dg1: Enable DPLL for DG1
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

Add DG1 DPLL Enable register macro and use the macro to enable the
correct DPLL based on PLL id.

Bspec: 49443, 49206

Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 30 ++++++++++++-------
 drivers/gpu/drm/i915/i915_reg.h               |  4 +++
 2 files changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 25c6dca096ac..0c58d8012d32 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3833,12 +3833,14 @@ static bool combo_pll_get_hw_state(struct drm_i915_private *dev_priv,
 				   struct intel_shared_dpll *pll,
 				   struct intel_dpll_hw_state *hw_state)
 {
-	i915_reg_t enable_reg = CNL_DPLL_ENABLE(pll->info->id);
+	i915_reg_t enable_reg;
 
-	if (IS_ELKHARTLAKE(dev_priv) &&
-	    pll->info->id == DPLL_ID_EHL_DPLL4) {
+	if (IS_DG1(dev_priv))
+		enable_reg = DG1_DPLL_ENABLE(pll->info->id);
+	else if (IS_ELKHARTLAKE(dev_priv) && pll->info->id == DPLL_ID_EHL_DPLL4)
 		enable_reg = MG_PLL_ENABLE(0);
-	}
+	else
+		enable_reg = CNL_DPLL_ENABLE(pll->info->id);
 
 	return icl_pll_get_hw_state(dev_priv, pll, hw_state, enable_reg);
 }
@@ -4036,10 +4038,12 @@ static void icl_pll_enable(struct drm_i915_private *dev_priv,
 static void combo_pll_enable(struct drm_i915_private *dev_priv,
 			     struct intel_shared_dpll *pll)
 {
-	i915_reg_t enable_reg = CNL_DPLL_ENABLE(pll->info->id);
+	i915_reg_t enable_reg;
 
-	if (IS_ELKHARTLAKE(dev_priv) &&
-	    pll->info->id == DPLL_ID_EHL_DPLL4) {
+	if (IS_DG1(dev_priv)) {
+		enable_reg = DG1_DPLL_ENABLE(pll->info->id);
+	} else if (IS_ELKHARTLAKE(dev_priv) &&
+		 pll->info->id == DPLL_ID_EHL_DPLL4) {
 		enable_reg = MG_PLL_ENABLE(0);
 
 		/*
@@ -4049,6 +4053,8 @@ static void combo_pll_enable(struct drm_i915_private *dev_priv,
 		 */
 		pll->wakeref = intel_display_power_get(dev_priv,
 						       POWER_DOMAIN_DPLL_DC_OFF);
+	} else {
+		enable_reg = CNL_DPLL_ENABLE(pll->info->id);
 	}
 
 	icl_pll_power_enable(dev_priv, pll, enable_reg);
@@ -4148,16 +4154,20 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
 static void combo_pll_disable(struct drm_i915_private *dev_priv,
 			      struct intel_shared_dpll *pll)
 {
-	i915_reg_t enable_reg = CNL_DPLL_ENABLE(pll->info->id);
+	i915_reg_t enable_reg;
 
-	if (IS_ELKHARTLAKE(dev_priv) &&
-	    pll->info->id == DPLL_ID_EHL_DPLL4) {
+	if (IS_DG1(dev_priv)) {
+		enable_reg = DG1_DPLL_ENABLE(pll->info->id);
+	} else if (IS_ELKHARTLAKE(dev_priv) &&
+		   pll->info->id == DPLL_ID_EHL_DPLL4) {
 		enable_reg = MG_PLL_ENABLE(0);
 		icl_pll_disable(dev_priv, pll, enable_reg);
 
 		intel_display_power_put(dev_priv, POWER_DOMAIN_DPLL_DC_OFF,
 					pll->wakeref);
 		return;
+	} else {
+		enable_reg = CNL_DPLL_ENABLE(pll->info->id);
 	}
 
 	icl_pll_disable(dev_priv, pll, enable_reg);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7d0368c69069..57f7c48034e7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10297,6 +10297,10 @@ enum skl_power_gate {
 #define MG_PLL_ENABLE(tc_port)	_MMIO_PORT((tc_port), _MG_PLL1_ENABLE, \
 					   _MG_PLL2_ENABLE)
 
+/* DG1 PLL */
+#define DG1_DPLL_ENABLE(pll)    _MMIO_PLL3(pll, DPLL0_ENABLE, DPLL1_ENABLE, \
+					   _MG_PLL1_ENABLE, _MG_PLL2_ENABLE)
+
 #define _MG_REFCLKIN_CTL_PORT1				0x16892C
 #define _MG_REFCLKIN_CTL_PORT2				0x16992C
 #define _MG_REFCLKIN_CTL_PORT3				0x16A92C
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
