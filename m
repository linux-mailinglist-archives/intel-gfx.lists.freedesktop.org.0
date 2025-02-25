Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C45C0A446CD
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:49:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4709310E75B;
	Tue, 25 Feb 2025 16:49:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="idEteJf/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BFDF10E756;
 Tue, 25 Feb 2025 16:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740502178; x=1772038178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M+kGi7OS8rAglqttLjrhMbAi161evmjPyw6gmoQ7k9I=;
 b=idEteJf/6xLS1tF6hm+1RPEVJK2xk3BnwQ3iH6XM08vq3daJ+AiWVqAt
 lSvoW89PrLxIvKhzeQVqUhlnU2xRRfFLOF6DuNcYMpsaRPL+k1opQHvOo
 Ki++GeqP/qAzPw8xRMyBBmsjBnG/jKoJyFG1fDrelOUfU5lpWbI7252kq
 igRR/thQeJxR0CoyEQlxnF6C7Kwrhd9p9vgF4wAqjzJ9gs8tO8cSkH0Mi
 6LMSM1F7skCLNOumFQjLKGl32x2M7LBds0jEJJgVaBnRoDTE8SlihIhPw
 UVX7T0xw7MTu+MVTwRBd46BC5AXvyhGFDDXRGbIZf7BnMvqmwU1LTzNP9 Q==;
X-CSE-ConnectionGUID: 2w4v2/nBSeWXwEe5oZ0l3Q==
X-CSE-MsgGUID: HyiZJUj+T+a8Hn03iWNS9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41454427"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41454427"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:37 -0800
X-CSE-ConnectionGUID: mcweHFbuTPm70SbjMhhy7Q==
X-CSE-MsgGUID: /ZmoDxkhQs6C/wBjGhxIsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116930208"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/12] drm/i915/snps: convert intel_snps_phy.[ch] to struct
 intel_display
Date: Tue, 25 Feb 2025 18:49:05 +0200
Message-Id: <2dcc9313f5cf7777af3b6f20124526f6b9462b91.1740502116.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740502116.git.jani.nikula@intel.com>
References: <cover.1740502116.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display is the main display device data
pointer. Convert the intel_snps_phy.[ch] to struct intel_display. Also
convert the very much related intel_phy_is_snps() helper.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  8 +-
 drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
 .../drm/i915/display/intel_display_power.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 75 +++++++++----------
 drivers/gpu/drm/i915/display/intel_snps_phy.h |  6 +-
 6 files changed, 47 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 8c8b53414da6..5b13f8e02fa9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5139,7 +5139,7 @@ void intel_ddi_init(struct intel_display *display,
 		return;
 	}
 
-	if (intel_phy_is_snps(dev_priv, phy) &&
+	if (intel_phy_is_snps(display, phy) &&
 	    dev_priv->display.snps.phy_failed_calibration & BIT(phy)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "SNPS PHY %c failed to calibrate, proceeding anyway\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1536a4a4f824..46fb8e088c15 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1925,13 +1925,13 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 }
 
 /* Prefer intel_encoder_is_snps() */
-bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
+bool intel_phy_is_snps(struct intel_display *display, enum phy phy)
 {
 	/*
 	 * For DG2, and for DG2 only, all four "combo" ports and the TC1 port
 	 * (PHY E) use Synopsis PHYs. See intel_phy_is_tc().
 	 */
-	return IS_DG2(dev_priv) && phy > PHY_NONE && phy <= PHY_E;
+	return display->platform.dg2 && phy > PHY_NONE && phy <= PHY_E;
 }
 
 /* Prefer intel_encoder_to_phy() */
@@ -1980,9 +1980,9 @@ bool intel_encoder_is_combo(struct intel_encoder *encoder)
 
 bool intel_encoder_is_snps(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	return intel_phy_is_snps(i915, intel_encoder_to_phy(encoder));
+	return intel_phy_is_snps(display, intel_encoder_to_phy(encoder));
 }
 
 bool intel_encoder_is_tc(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index e58daefc978e..91f01e81a8f0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -466,7 +466,7 @@ void intel_encoder_get_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *crtc_state);
 bool intel_phy_is_combo(struct intel_display *display, enum phy phy);
 bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy);
-bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy);
+bool intel_phy_is_snps(struct intel_display *display, enum phy phy);
 enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv,
 			      enum port port);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 396930937d98..122384c4abc8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1684,7 +1684,7 @@ static void icl_display_core_init(struct intel_display *display,
 
 	/* 8. Ensure PHYs have completed calibration and adaptation */
 	if (display->platform.dg2)
-		intel_snps_phy_wait_for_calibration(dev_priv);
+		intel_snps_phy_wait_for_calibration(display);
 
 	/* 9. XE2_HPD: Program CHICKEN_MISC_2 before any cursor or planes are enabled */
 	if (DISPLAY_VERx100(display) == 1401)
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 353221d3e29f..b9acd9fe160c 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -5,8 +5,8 @@
 
 #include <linux/math.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
@@ -27,12 +27,12 @@
  * since it is not handled by the shared DPLL framework as on other platforms.
  */
 
-void intel_snps_phy_wait_for_calibration(struct drm_i915_private *i915)
+void intel_snps_phy_wait_for_calibration(struct intel_display *display)
 {
 	enum phy phy;
 
 	for_each_phy_masked(phy, ~0) {
-		if (!intel_phy_is_snps(i915, phy))
+		if (!intel_phy_is_snps(display, phy))
 			continue;
 
 		/*
@@ -40,16 +40,16 @@ void intel_snps_phy_wait_for_calibration(struct drm_i915_private *i915)
 		 * which phy was affected and skip setup of the corresponding
 		 * output later.
 		 */
-		if (intel_de_wait_for_clear(i915, DG2_PHY_MISC(phy),
+		if (intel_de_wait_for_clear(display, DG2_PHY_MISC(phy),
 					    DG2_PHY_DP_TX_ACK_MASK, 25))
-			i915->display.snps.phy_failed_calibration |= BIT(phy);
+			display->snps.phy_failed_calibration |= BIT(phy);
 	}
 }
 
 void intel_snps_phy_update_psr_power_state(struct intel_encoder *encoder,
 					   bool enable)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	u32 val;
 
@@ -58,20 +58,20 @@ void intel_snps_phy_update_psr_power_state(struct intel_encoder *encoder,
 
 	val = REG_FIELD_PREP(SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR,
 			     enable ? 2 : 3);
-	intel_de_rmw(i915, SNPS_PHY_TX_REQ(phy),
+	intel_de_rmw(display, SNPS_PHY_TX_REQ(phy),
 		     SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR, val);
 }
 
 void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_ddi_buf_trans *trans;
 	enum phy phy = intel_encoder_to_phy(encoder);
 	int n_entries, ln;
 
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
+	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return;
 
 	for (ln = 0; ln < 4; ln++) {
@@ -82,7 +82,7 @@ void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
 		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_PRE, trans->entries[level].snps.pre_cursor);
 		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, trans->entries[level].snps.post_cursor);
 
-		intel_de_write(dev_priv, SNPS_PHY_TX_EQ(ln, phy), val);
+		intel_de_write(display, SNPS_PHY_TX_EQ(ln, phy), val);
 	}
 }
 
@@ -1817,7 +1817,7 @@ int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 void intel_mpllb_enable(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_mpllb_state *pll_state = &crtc_state->dpll_hw_state.mpllb;
 	enum phy phy = intel_encoder_to_phy(encoder);
 	i915_reg_t enable_reg = (phy <= PHY_D ?
@@ -1827,13 +1827,13 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
 	 * 3. Software programs the following PLL registers for the desired
 	 * frequency.
 	 */
-	intel_de_write(dev_priv, SNPS_PHY_MPLLB_CP(phy), pll_state->mpllb_cp);
-	intel_de_write(dev_priv, SNPS_PHY_MPLLB_DIV(phy), pll_state->mpllb_div);
-	intel_de_write(dev_priv, SNPS_PHY_MPLLB_DIV2(phy), pll_state->mpllb_div2);
-	intel_de_write(dev_priv, SNPS_PHY_MPLLB_SSCEN(phy), pll_state->mpllb_sscen);
-	intel_de_write(dev_priv, SNPS_PHY_MPLLB_SSCSTEP(phy), pll_state->mpllb_sscstep);
-	intel_de_write(dev_priv, SNPS_PHY_MPLLB_FRACN1(phy), pll_state->mpllb_fracn1);
-	intel_de_write(dev_priv, SNPS_PHY_MPLLB_FRACN2(phy), pll_state->mpllb_fracn2);
+	intel_de_write(display, SNPS_PHY_MPLLB_CP(phy), pll_state->mpllb_cp);
+	intel_de_write(display, SNPS_PHY_MPLLB_DIV(phy), pll_state->mpllb_div);
+	intel_de_write(display, SNPS_PHY_MPLLB_DIV2(phy), pll_state->mpllb_div2);
+	intel_de_write(display, SNPS_PHY_MPLLB_SSCEN(phy), pll_state->mpllb_sscen);
+	intel_de_write(display, SNPS_PHY_MPLLB_SSCSTEP(phy), pll_state->mpllb_sscstep);
+	intel_de_write(display, SNPS_PHY_MPLLB_FRACN1(phy), pll_state->mpllb_fracn1);
+	intel_de_write(display, SNPS_PHY_MPLLB_FRACN2(phy), pll_state->mpllb_fracn2);
 
 	/*
 	 * 4. If the frequency will result in a change to the voltage
@@ -1844,7 +1844,7 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
 	 */
 
 	/* 5. Software sets DPLL_ENABLE [PLL Enable] to "1". */
-	intel_de_rmw(dev_priv, enable_reg, 0, PLL_ENABLE);
+	intel_de_rmw(display, enable_reg, 0, PLL_ENABLE);
 
 	/*
 	 * 9. Software sets SNPS_PHY_MPLLB_DIV dp_mpllb_force_en to "1". This
@@ -1853,7 +1853,7 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
 	 * PLL because that will start the PLL before it has sampled the
 	 * divider values.
 	 */
-	intel_de_write(dev_priv, SNPS_PHY_MPLLB_DIV(phy),
+	intel_de_write(display, SNPS_PHY_MPLLB_DIV(phy),
 		       pll_state->mpllb_div | SNPS_PHY_MPLLB_FORCE_EN);
 
 	/*
@@ -1861,8 +1861,8 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
 	 * is locked at new settings. This register bit is sampling PHY
 	 * dp_mpllb_state interface signal.
 	 */
-	if (intel_de_wait_for_set(dev_priv, enable_reg, PLL_LOCK, 5))
-		drm_dbg_kms(&dev_priv->drm, "Port %c PLL not locked\n", phy_name(phy));
+	if (intel_de_wait_for_set(display, enable_reg, PLL_LOCK, 5))
+		drm_dbg_kms(display->drm, "Port %c PLL not locked\n", phy_name(phy));
 
 	/*
 	 * 11. If the frequency will result in a change to the voltage
@@ -1875,7 +1875,7 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
 
 void intel_mpllb_disable(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	i915_reg_t enable_reg = (phy <= PHY_D ?
 				 DG2_PLL_ENABLE(phy) : MG_PLL_ENABLE(0));
@@ -1889,20 +1889,20 @@ void intel_mpllb_disable(struct intel_encoder *encoder)
 	 */
 
 	/* 2. Software programs DPLL_ENABLE [PLL Enable] to "0" */
-	intel_de_rmw(i915, enable_reg, PLL_ENABLE, 0);
+	intel_de_rmw(display, enable_reg, PLL_ENABLE, 0);
 
 	/*
 	 * 4. Software programs SNPS_PHY_MPLLB_DIV dp_mpllb_force_en to "0".
 	 * This will allow the PLL to stop running.
 	 */
-	intel_de_rmw(i915, SNPS_PHY_MPLLB_DIV(phy), SNPS_PHY_MPLLB_FORCE_EN, 0);
+	intel_de_rmw(display, SNPS_PHY_MPLLB_DIV(phy), SNPS_PHY_MPLLB_FORCE_EN, 0);
 
 	/*
 	 * 5. Software polls DPLL_ENABLE [PLL Lock] for PHY acknowledgment
 	 * (dp_txX_ack) that the new transmitter setting request is completed.
 	 */
-	if (intel_de_wait_for_clear(i915, enable_reg, PLL_LOCK, 5))
-		drm_err(&i915->drm, "Port %c PLL not locked\n", phy_name(phy));
+	if (intel_de_wait_for_clear(display, enable_reg, PLL_LOCK, 5))
+		drm_err(display->drm, "Port %c PLL not locked\n", phy_name(phy));
 
 	/*
 	 * 6. If the frequency will result in a change to the voltage
@@ -1947,16 +1947,16 @@ int intel_mpllb_calc_port_clock(struct intel_encoder *encoder,
 void intel_mpllb_readout_hw_state(struct intel_encoder *encoder,
 				  struct intel_mpllb_state *pll_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	pll_state->mpllb_cp = intel_de_read(dev_priv, SNPS_PHY_MPLLB_CP(phy));
-	pll_state->mpllb_div = intel_de_read(dev_priv, SNPS_PHY_MPLLB_DIV(phy));
-	pll_state->mpllb_div2 = intel_de_read(dev_priv, SNPS_PHY_MPLLB_DIV2(phy));
-	pll_state->mpllb_sscen = intel_de_read(dev_priv, SNPS_PHY_MPLLB_SSCEN(phy));
-	pll_state->mpllb_sscstep = intel_de_read(dev_priv, SNPS_PHY_MPLLB_SSCSTEP(phy));
-	pll_state->mpllb_fracn1 = intel_de_read(dev_priv, SNPS_PHY_MPLLB_FRACN1(phy));
-	pll_state->mpllb_fracn2 = intel_de_read(dev_priv, SNPS_PHY_MPLLB_FRACN2(phy));
+	pll_state->mpllb_cp = intel_de_read(display, SNPS_PHY_MPLLB_CP(phy));
+	pll_state->mpllb_div = intel_de_read(display, SNPS_PHY_MPLLB_DIV(phy));
+	pll_state->mpllb_div2 = intel_de_read(display, SNPS_PHY_MPLLB_DIV2(phy));
+	pll_state->mpllb_sscen = intel_de_read(display, SNPS_PHY_MPLLB_SSCEN(phy));
+	pll_state->mpllb_sscstep = intel_de_read(display, SNPS_PHY_MPLLB_SSCSTEP(phy));
+	pll_state->mpllb_fracn1 = intel_de_read(display, SNPS_PHY_MPLLB_FRACN1(phy));
+	pll_state->mpllb_fracn2 = intel_de_read(display, SNPS_PHY_MPLLB_FRACN2(phy));
 
 	/*
 	 * REF_CONTROL is under firmware control and never programmed by the
@@ -1964,7 +1964,7 @@ void intel_mpllb_readout_hw_state(struct intel_encoder *encoder,
 	 * only tells us the expected value for one field in this register,
 	 * so we'll only read out those specific bits here.
 	 */
-	pll_state->ref_control = intel_de_read(dev_priv, SNPS_PHY_REF_CONTROL(phy)) &
+	pll_state->ref_control = intel_de_read(display, SNPS_PHY_REF_CONTROL(phy)) &
 		SNPS_PHY_REF_CONTROL_REF_RANGE;
 
 	/*
@@ -1980,14 +1980,13 @@ void intel_mpllb_state_verify(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_mpllb_state mpllb_hw_state = {};
 	const struct intel_mpllb_state *mpllb_sw_state = &new_crtc_state->dpll_hw_state.mpllb;
 	struct intel_encoder *encoder;
 
-	if (!IS_DG2(i915))
+	if (!display->platform.dg2)
 		return;
 
 	if (!new_crtc_state->hw.active)
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h b/drivers/gpu/drm/i915/display/intel_snps_phy.h
index 1dd564ed9fa8..7f96da22d028 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
@@ -8,15 +8,15 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
+enum phy;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_encoder;
 struct intel_mpllb_state;
-enum phy;
 
-void intel_snps_phy_wait_for_calibration(struct drm_i915_private *dev_priv);
+void intel_snps_phy_wait_for_calibration(struct intel_display *display);
 void intel_snps_phy_update_psr_power_state(struct intel_encoder *encoder,
 					   bool enable);
 
-- 
2.39.5

