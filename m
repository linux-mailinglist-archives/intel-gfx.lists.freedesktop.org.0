Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD43C1EC7B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:35:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86AFC10E8DB;
	Thu, 30 Oct 2025 07:35:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iCsD0+qI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F303810E8DB;
 Thu, 30 Oct 2025 07:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809705; x=1793345705;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Nd6KtQoK/JyICXg5UZTtZ6MJlxu5Ia9OxVkh1sIJocM=;
 b=iCsD0+qI7p7APksg6yJBldvcFPhVZsLV3Z03MDGIQfxxxa31/V5trV96
 6WPFoGr+jq6J+np0+MmVhgqyI2wt86tL19GowQYmFryHhM7l3YnBaCSK4
 TcSKFdTfh3YyWHzBQZMVwrm1Q37aCxmRKJewRubM95wghTLH6k0Eu4PPD
 op2wH5eVV9jRzV/KPOXQiy8YUKhmf1LQtVer6QHmGK/1fbBGmFEDcG0zz
 i4Rg0s/v+yZHpVBf0gL1Hqq7roUS4L/17eyPYX7jBRgXKzn4khVb/mIBR
 TH8/Eun+wz+vXOdiG2WPQFiYHimzMauPGs9ax2GQNU4bPqIbYxtEhvn8M w==;
X-CSE-ConnectionGUID: N/MTldqaQWCoelDu26WlbQ==
X-CSE-MsgGUID: xiQ/yjKtQDa4yvMwqrDRNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063391"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063391"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:35:04 -0700
X-CSE-ConnectionGUID: V0Eq1H++RhWukfAtFt5Cxw==
X-CSE-MsgGUID: HEjQ+oe4Qwe4mPICpVYtiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075415"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:35:03 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH 18/32] drm/i915/display: Compute plls for MTL+ platform
Date: Thu, 30 Oct 2025 09:22:35 +0200
Message-Id: <20251030072249.155095-19-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251030072249.155095-1-mika.kahola@intel.com>
References: <20251030072249.155095-1-mika.kahola@intel.com>
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

