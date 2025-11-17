Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59491C63AD7
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7F2510E3A0;
	Mon, 17 Nov 2025 10:59:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Simexi2/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E56E10E399;
 Mon, 17 Nov 2025 10:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377180; x=1794913180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iCFdsQiuHnzfIEoaM9/xrp+EOwtpEY5+M749EW7oE3Q=;
 b=Simexi2//JRKW60S/QWyQYbIWuep/KphcUAvPyG9o6U+UN/cx3bQ8bAv
 1cf2mklcLY9di+Ique8Fu2nakoRRCmWl703aZLbxEEiZNWjFboSNx32Uu
 12HFiXt4iqEZ/bFJN+NRwUa1Tn99uhXiKXBJ59a2ox2fMquyUDoBRZPK9
 K9PhTAt4X/UXn4quDVSzr2LbD7wmwOUFgmX/1vY1k9yOzSGqjoGbSfswC
 KKcC5j7AkNEGzBbjtKlcKn9LykRF1LYl0Sp9M5JRgGq/MPOxpWEKbiBMA
 bxyhlP9+qvxx/IEXQKrcj8tcFkg0QJb8sSzd6+lDykf6l3pRaAuGXlwPT w==;
X-CSE-ConnectionGUID: hpZkGcGIRrqpNp8BFWq2xA==
X-CSE-MsgGUID: zVJaEtiuQJKHfaZthey+7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475431"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475431"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:40 -0800
X-CSE-ConnectionGUID: F/YB0sQqQvO2fQlsNI2ySg==
X-CSE-MsgGUID: vSu+RxTxTLimf311jHtR6A==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:39 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>, Imre Deak <imre.deak@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 29/32] drm/i915/cx0: Add MTL+ .enable_clock/.disable clock
 hooks on DDI
Date: Mon, 17 Nov 2025 12:45:59 +0200
Message-Id: <20251117104602.2363671-30-mika.kahola@intel.com>
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

To enable pll clock on DDI move part of the pll enabling
sequence into a ddi clock enabling function.

Simililarly, do the same for pll disabling sequence.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 34 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  | 11 +++++-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 ++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 25 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.c   |  4 +--
 5 files changed, 64 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index bde461878647..79be234780ba 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3280,7 +3280,6 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	 * Frequency Change. We handle this step in bxt_set_cdclk().
 	 */
 
-	/* TODO: enable TBT-ALT mode */
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
@@ -3346,8 +3345,7 @@ static int intel_mtl_tbt_clock_select(struct intel_display *display,
 	}
 }
 
-void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
-			      const struct intel_crtc_state *crtc_state)
+void intel_mtl_tbt_pll_enable_clock(struct intel_encoder *encoder, int port_clock)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
@@ -3361,7 +3359,7 @@ void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 
 	mask = XELPDP_DDI_CLOCK_SELECT_MASK(display);
 	val |= XELPDP_DDI_CLOCK_SELECT_PREP(display,
-					    intel_mtl_tbt_clock_select(display, crtc_state->port_clock));
+					    intel_mtl_tbt_clock_select(display, port_clock));
 
 	mask |= XELPDP_FORWARD_CLOCK_UNGATE;
 	val |= XELPDP_FORWARD_CLOCK_UNGATE;
@@ -3399,18 +3397,26 @@ void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 	 * clock frequency.
 	 */
 	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
-		       crtc_state->port_clock);
+		       port_clock);
 }
 
 void intel_mtl_pll_enable(struct intel_encoder *encoder,
-			  const struct intel_crtc_state *crtc_state)
+			  struct intel_dpll *pll,
+			  const struct intel_dpll_hw_state *dpll_hw_state)
+{
+	intel_cx0pll_enable(encoder, &dpll_hw_state->cx0pll);
+}
+
+void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
-		intel_mtl_tbt_pll_enable(encoder, crtc_state);
+		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
 	else
-		intel_cx0pll_enable(encoder, &crtc_state->dpll_hw_state.cx0pll);
+		/* TODO: remove when PLL mgr is in place. */
+		intel_mtl_pll_enable(encoder, NULL, &crtc_state->dpll_hw_state);
 }
 
 /*
@@ -3525,7 +3531,7 @@ static bool intel_cx0_pll_is_enabled(struct intel_encoder *encoder)
 			     intel_cx0_get_pclk_pll_request(lane);
 }
 
-void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
+void intel_mtl_tbt_pll_disable_clock(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
@@ -3564,13 +3570,19 @@ void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 }
 
 void intel_mtl_pll_disable(struct intel_encoder *encoder)
+{
+	intel_cx0pll_disable(encoder);
+}
+
+void intel_mtl_pll_disable_clock(struct intel_encoder *encoder)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
-		intel_mtl_tbt_pll_disable(encoder);
+		intel_mtl_tbt_pll_disable_clock(encoder);
 	else
-		intel_cx0pll_disable(encoder);
+		/* TODO: remove when PLL mgr is in place. */
+		intel_mtl_pll_disable(encoder);
 }
 
 enum icl_port_dpll_id
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 37b53faa5e78..3745d7081ac7 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -20,6 +20,7 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_cx0pll_state;
 struct intel_display;
+struct intel_dpll;
 struct intel_dpll_hw_state;
 struct intel_encoder;
 struct intel_hdmi;
@@ -28,11 +29,19 @@ void intel_clear_response_ready_flag(struct intel_encoder *encoder,
 				     int lane);
 bool intel_encoder_is_c10phy(struct intel_encoder *encoder);
 void intel_mtl_pll_enable(struct intel_encoder *encoder,
-			  const struct intel_crtc_state *crtc_state);
+			  struct intel_dpll *pll,
+			  const struct intel_dpll_hw_state *dpll_hw_state);
 void intel_mtl_pll_disable(struct intel_encoder *encoder);
 enum icl_port_dpll_id
 intel_mtl_port_pll_type(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state);
+void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state);
+void intel_mtl_pll_disable_clock(struct intel_encoder *encoder);
+void intel_mtl_pll_disable_clock(struct intel_encoder *encoder);
+void intel_mtl_tbt_pll_enable_clock(struct intel_encoder *encoder,
+				    int port_clock);
+void intel_mtl_tbt_pll_disable_clock(struct intel_encoder *encoder);
 
 int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6b43d326e50c..be25a6fdd491 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -89,6 +89,8 @@
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 
+struct intel_dpll;
+
 static const u8 index_to_dp_signal_levels[] = {
 	[0] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 | DP_TRAIN_PRE_EMPH_LEVEL_0,
 	[1] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 | DP_TRAIN_PRE_EMPH_LEVEL_1,
@@ -5255,8 +5257,8 @@ void intel_ddi_init(struct intel_display *display,
 		encoder->port_pll_type = intel_mtl_port_pll_type;
 		encoder->get_config = xe3plpd_ddi_get_config;
 	} else if (DISPLAY_VER(display) >= 14) {
-		encoder->enable_clock = intel_mtl_pll_enable;
-		encoder->disable_clock = intel_mtl_pll_disable;
+		encoder->enable_clock = intel_mtl_pll_enable_clock;
+		encoder->disable_clock = intel_mtl_pll_disable_clock;
 		encoder->port_pll_type = intel_mtl_port_pll_type;
 		encoder->get_config = mtl_ddi_get_config;
 	} else if (display->platform.dg2) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 463677014199..ecb7e3761a5b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4391,7 +4391,32 @@ static int mtl_pll_get_freq(struct intel_display *display,
 	return intel_cx0pll_calc_port_clock(encoder, &dpll_hw_state->cx0pll);
 }
 
+static void mtl_pll_enable(struct intel_display *display,
+			   struct intel_dpll *pll,
+			   const struct intel_dpll_hw_state *dpll_hw_state)
+{
+	struct intel_encoder *encoder = get_intel_encoder(display, pll);
+
+	if (drm_WARN_ON(display->drm, !encoder))
+		return;
+
+	intel_mtl_pll_enable(encoder, pll, dpll_hw_state);
+}
+
+static void mtl_pll_disable(struct intel_display *display,
+			    struct intel_dpll *pll)
+{
+	struct intel_encoder *encoder = get_intel_encoder(display, pll);
+
+	if (drm_WARN_ON(display->drm, !encoder))
+		return;
+
+	intel_mtl_pll_disable(encoder);
+}
+
 static const struct intel_dpll_funcs mtl_pll_funcs = {
+	.enable = mtl_pll_enable,
+	.disable = mtl_pll_disable,
 	.get_hw_state = mtl_pll_get_hw_state,
 	.get_freq = mtl_pll_get_freq,
 };
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index a67eb4f7f897..aaf5a2433690 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2310,7 +2310,7 @@ void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
-		intel_mtl_tbt_pll_enable(encoder, crtc_state);
+		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
 	else
 		intel_lt_phy_pll_enable(encoder, crtc_state);
 }
@@ -2320,7 +2320,7 @@ void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
-		intel_mtl_tbt_pll_disable(encoder);
+		intel_mtl_tbt_pll_disable_clock(encoder);
 	else
 		intel_lt_phy_pll_disable(encoder);
 
-- 
2.34.1

