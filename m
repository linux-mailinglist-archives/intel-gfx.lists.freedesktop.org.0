Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 215BD7CEB38
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 00:28:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E30B210E45E;
	Wed, 18 Oct 2023 22:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979A310E45E
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 22:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697668086; x=1729204086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=38dbjyjam5f/4IS4bRBMtexeWurpNxgnMnaGlY6KZr4=;
 b=ZALldlXff47KV92zBTpIRmk5qHDaz7gMumFWbhtl9ZP7SV/BlfLEspx3
 GJGQhlyUty953T4jR2O8LhOgUoASq7zxFmG12brGtsA3SVsBdMbqICZJx
 cnkYOXIUkj4Xi7gzcU4VI4LksipD6bAN9TAMyLswJ6WD2blfzRTm0awcu
 eJHFXH9YOJm76ojqdaTxMzt3QnsgMa8Rla8LdzJMeXFuBvodb5obj8im1
 /jUvz9/8Lp0Cl7siJuqLgfzZDC7DQk2JkBBTuWeoHFtelXAU8sfLhaJdi
 Ri5pDMOKtwAx0pfgRnA05mPlcJEyi8O/tTAF4SCqUg+IzQyCg5aDLCeBz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="450348298"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="450348298"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 15:28:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="822605194"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="822605194"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 15:28:05 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 15:28:31 -0700
Message-Id: <20231018222831.4132968-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231018222831.4132968-1-lucas.demarchi@intel.com>
References: <20231018222831.4132968-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Abstract C10/C20 pll
 calculation
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As done with the hw readout, properly abstract the C10/C20 phy details
inside intel_cx0_phy.c.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 20 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  6 ++----
 drivers/gpu/drm/i915/display/intel_ddi.c     |  7 +------
 drivers/gpu/drm/i915/display/intel_dpll.c    |  7 +------
 4 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 252492ec6111..8ffa52464516 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2378,8 +2378,8 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 		      BIT(0), cntx ? 0 : 1, MB_WRITE_COMMITTED);
 }
 
-int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
-				 const struct intel_c10pll_state *pll_state)
+static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
+					const struct intel_c10pll_state *pll_state)
 {
 	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
 	unsigned int multiplier, tx_clk_div, hdmi_div, refclk = 38400;
@@ -2405,8 +2405,8 @@ int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
 	return tmpclk;
 }
 
-int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
-				 const struct intel_c20pll_state *pll_state)
+static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
+					const struct intel_c20pll_state *pll_state)
 {
 	unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
 	unsigned int multiplier, refclk = 38400;
@@ -3065,3 +3065,15 @@ void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 	else
 		intel_c20pll_readout_hw_state(encoder, &pll_state->c20);
 }
+
+int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
+				 const struct intel_cx0pll_state *pll_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	if (intel_is_c10phy(i915, phy))
+		return intel_c10pll_calc_port_clock(encoder, &pll_state->c10);
+
+	return intel_c20pll_calc_port_clock(encoder, &pll_state->c20);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index ff7ccb7855aa..222aed16e739 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -33,17 +33,15 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
 int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, struct intel_encoder *encoder);
 void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 				   struct intel_cx0pll_state *pll_state);
+int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
+				 const struct intel_cx0pll_state *pll_state);
 
 void intel_c10pll_dump_hw_state(struct drm_i915_private *dev_priv,
 				const struct intel_c10pll_state *hw_state);
-int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
-				 const struct intel_c10pll_state *pll_state);
 void intel_c10pll_state_verify(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc);
 void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
 				const struct intel_c20pll_state *hw_state);
-int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
-				 const struct intel_c20pll_state *pll_state);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
 int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 80a8ab7874db..c4dc1f71da4b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3854,18 +3854,13 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
 static void mtl_ddi_get_config(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
 		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
-	} else if (intel_is_c10phy(i915, phy)) {
-		intel_cx0pll_readout_hw_state(encoder, &crtc_state->cx0pll_state);
-		crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
 	} else {
 		intel_cx0pll_readout_hw_state(encoder, &crtc_state->cx0pll_state);
-		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20);
+		crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->cx0pll_state);
 	}
 
 	intel_ddi_get_config(encoder, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index d41c1dc9f66c..509b862f9e60 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1003,12 +1003,10 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
 static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder =
 		intel_get_crtc_new_encoder(state, crtc_state);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
 	int ret;
 
 	ret = intel_cx0pll_calc_state(crtc_state, encoder);
@@ -1016,10 +1014,7 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
 		return ret;
 
 	/* TODO: Do the readback via intel_compute_shared_dplls() */
-	if (intel_is_c10phy(i915, phy))
-		crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
-	else
-		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20);
+	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->cx0pll_state);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
 
-- 
2.40.1

