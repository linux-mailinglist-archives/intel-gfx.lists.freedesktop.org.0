Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 382DEC24966
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76EF410EB71;
	Fri, 31 Oct 2025 10:48:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lscYYwoJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E557C10EB6B;
 Fri, 31 Oct 2025 10:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907686; x=1793443686;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Nd6KtQoK/JyICXg5UZTtZ6MJlxu5Ia9OxVkh1sIJocM=;
 b=lscYYwoJkiUABjVbqpeRf+ZXgFceKAdD+mOkEpGtTum3CJNYdtYJ8aZD
 PoJBs149qL4gn4Uowz146FAtDTfRmbpHNRee/vGQBnA66cF6AfhkABeB6
 b6CKM9bbN92gFptNCf5L2wLFKxUYZdv1CeZtMBFCyw9Pyg9mseF42rDbc
 I/ap9fC/Q8eDXsdz0udbRPInsDmugexT/Q/VYBVQz6fdIKL4cr9hQDonf
 TY8sqMzeoswIPorciHQ5bg9REIukRiX9Fdn9D2ttFfKiafZPYVA793j5v
 u+6QHcZOxh1gTZlFN24ZY5ud2dObzx17GuFAQ7Oc6ttlGoKF2LpPKtJsP g==;
X-CSE-ConnectionGUID: bFGDbKUPTZy00SvBaAtoGg==
X-CSE-MsgGUID: kKESfK9GQb6MlkFPfP2muw==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217573"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217573"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:48:06 -0700
X-CSE-ConnectionGUID: Fcxq0JUxRbyCJb56sevpTA==
X-CSE-MsgGUID: SOTjL25OS6yiVINPsltgqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441391"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:48:04 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
	Imre Deak <imre.deak@intel.com>
Subject: [CI 18/32] drm/i915/display: Compute plls for MTL+ platform
Date: Fri, 31 Oct 2025 12:35:35 +0200
Message-Id: <20251031103549.173208-19-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103549.173208-1-mika.kahola@intel.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
MIME-Version: 1.0
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

To bring MTL+ platform aligned with dpll framework we
need to call and calculate pll state from dpll
framework.

v2: Rename mtl_compute_c10phy_dpll() to mtl_compute_non_tc_phy_dpll().
    The state is computed either for a C10 or on the PTL port B eDP on
    TypeC PHY case for a C20 PHY PLL. Hence refer to this case as
    "non_tc_phy" instead of "c10phy".

    Rename mtl_compute_c20phy_dplls() to mtl_compute_tc_phy_dplls() for
    symmetry with mtl_compute_non_tc_phy_dpll().

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index a9d9b7113f12..b6a5a519e936 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4320,9 +4320,78 @@ static const struct dpll_info mtl_plls[] = {
 	{}
 };
 
+/*
+ * Compute the state for either a C10 PHY PLL, or in the case of the PTL port B,
+ * eDP on TypeC PHY case for a C20 PHY PLL.
+ */
+static int mtl_compute_non_tc_phy_dpll(struct intel_atomic_state *state,
+				       struct intel_crtc *crtc,
+				       struct intel_encoder *encoder)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct icl_port_dpll *port_dpll =
+		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
+	int ret;
+
+	ret = intel_cx0pll_calc_state(crtc_state, encoder, &port_dpll->hw_state);
+	if (ret)
+		return ret;
+
+	/* this is mainly for the fastset check */
+	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
+
+	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder,
+							      &port_dpll->hw_state.cx0pll);
+
+	return 0;
+}
+
+static int mtl_compute_tc_phy_dplls(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc,
+				    struct intel_encoder *encoder)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	struct icl_port_dpll *port_dpll;
+	int ret;
+
+	/* TODO: Add state calculation for TBT PLL */
+
+	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
+	ret = intel_cx0pll_calc_state(crtc_state, encoder, &port_dpll->hw_state);
+	if (ret)
+		return ret;
+
+	/* this is mainly for the fastset check */
+	if (old_crtc_state->intel_dpll &&
+	    old_crtc_state->intel_dpll->info->id == DPLL_ID_ICL_TBTPLL)
+		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
+	else
+		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
+
+	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder,
+							      &port_dpll->hw_state.cx0pll);
+
+	return 0;
+}
+
+static int mtl_compute_dplls(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc,
+			     struct intel_encoder *encoder)
+{
+	if (intel_encoder_is_tc(encoder))
+		return mtl_compute_tc_phy_dplls(state, crtc, encoder);
+	else
+		return mtl_compute_non_tc_phy_dpll(state, crtc, encoder);
+}
+
 __maybe_unused
 static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.dpll_info = mtl_plls,
+	.compute_dplls = mtl_compute_dplls,
 };
 
 /**
-- 
2.34.1

