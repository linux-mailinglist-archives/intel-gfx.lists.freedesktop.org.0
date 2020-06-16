Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2649B1FC27C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 01:58:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B97B6E20F;
	Tue, 16 Jun 2020 23:58:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 827EB6E20B
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 23:58:21 +0000 (UTC)
IronPort-SDR: nekqgfAre/EGKDLT1ecuG8pKw2+vqJxMiWH1OP1JjbFkWI+FtZtSyEomd0Nzc7pEj5+tHM8Dnu
 CaJXgZjDrROA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 16:58:20 -0700
IronPort-SDR: FovAAHexCRsheol6/wzo9jfmeiLRM/P8kXjOp/p46RF9nddsJUC0+duhkwj/ehOF2bJgzSCQEJ
 0WnuMDfOEn2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,520,1583222400"; d="scan'208";a="277097149"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga006.jf.intel.com with ESMTP; 16 Jun 2020 16:58:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2020 16:58:07 -0700
Message-Id: <20200616235810.3848540-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616235810.3848540-1-matthew.d.roper@intel.com>
References: <20200616235810.3848540-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 2/5] drm/i915/rkl: Add DPLL4 support
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

Rocket Lake has a third DPLL (called 'DPLL4') that must be used to
enable a third display.  Unlike EHL's variant of DPLL4, the RKL variant
behaves the same as DPLL0/1.  And despite its name, the DPLL4 registers
are offset as if it were DPLL2, so no extra offset handling is needed
either.

v2:
 - Add new .update_ref_clks() hook.

Bspec: 49202
Bspec: 49443
Bspec: 50288
Bspec: 50289
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 29 +++++++++++++++++--
 1 file changed, 26 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b45185b80bec..b5f4d4cef682 100644
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
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
