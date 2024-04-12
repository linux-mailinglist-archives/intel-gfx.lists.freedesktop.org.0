Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D06C8A35AB
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:28:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6A4B10F7AC;
	Fri, 12 Apr 2024 18:28:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GvlhgyzJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5400D10F7AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946480; x=1744482480;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MpdfWO8UWNvdLFDssInndxVfVcLvcefXi6rVYvi/Gbs=;
 b=GvlhgyzJXP68UzWk5D3D0SXTblOViE2O5LVYENWKxt+cgHxkLSGkIGyJ
 wxaw8UXTNsGJDC/QpNZE8dAYEsJrKzIy7cmSUL6A742F4H3poyXzcLJov
 JK7ckDGph5ZUkQNiPjXvnOMHgYcAOlkN8OefMC+Cic07CmUmV6un6X3no
 B5j6PGieqip1MHoIDwAsYzsrNc0lKhh51oGH5A8cZo7rwlT8tgz/25xs4
 uYgXUVsHUFTHHH7dx1Xo6jEFkYKm1kquSaMf5nU8V1F0/zEkhZsOmxDOo
 9r0hxeby044va7U2kXZYcU8HGPDEQUpO1O6D6IBuYV2XfGDCx9D04sa6V g==;
X-CSE-ConnectionGUID: A8tUTC5lTnK5zMpVxbR3ag==
X-CSE-MsgGUID: 5c91j1TMSPergDPIJCsYvw==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560610"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560610"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:58 -0700
X-CSE-ConnectionGUID: yIlFkblGQkClKadg/R/jNw==
X-CSE-MsgGUID: HVc5//afT1SvA+I4zph1Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394941"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 18/18] drm/i915: Suck snps/cx0 PLL states into dpll_hw_state
Date: Fri, 12 Apr 2024 21:27:03 +0300
Message-ID: <20240412182703.19916-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
References: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

For some reason the snps/cx0 PLL states were added into
a union alongside dpll_hw_state. Just suck them into
dpll_hw_state so that we don't have so many levels of
unions/etc.

TODO: Get rid of 'clock' from the snps/cx0 PLL states
      as it is not a register values and thus doesn't
      belong there

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 20 ++++-----
 drivers/gpu/drm/i915/display/intel_ddi.c      |  8 ++--
 .../drm/i915/display/intel_display_types.h    | 43 +------------------
 drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 39 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  6 +--
 6 files changed, 58 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a2c4bf33155f..8e3b13884bb8 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1827,7 +1827,7 @@ static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
 				    struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_cx0pll_state *pll_state = &crtc_state->cx0pll_state;
+	struct intel_cx0pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll;
 	int i;
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
@@ -1859,7 +1859,7 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 
 	for (i = 0; tables[i]; i++) {
 		if (crtc_state->port_clock == tables[i]->clock) {
-			crtc_state->cx0pll_state.c10 = *tables[i];
+			crtc_state->dpll_hw_state.cx0pll.c10 = *tables[i];
 			intel_c10pll_update_pll(crtc_state, encoder);
 
 			return 0;
@@ -1899,7 +1899,7 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 				  const struct intel_crtc_state *crtc_state,
 				  struct intel_encoder *encoder)
 {
-	const struct intel_c10pll_state *pll_state = &crtc_state->cx0pll_state.c10;
+	const struct intel_c10pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll.c10;
 	int i;
 
 	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
@@ -2079,7 +2079,7 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 	/* try computed C20 HDMI tables before using consolidated tables */
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
 		if (intel_c20_compute_hdmi_tmds_pll(crtc_state->port_clock,
-						    &crtc_state->cx0pll_state.c20) == 0)
+						    &crtc_state->dpll_hw_state.cx0pll.c20) == 0)
 			return 0;
 	}
 
@@ -2089,7 +2089,7 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 
 	for (i = 0; tables[i]; i++) {
 		if (crtc_state->port_clock == tables[i]->clock) {
-			crtc_state->cx0pll_state.c20 = *tables[i];
+			crtc_state->dpll_hw_state.cx0pll.c20 = *tables[i];
 			return 0;
 		}
 	}
@@ -2335,7 +2335,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 				  const struct intel_crtc_state *crtc_state,
 				  struct intel_encoder *encoder)
 {
-	const struct intel_c20pll_state *pll_state = &crtc_state->cx0pll_state.c20;
+	const struct intel_c20pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll.c20;
 	bool dp = false;
 	int lane = crtc_state->lane_count > 2 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
 	u32 clock = crtc_state->port_clock;
@@ -2484,9 +2484,9 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 	/* TODO: HDMI FRL */
 	/* DP2.0 10G and 20G rates enable MPLLA*/
 	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)
-		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
+		val |= crtc_state->dpll_hw_state.cx0pll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
 	else
-		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+		val |= crtc_state->dpll_hw_state.cx0pll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
 
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
 		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
@@ -3025,7 +3025,7 @@ static void intel_c10pll_state_verify(const struct intel_crtc_state *state,
 				      struct intel_c10pll_state *mpllb_hw_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	const struct intel_c10pll_state *mpllb_sw_state = &state->cx0pll_state.c10;
+	const struct intel_c10pll_state *mpllb_sw_state = &state->dpll_hw_state.cx0pll.c10;
 	int i;
 
 	if (intel_crtc_needs_fastset(state))
@@ -3075,7 +3075,7 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
 				      struct intel_c20pll_state *mpll_hw_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	const struct intel_c20pll_state *mpll_sw_state = &state->cx0pll_state.c20;
+	const struct intel_c20pll_state *mpll_sw_state = &state->dpll_hw_state.cx0pll.c20;
 	bool sw_use_mpllb = intel_c20phy_use_mpllb(mpll_sw_state);
 	bool hw_use_mpllb = intel_c20phy_use_mpllb(mpll_hw_state);
 	int i;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3255d4e375af..2e2be08dd26c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4011,8 +4011,8 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
 		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
 	} else {
-		intel_cx0pll_readout_hw_state(encoder, &crtc_state->cx0pll_state);
-		crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->cx0pll_state);
+		intel_cx0pll_readout_hw_state(encoder, &crtc_state->dpll_hw_state.cx0pll);
+		crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
 	}
 
 	intel_ddi_get_config(encoder, crtc_state);
@@ -4021,8 +4021,8 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 static void dg2_ddi_get_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state)
 {
-	intel_mpllb_readout_hw_state(encoder, &crtc_state->mpllb_state);
-	crtc_state->port_clock = intel_mpllb_calc_port_clock(encoder, &crtc_state->mpllb_state);
+	intel_mpllb_readout_hw_state(encoder, &crtc_state->dpll_hw_state.mpllb);
+	crtc_state->port_clock = intel_mpllb_calc_port_clock(encoder, &crtc_state->dpll_hw_state.mpllb);
 
 	intel_ddi_get_config(encoder, crtc_state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0f4bd5710796..387119c0254c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1004,18 +1004,6 @@ enum intel_output_format {
 	INTEL_OUTPUT_FORMAT_YCBCR444,
 };
 
-struct intel_mpllb_state {
-	u32 clock; /* in KHz */
-	u32 ref_control;
-	u32 mpllb_cp;
-	u32 mpllb_div;
-	u32 mpllb_div2;
-	u32 mpllb_fracn1;
-	u32 mpllb_fracn2;
-	u32 mpllb_sscen;
-	u32 mpllb_sscstep;
-};
-
 /* Used by dp and fdi links */
 struct intel_link_m_n {
 	u32 tu;
@@ -1031,31 +1019,6 @@ struct intel_csc_matrix {
 	u16 postoff[3];
 };
 
-struct intel_c10pll_state {
-	u32 clock; /* in KHz */
-	u8 tx;
-	u8 cmn;
-	u8 pll[20];
-};
-
-struct intel_c20pll_state {
-	u32 clock; /* in kHz */
-	u16 tx[3];
-	u16 cmn[4];
-	union {
-		u16 mplla[10];
-		u16 mpllb[11];
-	};
-};
-
-struct intel_cx0pll_state {
-	union {
-		struct intel_c10pll_state c10;
-		struct intel_c20pll_state c20;
-	};
-	bool ssc_enabled;
-};
-
 struct intel_crtc_state {
 	/*
 	 * uapi (drm) state. This is the software state shown to userspace.
@@ -1200,11 +1163,7 @@ struct intel_crtc_state {
 	struct intel_shared_dpll *shared_dpll;
 
 	/* Actual register state of the dpll, for shared dpll cross-checking. */
-	union {
-		struct intel_dpll_hw_state dpll_hw_state;
-		struct intel_mpllb_state mpllb_state;
-		struct intel_cx0pll_state cx0pll_state;
-	};
+	struct intel_dpll_hw_state dpll_hw_state;
 
 	/*
 	 * ICL reserved DPLLs for the CRTC/port. The active PLL is selected by
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index b9f1c5370598..49274d632716 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1222,7 +1222,7 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
 		return ret;
 
 	/* TODO: Do the readback via intel_compute_shared_dplls() */
-	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->cx0pll_state);
+	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index d0ec6196d398..f09e513ce05b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -229,6 +229,43 @@ struct icl_dpll_hw_state {
 	u32 mg_pll_tdc_coldst_bias_mask;
 };
 
+struct intel_mpllb_state {
+	u32 clock; /* in KHz */
+	u32 ref_control;
+	u32 mpllb_cp;
+	u32 mpllb_div;
+	u32 mpllb_div2;
+	u32 mpllb_fracn1;
+	u32 mpllb_fracn2;
+	u32 mpllb_sscen;
+	u32 mpllb_sscstep;
+};
+
+struct intel_c10pll_state {
+	u32 clock; /* in KHz */
+	u8 tx;
+	u8 cmn;
+	u8 pll[20];
+};
+
+struct intel_c20pll_state {
+	u32 clock; /* in kHz */
+	u16 tx[3];
+	u16 cmn[4];
+	union {
+		u16 mplla[10];
+		u16 mpllb[11];
+	};
+};
+
+struct intel_cx0pll_state {
+	union {
+		struct intel_c10pll_state c10;
+		struct intel_c20pll_state c20;
+	};
+	bool ssc_enabled;
+};
+
 struct intel_dpll_hw_state {
 	union {
 		struct i9xx_dpll_hw_state i9xx;
@@ -236,6 +273,8 @@ struct intel_dpll_hw_state {
 		struct skl_dpll_hw_state skl;
 		struct bxt_dpll_hw_state bxt;
 		struct icl_dpll_hw_state icl;
+		struct intel_mpllb_state mpllb;
+		struct intel_cx0pll_state cx0pll;
 	};
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 53dbcdf140b5..e6df1f92def5 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -1811,7 +1811,7 @@ int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 
 	for (i = 0; tables[i]; i++) {
 		if (crtc_state->port_clock == tables[i]->clock) {
-			crtc_state->mpllb_state = *tables[i];
+			crtc_state->dpll_hw_state.mpllb = *tables[i];
 			return 0;
 		}
 	}
@@ -1823,7 +1823,7 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	const struct intel_mpllb_state *pll_state = &crtc_state->mpllb_state;
+	const struct intel_mpllb_state *pll_state = &crtc_state->dpll_hw_state.mpllb;
 	enum phy phy = intel_encoder_to_phy(encoder);
 	i915_reg_t enable_reg = (phy <= PHY_D ?
 				 DG2_PLL_ENABLE(phy) : MG_PLL_ENABLE(0));
@@ -2001,7 +2001,7 @@ void intel_mpllb_state_verify(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_mpllb_state mpllb_hw_state = {};
-	const struct intel_mpllb_state *mpllb_sw_state = &new_crtc_state->mpllb_state;
+	const struct intel_mpllb_state *mpllb_sw_state = &new_crtc_state->dpll_hw_state.mpllb;
 	struct intel_encoder *encoder;
 
 	if (!IS_DG2(i915))
-- 
2.43.2

