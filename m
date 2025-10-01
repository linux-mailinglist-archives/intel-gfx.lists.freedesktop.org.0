Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2800CBAFB02
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 961AF10E6DC;
	Wed,  1 Oct 2025 08:39:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EdUCJ68E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A65A010E6DA;
 Wed,  1 Oct 2025 08:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307947; x=1790843947;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=15jrPGX6HDqnL/NXLDxjPkC78TTbhPSecEd2fvd1hgI=;
 b=EdUCJ68EaQq3T+biTsyrwM+zQCOdZuRuQjrz6ToNOepqUucuhkY0fBzA
 TUblvzsWZ5nHXoDHRzzbRXq5ImXVtp+oZJ2q5eCENFVrKIueu2gW21lMh
 0NPx73lw7NIGIvtrn8hQUkyUo8ZMhhcxpsOQ8LnyLbLCTVfc+J4C5zj83
 73tXgyDEOQwOK8sSsWAzXbgyEpuJx58wSLkW91lUU28FhhhW9R7nqO93i
 XuX0K8VAS0j5Q9zWWQc2kyyHMFUcn2RuAdCLJDLF5SXY6waZFr1eqCE94
 sinPCnOTqtZKoDAxf9qZurVHISlS9C6kV3N9WIVqOtAeOnglOGR5F/qBA g==;
X-CSE-ConnectionGUID: GcbujYtjQ2ebPufy9kQDhA==
X-CSE-MsgGUID: aWksCw5+Qp+1bzYHjS/31w==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742777"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742777"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:07 -0700
X-CSE-ConnectionGUID: 75QEYshpQh2MxyuFa0xJdQ==
X-CSE-MsgGUID: 2ECxGbWETWmH2ZX3jgTJfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142746"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:05 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
	Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 24/39] drm/i915/display: Update C10/C20 state calculation
Date: Wed,  1 Oct 2025 11:28:24 +0300
Message-Id: <20251001082839.2585559-25-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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

For the dpll framework, the state must be computed into
a port PLL state, which is separate from the dpll_hw_state
in crtc_state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 68 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  5 +-
 drivers/gpu/drm/i915/display/intel_dpll.c    |  2 +-
 3 files changed, 40 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 453d940e67f8..f0cba843fed1 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2034,7 +2034,7 @@ static const struct intel_c20pll_state * const mtl_c20_hdmi_tables[] = {
 };
 
 static const struct intel_c10pll_state * const *
-intel_c10pll_tables_get(struct intel_crtc_state *crtc_state,
+intel_c10pll_tables_get(const struct intel_crtc_state *crtc_state,
 			struct intel_encoder *encoder)
 {
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
@@ -2138,8 +2138,9 @@ static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
 	return -EINVAL;
 }
 
-static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
-				   struct intel_encoder *encoder)
+static int intel_c10pll_calc_state(const struct intel_crtc_state *crtc_state,
+				   struct intel_encoder *encoder,
+				   struct intel_dpll_hw_state *hw_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	bool is_dp = intel_crtc_has_dp_encoder(crtc_state);
@@ -2152,21 +2153,20 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 
 	err = intel_c10pll_calc_state_from_table(encoder, tables, is_dp,
 						 crtc_state->port_clock, crtc_state->lane_count,
-						 &crtc_state->dpll_hw_state.cx0pll);
+						 &hw_state->cx0pll);
 
 	if (err == 0 || !intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return err;
 
 	/* For HDMI PLLs try SNPS PHY algorithm, if there are no precomputed tables */
-	intel_snps_hdmi_pll_compute_c10pll(&crtc_state->dpll_hw_state.cx0pll.c10,
+	intel_snps_hdmi_pll_compute_c10pll(&hw_state->cx0pll.c10,
 					   crtc_state->port_clock);
-	intel_c10pll_update_pll(encoder,
-				&crtc_state->dpll_hw_state.cx0pll);
-	crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
-	crtc_state->dpll_hw_state.cx0pll.lane_count = crtc_state->lane_count;
+	intel_c10pll_update_pll(encoder, &hw_state->cx0pll);
 
-	drm_WARN_ON(display->drm,
-		    is_dp != c10pll_state_is_dp(&crtc_state->dpll_hw_state.cx0pll.c10));
+	hw_state->cx0pll.use_c10 = true;
+	hw_state->cx0pll.lane_count = crtc_state->lane_count;
+
+	drm_WARN_ON(display->drm, is_dp != c10pll_state_is_dp(&hw_state->cx0pll.c10));
 
 	return 0;
 }
@@ -2355,7 +2355,7 @@ static bool is_arrowlake_s_by_host_bridge(void)
 	return pdev && IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(host_bridge_pci_dev_id);
 }
 
-static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_crtc_state *crtc_state)
+static u16 intel_c20_hdmi_tmds_tx_cgf_1(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	u16 tx_misc;
@@ -2379,9 +2379,9 @@ static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_crtc_state *crtc_state)
 		C20_PHY_TX_DCC_BYPASS | C20_PHY_TX_TERM_CTL(tx_term_ctrl));
 }
 
-static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
+static int intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state *crtc_state,
+					   struct intel_c20pll_state *pll_state)
 {
-	struct intel_c20pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll.c20;
 	u64 datarate;
 	u64 mpll_tx_clk_div;
 	u64 vco_freq_shift;
@@ -2648,8 +2648,9 @@ intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
 	return NULL;
 }
 
-static int intel_c20pll_calc_state_from_table(struct intel_crtc_state *crtc_state,
-					      struct intel_encoder *encoder)
+static int intel_c20pll_calc_state_from_table(const struct intel_crtc_state *crtc_state,
+					      struct intel_encoder *encoder,
+					      struct intel_cx0pll_state *pll_state)
 {
 	const struct intel_c20pll_state *table;
 
@@ -2657,52 +2658,53 @@ static int intel_c20pll_calc_state_from_table(struct intel_crtc_state *crtc_stat
 	if (!table)
 		return -EINVAL;
 
-	crtc_state->dpll_hw_state.cx0pll.c20 = *table;
+	pll_state->c20 = *table;
 
-	intel_cx0pll_update_ssc(encoder, &crtc_state->dpll_hw_state.cx0pll,
-				intel_crtc_has_dp_encoder(crtc_state));
+	intel_cx0pll_update_ssc(encoder, pll_state, intel_crtc_has_dp_encoder(crtc_state));
 
 	return 0;
 }
 
-static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
-				   struct intel_encoder *encoder)
+static int intel_c20pll_calc_state(const struct intel_crtc_state *crtc_state,
+				   struct intel_encoder *encoder,
+				   struct intel_dpll_hw_state *hw_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	bool is_dp = intel_crtc_has_dp_encoder(crtc_state);
 	int err = -ENOENT;
 
-	crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
-	crtc_state->dpll_hw_state.cx0pll.lane_count = crtc_state->lane_count;
+	hw_state->cx0pll.use_c10 = false;
+	hw_state->cx0pll.lane_count = crtc_state->lane_count;
 
 	/* try computed C20 HDMI tables before using consolidated tables */
 	if (!is_dp)
 		/* TODO: Update SSC state for HDMI as well */
-		err = intel_c20_compute_hdmi_tmds_pll(crtc_state);
+		err = intel_c20_compute_hdmi_tmds_pll(crtc_state, &hw_state->cx0pll.c20);
 
 	if (err)
-		err = intel_c20pll_calc_state_from_table(crtc_state, encoder);
+		err = intel_c20pll_calc_state_from_table(crtc_state, encoder,
+							 &hw_state->cx0pll);
 
 	if (err)
 		return err;
 
-	intel_c20_calc_vdr_params(&crtc_state->dpll_hw_state.cx0pll.c20.vdr,
+	intel_c20_calc_vdr_params(&hw_state->cx0pll.c20.vdr,
 				  is_dp, crtc_state->port_clock);
 
-	drm_WARN_ON(display->drm,
-		    is_dp != c20pll_state_is_dp(&crtc_state->dpll_hw_state.cx0pll.c20));
+	drm_WARN_ON(display->drm, is_dp != c20pll_state_is_dp(&hw_state->cx0pll.c20));
 
 	return 0;
 }
 
-int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
-			    struct intel_encoder *encoder)
+int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
+			    struct intel_encoder *encoder,
+			    struct intel_dpll_hw_state *hw_state)
 {
-	memset(&crtc_state->dpll_hw_state, 0, sizeof(crtc_state->dpll_hw_state));
+	memset(hw_state, 0, sizeof(*hw_state));
 
 	if (intel_encoder_is_c10phy(encoder))
-		return intel_c10pll_calc_state(crtc_state, encoder);
-	return intel_c20pll_calc_state(crtc_state, encoder);
+		return intel_c10pll_calc_state(crtc_state, encoder, hw_state);
+	return intel_c20pll_calc_state(crtc_state, encoder, hw_state);
 }
 
 static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state *state)
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 2b934b96af81..7b88c3fe9de1 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -16,6 +16,7 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_cx0pll_state;
 struct intel_display;
+struct intel_dpll_hw_state;
 struct intel_encoder;
 struct intel_hdmi;
 
@@ -27,7 +28,9 @@ enum icl_port_dpll_id
 intel_mtl_port_pll_type(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state);
 
-int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, struct intel_encoder *encoder);
+int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
+			    struct intel_encoder *encoder,
+			    struct intel_dpll_hw_state *hw_state);
 void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 				   struct intel_cx0pll_state *pll_state);
 int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index f969c5399a51..7a48d6f0db10 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1220,7 +1220,7 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
 		intel_get_crtc_new_encoder(state, crtc_state);
 	int ret;
 
-	ret = intel_cx0pll_calc_state(crtc_state, encoder);
+	ret = intel_cx0pll_calc_state(crtc_state, encoder, &crtc_state->dpll_hw_state);
 	if (ret)
 		return ret;
 
-- 
2.34.1

