Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D59FC2492E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:47:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A21810EB4A;
	Fri, 31 Oct 2025 10:47:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D1yE1mBj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEB3E10EB45;
 Fri, 31 Oct 2025 10:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907668; x=1793443668;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kcSX28jPao5r9e7mo6ZM+8WMY7aMPBIv0+VOUskOpqM=;
 b=D1yE1mBjPoxEGoz4aFzsGC07nU0E0USktYOiDmaVO+JbxKOkoGn48pAd
 AFFjweDgysjRc0FlZ//GrT6cte6sHfvJA+k1PSt3sFNhMNIx9nLGFrfA/
 l6Cj3MGc1hgc0x1Il6AFcajiyy7hh25V4lT9SzxZlaDYm07jFTIyuqKVk
 Rg8snJICgoHZ4dGRsFuOy0YSfwlfHz8HZHoCB9wSGOiJK6vpTP2KIXzNv
 6fFX8iMuUT1+6U7ugjBnPpHAKEWMukWvLsbTkhjyNOInC0yMU19Z0TsEU
 EAm+Edw65Bo3q1iVMf2bFEIqpny0IRDidnwuOHVz9jF1LThGTDmSgKFGI Q==;
X-CSE-ConnectionGUID: OWKIXvqDRUeGFIZCp1fiZA==
X-CSE-MsgGUID: FxXZNQFqS5aCUxMkK7eIew==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217552"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217552"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:47:48 -0700
X-CSE-ConnectionGUID: ja+vyplkSH2MGGOKjcbOgg==
X-CSE-MsgGUID: fJ0IIs2CTGSq/LM0Nzf1uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441307"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:47:46 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [CI 05/32] drm/i915/display: Track the C20 PHY VDR state in the PLL
 state
Date: Fri, 31 Oct 2025 12:35:22 +0200
Message-Id: <20251031103549.173208-6-mika.kahola@intel.com>
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

The Cx0 PLL enable programming needs to know if the PLL is in DP or HDMI
mode. The PLL manager framework doesn't pass the CRTC state to the PLL's
enable hook, so prepare here for the conversion to use the PLL manager
for Cx0 PHY PLLs by tracking the DP/HDMI mode in the PLL state.

This change has the advantage, that the VDR HW/SW state can be verified
now.

A follow up change will convert the PLL enable function to retrieve the
DP/HDMI mode parameter from the PLL state.

This also allows dropping the is_dp and port clock params from the
intel_c20_pll_program() function, since it can retrieve these now from
the PLL state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 115 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   5 +
 2 files changed, 89 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 0dd367457f93..0ea9c33e4ce3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2362,6 +2362,76 @@ intel_c20_pll_tables_get(const struct intel_crtc_state *crtc_state,
 	return NULL;
 }
 
+static u8 intel_c20_get_dp_rate(u32 clock);
+static u8 intel_c20_get_hdmi_rate(u32 clock);
+static bool is_hdmi_frl(u32 clock);
+static int intel_get_c20_custom_width(u32 clock, bool dp);
+
+static void intel_c20_calc_vdr_params(struct intel_c20pll_vdr_state *vdr, bool is_dp,
+				      int port_clock)
+{
+	vdr->custom_width = intel_get_c20_custom_width(port_clock, is_dp);
+
+	vdr->serdes_rate = 0;
+	vdr->hdmi_rate = 0;
+
+	if (is_dp) {
+		vdr->serdes_rate = PHY_C20_IS_DP |
+				   PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock));
+	} else {
+		if (is_hdmi_frl(port_clock))
+			vdr->serdes_rate = PHY_C20_IS_HDMI_FRL;
+
+		vdr->hdmi_rate = intel_c20_get_hdmi_rate(port_clock);
+	}
+}
+
+#define PHY_C20_SERDES_RATE_MASK	(PHY_C20_IS_DP | PHY_C20_DP_RATE_MASK | PHY_C20_IS_HDMI_FRL)
+
+static void intel_c20_readout_vdr_params(struct intel_encoder *encoder,
+					 struct intel_c20pll_vdr_state *vdr, bool *cntx)
+{
+	u8 serdes;
+
+	serdes = intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE);
+	*cntx = serdes & PHY_C20_CONTEXT_TOGGLE;
+
+	vdr->custom_width = intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_WIDTH) &
+			    PHY_C20_CUSTOM_WIDTH_MASK;
+
+	vdr->serdes_rate = serdes & PHY_C20_SERDES_RATE_MASK;
+	if (!(vdr->serdes_rate & PHY_C20_IS_DP))
+		vdr->hdmi_rate = intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_HDMI_RATE) &
+				 PHY_C20_HDMI_RATE_MASK;
+	else
+		vdr->hdmi_rate = 0;
+}
+
+static void intel_c20_program_vdr_params(struct intel_encoder *encoder,
+					 const struct intel_c20pll_vdr_state *vdr,
+					 u8 owned_lane_mask)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	drm_WARN_ON(display->drm, vdr->custom_width & ~PHY_C20_CUSTOM_WIDTH_MASK);
+	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_WIDTH,
+		      PHY_C20_CUSTOM_WIDTH_MASK, vdr->custom_width,
+		      MB_WRITE_COMMITTED);
+
+	drm_WARN_ON(display->drm, vdr->serdes_rate & ~PHY_C20_SERDES_RATE_MASK);
+	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+		      PHY_C20_SERDES_RATE_MASK, vdr->serdes_rate,
+		      MB_WRITE_COMMITTED);
+
+	if (vdr->serdes_rate & PHY_C20_IS_DP)
+		return;
+
+	drm_WARN_ON(display->drm, vdr->hdmi_rate & ~PHY_C20_HDMI_RATE_MASK);
+	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
+		      PHY_C20_HDMI_RATE_MASK, vdr->hdmi_rate,
+		      MB_WRITE_COMMITTED);
+}
+
 static const struct intel_c20pll_state *
 intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
@@ -2400,19 +2470,26 @@ static int intel_c20pll_calc_state_from_table(struct intel_crtc_state *crtc_stat
 static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 				   struct intel_encoder *encoder)
 {
+	bool is_dp = intel_crtc_has_dp_encoder(crtc_state);
 	int err = -ENOENT;
 
 	crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
 
 	/* try computed C20 HDMI tables before using consolidated tables */
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+	if (!is_dp)
 		/* TODO: Update SSC state for HDMI as well */
 		err = intel_c20_compute_hdmi_tmds_pll(crtc_state);
 
 	if (err)
 		err = intel_c20pll_calc_state_from_table(crtc_state, encoder);
 
-	return err;
+	if (err)
+		return err;
+
+	intel_c20_calc_vdr_params(&crtc_state->dpll_hw_state.cx0pll.c20.vdr,
+				  is_dp, crtc_state->port_clock);
+
+	return 0;
 }
 
 int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
@@ -2486,8 +2563,8 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
-	/* 1. Read current context selection */
-	cntx = intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
+	/* 1. Read VDR params and current context selection */
+	intel_c20_readout_vdr_params(encoder, &pll_state->vdr, &cntx);
 
 	/* Read Tx configuration */
 	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
@@ -2676,11 +2753,9 @@ static int intel_get_c20_custom_width(u32 clock, bool dp)
 
 static void intel_c20_pll_program(struct intel_display *display,
 				  struct intel_encoder *encoder,
-				  const struct intel_c20pll_state *pll_state,
-				  bool is_dp, int port_clock)
+				  const struct intel_c20pll_state *pll_state)
 {
 	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
-	u8 serdes;
 	bool cntx;
 	int i;
 
@@ -2750,30 +2825,8 @@ static void intel_c20_pll_program(struct intel_display *display,
 	}
 
 	/* 4. Program custom width to match the link protocol */
-	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_WIDTH,
-		      PHY_C20_CUSTOM_WIDTH_MASK,
-		      PHY_C20_CUSTOM_WIDTH(intel_get_c20_custom_width(port_clock, is_dp)),
-		      MB_WRITE_COMMITTED);
-
 	/* 5. For DP or 6. For HDMI */
-	serdes = 0;
-
-	if (is_dp)
-		serdes = PHY_C20_IS_DP |
-			 PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock));
-	else if (is_hdmi_frl(port_clock))
-		serdes = PHY_C20_IS_HDMI_FRL;
-
-	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
-		      PHY_C20_IS_DP | PHY_C20_DP_RATE_MASK | PHY_C20_IS_HDMI_FRL,
-		      serdes,
-		      MB_WRITE_COMMITTED);
-
-	if (!is_dp)
-		intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
-			      PHY_C20_HDMI_RATE_MASK,
-			      intel_c20_get_hdmi_rate(port_clock),
-			      MB_WRITE_COMMITTED);
+	intel_c20_program_vdr_params(encoder, &pll_state->vdr, owned_lane_mask);
 
 	/*
 	 * 7. Write Vendor specific registers to toggle context setting to load
@@ -3098,7 +3151,7 @@ static void __intel_cx0pll_enable(struct intel_encoder *encoder,
 	if (intel_encoder_is_c10phy(encoder))
 		intel_c10_pll_program(display, encoder, &pll_state->c10);
 	else
-		intel_c20_pll_program(display, encoder, &pll_state->c20, is_dp, port_clock);
+		intel_c20_pll_program(display, encoder, &pll_state->c20);
 
 	/*
 	 * 6. Program the enabled and disabled owned PHY lane
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index f131bdd1c975..43c7200050e9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -255,6 +255,11 @@ struct intel_c20pll_state {
 		u16 mplla[10];
 		u16 mpllb[11];
 	};
+	struct intel_c20pll_vdr_state {
+		u8 custom_width;
+		u8 serdes_rate;
+		u8 hdmi_rate;
+	} vdr;
 };
 
 struct intel_cx0pll_state {
-- 
2.34.1

