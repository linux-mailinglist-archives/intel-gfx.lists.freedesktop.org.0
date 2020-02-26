Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A16B31709C7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 21:35:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5ED66EBC9;
	Wed, 26 Feb 2020 20:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 875656EBBB
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 20:35:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 12:35:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="238154987"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 26 Feb 2020 12:35:37 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 22:34:46 +0200
Message-Id: <20200226203455.23032-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
References: <20200226203455.23032-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/13] drm/i915: Move the DPLL vfunc inits after
 the func defines
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

Move the per-platform DPLL and DPLL-manager vfunc initializations right
after the corresponding function definitions.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 120 +++++++++---------
 1 file changed, 60 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index c02de061a166..724ab356ea77 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -45,6 +45,21 @@
  * commit phase.
  */
 
+struct intel_dpll_mgr {
+	const struct dpll_info *dpll_info;
+
+	bool (*get_dplls)(struct intel_atomic_state *state,
+			  struct intel_crtc *crtc,
+			  struct intel_encoder *encoder);
+	void (*put_dplls)(struct intel_atomic_state *state,
+			  struct intel_crtc *crtc);
+	void (*update_active_dpll)(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc,
+				   struct intel_encoder *encoder);
+	void (*dump_hw_state)(struct drm_i915_private *dev_priv,
+			      const struct intel_dpll_hw_state *hw_state);
+};
+
 static void
 intel_atomic_duplicate_dpll_state(struct drm_i915_private *dev_priv,
 				  struct intel_shared_dpll_state *shared_dpll)
@@ -509,6 +524,19 @@ static const struct intel_shared_dpll_funcs ibx_pch_dpll_funcs = {
 	.get_hw_state = ibx_pch_dpll_get_hw_state,
 };
 
+static const struct dpll_info pch_plls[] = {
+	{ "PCH DPLL A", &ibx_pch_dpll_funcs, DPLL_ID_PCH_PLL_A, 0 },
+	{ "PCH DPLL B", &ibx_pch_dpll_funcs, DPLL_ID_PCH_PLL_B, 0 },
+	{ },
+};
+
+static const struct intel_dpll_mgr pch_pll_mgr = {
+	.dpll_info = pch_plls,
+	.get_dplls = ibx_get_dpll,
+	.put_dplls = intel_put_dpll,
+	.dump_hw_state = ibx_dump_hw_state,
+};
+
 static void hsw_ddi_wrpll_enable(struct drm_i915_private *dev_priv,
 			       struct intel_shared_dpll *pll)
 {
@@ -963,6 +991,23 @@ static const struct intel_shared_dpll_funcs hsw_ddi_lcpll_funcs = {
 	.get_hw_state = hsw_ddi_lcpll_get_hw_state,
 };
 
+static const struct dpll_info hsw_plls[] = {
+	{ "WRPLL 1",    &hsw_ddi_wrpll_funcs, DPLL_ID_WRPLL1,     0 },
+	{ "WRPLL 2",    &hsw_ddi_wrpll_funcs, DPLL_ID_WRPLL2,     0 },
+	{ "SPLL",       &hsw_ddi_spll_funcs,  DPLL_ID_SPLL,       0 },
+	{ "LCPLL 810",  &hsw_ddi_lcpll_funcs, DPLL_ID_LCPLL_810,  INTEL_DPLL_ALWAYS_ON },
+	{ "LCPLL 1350", &hsw_ddi_lcpll_funcs, DPLL_ID_LCPLL_1350, INTEL_DPLL_ALWAYS_ON },
+	{ "LCPLL 2700", &hsw_ddi_lcpll_funcs, DPLL_ID_LCPLL_2700, INTEL_DPLL_ALWAYS_ON },
+	{ },
+};
+
+static const struct intel_dpll_mgr hsw_pll_mgr = {
+	.dpll_info = hsw_plls,
+	.get_dplls = hsw_get_dpll,
+	.put_dplls = intel_put_dpll,
+	.dump_hw_state = hsw_dump_hw_state,
+};
+
 struct skl_dpll_regs {
 	i915_reg_t ctl, cfgcr1, cfgcr2;
 };
@@ -1518,6 +1563,21 @@ static const struct intel_shared_dpll_funcs skl_ddi_dpll0_funcs = {
 	.get_hw_state = skl_ddi_dpll0_get_hw_state,
 };
 
+static const struct dpll_info skl_plls[] = {
+	{ "DPLL 0", &skl_ddi_dpll0_funcs, DPLL_ID_SKL_DPLL0, INTEL_DPLL_ALWAYS_ON },
+	{ "DPLL 1", &skl_ddi_pll_funcs,   DPLL_ID_SKL_DPLL1, 0 },
+	{ "DPLL 2", &skl_ddi_pll_funcs,   DPLL_ID_SKL_DPLL2, 0 },
+	{ "DPLL 3", &skl_ddi_pll_funcs,   DPLL_ID_SKL_DPLL3, 0 },
+	{ },
+};
+
+static const struct intel_dpll_mgr skl_pll_mgr = {
+	.dpll_info = skl_plls,
+	.get_dplls = skl_get_dpll,
+	.put_dplls = intel_put_dpll,
+	.dump_hw_state = skl_dump_hw_state,
+};
+
 static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
 				struct intel_shared_dpll *pll)
 {
@@ -1964,66 +2024,6 @@ static const struct intel_shared_dpll_funcs bxt_ddi_pll_funcs = {
 	.get_hw_state = bxt_ddi_pll_get_hw_state,
 };
 
-struct intel_dpll_mgr {
-	const struct dpll_info *dpll_info;
-
-	bool (*get_dplls)(struct intel_atomic_state *state,
-			  struct intel_crtc *crtc,
-			  struct intel_encoder *encoder);
-	void (*put_dplls)(struct intel_atomic_state *state,
-			  struct intel_crtc *crtc);
-	void (*update_active_dpll)(struct intel_atomic_state *state,
-				   struct intel_crtc *crtc,
-				   struct intel_encoder *encoder);
-	void (*dump_hw_state)(struct drm_i915_private *dev_priv,
-			      const struct intel_dpll_hw_state *hw_state);
-};
-
-static const struct dpll_info pch_plls[] = {
-	{ "PCH DPLL A", &ibx_pch_dpll_funcs, DPLL_ID_PCH_PLL_A, 0 },
-	{ "PCH DPLL B", &ibx_pch_dpll_funcs, DPLL_ID_PCH_PLL_B, 0 },
-	{ },
-};
-
-static const struct intel_dpll_mgr pch_pll_mgr = {
-	.dpll_info = pch_plls,
-	.get_dplls = ibx_get_dpll,
-	.put_dplls = intel_put_dpll,
-	.dump_hw_state = ibx_dump_hw_state,
-};
-
-static const struct dpll_info hsw_plls[] = {
-	{ "WRPLL 1",    &hsw_ddi_wrpll_funcs, DPLL_ID_WRPLL1,     0 },
-	{ "WRPLL 2",    &hsw_ddi_wrpll_funcs, DPLL_ID_WRPLL2,     0 },
-	{ "SPLL",       &hsw_ddi_spll_funcs,  DPLL_ID_SPLL,       0 },
-	{ "LCPLL 810",  &hsw_ddi_lcpll_funcs, DPLL_ID_LCPLL_810,  INTEL_DPLL_ALWAYS_ON },
-	{ "LCPLL 1350", &hsw_ddi_lcpll_funcs, DPLL_ID_LCPLL_1350, INTEL_DPLL_ALWAYS_ON },
-	{ "LCPLL 2700", &hsw_ddi_lcpll_funcs, DPLL_ID_LCPLL_2700, INTEL_DPLL_ALWAYS_ON },
-	{ },
-};
-
-static const struct intel_dpll_mgr hsw_pll_mgr = {
-	.dpll_info = hsw_plls,
-	.get_dplls = hsw_get_dpll,
-	.put_dplls = intel_put_dpll,
-	.dump_hw_state = hsw_dump_hw_state,
-};
-
-static const struct dpll_info skl_plls[] = {
-	{ "DPLL 0", &skl_ddi_dpll0_funcs, DPLL_ID_SKL_DPLL0, INTEL_DPLL_ALWAYS_ON },
-	{ "DPLL 1", &skl_ddi_pll_funcs,   DPLL_ID_SKL_DPLL1, 0 },
-	{ "DPLL 2", &skl_ddi_pll_funcs,   DPLL_ID_SKL_DPLL2, 0 },
-	{ "DPLL 3", &skl_ddi_pll_funcs,   DPLL_ID_SKL_DPLL3, 0 },
-	{ },
-};
-
-static const struct intel_dpll_mgr skl_pll_mgr = {
-	.dpll_info = skl_plls,
-	.get_dplls = skl_get_dpll,
-	.put_dplls = intel_put_dpll,
-	.dump_hw_state = skl_dump_hw_state,
-};
-
 static const struct dpll_info bxt_plls[] = {
 	{ "PORT PLL A", &bxt_ddi_pll_funcs, DPLL_ID_SKL_DPLL0, 0 },
 	{ "PORT PLL B", &bxt_ddi_pll_funcs, DPLL_ID_SKL_DPLL1, 0 },
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
