Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5308C24976
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4099910EB80;
	Fri, 31 Oct 2025 10:48:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OWVKxzND";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9A5410EB72;
 Fri, 31 Oct 2025 10:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907703; x=1793443703;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kj1qL3DleN0wTl7w9+7YvTV2FJNEJdEA9xI1WOd8VHg=;
 b=OWVKxzNDtBVprL4L1f+54FfhErTHwRHy/MCxh6n1cWwNSxW1G0dMs0cO
 cLCPFxoLU1GEcc5Px2tmPuM+97TBuS/Mo/GS8DuRzr0cz4rE1/pQ1h8xQ
 ltJs1DAmv02xRt3Z5pwO5RQBh1IyDNYXWuZ3QKNonboaCwXi/yiPyY224
 eknSmQLr8/aRu3WFeRMLVWlACVROG4BDXCAN4UJ5dweXgQbx3j/p4ueIG
 d6gTuw3BG7w/tsGlr0eTpQePflGzxwRvq01riZ52y+fLQ5cLEeWpFHy8n
 Ek1m4gzjpyvlOzaPx+TzXxdqbNSjF6Z6PYp0/DbFnW/3hBLgCyD4dvDE3 Q==;
X-CSE-ConnectionGUID: +baPeG49S12AhPuBuQzyMg==
X-CSE-MsgGUID: OmbDG5d1TdmwPxuus6VlsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217596"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217596"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:48:22 -0700
X-CSE-ConnectionGUID: JKqkD19ATyqTzzufNAYsJA==
X-CSE-MsgGUID: DodTkkXYRUCNv3CfW7bAug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441460"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:48:21 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [CI 31/32] drm/i915/display: Add Thunderbolt support
Date: Fri, 31 Oct 2025 12:35:48 +0200
Message-Id: <20251031103549.173208-32-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

Add the PLL hooks for the TBT PLL on MTL+. These are simple stubs
similarly to the TBT PLL on earlier platforms, since this PLL is always
on from the display POV - so no PLL enable/disable programming is
required as opposed to the non-TBT PLLs - and the clocks for different
link rates are enabled/disabled at a different level, via the
intel_encoder::enable_clock()/disable_clock() interface.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 18 +++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  6 +++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 37 ++++++++++++++++++-
 3 files changed, 59 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index b82a1f891eae..432cdf56a6ed 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3304,6 +3304,24 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
+void intel_mtl_tbt_pll_calc_state(struct intel_dpll_hw_state *hw_state)
+{
+	memset(hw_state, 0, sizeof(*hw_state));
+
+	hw_state->cx0pll.tbt_mode = true;
+}
+
+bool intel_mtl_tbt_pll_readout_hw_state(struct intel_display *display,
+					struct intel_dpll *pll,
+					struct intel_dpll_hw_state *hw_state)
+{
+	memset(hw_state, 0, sizeof(*hw_state));
+
+	hw_state->cx0pll.tbt_mode = true;
+
+	return true;
+}
+
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 13fa001129f7..bfd69029e2b4 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -48,7 +48,13 @@ bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
 				   const struct intel_cx0pll_state *b);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
+
+void intel_mtl_tbt_pll_calc_state(struct intel_dpll_hw_state *hw_state);
+bool intel_mtl_tbt_pll_readout_hw_state(struct intel_display *display,
+					struct intel_dpll *pll,
+					struct intel_dpll_hw_state *hw_state);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
+
 void intel_cx0_pll_power_save_wa(struct intel_display *display);
 void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 8220ef69f685..ddc763d89aac 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4421,10 +4421,42 @@ static const struct intel_dpll_funcs mtl_pll_funcs = {
 	.get_freq = mtl_pll_get_freq,
 };
 
+static void mtl_tbt_pll_enable(struct intel_display *display,
+			       struct intel_dpll *pll,
+			       const struct intel_dpll_hw_state *hw_state)
+{
+}
+
+static void mtl_tbt_pll_disable(struct intel_display *display,
+				struct intel_dpll *pll)
+{
+}
+
+static int mtl_tbt_pll_get_freq(struct intel_display *display,
+				const struct intel_dpll *pll,
+				const struct intel_dpll_hw_state *dpll_hw_state)
+{
+	/*
+	 * The PLL outputs multiple frequencies at the same time, selection is
+	 * made at DDI clock mux level.
+	 */
+	drm_WARN_ON(display->drm, 1);
+
+	return 0;
+}
+
+static const struct intel_dpll_funcs mtl_tbt_pll_funcs = {
+	.enable = mtl_tbt_pll_enable,
+	.disable = mtl_tbt_pll_disable,
+	.get_hw_state = intel_mtl_tbt_pll_readout_hw_state,
+	.get_freq = mtl_tbt_pll_get_freq,
+};
+
 static const struct dpll_info mtl_plls[] = {
 	{ .name = "DPLL 0", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
-	/* TODO: Add TBT PLL */
+	{ .name = "TBT PLL", .funcs = &mtl_tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
+	  .is_alt_port_dpll = true, .always_on = true },
 	{ .name = "TC PLL 1", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
 	{ .name = "TC PLL 2", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
 	{ .name = "TC PLL 3", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
@@ -4470,7 +4502,8 @@ static int mtl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 	struct icl_port_dpll *port_dpll;
 	int ret;
 
-	/* TODO: Add state calculation for TBT PLL */
+	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
+	intel_mtl_tbt_pll_calc_state(&port_dpll->hw_state);
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
 	ret = intel_cx0pll_calc_state(crtc_state, encoder, &port_dpll->hw_state);
-- 
2.34.1

