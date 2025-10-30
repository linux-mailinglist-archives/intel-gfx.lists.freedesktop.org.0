Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75087C1EC8D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:35:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0D2010E8F8;
	Thu, 30 Oct 2025 07:35:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qkfj/sax";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A21610E8E1;
 Thu, 30 Oct 2025 07:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809703; x=1793345703;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kbWrh+ejWERWDBHStfKj2zLimgEKxUOAXQBU9tw9EJU=;
 b=Qkfj/saxaOGb2yJ60TwQluJaMjWcGskM9lQh3cfSXEFFCubIQOFtvE9c
 cLg3wYbCgih4UP0+S6T2eCKtnY9Sbh25hYlGWAr2rxUYMUbJjhvBOhw/f
 17mVMEO3dqpwbtZdMU4g/5A32wPRZkTqpdrVv7QoJI0Ry7bi0bYUVWMqG
 PNyq5mcWcFoxWme11zQsR0Flwnuayg6Ol7fKZIZGadTSWbC9npAse+oAD
 Dbyk8oISxdTKvgwsABpCq+Ll5Eh/oTN6BrPMOMaQgXuifU3zpLLOueb9m
 fJBBloiN72nzYomfhvd3poRqUx+iBRWksgvAkpUW1/KfrKDBQ8YJSsP5L g==;
X-CSE-ConnectionGUID: ounVBAbMSK+D46lzPGbZcA==
X-CSE-MsgGUID: Hfh1X+1lT7+eeglBlOSLpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063388"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063388"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:35:03 -0700
X-CSE-ConnectionGUID: atYhpZNWR++QCf9JQdhg3Q==
X-CSE-MsgGUID: X6IRfjGCRzuZBLLUzkqbjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075400"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:35:01 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH 17/32] drm/i915/display: Update C10/C20 state calculation
Date: Thu, 30 Oct 2025 09:22:34 +0200
Message-Id: <20251030072249.155095-18-mika.kahola@intel.com>
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
index 5332f33800e7..f5e6634a6389 100644
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

