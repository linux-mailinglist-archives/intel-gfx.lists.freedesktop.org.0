Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD8DCC1A23
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:46:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC7AD10E78B;
	Tue, 16 Dec 2025 08:46:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iCFeoKM1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 267FA10E798;
 Tue, 16 Dec 2025 08:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765874812; x=1797410812;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TDF1phC4V6g6DwGjytv7l5pfXFObIbuex6mnFE/NO7Q=;
 b=iCFeoKM1CRF5gcDE+2F1pngIx0MiAikt9q5l8FfaIMa9nVNtJdYlcGyV
 o9+sLXLzz4958Dvzeo/t4MWZgeIbKlm6U9MQ7Ez2RNAh1zjZfzh6mB0Ev
 589ebZDYAG3eiuBEn4c76eNBKrr9HyOonS3c1yCbap2LIDvvAFKlt7Lly
 96kbdYeW0uz9ZhNiO2Kvc4qIOKwHNJb+QNG4+U+ywUYWmQYKXWA0TmOlM
 tuiREeLblFZyGXKN10iinbjRWB9Z4ef5zOJSILQTyKKvaeZyNJS2pqu9q
 1j+P0Siy9CpImZyPpbl5g5eql2DUHlpI9Fmgy/eKxLd5CbYsch5nyfqt3 g==;
X-CSE-ConnectionGUID: KCaXIUk4SBK+BkdKiJ9vqQ==
X-CSE-MsgGUID: 9m9Xg0LLSkC0TXXPiV7jwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71642325"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="71642325"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:46:51 -0800
X-CSE-ConnectionGUID: +IDhtnUbTRCLAOpdFmQ3YA==
X-CSE-MsgGUID: 7RnoO1CdROiJywJbUXOmxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="198448848"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa009.fm.intel.com with ESMTP; 16 Dec 2025 00:46:50 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 08/13] drm/i915/cx0: Replace encoder with display
Date: Tue, 16 Dec 2025 10:37:54 +0200
Message-Id: <20251216083759.383163-9-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216083759.383163-1-mika.kahola@intel.com>
References: <20251216083759.383163-1-mika.kahola@intel.com>
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

Replace intel_c10pll_update_pll() function call 'encoder'
parameter with 'display'. While at it drop the unused 'encoder'
parameter from intel_c10pll_calc_port_clock() and
intel_c20pll_calc_port_clock()

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 21 +++++++++-----------
 drivers/gpu/drm/i915/display/intel_ddi.c     |  4 +++-
 drivers/gpu/drm/i915/display/intel_dpll.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 12 +++++------
 drivers/gpu/drm/i915/display/intel_lt_phy.h  |  2 +-
 5 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ef23a3fb3286..12c962ffb3f5 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2093,10 +2093,9 @@ static bool intel_c10pll_ssc_enabled(const struct intel_c10pll_state *pll_state)
 			  0, sizeof(pll_state->pll[0]) * C10_PLL_SSC_REG_COUNT);
 }
 
-static void intel_c10pll_update_pll(struct intel_encoder *encoder,
+static void intel_c10pll_update_pll(struct intel_display *display,
 				    struct intel_cx0pll_state *pll_state)
 {
-	struct intel_display *display = to_intel_display(encoder);
 	int i;
 
 	if (pll_state->ssc_enabled)
@@ -2128,8 +2127,7 @@ static bool cx0pll_state_is_dp(const struct intel_cx0pll_state *pll_state)
 	return c20pll_state_is_dp(&pll_state->c20);
 }
 
-static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
-					const struct intel_c10pll_state *pll_state)
+static int intel_c10pll_calc_port_clock(const struct intel_c10pll_state *pll_state)
 {
 	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
 	unsigned int multiplier, tx_clk_div, hdmi_div, refclk = 38400;
@@ -2160,8 +2158,7 @@ static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state *state)
 	return state->tx[0] & C20_PHY_USE_MPLLB;
 }
 
-static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
-					const struct intel_c20pll_state *pll_state)
+static int intel_c20pll_calc_port_clock(const struct intel_c20pll_state *pll_state)
 {
 	unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
 	unsigned int multiplier, refclk = 38400;
@@ -2229,7 +2226,7 @@ static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
 		if (intel_cx0pll_clock_matches(port_clock, clock)) {
 			pll_state->c10 = *tables[i].c10;
 			intel_cx0pll_update_ssc(encoder, pll_state, is_dp);
-			intel_c10pll_update_pll(encoder, pll_state);
+			intel_c10pll_update_pll(display, pll_state);
 
 			pll_state->use_c10 = true;
 			pll_state->lane_count = lane_count;
@@ -2266,7 +2263,7 @@ static int intel_c10pll_calc_state(const struct intel_crtc_state *crtc_state,
 	/* For HDMI PLLs try SNPS PHY algorithm, if there are no precomputed tables */
 	intel_snps_hdmi_pll_compute_c10pll(&hw_state->cx0pll.c10,
 					   crtc_state->port_clock);
-	intel_c10pll_update_pll(encoder, &hw_state->cx0pll);
+	intel_c10pll_update_pll(display, &hw_state->cx0pll);
 
 	hw_state->cx0pll.use_c10 = true;
 	hw_state->cx0pll.lane_count = crtc_state->lane_count;
@@ -2358,7 +2355,7 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 
-	pll_state->clock = intel_c10pll_calc_port_clock(encoder, pll_state);
+	pll_state->clock = intel_c10pll_calc_port_clock(pll_state);
 
 	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, true);
 
@@ -2859,7 +2856,7 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 		}
 	}
 
-	pll_state->clock = intel_c20pll_calc_port_clock(encoder, pll_state);
+	pll_state->clock = intel_c20pll_calc_port_clock(pll_state);
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 
@@ -3751,9 +3748,9 @@ int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_cx0pll_state *pll_state)
 {
 	if (intel_encoder_is_c10phy(encoder))
-		return intel_c10pll_calc_port_clock(encoder, &pll_state->c10);
+		return intel_c10pll_calc_port_clock(&pll_state->c10);
 
-	return intel_c20pll_calc_port_clock(encoder, &pll_state->c20);
+	return intel_c20pll_calc_port_clock(&pll_state->c20);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 8e8bd1514a74..d8739e2bb004 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4247,13 +4247,15 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
 static void xe3plpd_ddi_get_config(struct intel_encoder *encoder,
 				   struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
+
 	intel_lt_phy_pll_readout_hw_state(encoder, crtc_state, &crtc_state->dpll_hw_state.ltpll);
 
 	if (crtc_state->dpll_hw_state.ltpll.tbt_mode)
 		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
 	else
 		crtc_state->port_clock =
-			intel_lt_phy_calc_port_clock(encoder, &crtc_state->dpll_hw_state.ltpll);
+			intel_lt_phy_calc_port_clock(display, &crtc_state->dpll_hw_state.ltpll);
 	intel_ddi_get_config(encoder, crtc_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 48410e081175..1b5b18fa0a36 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1219,6 +1219,7 @@ static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder =
 		intel_get_crtc_new_encoder(state, crtc_state);
+	struct intel_display *display = to_intel_display(encoder);
 	int ret;
 
 	ret = intel_lt_phy_pll_calc_state(crtc_state, encoder);
@@ -1227,7 +1228,7 @@ static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
 
 	/* TODO: Do the readback via intel_compute_shared_dplls() */
 	crtc_state->port_clock =
-			intel_lt_phy_calc_port_clock(encoder, &crtc_state->dpll_hw_state.ltpll);
+			intel_lt_phy_calc_port_clock(display, &crtc_state->dpll_hw_state.ltpll);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 447dc29555a5..d00cf3232e7a 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1688,7 +1688,7 @@ intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 }
 
 static int
-intel_lt_phy_calc_hdmi_port_clock(struct intel_encoder *encoder,
+intel_lt_phy_calc_hdmi_port_clock(struct intel_display *display,
 				  const struct intel_lt_phy_pll_state *lt_state)
 {
 #define REGVAL(i) (				\
@@ -1698,7 +1698,6 @@ intel_lt_phy_calc_hdmi_port_clock(struct intel_encoder *encoder,
 	(lt_state->data[i][0] << 24)		\
 )
 
-	struct intel_display *display = to_intel_display(encoder);
 	int clk = 0;
 	u32 d8, pll_reg_5, pll_reg_3, pll_reg_57, m2div_frac, m2div_int;
 	u64 temp0, temp1;
@@ -1756,7 +1755,7 @@ intel_lt_phy_calc_hdmi_port_clock(struct intel_encoder *encoder,
 }
 
 int
-intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
+intel_lt_phy_calc_port_clock(struct intel_display *display,
 			     const struct intel_lt_phy_pll_state *lt_state)
 {
 	int clk;
@@ -1775,7 +1774,7 @@ intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
 				      lt_state->config[0]);
 		clk = intel_lt_phy_get_dp_clock(rate);
 	} else {
-		clk = intel_lt_phy_calc_hdmi_port_clock(encoder, lt_state);
+		clk = intel_lt_phy_calc_hdmi_port_clock(display, lt_state);
 	}
 
 	return clk;
@@ -2226,6 +2225,7 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state,
 				       struct intel_lt_phy_pll_state *pll_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	u8 owned_lane_mask;
 	u8 lane;
 	struct ref_tracker *wakeref;
@@ -2251,7 +2251,7 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 	}
 
 	pll_state->clock =
-		intel_lt_phy_calc_port_clock(encoder, &crtc_state->dpll_hw_state.ltpll);
+		intel_lt_phy_calc_port_clock(display, &crtc_state->dpll_hw_state.ltpll);
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
@@ -2281,7 +2281,7 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
 	intel_lt_phy_pll_readout_hw_state(encoder, new_crtc_state, &pll_hw_state);
-	clock = intel_lt_phy_calc_port_clock(encoder, &new_crtc_state->dpll_hw_state.ltpll);
+	clock = intel_lt_phy_calc_port_clock(display, &new_crtc_state->dpll_hw_state.ltpll);
 
 	dig_port = enc_to_dig_port(encoder);
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index ad94b47e4279..c4999a55473e 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -21,7 +21,7 @@ void intel_lt_phy_pll_disable(struct intel_encoder *encoder);
 int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder);
-int intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
+int intel_lt_phy_calc_port_clock(struct intel_display *display,
 				 const struct intel_lt_phy_pll_state *lt_state);
 void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state);
-- 
2.34.1

