Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 076E81DC3E3
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3D26E8DF;
	Thu, 21 May 2020 00:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 418E16E8CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:12 +0000 (UTC)
IronPort-SDR: oyU8n9vgMb3tKbeEei/bfc/Mz0PJkc1UPh/EDqgiN4p3vhBxuPibmsEskwRDsB7Zy68dERSJuq
 Ra/VdilTZX5g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:12 -0700
IronPort-SDR: egSv9v6XUenS3DeYdWUIuoEfKaH+IXkDxkU9J+NcMfWKtdx58AQ0ACcLrA0jBlFkoF/bpLMYRX
 KRNYGXXOtJhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720924"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:11 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:48 -0700
Message-Id: <20200521003803.18936-23-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/37] drm/i915/dg1: Enable DPLL for DG1
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
Cc: fernando.pacheco@intel.com, Matthew Auld <matthew.auld@intel.com>
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
index d764b6438114..d7bf67125b17 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3860,12 +3860,14 @@ static bool combo_pll_get_hw_state(struct drm_i915_private *dev_priv,
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
@@ -4063,10 +4065,12 @@ static void icl_pll_enable(struct drm_i915_private *dev_priv,
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
@@ -4076,6 +4080,8 @@ static void combo_pll_enable(struct drm_i915_private *dev_priv,
 		 */
 		pll->wakeref = intel_display_power_get(dev_priv,
 						       POWER_DOMAIN_DPLL_DC_OFF);
+	} else {
+		enable_reg = CNL_DPLL_ENABLE(pll->info->id);
 	}
 
 	icl_pll_power_enable(dev_priv, pll, enable_reg);
@@ -4175,16 +4181,20 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
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
index f25720584903..850e029c702a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10209,6 +10209,10 @@ enum skl_power_gate {
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
