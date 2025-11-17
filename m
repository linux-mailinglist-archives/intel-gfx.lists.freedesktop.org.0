Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FE3C63ADB
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8347B10E39F;
	Mon, 17 Nov 2025 10:59:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i85D2j8M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7620A10E39D;
 Mon, 17 Nov 2025 10:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377183; x=1794913183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yTKN6UsQA5q1wPEK5Beni0lbP8xEg2HnR4CW1J3XIIQ=;
 b=i85D2j8MIcaQJfSGAZWHupF36/6lNjP1e3Q/TR6N1SSDx7B76AF1rwVN
 UOPqsX9Askevv2rYpUrXhgoMrzC3G8vYdgPcXzOUPVYFAUkWL0FWUFsB/
 HeEF6wlpZTKmEv0Eo/gfRJ7GGniqTqtYWEOUqhbZdl4g08hdTnNaiGd/I
 J1ddQUzxF4gNHtVeI8fssPT+y7d82Yx9Ka+75HsZiorjeajG3CznEw52N
 FAe779i4QQ/ht3Tqr7b0jHgz4gKGEyJatLn4LtjRJyavI5c12bhJOfQN9
 Fj5KjskjQ7lbGDq5uz4e/+LZHdcu7wgwLSoAwRsOiWTmaQmbeOdKZ0NA6 w==;
X-CSE-ConnectionGUID: s5jXm1RVR3aHDRQvpfqWdA==
X-CSE-MsgGUID: u9sQ1/EOSuC+uT/C2Peq2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475435"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475435"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:43 -0800
X-CSE-ConnectionGUID: iydqJ+rhTh26kKksWuA8hw==
X-CSE-MsgGUID: 4fM92rVQT+G7h8WOkgGOgg==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:42 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 31/32] drm/i915/cx0: Add MTL+ Thunderbolt PLL hooks
Date: Mon, 17 Nov 2025 12:46:01 +0200
Message-Id: <20251117104602.2363671-32-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
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
index 79be234780ba..9d96e8940838 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3283,6 +3283,24 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
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
index 3745d7081ac7..9f10113e2d18 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -70,7 +70,13 @@ void intel_cx0_write(struct intel_encoder *encoder,
 int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
 			   int command, int lane, u32 *val);
 void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane);
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
index ecb7e3761a5b..8fd3b06f393d 100644
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

