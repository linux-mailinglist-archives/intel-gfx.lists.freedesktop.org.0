Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C37ADBAFB2C
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A1DA10E6F8;
	Wed,  1 Oct 2025 08:39:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UghHJ8pn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C276B10E6F7;
 Wed,  1 Oct 2025 08:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307962; x=1790843962;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k6NdakfGy7MT2aKewboHAc1gA/pEVBV/rNi/mT60/ZU=;
 b=UghHJ8pnIYnmmy+ORwN1kmvJkqPJwsNbZp/vQiwKXJmYcgUoIdpY1W5h
 SyVbEF9F3ceUZXiUZSWNUb2fwiiAyTIOrnZyedH/9Oinlbt/v+/oDJO2A
 XeYQO4X2OCuJuBpoYWM83XX2v62H0pYxVR/BKepAs1e8djizihyghBr4L
 dXiL7pZSt6i7BbukhKhyn1FmFq54uU1k3+/bfqSVxUSBYGqh97G0x37iP
 EJ/UHxeMas3HDYlpxQcJmYqLbebVvvx0FuT8c/B5uUmsNOQGuYq37dAlG
 +FvNWEnlGINRFkRmuW/I2P8nWvs1cleFcXJ4s3CLA7wA2NoqN1s2JIwpC g==;
X-CSE-ConnectionGUID: eDukG3lhT2iHs4a39OLe6g==
X-CSE-MsgGUID: EfHisMTdSpGHuhUcmx3VtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742828"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742828"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:22 -0700
X-CSE-ConnectionGUID: Y6YyZUUnSh2Ld9E3zR88gw==
X-CSE-MsgGUID: 1SodSKeYRx2D47mtL5BB0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142971"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:20 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
	Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 36/39] drm/i915/display: Add .enable_clock on DDI for MTL+
 platforms
Date: Wed,  1 Oct 2025 11:28:36 +0300
Message-Id: <20251001082839.2585559-37-mika.kahola@intel.com>
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

To enable pll clock on DDI we need to move part of the
pll enabling sequence to a ddi clock enabling function.

Simlilarly, we do the pll disabling sequence.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 34 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  7 +++-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 ++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 25 ++++++++++++++
 4 files changed, 58 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ba8c26a1fa91..9622dfa274cb 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3297,7 +3297,6 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	 * Frequency Change. We handle this step in bxt_set_cdclk().
 	 */
 
-	/* TODO: enable TBT-ALT mode */
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
@@ -3363,8 +3362,7 @@ static int intel_mtl_tbt_clock_select(struct intel_display *display,
 	}
 }
 
-static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
-				     const struct intel_crtc_state *crtc_state)
+static void intel_mtl_tbt_pll_enable_clock(struct intel_encoder *encoder, int port_clock)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
@@ -3378,7 +3376,7 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 
 	mask = XELPDP_DDI_CLOCK_SELECT_MASK(display);
 	val |= XELPDP_DDI_CLOCK_SELECT_PREP(display,
-					    intel_mtl_tbt_clock_select(display, crtc_state->port_clock));
+					    intel_mtl_tbt_clock_select(display, port_clock));
 
 	mask |= XELPDP_FORWARD_CLOCK_UNGATE;
 	val |= XELPDP_FORWARD_CLOCK_UNGATE;
@@ -3419,18 +3417,26 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
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
@@ -3546,7 +3552,7 @@ static bool intel_cx0_pll_is_enabled(struct intel_encoder *encoder)
 			     intel_cx0_get_pclk_pll_request(lane);
 }
 
-static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
+static void intel_mtl_tbt_pll_disable_clock(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
@@ -3586,13 +3592,19 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
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
index 39795d1d93be..696e6744c00f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -17,17 +17,22 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_cx0pll_state;
 struct intel_display;
+struct intel_dpll;
 struct intel_dpll_hw_state;
 struct intel_encoder;
 struct intel_hdmi;
 
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
 
 int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c09aa759f4d4..342c2433cbb5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -88,6 +88,8 @@
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 
+struct intel_dpll;
+
 static const u8 index_to_dp_signal_levels[] = {
 	[0] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 | DP_TRAIN_PRE_EMPH_LEVEL_0,
 	[1] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 | DP_TRAIN_PRE_EMPH_LEVEL_1,
@@ -5225,8 +5227,8 @@ void intel_ddi_init(struct intel_display *display,
 	encoder->pipe_mask = ~0;
 
 	if (DISPLAY_VER(display) >= 14) {
-		encoder->enable_clock = intel_mtl_pll_enable;
-		encoder->disable_clock = intel_mtl_pll_disable;
+		encoder->enable_clock = intel_mtl_pll_enable_clock;
+		encoder->disable_clock = intel_mtl_pll_disable_clock;
 		encoder->port_pll_type = intel_mtl_port_pll_type;
 		encoder->get_config = mtl_ddi_get_config;
 	} else if (display->platform.dg2) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ec33f4084091..ee56475d1d4b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4388,7 +4388,32 @@ static int mtl_pll_get_freq(struct intel_display *display,
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
-- 
2.34.1

