Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4520B1FDA7B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:43:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B22D06EA24;
	Thu, 18 Jun 2020 00:43:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E59946E150
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:42:50 +0000 (UTC)
IronPort-SDR: pbwAt4NO61AKcofHRVzLZ+KNQCt1H90vC3vPDVuGzNkk5zhxNUlSbii6xyeczAibQAy9j1H9Ou
 3XlrI/zQ+QBw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:42:50 -0700
IronPort-SDR: B3jbyi8u62KPyr4s2DtbuCaIMmOZacFZb35iT+IOrNX6wNEguhUBbOjh3yaWSsMIJOSGGkGymo
 trUMqUP8ELAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="477011834"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2020 17:42:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:42:10 -0700
Message-Id: <20200618004240.16263-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618004240.16263-1-lucas.demarchi@intel.com>
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 02/32] drm/i915/rkl: Add DPLL4 support
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

From: Matt Roper <matthew.d.roper@intel.com>

Rocket Lake has a third DPLL (called 'DPLL4') that must be used to
enable a third display.  Unlike EHL's variant of DPLL4, the RKL variant
behaves the same as DPLL0/1.  And despite its name, the DPLL4 registers
are offset as if it were DPLL2.

To allow the TGL register selectors like TGL_DPLL_CFGCR0 to be used
seamlessly on all gen12 platforms, we set the non-MG PLL ID's to match
how the registers are laid out: DPLL0, DPLL1, DPLL4 (RKL-only), TBT.
This means just renumbering TBT to be ID '3' rather than being another
ID '2' like DPLL4.  With this change, we can build our register
selectors with _MMIO_PLL rather than _MMIO_PLL3 since the register
offsets are evenly-spaced.  MGPLL's don't need any specific ID's
(they're just used to translate back to a tc_port), so we let them float
at the top of the enum.

v2:
 - Add new .update_ref_clks() hook.

v3:
 - Renumber TBT PLL to '3' and switch _MMIO_PLL3 to _MMIO_PLL (Lucas)

Bspec: 49202
Bspec: 49443
Bspec: 50288
Bspec: 50289
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 29 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 14 ++++-----
 drivers/gpu/drm/i915/i915_reg.h               | 15 +++-------
 3 files changed, 37 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b45185b80bec5..b5f4d4cef682b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3506,13 +3506,19 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 		return false;
 	}
 
-	if (IS_ELKHARTLAKE(dev_priv) && port != PORT_A)
+	if (IS_ROCKETLAKE(dev_priv)) {
 		dpll_mask =
 			BIT(DPLL_ID_EHL_DPLL4) |
 			BIT(DPLL_ID_ICL_DPLL1) |
 			BIT(DPLL_ID_ICL_DPLL0);
-	else
+	} else if (IS_ELKHARTLAKE(dev_priv) && port != PORT_A) {
+		dpll_mask =
+			BIT(DPLL_ID_EHL_DPLL4) |
+			BIT(DPLL_ID_ICL_DPLL1) |
+			BIT(DPLL_ID_ICL_DPLL0);
+	} else {
 		dpll_mask = BIT(DPLL_ID_ICL_DPLL1) | BIT(DPLL_ID_ICL_DPLL0);
+	}
 
 	port_dpll->pll = intel_find_shared_dpll(state, crtc,
 						&port_dpll->hw_state,
@@ -4275,6 +4281,21 @@ static const struct intel_dpll_mgr tgl_pll_mgr = {
 	.dump_hw_state = icl_dump_hw_state,
 };
 
+static const struct dpll_info rkl_plls[] = {
+	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0, 0 },
+	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1, 0 },
+	{ "DPLL 4", &combo_pll_funcs, DPLL_ID_EHL_DPLL4, 0 },
+	{ },
+};
+
+static const struct intel_dpll_mgr rkl_pll_mgr = {
+	.dpll_info = rkl_plls,
+	.get_dplls = icl_get_dplls,
+	.put_dplls = icl_put_dplls,
+	.update_ref_clks = icl_update_dpll_ref_clks,
+	.dump_hw_state = icl_dump_hw_state,
+};
+
 /**
  * intel_shared_dpll_init - Initialize shared DPLLs
  * @dev: drm device
@@ -4288,7 +4309,9 @@ void intel_shared_dpll_init(struct drm_device *dev)
 	const struct dpll_info *dpll_info;
 	int i;
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (IS_ROCKETLAKE(dev_priv))
+		dpll_mgr = &rkl_pll_mgr;
+	else if (INTEL_GEN(dev_priv) >= 12)
 		dpll_mgr = &tgl_pll_mgr;
 	else if (IS_ELKHARTLAKE(dev_priv))
 		dpll_mgr = &ehl_pll_mgr;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 5d9a2bc371e7c..49367847bfb55 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -125,35 +125,35 @@ enum intel_dpll_id {
 	/**
 	 * @DPLL_ID_ICL_TBTPLL: ICL/TGL TBT PLL
 	 */
-	DPLL_ID_ICL_TBTPLL = 2,
+	DPLL_ID_ICL_TBTPLL = 3,
 	/**
 	 * @DPLL_ID_ICL_MGPLL1: ICL MG PLL 1 port 1 (C),
 	 *                      TGL TC PLL 1 port 1 (TC1)
 	 */
-	DPLL_ID_ICL_MGPLL1 = 3,
+	DPLL_ID_ICL_MGPLL1,
 	/**
 	 * @DPLL_ID_ICL_MGPLL2: ICL MG PLL 1 port 2 (D)
 	 *                      TGL TC PLL 1 port 2 (TC2)
 	 */
-	DPLL_ID_ICL_MGPLL2 = 4,
+	DPLL_ID_ICL_MGPLL2,
 	/**
 	 * @DPLL_ID_ICL_MGPLL3: ICL MG PLL 1 port 3 (E)
 	 *                      TGL TC PLL 1 port 3 (TC3)
 	 */
-	DPLL_ID_ICL_MGPLL3 = 5,
+	DPLL_ID_ICL_MGPLL3,
 	/**
 	 * @DPLL_ID_ICL_MGPLL4: ICL MG PLL 1 port 4 (F)
 	 *                      TGL TC PLL 1 port 4 (TC4)
 	 */
-	DPLL_ID_ICL_MGPLL4 = 6,
+	DPLL_ID_ICL_MGPLL4,
 	/**
 	 * @DPLL_ID_TGL_MGPLL5: TGL TC PLL port 5 (TC5)
 	 */
-	DPLL_ID_TGL_MGPLL5 = 7,
+	DPLL_ID_TGL_MGPLL5,
 	/**
 	 * @DPLL_ID_TGL_MGPLL6: TGL TC PLL port 6 (TC6)
 	 */
-	DPLL_ID_TGL_MGPLL6 = 8,
+	DPLL_ID_TGL_MGPLL6,
 };
 
 #define I915_NUM_PLLS 9
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 45bda5819abd0..34f8698ac3aa6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -242,7 +242,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define _MMIO_PIPE3(pipe, a, b, c)	_MMIO(_PICK(pipe, a, b, c))
 #define _MMIO_PORT3(pipe, a, b, c)	_MMIO(_PICK(pipe, a, b, c))
 #define _MMIO_PHY3(phy, a, b, c)	_MMIO(_PHY3(phy, a, b, c))
-#define _MMIO_PLL3(pll, a, b, c)	_MMIO(_PICK(pll, a, b, c))
 
 /*
  * Device info offset array based helpers for groups of registers with unevenly
@@ -10427,19 +10426,13 @@ enum skl_power_gate {
 
 #define _TGL_DPLL0_CFGCR0		0x164284
 #define _TGL_DPLL1_CFGCR0		0x16428C
-/* TODO: add DPLL4 */
-#define _TGL_TBTPLL_CFGCR0		0x16429C
-#define TGL_DPLL_CFGCR0(pll)		_MMIO_PLL3(pll, _TGL_DPLL0_CFGCR0, \
-						  _TGL_DPLL1_CFGCR0, \
-						  _TGL_TBTPLL_CFGCR0)
+#define TGL_DPLL_CFGCR0(pll)		_MMIO_PLL(pll, _TGL_DPLL0_CFGCR0, \
+						  _TGL_DPLL1_CFGCR0)
 
 #define _TGL_DPLL0_CFGCR1		0x164288
 #define _TGL_DPLL1_CFGCR1		0x164290
-/* TODO: add DPLL4 */
-#define _TGL_TBTPLL_CFGCR1		0x1642A0
-#define TGL_DPLL_CFGCR1(pll)		_MMIO_PLL3(pll, _TGL_DPLL0_CFGCR1, \
-						   _TGL_DPLL1_CFGCR1, \
-						   _TGL_TBTPLL_CFGCR1)
+#define TGL_DPLL_CFGCR1(pll)		_MMIO_PLL(pll, _TGL_DPLL0_CFGCR1, \
+						  _TGL_DPLL1_CFGCR1)
 
 #define _DKL_PHY1_BASE			0x168000
 #define _DKL_PHY2_BASE			0x169000
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
