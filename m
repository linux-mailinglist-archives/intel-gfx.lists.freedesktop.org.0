Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DEBA436FA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:09:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9323310E5B2;
	Tue, 25 Feb 2025 08:09:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fnrVRo9V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72E1610E5AE;
 Tue, 25 Feb 2025 08:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740470982; x=1772006982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j2zDyJKSXj9cJ0pup/OJSzZLVL5B590N/Nw9AUCMD18=;
 b=fnrVRo9V2FWZ3pZmtwbVzNpCd/23cHh/NYZ1g5jo4+wz8ELzvIvgdFhw
 AcuPMdC8FF5LqLeE8w1EKgqkVNTEZ9uo+oo2mgBaw+rQ/JbiruIPzwmNm
 DGtoGSPe1VC0/CYw5I7irj7wqL/h2v+zlW+01kkmIHOqAec4GkDh1brup
 Iz1fDiSTjkIql4vO1z8gnh+keWT2iVzE9hUW2CAlV4k0KuMlXVldfMTwA
 CibaAE9pzwVOzvJe7PUDtKdEqM5ldWHgNi08bYaN1RlpW41Anowv+IsPr
 VZnCCX1MdheySZReHPNMRIt7YrNpeIlpNpTNnDQ3Dhrk/aVdmeOqmCLpb g==;
X-CSE-ConnectionGUID: a+G3Ts++T4+Ec6kO2CXkgA==
X-CSE-MsgGUID: lV29AM7JSku5fg3z2LWBOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="66634531"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="66634531"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:09:42 -0800
X-CSE-ConnectionGUID: g1iMf4hhS7+KLbjiPyMZxQ==
X-CSE-MsgGUID: LfHxpSCESLyxCx8Z+g6V4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116519330"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 25 Feb 2025 00:09:39 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 04/11] drm/i915/dpll: Rename intel_shared_dpll
Date: Tue, 25 Feb 2025 13:39:20 +0530
Message-Id: <20250225080927.157437-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250225080927.157437-1-suraj.kandpal@intel.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
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

Rename intel_shared_dpll to intel_global_dpll to represent both
shared and individual dplls.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  52 ++--
 drivers/gpu/drm/i915/display/intel_ddi.h      |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  18 +-
 .../gpu/drm/i915/display/intel_display_core.h |   4 +-
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 .../drm/i915/display/intel_display_types.h    |   6 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 228 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  18 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    |   8 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  10 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
 15 files changed, 182 insertions(+), 182 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 5d3d54922d62..bad6967d8840 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -657,7 +657,7 @@ static void gen11_dsi_map_pll(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
-	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
+	struct intel_global_dpll *pll = crtc_state->global_dpll;
 	enum phy phy;
 	u32 val;
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 7937f4de66cb..82bcf5031a09 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -237,7 +237,7 @@ static void intel_wait_ddi_buf_active(struct intel_encoder *encoder)
 			port_name(port));
 }
 
-static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
+static u32 hsw_pll_to_ddi_pll_sel(const struct intel_global_dpll *pll)
 {
 	switch (pll->info->id) {
 	case DPLL_ID_WRPLL1:
@@ -261,7 +261,7 @@ static u32 hsw_pll_to_ddi_pll_sel(const struct intel_shared_dpll *pll)
 static u32 icl_pll_to_ddi_clk_sel(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state)
 {
-	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
+	const struct intel_global_dpll *pll = crtc_state->global_dpll;
 	int clock = crtc_state->port_clock;
 	const enum intel_dpll_id id = pll->info->id;
 
@@ -1571,7 +1571,7 @@ static bool _icl_ddi_is_clock_enabled(struct drm_i915_private *i915, i915_reg_t
 	return !(intel_de_read(i915, reg) & clk_off);
 }
 
-static struct intel_shared_dpll *
+static struct intel_global_dpll *
 _icl_ddi_get_pll(struct intel_display *display, i915_reg_t reg,
 		 u32 clk_sel_mask, u32 clk_sel_shift)
 {
@@ -1586,7 +1586,7 @@ static void adls_ddi_enable_clock(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
+	const struct intel_global_dpll *pll = crtc_state->global_dpll;
 	enum phy phy = intel_encoder_to_phy(encoder);
 
 	if (drm_WARN_ON(&i915->drm, !pll))
@@ -1616,7 +1616,7 @@ static bool adls_ddi_is_clock_enabled(struct intel_encoder *encoder)
 					 ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
 }
 
-static struct intel_shared_dpll *adls_ddi_get_pll(struct intel_encoder *encoder)
+static struct intel_global_dpll *adls_ddi_get_pll(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
@@ -1630,7 +1630,7 @@ static void rkl_ddi_enable_clock(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
+	const struct intel_global_dpll *pll = crtc_state->global_dpll;
 	enum phy phy = intel_encoder_to_phy(encoder);
 
 	if (drm_WARN_ON(&i915->drm, !pll))
@@ -1660,7 +1660,7 @@ static bool rkl_ddi_is_clock_enabled(struct intel_encoder *encoder)
 					 RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
 }
 
-static struct intel_shared_dpll *rkl_ddi_get_pll(struct intel_encoder *encoder)
+static struct intel_global_dpll *rkl_ddi_get_pll(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
@@ -1674,7 +1674,7 @@ static void dg1_ddi_enable_clock(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
+	const struct intel_global_dpll *pll = crtc_state->global_dpll;
 	enum phy phy = intel_encoder_to_phy(encoder);
 
 	if (drm_WARN_ON(&i915->drm, !pll))
@@ -1713,7 +1713,7 @@ static bool dg1_ddi_is_clock_enabled(struct intel_encoder *encoder)
 					 DG1_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
 }
 
-static struct intel_shared_dpll *dg1_ddi_get_pll(struct intel_encoder *encoder)
+static struct intel_global_dpll *dg1_ddi_get_pll(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
@@ -1740,7 +1740,7 @@ static void icl_ddi_combo_enable_clock(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
+	const struct intel_global_dpll *pll = crtc_state->global_dpll;
 	enum phy phy = intel_encoder_to_phy(encoder);
 
 	if (drm_WARN_ON(&i915->drm, !pll))
@@ -1770,7 +1770,7 @@ static bool icl_ddi_combo_is_clock_enabled(struct intel_encoder *encoder)
 					 ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy));
 }
 
-struct intel_shared_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder)
+struct intel_global_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
@@ -1784,7 +1784,7 @@ static void jsl_ddi_tc_enable_clock(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
+	const struct intel_global_dpll *pll = crtc_state->global_dpll;
 	enum port port = encoder->port;
 
 	if (drm_WARN_ON(&i915->drm, !pll))
@@ -1827,7 +1827,7 @@ static void icl_ddi_tc_enable_clock(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
+	const struct intel_global_dpll *pll = crtc_state->global_dpll;
 	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	enum port port = encoder->port;
 
@@ -1878,7 +1878,7 @@ static bool icl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
 	return !(tmp & ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port));
 }
 
-static struct intel_shared_dpll *icl_ddi_tc_get_pll(struct intel_encoder *encoder)
+static struct intel_global_dpll *icl_ddi_tc_get_pll(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum tc_port tc_port = intel_encoder_to_tc(encoder);
@@ -1908,7 +1908,7 @@ static struct intel_shared_dpll *icl_ddi_tc_get_pll(struct intel_encoder *encode
 	return intel_get_shared_dpll_by_id(display, id);
 }
 
-static struct intel_shared_dpll *bxt_ddi_get_pll(struct intel_encoder *encoder)
+static struct intel_global_dpll *bxt_ddi_get_pll(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder->base.dev);
 	enum intel_dpll_id id;
@@ -1935,7 +1935,7 @@ static void skl_ddi_enable_clock(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
+	const struct intel_global_dpll *pll = crtc_state->global_dpll;
 	enum port port = encoder->port;
 
 	if (drm_WARN_ON(&i915->drm, !pll))
@@ -1977,7 +1977,7 @@ static bool skl_ddi_is_clock_enabled(struct intel_encoder *encoder)
 	return !(intel_de_read(i915, DPLL_CTRL2) & DPLL_CTRL2_DDI_CLK_OFF(port));
 }
 
-static struct intel_shared_dpll *skl_ddi_get_pll(struct intel_encoder *encoder)
+static struct intel_global_dpll *skl_ddi_get_pll(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
@@ -2003,7 +2003,7 @@ void hsw_ddi_enable_clock(struct intel_encoder *encoder,
 			  const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
+	const struct intel_global_dpll *pll = crtc_state->global_dpll;
 	enum port port = encoder->port;
 
 	if (drm_WARN_ON(&i915->drm, !pll))
@@ -2028,7 +2028,7 @@ bool hsw_ddi_is_clock_enabled(struct intel_encoder *encoder)
 	return intel_de_read(i915, PORT_CLK_SEL(port)) != PORT_CLK_SEL_NONE;
 }
 
-static struct intel_shared_dpll *hsw_ddi_get_pll(struct intel_encoder *encoder)
+static struct intel_global_dpll *hsw_ddi_get_pll(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
@@ -4206,7 +4206,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 
 void intel_ddi_get_clock(struct intel_encoder *encoder,
 			 struct intel_crtc_state *crtc_state,
-			 struct intel_shared_dpll *pll)
+			 struct intel_global_dpll *pll)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum icl_port_dpll_id port_dpll_id = ICL_PORT_DPLL_DEFAULT;
@@ -4222,7 +4222,7 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
 
 	icl_set_active_port_dpll(crtc_state, port_dpll_id);
 
-	crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->shared_dpll,
+	crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->global_dpll,
 						     &crtc_state->dpll_hw_state);
 }
 
@@ -4276,7 +4276,7 @@ static void icl_ddi_combo_get_config(struct intel_encoder *encoder,
 	intel_ddi_get_config(encoder, crtc_state);
 }
 
-static bool icl_ddi_tc_pll_is_tbt(const struct intel_shared_dpll *pll)
+static bool icl_ddi_tc_pll_is_tbt(const struct intel_global_dpll *pll)
 {
 	return pll->info->id == DPLL_ID_ICL_TBTPLL;
 }
@@ -4286,7 +4286,7 @@ icl_ddi_tc_port_pll_type(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
+	const struct intel_global_dpll *pll = crtc_state->global_dpll;
 
 	if (drm_WARN_ON(&i915->drm, !pll))
 		return ICL_PORT_DPLL_DEFAULT;
@@ -4309,7 +4309,7 @@ intel_ddi_port_pll_type(struct intel_encoder *encoder,
 
 static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
 				 struct intel_crtc_state *crtc_state,
-				 struct intel_shared_dpll *pll)
+				 struct intel_global_dpll *pll)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum icl_port_dpll_id port_dpll_id;
@@ -4332,10 +4332,10 @@ static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
 
 	icl_set_active_port_dpll(crtc_state, port_dpll_id);
 
-	if (icl_ddi_tc_pll_is_tbt(crtc_state->shared_dpll))
+	if (icl_ddi_tc_pll_is_tbt(crtc_state->global_dpll))
 		crtc_state->port_clock = icl_calc_tbt_pll_link(display, encoder->port);
 	else
-		crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->shared_dpll,
+		crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->global_dpll,
 							     &crtc_state->dpll_hw_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 2faadd1441e2..2425fcb04a27 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -19,7 +19,7 @@ struct intel_display;
 struct intel_dp;
 struct intel_dpll_hw_state;
 struct intel_encoder;
-struct intel_shared_dpll;
+struct intel_global_dpll;
 enum pipe;
 enum port;
 enum transcoder;
@@ -41,7 +41,7 @@ void intel_ddi_enable_clock(struct intel_encoder *encoder,
 void intel_ddi_disable_clock(struct intel_encoder *encoder);
 void intel_ddi_get_clock(struct intel_encoder *encoder,
 			 struct intel_crtc_state *crtc_state,
-			 struct intel_shared_dpll *pll);
+			 struct intel_global_dpll *pll);
 void hsw_ddi_enable_clock(struct intel_encoder *encoder,
 			  const struct intel_crtc_state *crtc_state);
 void hsw_ddi_disable_clock(struct intel_encoder *encoder);
@@ -51,7 +51,7 @@ intel_ddi_port_pll_type(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state);
 void hsw_ddi_get_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *crtc_state);
-struct intel_shared_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder);
+struct intel_global_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder);
 void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state);
 void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 065fdf6dbb88..4577787cb8f9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1350,7 +1350,7 @@ static void intel_encoders_update_prepare(struct intel_atomic_state *state)
 			if (intel_crtc_needs_modeset(new_crtc_state))
 				continue;
 
-			new_crtc_state->shared_dpll = old_crtc_state->shared_dpll;
+			new_crtc_state->global_dpll = old_crtc_state->global_dpll;
 			new_crtc_state->dpll_hw_state = old_crtc_state->dpll_hw_state;
 		}
 	}
@@ -1694,7 +1694,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
-		if (pipe_crtc_state->shared_dpll)
+		if (pipe_crtc_state->global_dpll)
 			intel_enable_shared_dpll(pipe_crtc_state);
 	}
 
@@ -2040,7 +2040,7 @@ static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 	if (HAS_DDI(dev_priv) && crtc_state->has_audio)
 		set_bit(POWER_DOMAIN_AUDIO_MMIO, mask->bits);
 
-	if (crtc_state->shared_dpll)
+	if (crtc_state->global_dpll)
 		set_bit(POWER_DOMAIN_DISPLAY_CORE, mask->bits);
 
 	if (crtc_state->dsc.compression_enable)
@@ -3121,7 +3121,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->sink_format = pipe_config->output_format;
 	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
-	pipe_config->shared_dpll = NULL;
+	pipe_config->global_dpll = NULL;
 
 	ret = false;
 
@@ -3503,7 +3503,7 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 		return false;
 
 	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
-	pipe_config->shared_dpll = NULL;
+	pipe_config->global_dpll = NULL;
 
 	ret = false;
 	tmp = intel_de_read(dev_priv,
@@ -4080,7 +4080,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 						       POWER_DOMAIN_PIPE(crtc->pipe)))
 		return false;
 
-	pipe_config->shared_dpll = NULL;
+	pipe_config->global_dpll = NULL;
 
 	active = hsw_get_transcoder_state(crtc, pipe_config, &crtc->hw_readout_power_domains);
 
@@ -4663,7 +4663,7 @@ copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
 	/* preserve some things from the slave's original crtc state */
 	saved_state->uapi = secondary_crtc_state->uapi;
 	saved_state->scaler_state = secondary_crtc_state->scaler_state;
-	saved_state->shared_dpll = secondary_crtc_state->shared_dpll;
+	saved_state->global_dpll = secondary_crtc_state->global_dpll;
 	saved_state->crc_enabled = secondary_crtc_state->crc_enabled;
 
 	intel_crtc_free_hw_state(secondary_crtc_state);
@@ -4726,7 +4726,7 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 	saved_state->uapi = crtc_state->uapi;
 	saved_state->inherited = crtc_state->inherited;
 	saved_state->scaler_state = crtc_state->scaler_state;
-	saved_state->shared_dpll = crtc_state->shared_dpll;
+	saved_state->global_dpll = crtc_state->global_dpll;
 	saved_state->dpll_hw_state = crtc_state->dpll_hw_state;
 	memcpy(saved_state->icl_port_dplls, crtc_state->icl_port_dplls,
 	       sizeof(saved_state->icl_port_dplls));
@@ -5479,7 +5479,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_BOOL(double_wide);
 
 	if (dev_priv->display.dpll.mgr)
-		PIPE_CONF_CHECK_P(shared_dpll);
+		PIPE_CONF_CHECK_P(global_dpll);
 
 	/* FIXME convert everything over the dpll_mgr */
 	if (dev_priv->display.dpll.mgr || HAS_GMCH(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 554870d2494b..285b2d4cc130 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -125,8 +125,8 @@ struct intel_audio {
 struct intel_dpll {
 	struct mutex lock;
 
-	int num_shared_dpll;
-	struct intel_shared_dpll shared_dplls[I915_NUM_PLLS];
+	int num_global_dpll;
+	struct intel_global_dpll global_dplls[I915_NUM_PLLS];
 	const struct intel_dpll_mgr *mgr;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 079c7af4d7da..c63c9e155aee 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -633,7 +633,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 {
 	struct intel_display *display = node_to_intel_display(m->private);
 	struct drm_printer p = drm_seq_file_printer(m);
-	struct intel_shared_dpll *pll;
+	struct intel_global_dpll *pll;
 	int i;
 
 	drm_modeset_lock_all(display->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index acb8717319a2..87a7b9111ceb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1072,8 +1072,8 @@ struct intel_crtc_state {
 	 * haswell. */
 	struct dpll dpll;
 
-	/* Selected dpll when shared or NULL. */
-	struct intel_shared_dpll *shared_dpll;
+	/* Selected dpll. */
+	struct intel_global_dpll *global_dpll;
 
 	/* Actual register state of the dpll, for shared dpll cross-checking. */
 	struct intel_dpll_hw_state dpll_hw_state;
@@ -1083,7 +1083,7 @@ struct intel_crtc_state {
 	 * setting shared_dpll and dpll_hw_state to one of these reserved ones.
 	 */
 	struct icl_port_dpll {
-		struct intel_shared_dpll *pll;
+		struct intel_global_dpll *pll;
 		struct intel_dpll_hw_state hw_state;
 	} icl_port_dplls[ICL_PORT_DPLL_COUNT];
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 08a30e5aafce..96c79269c755 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1783,9 +1783,9 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	int ret;
 
 	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
-	drm_WARN_ON(&i915->drm, !crtc_state->hw.enable && crtc_state->shared_dpll);
+	drm_WARN_ON(&i915->drm, !crtc_state->hw.enable && crtc_state->global_dpll);
 
-	if (!crtc_state->hw.enable || crtc_state->shared_dpll)
+	if (!crtc_state->hw.enable || crtc_state->global_dpll)
 		return 0;
 
 	if (!i915->display.funcs.dpll->crtc_get_shared_dpll)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 1f336f26f08d..b26351eff7a8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -67,7 +67,7 @@ struct intel_global_dpll_funcs {
 	 * the pll is not already enabled.
 	 */
 	void (*enable)(struct intel_display *display,
-		       struct intel_shared_dpll *pll,
+		       struct intel_global_dpll *pll,
 		       const struct intel_dpll_hw_state *dpll_hw_state);
 
 	/*
@@ -76,7 +76,7 @@ struct intel_global_dpll_funcs {
 	 * tracked users for it.
 	 */
 	void (*disable)(struct intel_display *display,
-			struct intel_shared_dpll *pll);
+			struct intel_global_dpll *pll);
 
 	/*
 	 * Hook for reading the values currently programmed to the DPLL
@@ -84,7 +84,7 @@ struct intel_global_dpll_funcs {
 	 * verification after a mode set.
 	 */
 	bool (*get_hw_state)(struct intel_display *display,
-			     struct intel_shared_dpll *pll,
+			     struct intel_global_dpll *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state);
 
 	/*
@@ -92,7 +92,7 @@ struct intel_global_dpll_funcs {
 	 * in state.
 	 */
 	int (*get_freq)(struct intel_display *i915,
-			const struct intel_shared_dpll *pll,
+			const struct intel_global_dpll *pll,
 			const struct intel_dpll_hw_state *dpll_hw_state);
 };
 
@@ -121,7 +121,7 @@ static void
 intel_atomic_duplicate_dpll_state(struct intel_display *display,
 				  struct intel_dpll_state *dpll_state)
 {
-	struct intel_shared_dpll *pll;
+	struct intel_global_dpll *pll;
 	int i;
 
 	/* Copy dpll state */
@@ -155,11 +155,11 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
  * Returns:
  * A pointer to the DPLL with @id
  */
-struct intel_shared_dpll *
+struct intel_global_dpll *
 intel_get_shared_dpll_by_id(struct intel_display *display,
 			    enum intel_dpll_id id)
 {
-	struct intel_shared_dpll *pll;
+	struct intel_global_dpll *pll;
 	int i;
 
 	for_each_dpll(display, pll, i) {
@@ -173,7 +173,7 @@ intel_get_shared_dpll_by_id(struct intel_display *display,
 
 /* For ILK+ */
 void assert_shared_dpll(struct intel_display *display,
-			struct intel_shared_dpll *pll,
+			struct intel_global_dpll *pll,
 			bool state)
 {
 	bool cur_state;
@@ -202,7 +202,7 @@ enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port)
 
 static i915_reg_t
 intel_combo_pll_enable_reg(struct intel_display *display,
-			   struct intel_shared_dpll *pll)
+			   struct intel_global_dpll *pll)
 {
 	if (display->platform.dg1)
 		return DG1_DPLL_ENABLE(pll->info->id);
@@ -215,7 +215,7 @@ intel_combo_pll_enable_reg(struct intel_display *display,
 
 static i915_reg_t
 intel_tc_pll_enable_reg(struct intel_display *display,
-			struct intel_shared_dpll *pll)
+			struct intel_global_dpll *pll)
 {
 	const enum intel_dpll_id id = pll->info->id;
 	enum tc_port tc_port = icl_pll_id_to_tc_port(id);
@@ -227,7 +227,7 @@ intel_tc_pll_enable_reg(struct intel_display *display,
 }
 
 static void _intel_enable_shared_dpll(struct intel_display *display,
-				      struct intel_shared_dpll *pll)
+				      struct intel_global_dpll *pll)
 {
 	if (pll->info->power_domain)
 		pll->wakeref = intel_display_power_get(display, pll->info->power_domain);
@@ -237,7 +237,7 @@ static void _intel_enable_shared_dpll(struct intel_display *display,
 }
 
 static void _intel_disable_shared_dpll(struct intel_display *display,
-				       struct intel_shared_dpll *pll)
+				       struct intel_global_dpll *pll)
 {
 	pll->info->funcs->disable(display, pll);
 	pll->on = false;
@@ -256,7 +256,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
+	struct intel_global_dpll *pll = crtc_state->global_dpll;
 	unsigned int pipe_mask = BIT(crtc->pipe);
 	unsigned int old_mask;
 
@@ -302,7 +302,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
+	struct intel_global_dpll *pll = crtc_state->global_dpll;
 	unsigned int pipe_mask = BIT(crtc->pipe);
 
 	/* PCH only available on ILK+ */
@@ -341,7 +341,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 static unsigned long
 intel_dpll_mask_all(struct intel_display *display)
 {
-	struct intel_shared_dpll *pll;
+	struct intel_global_dpll *pll;
 	unsigned long dpll_mask = 0;
 	int i;
 
@@ -354,7 +354,7 @@ intel_dpll_mask_all(struct intel_display *display)
 	return dpll_mask;
 }
 
-static struct intel_shared_dpll *
+static struct intel_global_dpll *
 intel_find_shared_dpll(struct intel_atomic_state *state,
 		       const struct intel_crtc *crtc,
 		       const struct intel_dpll_hw_state *dpll_hw_state,
@@ -363,7 +363,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(crtc);
 	unsigned long dpll_mask_all = intel_dpll_mask_all(display);
 	struct intel_dpll_state *dpll_state;
-	struct intel_shared_dpll *unused_pll = NULL;
+	struct intel_global_dpll *unused_pll = NULL;
 	enum intel_dpll_id id;
 
 	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
@@ -371,7 +371,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 	drm_WARN_ON(display->drm, dpll_mask & ~dpll_mask_all);
 
 	for_each_set_bit(id, &dpll_mask, fls(dpll_mask_all)) {
-		struct intel_shared_dpll *pll;
+		struct intel_global_dpll *pll;
 
 		pll = intel_get_shared_dpll_by_id(display, id);
 		if (!pll)
@@ -418,7 +418,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
  */
 static void
 intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
-				 const struct intel_shared_dpll *pll,
+				 const struct intel_global_dpll *pll,
 				 struct intel_dpll_state *dpll_state)
 {
 	struct intel_display *display = to_intel_display(crtc);
@@ -434,7 +434,7 @@ intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
 static void
 intel_reference_shared_dpll(struct intel_atomic_state *state,
 			    const struct intel_crtc *crtc,
-			    const struct intel_shared_dpll *pll,
+			    const struct intel_global_dpll *pll,
 			    const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct intel_dpll_state *dpll_state;
@@ -457,7 +457,7 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
  */
 void
 intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
-				   const struct intel_shared_dpll *pll,
+				   const struct intel_global_dpll *pll,
 				   struct intel_dpll_state *dpll_state)
 {
 	struct intel_display *display = to_intel_display(crtc);
@@ -472,7 +472,7 @@ intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
 
 static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
 					  const struct intel_crtc *crtc,
-					  const struct intel_shared_dpll *pll)
+					  const struct intel_global_dpll *pll)
 {
 	struct intel_dpll_state *dpll_state;
 
@@ -489,12 +489,12 @@ static void intel_put_dpll(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	new_crtc_state->shared_dpll = NULL;
+	new_crtc_state->global_dpll = NULL;
 
-	if (!old_crtc_state->shared_dpll)
+	if (!old_crtc_state->global_dpll)
 		return;
 
-	intel_unreference_shared_dpll(state, crtc, old_crtc_state->shared_dpll);
+	intel_unreference_shared_dpll(state, crtc, old_crtc_state->global_dpll);
 }
 
 /**
@@ -512,7 +512,7 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_dpll_state *dpll_state = state->dpll_state;
-	struct intel_shared_dpll *pll;
+	struct intel_global_dpll *pll;
 	int i;
 
 	if (!state->dpll_set)
@@ -523,7 +523,7 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 }
 
 static bool ibx_pch_dpll_get_hw_state(struct intel_display *display,
-				      struct intel_shared_dpll *pll,
+				      struct intel_global_dpll *pll,
 				      struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
@@ -559,7 +559,7 @@ static void ibx_assert_pch_refclk_enabled(struct intel_display *display)
 }
 
 static void ibx_pch_dpll_enable(struct intel_display *display,
-				struct intel_shared_dpll *pll,
+				struct intel_global_dpll *pll,
 				const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
@@ -588,7 +588,7 @@ static void ibx_pch_dpll_enable(struct intel_display *display,
 }
 
 static void ibx_pch_dpll_disable(struct intel_display *display,
-				 struct intel_shared_dpll *pll)
+				 struct intel_global_dpll *pll)
 {
 	const enum intel_dpll_id id = pll->info->id;
 
@@ -612,7 +612,7 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_shared_dpll *pll;
+	struct intel_global_dpll *pll;
 	enum intel_dpll_id id;
 
 	if (HAS_PCH_IBX(i915)) {
@@ -638,7 +638,7 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
 	intel_reference_shared_dpll(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
 
-	crtc_state->shared_dpll = pll;
+	crtc_state->global_dpll = pll;
 
 	return 0;
 }
@@ -690,7 +690,7 @@ static const struct intel_dpll_mgr pch_pll_mgr = {
 };
 
 static void hsw_ddi_wrpll_enable(struct intel_display *display,
-				 struct intel_shared_dpll *pll,
+				 struct intel_global_dpll *pll,
 				 const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
@@ -702,7 +702,7 @@ static void hsw_ddi_wrpll_enable(struct intel_display *display,
 }
 
 static void hsw_ddi_spll_enable(struct intel_display *display,
-				struct intel_shared_dpll *pll,
+				struct intel_global_dpll *pll,
 				const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
@@ -713,7 +713,7 @@ static void hsw_ddi_spll_enable(struct intel_display *display,
 }
 
 static void hsw_ddi_wrpll_disable(struct intel_display *display,
-				  struct intel_shared_dpll *pll)
+				  struct intel_global_dpll *pll)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	const enum intel_dpll_id id = pll->info->id;
@@ -730,7 +730,7 @@ static void hsw_ddi_wrpll_disable(struct intel_display *display,
 }
 
 static void hsw_ddi_spll_disable(struct intel_display *display,
-				 struct intel_shared_dpll *pll)
+				 struct intel_global_dpll *pll)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	enum intel_dpll_id id = pll->info->id;
@@ -747,7 +747,7 @@ static void hsw_ddi_spll_disable(struct intel_display *display,
 }
 
 static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
-				       struct intel_shared_dpll *pll,
+				       struct intel_global_dpll *pll,
 				       struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
@@ -769,7 +769,7 @@ static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
 }
 
 static bool hsw_ddi_spll_get_hw_state(struct intel_display *display,
-				      struct intel_shared_dpll *pll,
+				      struct intel_global_dpll *pll,
 				      struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
@@ -996,7 +996,7 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
 }
 
 static int hsw_ddi_wrpll_get_freq(struct intel_display *display,
-				  const struct intel_shared_dpll *pll,
+				  const struct intel_global_dpll *pll,
 				  const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
@@ -1059,7 +1059,7 @@ hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
 	return 0;
 }
 
-static struct intel_shared_dpll *
+static struct intel_global_dpll *
 hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc)
 {
@@ -1090,11 +1090,11 @@ hsw_ddi_lcpll_compute_dpll(struct intel_crtc_state *crtc_state)
 	}
 }
 
-static struct intel_shared_dpll *
+static struct intel_global_dpll *
 hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_shared_dpll *pll;
+	struct intel_global_dpll *pll;
 	enum intel_dpll_id pll_id;
 	int clock = crtc_state->port_clock;
 
@@ -1122,7 +1122,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 }
 
 static int hsw_ddi_lcpll_get_freq(struct intel_display *display,
-				  const struct intel_shared_dpll *pll,
+				  const struct intel_global_dpll *pll,
 				  const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	int link_clock = 0;
@@ -1162,7 +1162,7 @@ hsw_ddi_spll_compute_dpll(struct intel_atomic_state *state,
 	return 0;
 }
 
-static struct intel_shared_dpll *
+static struct intel_global_dpll *
 hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc)
 {
@@ -1174,7 +1174,7 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
 }
 
 static int hsw_ddi_spll_get_freq(struct intel_display *display,
-				 const struct intel_shared_dpll *pll,
+				 const struct intel_global_dpll *pll,
 				 const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
@@ -1221,7 +1221,7 @@ static int hsw_get_dpll(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_shared_dpll *pll = NULL;
+	struct intel_global_dpll *pll = NULL;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		pll = hsw_ddi_wrpll_get_dpll(state, crtc);
@@ -1236,7 +1236,7 @@ static int hsw_get_dpll(struct intel_atomic_state *state,
 	intel_reference_shared_dpll(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
 
-	crtc_state->shared_dpll = pll;
+	crtc_state->global_dpll = pll;
 
 	return 0;
 }
@@ -1285,18 +1285,18 @@ static const struct intel_global_dpll_funcs hsw_ddi_spll_funcs = {
 };
 
 static void hsw_ddi_lcpll_enable(struct intel_display *display,
-				 struct intel_shared_dpll *pll,
+				 struct intel_global_dpll *pll,
 				 const struct intel_dpll_hw_state *hw_state)
 {
 }
 
 static void hsw_ddi_lcpll_disable(struct intel_display *display,
-				  struct intel_shared_dpll *pll)
+				  struct intel_global_dpll *pll)
 {
 }
 
 static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
-				       struct intel_shared_dpll *pll,
+				       struct intel_global_dpll *pll,
 				       struct intel_dpll_hw_state *dpll_hw_state)
 {
 	return true;
@@ -1364,7 +1364,7 @@ static const struct skl_dpll_regs skl_dpll_regs[4] = {
 };
 
 static void skl_ddi_pll_write_ctrl1(struct intel_display *display,
-				    struct intel_shared_dpll *pll,
+				    struct intel_global_dpll *pll,
 				    const struct skl_dpll_hw_state *hw_state)
 {
 	const enum intel_dpll_id id = pll->info->id;
@@ -1378,7 +1378,7 @@ static void skl_ddi_pll_write_ctrl1(struct intel_display *display,
 }
 
 static void skl_ddi_pll_enable(struct intel_display *display,
-			       struct intel_shared_dpll *pll,
+			       struct intel_global_dpll *pll,
 			       const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
@@ -1400,7 +1400,7 @@ static void skl_ddi_pll_enable(struct intel_display *display,
 }
 
 static void skl_ddi_dpll0_enable(struct intel_display *display,
-				 struct intel_shared_dpll *pll,
+				 struct intel_global_dpll *pll,
 				 const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
@@ -1409,7 +1409,7 @@ static void skl_ddi_dpll0_enable(struct intel_display *display,
 }
 
 static void skl_ddi_pll_disable(struct intel_display *display,
-				struct intel_shared_dpll *pll)
+				struct intel_global_dpll *pll)
 {
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
@@ -1420,12 +1420,12 @@ static void skl_ddi_pll_disable(struct intel_display *display,
 }
 
 static void skl_ddi_dpll0_disable(struct intel_display *display,
-				  struct intel_shared_dpll *pll)
+				  struct intel_global_dpll *pll)
 {
 }
 
 static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
-				     struct intel_shared_dpll *pll,
+				     struct intel_global_dpll *pll,
 				     struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
@@ -1463,7 +1463,7 @@ static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
 }
 
 static bool skl_ddi_dpll0_get_hw_state(struct intel_display *display,
-				       struct intel_shared_dpll *pll,
+				       struct intel_global_dpll *pll,
 				       struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
@@ -1736,7 +1736,7 @@ skl_ddi_calculate_wrpll(int clock,
 }
 
 static int skl_ddi_wrpll_get_freq(struct intel_display *display,
-				  const struct intel_shared_dpll *pll,
+				  const struct intel_global_dpll *pll,
 				  const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
@@ -1884,7 +1884,7 @@ skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 }
 
 static int skl_ddi_lcpll_get_freq(struct intel_display *display,
-				  const struct intel_shared_dpll *pll,
+				  const struct intel_global_dpll *pll,
 				  const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
@@ -1939,7 +1939,7 @@ static int skl_get_dpll(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_shared_dpll *pll;
+	struct intel_global_dpll *pll;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
 		pll = intel_find_shared_dpll(state, crtc,
@@ -1957,13 +1957,13 @@ static int skl_get_dpll(struct intel_atomic_state *state,
 	intel_reference_shared_dpll(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
 
-	crtc_state->shared_dpll = pll;
+	crtc_state->global_dpll = pll;
 
 	return 0;
 }
 
 static int skl_ddi_pll_get_freq(struct intel_display *display,
-				const struct intel_shared_dpll *pll,
+				const struct intel_global_dpll *pll,
 				const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
@@ -2038,7 +2038,7 @@ static const struct intel_dpll_mgr skl_pll_mgr = {
 };
 
 static void bxt_ddi_pll_enable(struct intel_display *display,
-			       struct intel_shared_dpll *pll,
+			       struct intel_global_dpll *pll,
 			       const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
@@ -2141,7 +2141,7 @@ static void bxt_ddi_pll_enable(struct intel_display *display,
 }
 
 static void bxt_ddi_pll_disable(struct intel_display *display,
-				struct intel_shared_dpll *pll)
+				struct intel_global_dpll *pll)
 {
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 
@@ -2160,7 +2160,7 @@ static void bxt_ddi_pll_disable(struct intel_display *display,
 }
 
 static bool bxt_ddi_pll_get_hw_state(struct intel_display *display,
-				     struct intel_shared_dpll *pll,
+				     struct intel_global_dpll *pll,
 				     struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
@@ -2360,7 +2360,7 @@ static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 }
 
 static int bxt_ddi_pll_get_freq(struct intel_display *display,
-				const struct intel_shared_dpll *pll,
+				const struct intel_global_dpll *pll,
 				const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
@@ -2429,7 +2429,7 @@ static int bxt_get_dpll(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_shared_dpll *pll;
+	struct intel_global_dpll *pll;
 	enum intel_dpll_id id;
 
 	/* 1:1 mapping between ports and PLLs */
@@ -2442,7 +2442,7 @@ static int bxt_get_dpll(struct intel_atomic_state *state,
 	intel_reference_shared_dpll(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
 
-	crtc_state->shared_dpll = pll;
+	crtc_state->global_dpll = pll;
 
 	return 0;
 }
@@ -2757,7 +2757,7 @@ static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 }
 
 static int icl_ddi_tbt_pll_get_freq(struct intel_display *display,
-				    const struct intel_shared_dpll *pll,
+				    const struct intel_global_dpll *pll,
 				    const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	/*
@@ -2828,7 +2828,7 @@ icl_calc_wrpll(struct intel_crtc_state *crtc_state,
 }
 
 static int icl_ddi_combo_pll_get_freq(struct intel_display *display,
-				      const struct intel_shared_dpll *pll,
+				      const struct intel_global_dpll *pll,
 				      const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
@@ -3201,7 +3201,7 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 }
 
 static int icl_ddi_mg_pll_get_freq(struct intel_display *display,
-				   const struct intel_shared_dpll *pll,
+				   const struct intel_global_dpll *pll,
 				   const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
@@ -3287,7 +3287,7 @@ void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
 	struct icl_port_dpll *port_dpll =
 		&crtc_state->icl_port_dplls[port_dpll_id];
 
-	crtc_state->shared_dpll = port_dpll->pll;
+	crtc_state->global_dpll = port_dpll->pll;
 	crtc_state->dpll_hw_state = port_dpll->hw_state;
 }
 
@@ -3430,8 +3430,8 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 		return ret;
 
 	/* this is mainly for the fastset check */
-	if (old_crtc_state->shared_dpll &&
-	    old_crtc_state->shared_dpll->info->id == DPLL_ID_ICL_TBTPLL)
+	if (old_crtc_state->global_dpll &&
+	    old_crtc_state->global_dpll->info->id == DPLL_ID_ICL_TBTPLL)
 		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
 	else
 		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
@@ -3523,7 +3523,7 @@ static void icl_put_dplls(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum icl_port_dpll_id id;
 
-	new_crtc_state->shared_dpll = NULL;
+	new_crtc_state->global_dpll = NULL;
 
 	for (id = ICL_PORT_DPLL_DEFAULT; id < ICL_PORT_DPLL_COUNT; id++) {
 		const struct icl_port_dpll *old_port_dpll =
@@ -3541,7 +3541,7 @@ static void icl_put_dplls(struct intel_atomic_state *state,
 }
 
 static bool mg_pll_get_hw_state(struct intel_display *display,
-				struct intel_shared_dpll *pll,
+				struct intel_global_dpll *pll,
 				struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
@@ -3608,7 +3608,7 @@ static bool mg_pll_get_hw_state(struct intel_display *display,
 }
 
 static bool dkl_pll_get_hw_state(struct intel_display *display,
-				 struct intel_shared_dpll *pll,
+				 struct intel_global_dpll *pll,
 				 struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
@@ -3680,7 +3680,7 @@ static bool dkl_pll_get_hw_state(struct intel_display *display,
 }
 
 static bool icl_pll_get_hw_state(struct intel_display *display,
-				 struct intel_shared_dpll *pll,
+				 struct intel_global_dpll *pll,
 				 struct intel_dpll_hw_state *dpll_hw_state,
 				 i915_reg_t enable_reg)
 {
@@ -3741,7 +3741,7 @@ static bool icl_pll_get_hw_state(struct intel_display *display,
 }
 
 static bool combo_pll_get_hw_state(struct intel_display *display,
-				   struct intel_shared_dpll *pll,
+				   struct intel_global_dpll *pll,
 				   struct intel_dpll_hw_state *dpll_hw_state)
 {
 	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
@@ -3750,14 +3750,14 @@ static bool combo_pll_get_hw_state(struct intel_display *display,
 }
 
 static bool tbt_pll_get_hw_state(struct intel_display *display,
-				 struct intel_shared_dpll *pll,
+				 struct intel_global_dpll *pll,
 				 struct intel_dpll_hw_state *dpll_hw_state)
 {
 	return icl_pll_get_hw_state(display, pll, dpll_hw_state, TBT_PLL_ENABLE);
 }
 
 static void icl_dpll_write(struct intel_display *display,
-			   struct intel_shared_dpll *pll,
+			   struct intel_global_dpll *pll,
 			   const struct icl_dpll_hw_state *hw_state)
 {
 	const enum intel_dpll_id id = pll->info->id;
@@ -3799,7 +3799,7 @@ static void icl_dpll_write(struct intel_display *display,
 }
 
 static void icl_mg_pll_write(struct intel_display *display,
-			     struct intel_shared_dpll *pll,
+			     struct intel_global_dpll *pll,
 			     const struct icl_dpll_hw_state *hw_state)
 {
 	enum tc_port tc_port = icl_pll_id_to_tc_port(pll->info->id);
@@ -3842,7 +3842,7 @@ static void icl_mg_pll_write(struct intel_display *display,
 }
 
 static void dkl_pll_write(struct intel_display *display,
-			  struct intel_shared_dpll *pll,
+			  struct intel_global_dpll *pll,
 			  const struct icl_dpll_hw_state *hw_state)
 {
 	enum tc_port tc_port = icl_pll_id_to_tc_port(pll->info->id);
@@ -3907,7 +3907,7 @@ static void dkl_pll_write(struct intel_display *display,
 }
 
 static void icl_pll_power_enable(struct intel_display *display,
-				 struct intel_shared_dpll *pll,
+				 struct intel_global_dpll *pll,
 				 i915_reg_t enable_reg)
 {
 	intel_de_rmw(display, enable_reg, 0, PLL_POWER_ENABLE);
@@ -3922,7 +3922,7 @@ static void icl_pll_power_enable(struct intel_display *display,
 }
 
 static void icl_pll_enable(struct intel_display *display,
-			   struct intel_shared_dpll *pll,
+			   struct intel_global_dpll *pll,
 			   i915_reg_t enable_reg)
 {
 	intel_de_rmw(display, enable_reg, 0, PLL_ENABLE);
@@ -3932,7 +3932,7 @@ static void icl_pll_enable(struct intel_display *display,
 		drm_err(display->drm, "PLL %d not locked\n", pll->info->id);
 }
 
-static void adlp_cmtg_clock_gating_wa(struct intel_display *display, struct intel_shared_dpll *pll)
+static void adlp_cmtg_clock_gating_wa(struct intel_display *display, struct intel_global_dpll *pll)
 {
 	u32 val;
 
@@ -3957,7 +3957,7 @@ static void adlp_cmtg_clock_gating_wa(struct intel_display *display, struct inte
 }
 
 static void combo_pll_enable(struct intel_display *display,
-			     struct intel_shared_dpll *pll,
+			     struct intel_global_dpll *pll,
 			     const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
@@ -3981,7 +3981,7 @@ static void combo_pll_enable(struct intel_display *display,
 }
 
 static void tbt_pll_enable(struct intel_display *display,
-			   struct intel_shared_dpll *pll,
+			   struct intel_global_dpll *pll,
 			   const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
@@ -4002,7 +4002,7 @@ static void tbt_pll_enable(struct intel_display *display,
 }
 
 static void mg_pll_enable(struct intel_display *display,
-			  struct intel_shared_dpll *pll,
+			  struct intel_global_dpll *pll,
 			  const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
@@ -4027,7 +4027,7 @@ static void mg_pll_enable(struct intel_display *display,
 }
 
 static void icl_pll_disable(struct intel_display *display,
-			    struct intel_shared_dpll *pll,
+			    struct intel_global_dpll *pll,
 			    i915_reg_t enable_reg)
 {
 	/* The first steps are done by intel_ddi_post_disable(). */
@@ -4058,7 +4058,7 @@ static void icl_pll_disable(struct intel_display *display,
 }
 
 static void combo_pll_disable(struct intel_display *display,
-			      struct intel_shared_dpll *pll)
+			      struct intel_global_dpll *pll)
 {
 	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
 
@@ -4066,13 +4066,13 @@ static void combo_pll_disable(struct intel_display *display,
 }
 
 static void tbt_pll_disable(struct intel_display *display,
-			    struct intel_shared_dpll *pll)
+			    struct intel_global_dpll *pll)
 {
 	icl_pll_disable(display, pll, TBT_PLL_ENABLE);
 }
 
 static void mg_pll_disable(struct intel_display *display,
-			   struct intel_shared_dpll *pll)
+			   struct intel_global_dpll *pll)
 {
 	i915_reg_t enable_reg = intel_tc_pll_enable_reg(display, pll);
 
@@ -4349,19 +4349,19 @@ void intel_shared_dpll_init(struct intel_display *display)
 
 	for (i = 0; dpll_info[i].name; i++) {
 		if (drm_WARN_ON(display->drm,
-				i >= ARRAY_SIZE(display->dpll.shared_dplls)))
+				i >= ARRAY_SIZE(display->dpll.global_dplls)))
 			break;
 
 		/* must fit into unsigned long bitmask on 32bit */
 		if (drm_WARN_ON(display->drm, dpll_info[i].id >= 32))
 			break;
 
-		display->dpll.shared_dplls[i].info = &dpll_info[i];
-		display->dpll.shared_dplls[i].index = i;
+		display->dpll.global_dplls[i].info = &dpll_info[i];
+		display->dpll.global_dplls[i].index = i;
 	}
 
 	display->dpll.mgr = dpll_mgr;
-	display->dpll.num_shared_dpll = i;
+	display->dpll.num_global_dpll = i;
 }
 
 /**
@@ -4485,7 +4485,7 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
  * Return the output frequency corresponding to @pll's passed in @dpll_hw_state.
  */
 int intel_dpll_get_freq(struct intel_display *display,
-			const struct intel_shared_dpll *pll,
+			const struct intel_global_dpll *pll,
 			const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	if (drm_WARN_ON(display->drm, !pll->info->funcs->get_freq))
@@ -4503,14 +4503,14 @@ int intel_dpll_get_freq(struct intel_display *display,
  * Read out @pll's hardware state into @dpll_hw_state.
  */
 bool intel_dpll_get_hw_state(struct intel_display *display,
-			     struct intel_shared_dpll *pll,
+			     struct intel_global_dpll *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state)
 {
 	return pll->info->funcs->get_hw_state(display, pll, dpll_hw_state);
 }
 
 static void readout_dpll_hw_state(struct intel_display *display,
-				  struct intel_shared_dpll *pll)
+				  struct intel_global_dpll *pll)
 {
 	struct intel_crtc *crtc;
 
@@ -4524,7 +4524,7 @@ static void readout_dpll_hw_state(struct intel_display *display,
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
-		if (crtc_state->hw.active && crtc_state->shared_dpll == pll)
+		if (crtc_state->hw.active && crtc_state->global_dpll == pll)
 			intel_reference_shared_dpll_crtc(crtc, pll, &pll->state);
 	}
 	pll->active_mask = pll->state.pipe_mask;
@@ -4542,7 +4542,7 @@ void intel_dpll_update_ref_clks(struct intel_display *display)
 
 void intel_dpll_readout_hw_state(struct intel_display *display)
 {
-	struct intel_shared_dpll *pll;
+	struct intel_global_dpll *pll;
 	int i;
 
 	for_each_dpll(display, pll, i)
@@ -4550,7 +4550,7 @@ void intel_dpll_readout_hw_state(struct intel_display *display)
 }
 
 static void sanitize_dpll_state(struct intel_display *display,
-				struct intel_shared_dpll *pll)
+				struct intel_global_dpll *pll)
 {
 	if (!pll->on)
 		return;
@@ -4569,7 +4569,7 @@ static void sanitize_dpll_state(struct intel_display *display,
 
 void intel_dpll_sanitize_state(struct intel_display *display)
 {
-	struct intel_shared_dpll *pll;
+	struct intel_global_dpll *pll;
 	int i;
 
 	intel_cx0_pll_power_save_wa(display);
@@ -4626,7 +4626,7 @@ bool intel_dpll_compare_hw_state(struct intel_display *display,
 
 static void
 verify_single_dpll_state(struct intel_display *display,
-			 struct intel_shared_dpll *pll,
+			 struct intel_global_dpll *pll,
 			 struct intel_crtc *crtc,
 			 const struct intel_crtc_state *new_crtc_state)
 {
@@ -4679,8 +4679,8 @@ verify_single_dpll_state(struct intel_display *display,
 				 pll->info->name);
 }
 
-static bool has_alt_port_dpll(const struct intel_shared_dpll *old_pll,
-			      const struct intel_shared_dpll *new_pll)
+static bool has_alt_port_dpll(const struct intel_global_dpll *old_pll,
+			      const struct intel_global_dpll *new_pll)
 {
 	return old_pll && new_pll && old_pll != new_pll &&
 		(old_pll->info->is_alt_port_dpll || new_pll->info->is_alt_port_dpll);
@@ -4695,22 +4695,22 @@ void intel_dpll_state_verify(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (new_crtc_state->shared_dpll)
-		verify_single_dpll_state(display, new_crtc_state->shared_dpll,
+	if (new_crtc_state->global_dpll)
+		verify_single_dpll_state(display, new_crtc_state->global_dpll,
 					 crtc, new_crtc_state);
 
-	if (old_crtc_state->shared_dpll &&
-	    old_crtc_state->shared_dpll != new_crtc_state->shared_dpll) {
+	if (old_crtc_state->global_dpll &&
+	    old_crtc_state->global_dpll != new_crtc_state->global_dpll) {
 		u8 pipe_mask = BIT(crtc->pipe);
-		struct intel_shared_dpll *pll = old_crtc_state->shared_dpll;
+		struct intel_global_dpll *pll = old_crtc_state->global_dpll;
 
 		INTEL_DISPLAY_STATE_WARN(display, pll->active_mask & pipe_mask,
 					 "%s: pll active mismatch (didn't expect pipe %c in active mask (0x%x))\n",
 					 pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
 
 		/* TC ports have both MG/TC and TBT PLL referenced simultaneously */
-		INTEL_DISPLAY_STATE_WARN(display, !has_alt_port_dpll(old_crtc_state->shared_dpll,
-								     new_crtc_state->shared_dpll) &&
+		INTEL_DISPLAY_STATE_WARN(display, !has_alt_port_dpll(old_crtc_state->global_dpll,
+								     new_crtc_state->global_dpll) &&
 					 pll->state.pipe_mask & pipe_mask,
 					 "%s: pll enabled crtcs mismatch (found pipe %c in enabled mask (0x%x))\n",
 					 pll->info->name, pipe_name(crtc->pipe), pll->state.pipe_mask);
@@ -4720,7 +4720,7 @@ void intel_dpll_state_verify(struct intel_atomic_state *state,
 void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct intel_shared_dpll *pll;
+	struct intel_global_dpll *pll;
 	int i;
 
 	for_each_dpll(display, pll, i)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 5bfe14dde3f0..6edd103eda55 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -31,8 +31,8 @@
 #include "intel_wakeref.h"
 
 #define for_each_dpll(__display, __pll, __i) \
-	for ((__i) = 0; (__i) < (__display)->dpll.num_shared_dpll && \
-		     ((__pll) = &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)
+	for ((__i) = 0; (__i) < (__display)->dpll.num_global_dpll && \
+		     ((__pll) = &(__display)->dpll.global_dplls[(__i)]) ; (__i)++)
 
 enum tc_port;
 struct drm_printer;
@@ -344,9 +344,9 @@ struct dpll_info {
 };
 
 /**
- * struct intel_shared_dpll - display PLL with tracked state and users
+ * struct intel_global_dpll - display PLL with tracked state and users
  */
-struct intel_shared_dpll {
+struct intel_global_dpll {
 	/**
 	 * @state:
 	 *
@@ -388,11 +388,11 @@ struct intel_shared_dpll {
 #define SKL_DPLL3 3
 
 /* shared dpll functions */
-struct intel_shared_dpll *
+struct intel_global_dpll *
 intel_get_shared_dpll_by_id(struct intel_display *display,
 			    enum intel_dpll_id id);
 void assert_shared_dpll(struct intel_display *display,
-			struct intel_shared_dpll *pll,
+			struct intel_global_dpll *pll,
 			bool state);
 #define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p, true)
 #define assert_shared_dpll_disabled(d, p) assert_shared_dpll(d, p, false)
@@ -405,7 +405,7 @@ int intel_reserve_shared_dplls(struct intel_atomic_state *state,
 void intel_release_shared_dplls(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
 void intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
-					const struct intel_shared_dpll *pll,
+					const struct intel_global_dpll *pll,
 					struct intel_dpll_state *shared_dpll_state);
 void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
 			      enum icl_port_dpll_id port_dpll_id);
@@ -413,10 +413,10 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc,
 			      struct intel_encoder *encoder);
 int intel_dpll_get_freq(struct intel_display *display,
-			const struct intel_shared_dpll *pll,
+			const struct intel_global_dpll *pll,
 			const struct intel_dpll_hw_state *dpll_hw_state);
 bool intel_dpll_get_hw_state(struct intel_display *display,
-			     struct intel_shared_dpll *pll,
+			     struct intel_global_dpll *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state);
 void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 024d0c7e0a88..f59c4375ee14 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -921,7 +921,7 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
 
 	/* Configure Port Clock Select */
-	drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll->info->id != DPLL_ID_SPLL);
+	drm_WARN_ON(&dev_priv->drm, crtc_state->global_dpll->info->id != DPLL_ID_SPLL);
 	intel_ddi_enable_clock(encoder, crtc_state);
 
 	/* Start the training iterating through available voltages and emphasis,
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 7ed8625193fe..c5b828dc4d6c 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -250,7 +250,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 
 	if (HAS_PCH_SPLIT(i915)) {
 		assert_fdi_rx_pll_disabled(display, pipe);
-		assert_shared_dpll_disabled(display, crtc_state->shared_dpll);
+		assert_shared_dpll_disabled(display, crtc_state->global_dpll);
 	} else {
 		assert_pll_disabled(display, pipe);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index a5a00b3ce98f..07a75be8cb12 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -91,10 +91,10 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	crtc->active = false;
 	crtc->base.enabled = false;
 
-	if (crtc_state->shared_dpll)
+	if (crtc_state->global_dpll)
 		intel_unreference_shared_dpll_crtc(crtc,
-						   crtc_state->shared_dpll,
-						   &crtc_state->shared_dpll->state);
+						   crtc_state->global_dpll,
+						   &crtc_state->global_dpll->state);
 }
 
 static void set_encoder_for_connector(struct intel_connector *connector,
@@ -579,7 +579,7 @@ static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
 	 */
 	return IS_SANDYBRIDGE(i915) &&
 		crtc_state->hw.active &&
-		crtc_state->shared_dpll &&
+		crtc_state->global_dpll &&
 		crtc_state->port_clock == 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 1abe0a784570..4192cfbb7af6 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -256,7 +256,7 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 	u32 val, pipeconf_val;
 
 	/* Make sure PCH DPLL is enabled */
-	assert_shared_dpll_enabled(display, crtc_state->shared_dpll);
+	assert_shared_dpll_enabled(display, crtc_state->global_dpll);
 
 	/* FDI must be feeding us bits for PCH ports */
 	assert_fdi_tx_enabled(dev_priv, pipe);
@@ -387,7 +387,7 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 		temp = intel_de_read(display, PCH_DPLL_SEL);
 		temp |= TRANS_DPLL_ENABLE(pipe);
 		sel = TRANS_DPLLB_SEL(pipe);
-		if (crtc_state->shared_dpll ==
+		if (crtc_state->global_dpll ==
 		    intel_get_shared_dpll_by_id(display, DPLL_ID_PCH_PLL_B))
 			temp |= sel;
 		else
@@ -500,7 +500,7 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_shared_dpll *pll;
+	struct intel_global_dpll *pll;
 	enum pipe pipe = crtc->pipe;
 	enum intel_dpll_id pll_id;
 	bool pll_active;
@@ -532,8 +532,8 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 			pll_id = DPLL_ID_PCH_PLL_A;
 	}
 
-	crtc_state->shared_dpll = intel_get_shared_dpll_by_id(display, pll_id);
-	pll = crtc_state->shared_dpll;
+	crtc_state->global_dpll = intel_get_shared_dpll_by_id(display, pll_id);
+	pll = crtc_state->global_dpll;
 
 	pll_active = intel_dpll_get_hw_state(display, pll,
 					     &crtc_state->dpll_hw_state);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index ebec879bacf7..abf9a8134866 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -494,7 +494,7 @@ static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 {
 	struct intel_display *display = &dev_priv->display;
 	struct intel_encoder *encoder;
-	struct intel_shared_dpll *pll;
+	struct intel_global_dpll *pll;
 	int i;
 	u32 val, final;
 	bool has_lvds = false;
-- 
2.34.1

