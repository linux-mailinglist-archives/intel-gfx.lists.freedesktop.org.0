Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC962A2ECB4
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 13:40:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8556C10E50F;
	Mon, 10 Feb 2025 12:40:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i3V02uEF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D68710E50A;
 Mon, 10 Feb 2025 12:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739191214; x=1770727214;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gjj56jFSSYNQfdBi4sYvk1tHHRODiceEzzM+3j0895I=;
 b=i3V02uEFEbKstS3L/jeFhS/aC+KqPQ8Z8gZvW6KsOBmKJjf5WARqH4mj
 Wkawn2hA5f+6cnKWCbmuHQry/SfCbGgbn5EBgGzvYPy3DYlR3vG1uwRzA
 NIfifTyxAoNCDjroKFNwuJk9oXzQk3kSe0+ycyUaADZuNsjdU1theWand
 gOkcs7QRFlN2CwANKGRatAPBrwqVULKo5s8EaE9hEKIWhdP1tDwv4L4lg
 MSg2t2uxTeXRZZMsdscEEMibpGRy5OiaAfxQh7RBGbofFxLZIvbC+i5ZG
 Vc6uCMIbUaJ+WnT4zTXdRzikH9QSOg0mimEYvpSM7FkUrxVc3S1U1GPo7 A==;
X-CSE-ConnectionGUID: sc11BUL2TpmxHlmVkcT/Gw==
X-CSE-MsgGUID: KwxNVpxgT56ifdXPgIBRmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="40038326"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="40038326"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 04:40:13 -0800
X-CSE-ConnectionGUID: xXneqSbtSfOtaPswxnM/8A==
X-CSE-MsgGUID: Klq+K/T5S/OS0nGvbhpnOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113063671"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 10 Feb 2025 04:40:11 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 5/9] drm/i915/dpll: Use intel_display possible in
 shared_dpll_mgr hooks
Date: Mon, 10 Feb 2025 18:09:46 +0530
Message-Id: <20250210123950.3476620-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250210123950.3476620-1-suraj.kandpal@intel.com>
References: <20250210123950.3476620-1-suraj.kandpal@intel.com>
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

We use intel_display for function hooks of shared_dpll_mgr and
any function that gets called when we use for_each_shared_dpll.
This also contains some opportunistic display->platform.xx changes
all to reductate the use of drm_i915_private.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 130 +--
 .../i915/display/intel_display_power_well.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_dkl_phy.c  |  54 +-
 drivers/gpu/drm/i915/display/intel_dkl_phy.h  |   9 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 789 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  10 +-
 .../drm/i915/display/intel_modeset_setup.c    |   4 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  43 +-
 8 files changed, 528 insertions(+), 514 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index db3c2d85c57b..5f072ce1e0ad 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -358,10 +358,10 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 	}
 }
 
-static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
+static int icl_calc_tbt_pll_link(struct intel_display *display,
 				 enum port port)
 {
-	u32 val = intel_de_read(dev_priv, DDI_CLK_SEL(port)) & DDI_CLK_SEL_MASK;
+	u32 val = intel_de_read(display, DDI_CLK_SEL(port)) & DDI_CLK_SEL_MASK;
 
 	switch (val) {
 	case DDI_CLK_SEL_NONE:
@@ -1366,7 +1366,7 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 					  const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	const struct intel_ddi_buf_trans *trans;
 	int n_entries, ln;
@@ -1375,17 +1375,17 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 		return;
 
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
+	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return;
 
 	for (ln = 0; ln < 2; ln++) {
 		int level;
 
-		intel_dkl_phy_write(dev_priv, DKL_TX_PMD_LANE_SUS(tc_port, ln), 0);
+		intel_dkl_phy_write(display, DKL_TX_PMD_LANE_SUS(tc_port, ln), 0);
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
 
-		intel_dkl_phy_rmw(dev_priv, DKL_TX_DPCNTL0(tc_port, ln),
+		intel_dkl_phy_rmw(display, DKL_TX_DPCNTL0(tc_port, ln),
 				  DKL_TX_PRESHOOT_COEFF_MASK |
 				  DKL_TX_DE_EMPAHSIS_COEFF_MASK |
 				  DKL_TX_VSWING_CONTROL_MASK,
@@ -1395,7 +1395,7 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
 
-		intel_dkl_phy_rmw(dev_priv, DKL_TX_DPCNTL1(tc_port, ln),
+		intel_dkl_phy_rmw(display, DKL_TX_DPCNTL1(tc_port, ln),
 				  DKL_TX_PRESHOOT_COEFF_MASK |
 				  DKL_TX_DE_EMPAHSIS_COEFF_MASK |
 				  DKL_TX_VSWING_CONTROL_MASK,
@@ -1403,10 +1403,10 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 				  DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_emphasis) |
 				  DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing));
 
-		intel_dkl_phy_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port, ln),
+		intel_dkl_phy_rmw(display, DKL_TX_DPCNTL2(tc_port, ln),
 				  DKL_TX_DP20BITMODE, 0);
 
-		if (IS_ALDERLAKE_P(dev_priv)) {
+		if (display->platform.alderlake_p) {
 			u32 val;
 
 			if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
@@ -1422,7 +1422,7 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 				val |= DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2(0);
 			}
 
-			intel_dkl_phy_rmw(dev_priv, DKL_TX_DPCNTL2(tc_port, ln),
+			intel_dkl_phy_rmw(display, DKL_TX_DPCNTL2(tc_port, ln),
 					  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX1_MASK |
 					  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK,
 					  val);
@@ -1550,14 +1550,14 @@ static bool _icl_ddi_is_clock_enabled(struct drm_i915_private *i915, i915_reg_t
 }
 
 static struct intel_shared_dpll *
-_icl_ddi_get_pll(struct drm_i915_private *i915, i915_reg_t reg,
+_icl_ddi_get_pll(struct intel_display *display, i915_reg_t reg,
 		 u32 clk_sel_mask, u32 clk_sel_shift)
 {
 	enum intel_dpll_id id;
 
-	id = (intel_de_read(i915, reg) & clk_sel_mask) >> clk_sel_shift;
+	id = (intel_de_read(display, reg) & clk_sel_mask) >> clk_sel_shift;
 
-	return intel_get_shared_dpll_by_id(i915, id);
+	return intel_get_shared_dpll_by_id(display, id);
 }
 
 static void adls_ddi_enable_clock(struct intel_encoder *encoder,
@@ -1596,10 +1596,10 @@ static bool adls_ddi_is_clock_enabled(struct intel_encoder *encoder)
 
 static struct intel_shared_dpll *adls_ddi_get_pll(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	return _icl_ddi_get_pll(i915, ADLS_DPCLKA_CFGCR(phy),
+	return _icl_ddi_get_pll(display, ADLS_DPCLKA_CFGCR(phy),
 				ADLS_DPCLKA_CFGCR_DDI_CLK_SEL_MASK(phy),
 				ADLS_DPCLKA_CFGCR_DDI_SHIFT(phy));
 }
@@ -1640,10 +1640,10 @@ static bool rkl_ddi_is_clock_enabled(struct intel_encoder *encoder)
 
 static struct intel_shared_dpll *rkl_ddi_get_pll(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	return _icl_ddi_get_pll(i915, ICL_DPCLKA_CFGCR0,
+	return _icl_ddi_get_pll(display, ICL_DPCLKA_CFGCR0,
 				RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy),
 				RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy));
 }
@@ -1693,12 +1693,12 @@ static bool dg1_ddi_is_clock_enabled(struct intel_encoder *encoder)
 
 static struct intel_shared_dpll *dg1_ddi_get_pll(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	enum intel_dpll_id id;
 	u32 val;
 
-	val = intel_de_read(i915, DG1_DPCLKA_CFGCR0(phy));
+	val = intel_de_read(display, DG1_DPCLKA_CFGCR0(phy));
 	val &= DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
 	val >>= DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy);
 	id = val;
@@ -1711,7 +1711,7 @@ static struct intel_shared_dpll *dg1_ddi_get_pll(struct intel_encoder *encoder)
 	if (phy >= PHY_C)
 		id += DPLL_ID_DG1_DPLL2;
 
-	return intel_get_shared_dpll_by_id(i915, id);
+	return intel_get_shared_dpll_by_id(display, id);
 }
 
 static void icl_ddi_combo_enable_clock(struct intel_encoder *encoder,
@@ -1750,10 +1750,10 @@ static bool icl_ddi_combo_is_clock_enabled(struct intel_encoder *encoder)
 
 struct intel_shared_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	return _icl_ddi_get_pll(i915, ICL_DPCLKA_CFGCR0,
+	return _icl_ddi_get_pll(display, ICL_DPCLKA_CFGCR0,
 				ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy),
 				ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy));
 }
@@ -1858,13 +1858,13 @@ static bool icl_ddi_tc_is_clock_enabled(struct intel_encoder *encoder)
 
 static struct intel_shared_dpll *icl_ddi_tc_get_pll(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	enum port port = encoder->port;
 	enum intel_dpll_id id;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, DDI_CLK_SEL(port));
+	tmp = intel_de_read(display, DDI_CLK_SEL(port));
 
 	switch (tmp & DDI_CLK_SEL_MASK) {
 	case DDI_CLK_SEL_TBT_162:
@@ -1883,12 +1883,12 @@ static struct intel_shared_dpll *icl_ddi_tc_get_pll(struct intel_encoder *encode
 		return NULL;
 	}
 
-	return intel_get_shared_dpll_by_id(i915, id);
+	return intel_get_shared_dpll_by_id(display, id);
 }
 
 static struct intel_shared_dpll *bxt_ddi_get_pll(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder->base.dev);
 	enum intel_dpll_id id;
 
 	switch (encoder->port) {
@@ -1906,7 +1906,7 @@ static struct intel_shared_dpll *bxt_ddi_get_pll(struct intel_encoder *encoder)
 		return NULL;
 	}
 
-	return intel_get_shared_dpll_by_id(i915, id);
+	return intel_get_shared_dpll_by_id(display, id);
 }
 
 static void skl_ddi_enable_clock(struct intel_encoder *encoder,
@@ -1957,12 +1957,12 @@ static bool skl_ddi_is_clock_enabled(struct intel_encoder *encoder)
 
 static struct intel_shared_dpll *skl_ddi_get_pll(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	enum intel_dpll_id id;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, DPLL_CTRL2);
+	tmp = intel_de_read(display, DPLL_CTRL2);
 
 	/*
 	 * FIXME Not sure if the override affects both
@@ -1974,7 +1974,7 @@ static struct intel_shared_dpll *skl_ddi_get_pll(struct intel_encoder *encoder)
 	id = (tmp & DPLL_CTRL2_DDI_CLK_SEL_MASK(port)) >>
 		DPLL_CTRL2_DDI_CLK_SEL_SHIFT(port);
 
-	return intel_get_shared_dpll_by_id(i915, id);
+	return intel_get_shared_dpll_by_id(display, id);
 }
 
 void hsw_ddi_enable_clock(struct intel_encoder *encoder,
@@ -2008,12 +2008,12 @@ bool hsw_ddi_is_clock_enabled(struct intel_encoder *encoder)
 
 static struct intel_shared_dpll *hsw_ddi_get_pll(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	enum intel_dpll_id id;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, PORT_CLK_SEL(port));
+	tmp = intel_de_read(display, PORT_CLK_SEL(port));
 
 	switch (tmp & PORT_CLK_SEL_MASK) {
 	case PORT_CLK_SEL_WRPLL1:
@@ -2041,7 +2041,7 @@ static struct intel_shared_dpll *hsw_ddi_get_pll(struct intel_encoder *encoder)
 		return NULL;
 	}
 
-	return intel_get_shared_dpll_by_id(i915, id);
+	return intel_get_shared_dpll_by_id(display, id);
 }
 
 void intel_ddi_enable_clock(struct intel_encoder *encoder,
@@ -2121,13 +2121,13 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
 }
 
 static void
-tgl_dkl_phy_check_and_rewrite(struct drm_i915_private *dev_priv,
+tgl_dkl_phy_check_and_rewrite(struct intel_display *display,
 			      enum tc_port tc_port, u32 ln0, u32 ln1)
 {
-	if (ln0 != intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 0)))
-		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0), ln0);
-	if (ln1 != intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 1)))
-		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1), ln1);
+	if (ln0 != intel_dkl_phy_read(display, DKL_DP_MODE(tc_port, 0)))
+		intel_dkl_phy_write(display, DKL_DP_MODE(tc_port, 0), ln0);
+	if (ln1 != intel_dkl_phy_read(display, DKL_DP_MODE(tc_port, 1)))
+		intel_dkl_phy_write(display, DKL_DP_MODE(tc_port, 1), ln1);
 }
 
 static void
@@ -2135,24 +2135,23 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 		       const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
 	u32 ln0, ln1, pin_assignment;
 	u8 width;
 
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		return;
 
 	if (!intel_encoder_is_tc(&dig_port->base) ||
 	    intel_tc_port_in_tbt_alt_mode(dig_port))
 		return;
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
-		ln0 = intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 0));
-		ln1 = intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 1));
+	if (DISPLAY_VER(display) >= 12) {
+		ln0 = intel_dkl_phy_read(display, DKL_DP_MODE(tc_port, 0));
+		ln1 = intel_dkl_phy_read(display, DKL_DP_MODE(tc_port, 1));
 	} else {
-		ln0 = intel_de_read(dev_priv, MG_DP_MODE(0, tc_port));
-		ln1 = intel_de_read(dev_priv, MG_DP_MODE(1, tc_port));
+		ln0 = intel_de_read(display, MG_DP_MODE(0, tc_port));
+		ln1 = intel_de_read(display, MG_DP_MODE(1, tc_port));
 	}
 
 	ln0 &= ~(MG_DP_MODE_CFG_DP_X1_MODE | MG_DP_MODE_CFG_DP_X2_MODE);
@@ -2164,7 +2163,7 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 
 	switch (pin_assignment) {
 	case 0x0:
-		drm_WARN_ON(&dev_priv->drm,
+		drm_WARN_ON(display->drm,
 			    !intel_tc_port_in_legacy_mode(dig_port));
 		if (width == 1) {
 			ln1 |= MG_DP_MODE_CFG_DP_X1_MODE;
@@ -2209,16 +2208,16 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 		MISSING_CASE(pin_assignment);
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
-		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0), ln0);
-		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1), ln1);
+	if (DISPLAY_VER(display) >= 12) {
+		intel_dkl_phy_write(display, DKL_DP_MODE(tc_port, 0), ln0);
+		intel_dkl_phy_write(display, DKL_DP_MODE(tc_port, 1), ln1);
 		 /* WA_14018221282 */
 		if (IS_DISPLAY_VER(display, 12, 13))
-			tgl_dkl_phy_check_and_rewrite(dev_priv, tc_port, ln0, ln1);
+			tgl_dkl_phy_check_and_rewrite(display, tc_port, ln0, ln1);
 
 	} else {
-		intel_de_write(dev_priv, MG_DP_MODE(0, tc_port), ln0);
-		intel_de_write(dev_priv, MG_DP_MODE(1, tc_port), ln1);
+		intel_de_write(display, MG_DP_MODE(0, tc_port), ln0);
+		intel_de_write(display, MG_DP_MODE(1, tc_port), ln1);
 	}
 }
 
@@ -3725,12 +3724,13 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 
 static void adlp_tbt_to_dp_alt_switch_wa(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	int ln;
 
 	for (ln = 0; ln < 2; ln++)
-		intel_dkl_phy_rmw(i915, DKL_PCS_DW5(tc_port, ln), DKL_PCS_DW5_CORE_SOFTRESET, 0);
+		intel_dkl_phy_rmw(display, DKL_PCS_DW5(tc_port, ln),
+				  DKL_PCS_DW5_CORE_SOFTRESET, 0);
 }
 
 static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
@@ -4248,21 +4248,21 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
 			 struct intel_crtc_state *crtc_state,
 			 struct intel_shared_dpll *pll)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum icl_port_dpll_id port_dpll_id = ICL_PORT_DPLL_DEFAULT;
 	struct icl_port_dpll *port_dpll = &crtc_state->icl_port_dplls[port_dpll_id];
 	bool pll_active;
 
-	if (drm_WARN_ON(&i915->drm, !pll))
+	if (drm_WARN_ON(display->drm, !pll))
 		return;
 
 	port_dpll->pll = pll;
-	pll_active = intel_dpll_get_hw_state(i915, pll, &port_dpll->hw_state);
-	drm_WARN_ON(&i915->drm, !pll_active);
+	pll_active = intel_dpll_get_hw_state(display, pll, &port_dpll->hw_state);
+	drm_WARN_ON(display->drm, !pll_active);
 
 	icl_set_active_port_dpll(crtc_state, port_dpll_id);
 
-	crtc_state->port_clock = intel_dpll_get_freq(i915, crtc_state->shared_dpll,
+	crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->shared_dpll,
 						     &crtc_state->dpll_hw_state);
 }
 
@@ -4351,12 +4351,12 @@ static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
 				 struct intel_crtc_state *crtc_state,
 				 struct intel_shared_dpll *pll)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum icl_port_dpll_id port_dpll_id;
 	struct icl_port_dpll *port_dpll;
 	bool pll_active;
 
-	if (drm_WARN_ON(&i915->drm, !pll))
+	if (drm_WARN_ON(display->drm, !pll))
 		return;
 
 	if (icl_ddi_tc_pll_is_tbt(pll))
@@ -4367,15 +4367,15 @@ static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
 	port_dpll = &crtc_state->icl_port_dplls[port_dpll_id];
 
 	port_dpll->pll = pll;
-	pll_active = intel_dpll_get_hw_state(i915, pll, &port_dpll->hw_state);
-	drm_WARN_ON(&i915->drm, !pll_active);
+	pll_active = intel_dpll_get_hw_state(display, pll, &port_dpll->hw_state);
+	drm_WARN_ON(display->drm, !pll_active);
 
 	icl_set_active_port_dpll(crtc_state, port_dpll_id);
 
 	if (icl_ddi_tc_pll_is_tbt(crtc_state->shared_dpll))
-		crtc_state->port_clock = icl_calc_tbt_pll_link(i915, encoder->port);
+		crtc_state->port_clock = icl_calc_tbt_pll_link(display, encoder->port);
 	else
-		crtc_state->port_clock = intel_dpll_get_freq(i915, crtc_state->shared_dpll,
+		crtc_state->port_clock = intel_dpll_get_freq(display, crtc_state->shared_dpll,
 							     &crtc_state->dpll_hw_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index f45a4f9ba23c..a31d1678dfc0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -507,7 +507,6 @@ static void
 icl_tc_phy_aux_power_well_enable(struct intel_display *display,
 				 struct i915_power_well *power_well)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
 	struct intel_digital_port *dig_port = aux_ch_to_digital_port(display, aux_ch);
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
@@ -539,7 +538,7 @@ icl_tc_phy_aux_power_well_enable(struct intel_display *display,
 
 		tc_port = TGL_AUX_PW_TO_TC_PORT(i915_power_well_instance(power_well)->hsw.idx);
 
-		if (wait_for(intel_dkl_phy_read(dev_priv, DKL_CMN_UC_DW_27(tc_port)) &
+		if (wait_for(intel_dkl_phy_read(display, DKL_CMN_UC_DW_27(tc_port)) &
 			     DKL_CMN_UC_DW27_UC_HEALTH, 1))
 			drm_warn(display->drm,
 				 "Timeout waiting TC uC health\n");
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
index b146b4c46943..0920f78f182e 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
@@ -20,20 +20,20 @@ void intel_dkl_phy_init(struct drm_i915_private *i915)
 }
 
 static void
-dkl_phy_set_hip_idx(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg)
+dkl_phy_set_hip_idx(struct intel_display *display, struct intel_dkl_phy_reg reg)
 {
 	enum tc_port tc_port = DKL_REG_TC_PORT(reg);
 
-	drm_WARN_ON(&i915->drm, tc_port < TC_PORT_1 || tc_port >= I915_MAX_TC_PORTS);
+	drm_WARN_ON(display->drm, tc_port < TC_PORT_1 || tc_port >= I915_MAX_TC_PORTS);
 
-	intel_de_write(i915,
+	intel_de_write(display,
 		       HIP_INDEX_REG(tc_port),
 		       HIP_INDEX_VAL(tc_port, reg.bank_idx));
 }
 
 /**
  * intel_dkl_phy_read - read a Dekel PHY register
- * @i915: i915 device instance
+ * @display: intel_display device instance
  * @reg: Dekel PHY register
  *
  * Read the @reg Dekel PHY register.
@@ -41,42 +41,42 @@ dkl_phy_set_hip_idx(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg)
  * Returns the read value.
  */
 u32
-intel_dkl_phy_read(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg)
+intel_dkl_phy_read(struct intel_display *display, struct intel_dkl_phy_reg reg)
 {
 	u32 val;
 
-	spin_lock(&i915->display.dkl.phy_lock);
+	spin_lock(&display->dkl.phy_lock);
 
-	dkl_phy_set_hip_idx(i915, reg);
-	val = intel_de_read(i915, DKL_REG_MMIO(reg));
+	dkl_phy_set_hip_idx(display, reg);
+	val = intel_de_read(display, DKL_REG_MMIO(reg));
 
-	spin_unlock(&i915->display.dkl.phy_lock);
+	spin_unlock(&display->dkl.phy_lock);
 
 	return val;
 }
 
 /**
  * intel_dkl_phy_write - write a Dekel PHY register
- * @i915: i915 device instance
+ * @display: intel_display device instance
  * @reg: Dekel PHY register
  * @val: value to write
  *
  * Write @val to the @reg Dekel PHY register.
  */
 void
-intel_dkl_phy_write(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg, u32 val)
+intel_dkl_phy_write(struct intel_display *display, struct intel_dkl_phy_reg reg, u32 val)
 {
-	spin_lock(&i915->display.dkl.phy_lock);
+	spin_lock(&display->dkl.phy_lock);
 
-	dkl_phy_set_hip_idx(i915, reg);
-	intel_de_write(i915, DKL_REG_MMIO(reg), val);
+	dkl_phy_set_hip_idx(display, reg);
+	intel_de_write(display, DKL_REG_MMIO(reg), val);
 
-	spin_unlock(&i915->display.dkl.phy_lock);
+	spin_unlock(&display->dkl.phy_lock);
 }
 
 /**
  * intel_dkl_phy_rmw - read-modify-write a Dekel PHY register
- * @i915: i915 device instance
+ * @display: display device instance
  * @reg: Dekel PHY register
  * @clear: mask to clear
  * @set: mask to set
@@ -85,30 +85,30 @@ intel_dkl_phy_write(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg,
  * this value back to the register if the value differs from the read one.
  */
 void
-intel_dkl_phy_rmw(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg, u32 clear, u32 set)
+intel_dkl_phy_rmw(struct intel_display *display, struct intel_dkl_phy_reg reg, u32 clear, u32 set)
 {
-	spin_lock(&i915->display.dkl.phy_lock);
+	spin_lock(&display->dkl.phy_lock);
 
-	dkl_phy_set_hip_idx(i915, reg);
-	intel_de_rmw(i915, DKL_REG_MMIO(reg), clear, set);
+	dkl_phy_set_hip_idx(display, reg);
+	intel_de_rmw(display, DKL_REG_MMIO(reg), clear, set);
 
-	spin_unlock(&i915->display.dkl.phy_lock);
+	spin_unlock(&display->dkl.phy_lock);
 }
 
 /**
  * intel_dkl_phy_posting_read - do a posting read from a Dekel PHY register
- * @i915: i915 device instance
+ * @display: display device instance
  * @reg: Dekel PHY register
  *
  * Read the @reg Dekel PHY register without returning the read value.
  */
 void
-intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg)
+intel_dkl_phy_posting_read(struct intel_display *display, struct intel_dkl_phy_reg reg)
 {
-	spin_lock(&i915->display.dkl.phy_lock);
+	spin_lock(&display->dkl.phy_lock);
 
-	dkl_phy_set_hip_idx(i915, reg);
-	intel_de_posting_read(i915, DKL_REG_MMIO(reg));
+	dkl_phy_set_hip_idx(display, reg);
+	intel_de_posting_read(display, DKL_REG_MMIO(reg));
 
-	spin_unlock(&i915->display.dkl.phy_lock);
+	spin_unlock(&display->dkl.phy_lock);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.h b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
index 5956ec3e940b..1d96e6be657c 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
@@ -11,15 +11,16 @@
 #include "intel_dkl_phy_regs.h"
 
 struct drm_i915_private;
+struct intel_display;
 
 void intel_dkl_phy_init(struct drm_i915_private *i915);
 u32
-intel_dkl_phy_read(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg);
+intel_dkl_phy_read(struct intel_display *display, struct intel_dkl_phy_reg reg);
 void
-intel_dkl_phy_write(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg, u32 val);
+intel_dkl_phy_write(struct intel_display *display, struct intel_dkl_phy_reg reg, u32 val);
 void
-intel_dkl_phy_rmw(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg, u32 clear, u32 set);
+intel_dkl_phy_rmw(struct intel_display *display, struct intel_dkl_phy_reg reg, u32 clear, u32 set);
 void
-intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg);
+intel_dkl_phy_posting_read(struct intel_display *display, struct intel_dkl_phy_reg reg);
 
 #endif /* __INTEL_DKL_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ec46adb13af7..8655522458d6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -65,7 +65,7 @@ struct intel_shared_dpll_funcs {
 	 * Hook for enabling the pll, called from intel_enable_shared_dpll() if
 	 * the pll is not already enabled.
 	 */
-	void (*enable)(struct drm_i915_private *i915,
+	void (*enable)(struct intel_display *display,
 		       struct intel_shared_dpll *pll,
 		       const struct intel_dpll_hw_state *dpll_hw_state);
 
@@ -74,7 +74,7 @@ struct intel_shared_dpll_funcs {
 	 * only when it is safe to disable the pll, i.e., there are no more
 	 * tracked users for it.
 	 */
-	void (*disable)(struct drm_i915_private *i915,
+	void (*disable)(struct intel_display *display,
 			struct intel_shared_dpll *pll);
 
 	/*
@@ -82,7 +82,7 @@ struct intel_shared_dpll_funcs {
 	 * registers. This is used for initial hw state readout and state
 	 * verification after a mode set.
 	 */
-	bool (*get_hw_state)(struct drm_i915_private *i915,
+	bool (*get_hw_state)(struct intel_display *display,
 			     struct intel_shared_dpll *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state);
 
@@ -90,7 +90,7 @@ struct intel_shared_dpll_funcs {
 	 * Hook for calculating the pll's output frequency based on its passed
 	 * in state.
 	 */
-	int (*get_freq)(struct drm_i915_private *i915,
+	int (*get_freq)(struct intel_display *i915,
 			const struct intel_shared_dpll *pll,
 			const struct intel_dpll_hw_state *dpll_hw_state);
 };
@@ -148,17 +148,16 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
 
 /**
  * intel_get_shared_dpll_by_id - get a DPLL given its id
- * @i915: i915 device instance
+ * @display: intel_display device instance
  * @id: pll id
  *
  * Returns:
  * A pointer to the DPLL with @id
  */
 struct intel_shared_dpll *
-intel_get_shared_dpll_by_id(struct drm_i915_private *i915,
+intel_get_shared_dpll_by_id(struct intel_display *display,
 			    enum intel_dpll_id id)
 {
-	struct intel_display *display = to_intel_display(&i915->drm);
 	struct intel_shared_dpll *pll;
 	int i;
 
@@ -184,7 +183,7 @@ void assert_shared_dpll(struct drm_i915_private *i915,
 		     "asserting DPLL %s with no DPLL\n", str_on_off(state)))
 		return;
 
-	cur_state = intel_dpll_get_hw_state(i915, pll, &hw_state);
+	cur_state = intel_dpll_get_hw_state(display, pll, &hw_state);
 	INTEL_DISPLAY_STATE_WARN(display, cur_state != state,
 				 "%s assertion failure (expected %s, current %s)\n",
 				 pll->info->name, str_on_off(state),
@@ -202,12 +201,12 @@ enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port)
 }
 
 static i915_reg_t
-intel_combo_pll_enable_reg(struct drm_i915_private *i915,
+intel_combo_pll_enable_reg(struct intel_display *display,
 			   struct intel_shared_dpll *pll)
 {
-	if (IS_DG1(i915))
+	if (display->platform.dg1)
 		return DG1_DPLL_ENABLE(pll->info->id);
-	else if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
+	else if ((display->platform.jasperlake || display->platform.elkhartlake) &&
 		 (pll->info->id == DPLL_ID_EHL_DPLL4))
 		return MG_PLL_ENABLE(0);
 
@@ -215,36 +214,40 @@ intel_combo_pll_enable_reg(struct drm_i915_private *i915,
 }
 
 static i915_reg_t
-intel_tc_pll_enable_reg(struct drm_i915_private *i915,
+intel_tc_pll_enable_reg(struct intel_display *display,
 			struct intel_shared_dpll *pll)
 {
 	const enum intel_dpll_id id = pll->info->id;
 	enum tc_port tc_port = icl_pll_id_to_tc_port(id);
 
-	if (IS_ALDERLAKE_P(i915))
+	if (display->platform.alderlake_p)
 		return ADLP_PORTTC_PLL_ENABLE(tc_port);
 
 	return MG_PLL_ENABLE(tc_port);
 }
 
-static void _intel_enable_shared_dpll(struct drm_i915_private *i915,
+static void _intel_enable_shared_dpll(struct intel_display *display,
 				      struct intel_shared_dpll *pll)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	if (pll->info->power_domain)
 		pll->wakeref = intel_display_power_get(i915, pll->info->power_domain);
 
-	pll->info->funcs->enable(i915, pll, &pll->state.hw_state);
+	pll->info->funcs->enable(display, pll, &pll->state.hw_state);
 	pll->on = true;
 }
 
-static void _intel_disable_shared_dpll(struct drm_i915_private *i915,
+static void _intel_disable_shared_dpll(struct intel_display *display,
 				       struct intel_shared_dpll *pll)
 {
-	pll->info->funcs->disable(i915, pll);
+	pll->info->funcs->disable(display, pll);
 	pll->on = false;
 
 	if (pll->info->power_domain)
-		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
+		intel_display_power_put(to_i915(display->drm),
+					pll->info->power_domain,
+					pll->wakeref);
 }
 
 /**
@@ -255,42 +258,43 @@ static void _intel_disable_shared_dpll(struct drm_i915_private *i915,
  */
 void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	unsigned int pipe_mask = BIT(crtc->pipe);
 	unsigned int old_mask;
 
-	if (drm_WARN_ON(&i915->drm, pll == NULL))
+	if (drm_WARN_ON(display->drm, !pll))
 		return;
 
-	mutex_lock(&i915->display.dpll.lock);
+	mutex_lock(&display->dpll.lock);
 	old_mask = pll->active_mask;
 
-	if (drm_WARN_ON(&i915->drm, !(pll->state.pipe_mask & pipe_mask)) ||
-	    drm_WARN_ON(&i915->drm, pll->active_mask & pipe_mask))
+	if (drm_WARN_ON(display->drm, !(pll->state.pipe_mask & pipe_mask)) ||
+	    drm_WARN_ON(display->drm, pll->active_mask & pipe_mask))
 		goto out;
 
 	pll->active_mask |= pipe_mask;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "enable %s (active 0x%x, on? %d) for [CRTC:%d:%s]\n",
 		    pll->info->name, pll->active_mask, pll->on,
 		    crtc->base.base.id, crtc->base.name);
 
 	if (old_mask) {
-		drm_WARN_ON(&i915->drm, !pll->on);
+		drm_WARN_ON(display->drm, !pll->on);
 		assert_shared_dpll_enabled(i915, pll);
 		goto out;
 	}
-	drm_WARN_ON(&i915->drm, pll->on);
+	drm_WARN_ON(display->drm, pll->on);
 
-	drm_dbg_kms(&i915->drm, "enabling %s\n", pll->info->name);
+	drm_dbg_kms(display->drm, "enabling %s\n", pll->info->name);
 
-	_intel_enable_shared_dpll(i915, pll);
+	_intel_enable_shared_dpll(display, pll);
 
 out:
-	mutex_unlock(&i915->display.dpll.lock);
+	mutex_unlock(&display->dpll.lock);
 }
 
 /**
@@ -301,48 +305,48 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
  */
 void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	unsigned int pipe_mask = BIT(crtc->pipe);
 
 	/* PCH only available on ILK+ */
-	if (DISPLAY_VER(i915) < 5)
+	if (DISPLAY_VER(display) < 5)
 		return;
 
 	if (pll == NULL)
 		return;
 
-	mutex_lock(&i915->display.dpll.lock);
-	if (drm_WARN(&i915->drm, !(pll->active_mask & pipe_mask),
+	mutex_lock(&display->dpll.lock);
+	if (drm_WARN(display->drm, !(pll->active_mask & pipe_mask),
 		     "%s not used by [CRTC:%d:%s]\n", pll->info->name,
 		     crtc->base.base.id, crtc->base.name))
 		goto out;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "disable %s (active 0x%x, on? %d) for [CRTC:%d:%s]\n",
 		    pll->info->name, pll->active_mask, pll->on,
 		    crtc->base.base.id, crtc->base.name);
 
 	assert_shared_dpll_enabled(i915, pll);
-	drm_WARN_ON(&i915->drm, !pll->on);
+	drm_WARN_ON(display->drm, !pll->on);
 
 	pll->active_mask &= ~pipe_mask;
 	if (pll->active_mask)
 		goto out;
 
-	drm_dbg_kms(&i915->drm, "disabling %s\n", pll->info->name);
+	drm_dbg_kms(display->drm, "disabling %s\n", pll->info->name);
 
-	_intel_disable_shared_dpll(i915, pll);
+	_intel_disable_shared_dpll(display, pll);
 
 out:
-	mutex_unlock(&i915->display.dpll.lock);
+	mutex_unlock(&display->dpll.lock);
 }
 
 static unsigned long
-intel_dpll_mask_all(struct drm_i915_private *i915)
+intel_dpll_mask_all(struct intel_display *display)
 {
-	struct intel_display *display = to_intel_display(&i915->drm);
 	struct intel_shared_dpll *pll;
 	unsigned long dpll_mask = 0;
 	int i;
@@ -362,20 +366,20 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 		       const struct intel_dpll_hw_state *dpll_hw_state,
 		       unsigned long dpll_mask)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	unsigned long dpll_mask_all = intel_dpll_mask_all(i915);
+	struct intel_display *display = to_intel_display(crtc);
+	unsigned long dpll_mask_all = intel_dpll_mask_all(display);
 	struct intel_shared_dpll_state *shared_dpll;
 	struct intel_shared_dpll *unused_pll = NULL;
 	enum intel_dpll_id id;
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
 
-	drm_WARN_ON(&i915->drm, dpll_mask & ~dpll_mask_all);
+	drm_WARN_ON(display->drm, dpll_mask & ~dpll_mask_all);
 
 	for_each_set_bit(id, &dpll_mask, fls(dpll_mask_all)) {
 		struct intel_shared_dpll *pll;
 
-		pll = intel_get_shared_dpll_by_id(i915, id);
+		pll = intel_get_shared_dpll_by_id(display, id);
 		if (!pll)
 			continue;
 
@@ -389,7 +393,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 		if (memcmp(dpll_hw_state,
 			   &shared_dpll[pll->index].hw_state,
 			   sizeof(*dpll_hw_state)) == 0) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[CRTC:%d:%s] sharing existing %s (pipe mask 0x%x, active 0x%x)\n",
 				    crtc->base.base.id, crtc->base.name,
 				    pll->info->name,
@@ -401,7 +405,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 
 	/* Ok no matching timings, maybe there's a free one? */
 	if (unused_pll) {
-		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] allocated %s\n",
+		drm_dbg_kms(display->drm, "[CRTC:%d:%s] allocated %s\n",
 			    crtc->base.base.id, crtc->base.name,
 			    unused_pll->info->name);
 		return unused_pll;
@@ -524,10 +528,11 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 		swap(pll->state, shared_dpll[pll->index]);
 }
 
-static bool ibx_pch_dpll_get_hw_state(struct drm_i915_private *i915,
+static bool ibx_pch_dpll_get_hw_state(struct intel_display *display,
 				      struct intel_shared_dpll *pll,
 				      struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
 	const enum intel_dpll_id id = pll->info->id;
 	intel_wakeref_t wakeref;
@@ -538,10 +543,10 @@ static bool ibx_pch_dpll_get_hw_state(struct drm_i915_private *i915,
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(i915, PCH_DPLL(id));
+	val = intel_de_read(display, PCH_DPLL(id));
 	hw_state->dpll = val;
-	hw_state->fp0 = intel_de_read(i915, PCH_FP0(id));
-	hw_state->fp1 = intel_de_read(i915, PCH_FP1(id));
+	hw_state->fp0 = intel_de_read(display, PCH_FP0(id));
+	hw_state->fp1 = intel_de_read(display, PCH_FP1(id));
 
 	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
@@ -561,23 +566,24 @@ static void ibx_assert_pch_refclk_enabled(struct drm_i915_private *i915)
 				 "PCH refclk assertion failure, should be active but is disabled\n");
 }
 
-static void ibx_pch_dpll_enable(struct drm_i915_private *i915,
+static void ibx_pch_dpll_enable(struct intel_display *display,
 				struct intel_shared_dpll *pll,
 				const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
 	const enum intel_dpll_id id = pll->info->id;
 
 	/* PCH refclock must be enabled first */
 	ibx_assert_pch_refclk_enabled(i915);
 
-	intel_de_write(i915, PCH_FP0(id), hw_state->fp0);
-	intel_de_write(i915, PCH_FP1(id), hw_state->fp1);
+	intel_de_write(display, PCH_FP0(id), hw_state->fp0);
+	intel_de_write(display, PCH_FP1(id), hw_state->fp1);
 
-	intel_de_write(i915, PCH_DPLL(id), hw_state->dpll);
+	intel_de_write(display, PCH_DPLL(id), hw_state->dpll);
 
 	/* Wait for the clocks to stabilize. */
-	intel_de_posting_read(i915, PCH_DPLL(id));
+	intel_de_posting_read(display, PCH_DPLL(id));
 	udelay(150);
 
 	/* The pixel multiplier can only be updated once the
@@ -585,18 +591,18 @@ static void ibx_pch_dpll_enable(struct drm_i915_private *i915,
 	 *
 	 * So write it again.
 	 */
-	intel_de_write(i915, PCH_DPLL(id), hw_state->dpll);
-	intel_de_posting_read(i915, PCH_DPLL(id));
+	intel_de_write(display, PCH_DPLL(id), hw_state->dpll);
+	intel_de_posting_read(display, PCH_DPLL(id));
 	udelay(200);
 }
 
-static void ibx_pch_dpll_disable(struct drm_i915_private *i915,
+static void ibx_pch_dpll_disable(struct intel_display *display,
 				 struct intel_shared_dpll *pll)
 {
 	const enum intel_dpll_id id = pll->info->id;
 
-	intel_de_write(i915, PCH_DPLL(id), 0);
-	intel_de_posting_read(i915, PCH_DPLL(id));
+	intel_de_write(display, PCH_DPLL(id), 0);
+	intel_de_posting_read(display, PCH_DPLL(id));
 	udelay(200);
 }
 
@@ -611,18 +617,19 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
 			struct intel_crtc *crtc,
 			struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(state);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll;
 	enum intel_dpll_id id;
 
 	if (HAS_PCH_IBX(i915)) {
 		/* Ironlake PCH has a fixed PLL->PCH pipe mapping. */
 		id = (enum intel_dpll_id) crtc->pipe;
-		pll = intel_get_shared_dpll_by_id(i915, id);
+		pll = intel_get_shared_dpll_by_id(display, id);
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] using pre-allocated %s\n",
 			    crtc->base.base.id, crtc->base.name,
 			    pll->info->name);
@@ -691,65 +698,66 @@ static const struct intel_dpll_mgr pch_pll_mgr = {
 	.compare_hw_state = ibx_compare_hw_state,
 };
 
-static void hsw_ddi_wrpll_enable(struct drm_i915_private *i915,
+static void hsw_ddi_wrpll_enable(struct intel_display *display,
 				 struct intel_shared_dpll *pll,
 				 const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	const enum intel_dpll_id id = pll->info->id;
 
-	intel_de_write(i915, WRPLL_CTL(id), hw_state->wrpll);
-	intel_de_posting_read(i915, WRPLL_CTL(id));
+	intel_de_write(display, WRPLL_CTL(id), hw_state->wrpll);
+	intel_de_posting_read(display, WRPLL_CTL(id));
 	udelay(20);
 }
 
-static void hsw_ddi_spll_enable(struct drm_i915_private *i915,
+static void hsw_ddi_spll_enable(struct intel_display *display,
 				struct intel_shared_dpll *pll,
 				const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 
-	intel_de_write(i915, SPLL_CTL, hw_state->spll);
-	intel_de_posting_read(i915, SPLL_CTL);
+	intel_de_write(display, SPLL_CTL, hw_state->spll);
+	intel_de_posting_read(display, SPLL_CTL);
 	udelay(20);
 }
 
-static void hsw_ddi_wrpll_disable(struct drm_i915_private *i915,
+static void hsw_ddi_wrpll_disable(struct intel_display *display,
 				  struct intel_shared_dpll *pll)
 {
 	const enum intel_dpll_id id = pll->info->id;
 
-	intel_de_rmw(i915, WRPLL_CTL(id), WRPLL_PLL_ENABLE, 0);
-	intel_de_posting_read(i915, WRPLL_CTL(id));
+	intel_de_rmw(display, WRPLL_CTL(id), WRPLL_PLL_ENABLE, 0);
+	intel_de_posting_read(display, WRPLL_CTL(id));
 
 	/*
 	 * Try to set up the PCH reference clock once all DPLLs
 	 * that depend on it have been shut down.
 	 */
-	if (i915->display.dpll.pch_ssc_use & BIT(id))
-		intel_init_pch_refclk(i915);
+	if (display->dpll.pch_ssc_use & BIT(id))
+		intel_init_pch_refclk(to_i915(display->drm));
 }
 
-static void hsw_ddi_spll_disable(struct drm_i915_private *i915,
+static void hsw_ddi_spll_disable(struct intel_display *display,
 				 struct intel_shared_dpll *pll)
 {
 	enum intel_dpll_id id = pll->info->id;
 
-	intel_de_rmw(i915, SPLL_CTL, SPLL_PLL_ENABLE, 0);
-	intel_de_posting_read(i915, SPLL_CTL);
+	intel_de_rmw(display, SPLL_CTL, SPLL_PLL_ENABLE, 0);
+	intel_de_posting_read(display, SPLL_CTL);
 
 	/*
 	 * Try to set up the PCH reference clock once all DPLLs
 	 * that depend on it have been shut down.
 	 */
-	if (i915->display.dpll.pch_ssc_use & BIT(id))
-		intel_init_pch_refclk(i915);
+	if (display->dpll.pch_ssc_use & BIT(id))
+		intel_init_pch_refclk(to_i915(display->drm));
 }
 
-static bool hsw_ddi_wrpll_get_hw_state(struct drm_i915_private *i915,
+static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
 				       struct intel_shared_dpll *pll,
 				       struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	const enum intel_dpll_id id = pll->info->id;
 	intel_wakeref_t wakeref;
@@ -760,7 +768,7 @@ static bool hsw_ddi_wrpll_get_hw_state(struct drm_i915_private *i915,
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(i915, WRPLL_CTL(id));
+	val = intel_de_read(display, WRPLL_CTL(id));
 	hw_state->wrpll = val;
 
 	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
@@ -768,10 +776,11 @@ static bool hsw_ddi_wrpll_get_hw_state(struct drm_i915_private *i915,
 	return val & WRPLL_PLL_ENABLE;
 }
 
-static bool hsw_ddi_spll_get_hw_state(struct drm_i915_private *i915,
+static bool hsw_ddi_spll_get_hw_state(struct intel_display *display,
 				      struct intel_shared_dpll *pll,
 				      struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	intel_wakeref_t wakeref;
 	u32 val;
@@ -781,7 +790,7 @@ static bool hsw_ddi_spll_get_hw_state(struct drm_i915_private *i915,
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(i915, SPLL_CTL);
+	val = intel_de_read(display, SPLL_CTL);
 	hw_state->spll = val;
 
 	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
@@ -995,7 +1004,7 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
 	*r2_out = best.r2;
 }
 
-static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *i915,
+static int hsw_ddi_wrpll_get_freq(struct intel_display *display,
 				  const struct intel_shared_dpll *pll,
 				  const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -1007,8 +1016,8 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 	switch (wrpll & WRPLL_REF_MASK) {
 	case WRPLL_REF_SPECIAL_HSW:
 		/* Muxed-SSC for BDW, non-SSC for non-ULT HSW. */
-		if (IS_HASWELL(i915) && !IS_HASWELL_ULT(i915)) {
-			refclk = i915->display.dpll.ref_clks.nssc;
+		if (display->platform.haswell && !display->platform.haswell_ult) {
+			refclk = display->dpll.ref_clks.nssc;
 			break;
 		}
 		fallthrough;
@@ -1018,7 +1027,7 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 		 * code only cares about 5% accuracy, and spread is a max of
 		 * 0.5% downspread.
 		 */
-		refclk = i915->display.dpll.ref_clks.ssc;
+		refclk = display->dpll.ref_clks.ssc;
 		break;
 	case WRPLL_REF_LCPLL:
 		refclk = 2700000;
@@ -1040,7 +1049,7 @@ static int
 hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct hsw_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.hsw;
@@ -1053,7 +1062,7 @@ hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
 		WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
 		WRPLL_DIVIDER_POST(p);
 
-	crtc_state->port_clock = hsw_ddi_wrpll_get_freq(i915, NULL,
+	crtc_state->port_clock = hsw_ddi_wrpll_get_freq(display, NULL,
 							&crtc_state->dpll_hw_state);
 
 	return 0;
@@ -1093,7 +1102,7 @@ hsw_ddi_lcpll_compute_dpll(struct intel_crtc_state *crtc_state)
 static struct intel_shared_dpll *
 hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_shared_dpll *pll;
 	enum intel_dpll_id pll_id;
 	int clock = crtc_state->port_clock;
@@ -1113,7 +1122,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 		return NULL;
 	}
 
-	pll = intel_get_shared_dpll_by_id(i915, pll_id);
+	pll = intel_get_shared_dpll_by_id(display, pll_id);
 
 	if (!pll)
 		return NULL;
@@ -1121,7 +1130,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 	return pll;
 }
 
-static int hsw_ddi_lcpll_get_freq(struct drm_i915_private *i915,
+static int hsw_ddi_lcpll_get_freq(struct intel_display *display,
 				  const struct intel_shared_dpll *pll,
 				  const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -1138,7 +1147,7 @@ static int hsw_ddi_lcpll_get_freq(struct drm_i915_private *i915,
 		link_clock = 270000;
 		break;
 	default:
-		drm_WARN(&i915->drm, 1, "bad port clock sel\n");
+		drm_WARN(display->drm, 1, "bad port clock sel\n");
 		break;
 	}
 
@@ -1173,7 +1182,7 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
 				      BIT(DPLL_ID_SPLL));
 }
 
-static int hsw_ddi_spll_get_freq(struct drm_i915_private *i915,
+static int hsw_ddi_spll_get_freq(struct intel_display *display,
 				 const struct intel_shared_dpll *pll,
 				 const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -1191,7 +1200,7 @@ static int hsw_ddi_spll_get_freq(struct drm_i915_private *i915,
 		link_clock = 270000;
 		break;
 	default:
-		drm_WARN(&i915->drm, 1, "bad spll freq\n");
+		drm_WARN(display->drm, 1, "bad spll freq\n");
 		break;
 	}
 
@@ -1284,18 +1293,18 @@ static const struct intel_shared_dpll_funcs hsw_ddi_spll_funcs = {
 	.get_freq = hsw_ddi_spll_get_freq,
 };
 
-static void hsw_ddi_lcpll_enable(struct drm_i915_private *i915,
+static void hsw_ddi_lcpll_enable(struct intel_display *display,
 				 struct intel_shared_dpll *pll,
 				 const struct intel_dpll_hw_state *hw_state)
 {
 }
 
-static void hsw_ddi_lcpll_disable(struct drm_i915_private *i915,
+static void hsw_ddi_lcpll_disable(struct intel_display *display,
 				  struct intel_shared_dpll *pll)
 {
 }
 
-static bool hsw_ddi_lcpll_get_hw_state(struct drm_i915_private *i915,
+static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
 				       struct intel_shared_dpll *pll,
 				       struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -1363,21 +1372,21 @@ static const struct skl_dpll_regs skl_dpll_regs[4] = {
 	},
 };
 
-static void skl_ddi_pll_write_ctrl1(struct drm_i915_private *i915,
+static void skl_ddi_pll_write_ctrl1(struct intel_display *display,
 				    struct intel_shared_dpll *pll,
 				    const struct skl_dpll_hw_state *hw_state)
 {
 	const enum intel_dpll_id id = pll->info->id;
 
-	intel_de_rmw(i915, DPLL_CTRL1,
+	intel_de_rmw(display, DPLL_CTRL1,
 		     DPLL_CTRL1_HDMI_MODE(id) |
 		     DPLL_CTRL1_SSC(id) |
 		     DPLL_CTRL1_LINK_RATE_MASK(id),
 		     hw_state->ctrl1 << (id * 6));
-	intel_de_posting_read(i915, DPLL_CTRL1);
+	intel_de_posting_read(display, DPLL_CTRL1);
 }
 
-static void skl_ddi_pll_enable(struct drm_i915_private *i915,
+static void skl_ddi_pll_enable(struct intel_display *display,
 			       struct intel_shared_dpll *pll,
 			       const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -1385,49 +1394,50 @@ static void skl_ddi_pll_enable(struct drm_i915_private *i915,
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
 
-	skl_ddi_pll_write_ctrl1(i915, pll, hw_state);
+	skl_ddi_pll_write_ctrl1(display, pll, hw_state);
 
-	intel_de_write(i915, regs[id].cfgcr1, hw_state->cfgcr1);
-	intel_de_write(i915, regs[id].cfgcr2, hw_state->cfgcr2);
-	intel_de_posting_read(i915, regs[id].cfgcr1);
-	intel_de_posting_read(i915, regs[id].cfgcr2);
+	intel_de_write(display, regs[id].cfgcr1, hw_state->cfgcr1);
+	intel_de_write(display, regs[id].cfgcr2, hw_state->cfgcr2);
+	intel_de_posting_read(display, regs[id].cfgcr1);
+	intel_de_posting_read(display, regs[id].cfgcr2);
 
 	/* the enable bit is always bit 31 */
-	intel_de_rmw(i915, regs[id].ctl, 0, LCPLL_PLL_ENABLE);
+	intel_de_rmw(display, regs[id].ctl, 0, LCPLL_PLL_ENABLE);
 
-	if (intel_de_wait_for_set(i915, DPLL_STATUS, DPLL_LOCK(id), 5))
-		drm_err(&i915->drm, "DPLL %d not locked\n", id);
+	if (intel_de_wait_for_set(display, DPLL_STATUS, DPLL_LOCK(id), 5))
+		drm_err(display->drm, "DPLL %d not locked\n", id);
 }
 
-static void skl_ddi_dpll0_enable(struct drm_i915_private *i915,
+static void skl_ddi_dpll0_enable(struct intel_display *display,
 				 struct intel_shared_dpll *pll,
 				 const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 
-	skl_ddi_pll_write_ctrl1(i915, pll, hw_state);
+	skl_ddi_pll_write_ctrl1(display, pll, hw_state);
 }
 
-static void skl_ddi_pll_disable(struct drm_i915_private *i915,
+static void skl_ddi_pll_disable(struct intel_display *display,
 				struct intel_shared_dpll *pll)
 {
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
 
 	/* the enable bit is always bit 31 */
-	intel_de_rmw(i915, regs[id].ctl, LCPLL_PLL_ENABLE, 0);
-	intel_de_posting_read(i915, regs[id].ctl);
+	intel_de_rmw(display, regs[id].ctl, LCPLL_PLL_ENABLE, 0);
+	intel_de_posting_read(display, regs[id].ctl);
 }
 
-static void skl_ddi_dpll0_disable(struct drm_i915_private *i915,
+static void skl_ddi_dpll0_disable(struct intel_display *display,
 				  struct intel_shared_dpll *pll)
 {
 }
 
-static bool skl_ddi_pll_get_hw_state(struct drm_i915_private *i915,
+static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
 				     struct intel_shared_dpll *pll,
 				     struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
@@ -1442,17 +1452,17 @@ static bool skl_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 
 	ret = false;
 
-	val = intel_de_read(i915, regs[id].ctl);
+	val = intel_de_read(display, regs[id].ctl);
 	if (!(val & LCPLL_PLL_ENABLE))
 		goto out;
 
-	val = intel_de_read(i915, DPLL_CTRL1);
+	val = intel_de_read(display, DPLL_CTRL1);
 	hw_state->ctrl1 = (val >> (id * 6)) & 0x3f;
 
 	/* avoid reading back stale values if HDMI mode is not enabled */
 	if (val & DPLL_CTRL1_HDMI_MODE(id)) {
-		hw_state->cfgcr1 = intel_de_read(i915, regs[id].cfgcr1);
-		hw_state->cfgcr2 = intel_de_read(i915, regs[id].cfgcr2);
+		hw_state->cfgcr1 = intel_de_read(display, regs[id].cfgcr1);
+		hw_state->cfgcr2 = intel_de_read(display, regs[id].cfgcr2);
 	}
 	ret = true;
 
@@ -1462,10 +1472,11 @@ static bool skl_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 	return ret;
 }
 
-static bool skl_ddi_dpll0_get_hw_state(struct drm_i915_private *i915,
+static bool skl_ddi_dpll0_get_hw_state(struct intel_display *display,
 				       struct intel_shared_dpll *pll,
 				       struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
@@ -1481,11 +1492,11 @@ static bool skl_ddi_dpll0_get_hw_state(struct drm_i915_private *i915,
 	ret = false;
 
 	/* DPLL0 is always enabled since it drives CDCLK */
-	val = intel_de_read(i915, regs[id].ctl);
+	val = intel_de_read(display, regs[id].ctl);
 	if (drm_WARN_ON(&i915->drm, !(val & LCPLL_PLL_ENABLE)))
 		goto out;
 
-	val = intel_de_read(i915, DPLL_CTRL1);
+	val = intel_de_read(display, DPLL_CTRL1);
 	hw_state->ctrl1 = (val >> (id * 6)) & 0x3f;
 
 	ret = true;
@@ -1735,12 +1746,12 @@ skl_ddi_calculate_wrpll(int clock,
 	return 0;
 }
 
-static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
+static int skl_ddi_wrpll_get_freq(struct intel_display *display,
 				  const struct intel_shared_dpll *pll,
 				  const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
-	int ref_clock = i915->display.dpll.ref_clks.nssc;
+	int ref_clock = display->dpll.ref_clks.nssc;
 	u32 p0, p1, p2, dco_freq;
 
 	p0 = hw_state->cfgcr2 & DPLL_CFGCR2_PDIV_MASK;
@@ -1767,7 +1778,7 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 		 * Incorrect ASUS-Z170M BIOS setting, the HW seems to ignore bit#0,
 		 * handling it the same way as PDIV_7.
 		 */
-		drm_dbg_kms(&i915->drm, "Invalid WRPLL PDIV divider value, fixing it.\n");
+		drm_dbg_kms(display->drm, "Invalid WRPLL PDIV divider value, fixing it.\n");
 		fallthrough;
 	case DPLL_CFGCR2_PDIV_7:
 		p0 = 7;
@@ -1801,7 +1812,7 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 	dco_freq += ((hw_state->cfgcr1 & DPLL_CFGCR1_DCO_FRACTION_MASK) >> 9) *
 		    ref_clock / 0x8000;
 
-	if (drm_WARN_ON(&i915->drm, p0 == 0 || p1 == 0 || p2 == 0))
+	if (drm_WARN_ON(display->drm, p0 == 0 || p1 == 0 || p2 == 0))
 		return 0;
 
 	return dco_freq / (p0 * p1 * p2 * 5);
@@ -1809,13 +1820,13 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 
 static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct skl_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.skl;
 	struct skl_wrpll_params wrpll_params = {};
 	int ret;
 
 	ret = skl_ddi_calculate_wrpll(crtc_state->port_clock,
-				      i915->display.dpll.ref_clks.nssc, &wrpll_params);
+				      display->dpll.ref_clks.nssc, &wrpll_params);
 	if (ret)
 		return ret;
 
@@ -1839,7 +1850,7 @@ static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 		DPLL_CFGCR2_PDIV(wrpll_params.pdiv) |
 		wrpll_params.central_freq;
 
-	crtc_state->port_clock = skl_ddi_wrpll_get_freq(i915, NULL,
+	crtc_state->port_clock = skl_ddi_wrpll_get_freq(display, NULL,
 							&crtc_state->dpll_hw_state);
 
 	return 0;
@@ -1883,7 +1894,7 @@ skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int skl_ddi_lcpll_get_freq(struct drm_i915_private *i915,
+static int skl_ddi_lcpll_get_freq(struct intel_display *display,
 				  const struct intel_shared_dpll *pll,
 				  const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -1911,7 +1922,7 @@ static int skl_ddi_lcpll_get_freq(struct drm_i915_private *i915,
 		link_clock = 270000;
 		break;
 	default:
-		drm_WARN(&i915->drm, 1, "Unsupported link rate\n");
+		drm_WARN(display->drm, 1, "Unsupported link rate\n");
 		break;
 	}
 
@@ -1962,7 +1973,7 @@ static int skl_get_dpll(struct intel_atomic_state *state,
 	return 0;
 }
 
-static int skl_ddi_pll_get_freq(struct drm_i915_private *i915,
+static int skl_ddi_pll_get_freq(struct intel_display *display,
 				const struct intel_shared_dpll *pll,
 				const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -1973,9 +1984,9 @@ static int skl_ddi_pll_get_freq(struct drm_i915_private *i915,
 	 * the internal shift for each field
 	 */
 	if (hw_state->ctrl1 & DPLL_CTRL1_HDMI_MODE(0))
-		return skl_ddi_wrpll_get_freq(i915, pll, dpll_hw_state);
+		return skl_ddi_wrpll_get_freq(display, pll, dpll_hw_state);
 	else
-		return skl_ddi_lcpll_get_freq(i915, pll, dpll_hw_state);
+		return skl_ddi_lcpll_get_freq(display, pll, dpll_hw_state);
 }
 
 static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
@@ -2037,11 +2048,10 @@ static const struct intel_dpll_mgr skl_pll_mgr = {
 	.compare_hw_state = skl_compare_hw_state,
 };
 
-static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
+static void bxt_ddi_pll_enable(struct intel_display *display,
 			       struct intel_shared_dpll *pll,
 			       const struct intel_dpll_hw_state *dpll_hw_state)
 {
-	struct intel_display *display = &i915->display;
 	const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 	enum dpio_phy phy;
@@ -2051,120 +2061,120 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
 	bxt_port_to_phy_channel(display, port, &phy, &ch);
 
 	/* Non-SSC reference */
-	intel_de_rmw(i915, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_REF_SEL);
+	intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_REF_SEL);
 
-	if (IS_GEMINILAKE(i915)) {
-		intel_de_rmw(i915, BXT_PORT_PLL_ENABLE(port),
+	if (display->platform.geminilake) {
+		intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port),
 			     0, PORT_PLL_POWER_ENABLE);
 
-		if (wait_for_us((intel_de_read(i915, BXT_PORT_PLL_ENABLE(port)) &
+		if (wait_for_us((intel_de_read(display, BXT_PORT_PLL_ENABLE(port)) &
 				 PORT_PLL_POWER_STATE), 200))
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"Power state not set for PLL:%d\n", port);
 	}
 
 	/* Disable 10 bit clock */
-	intel_de_rmw(i915, BXT_PORT_PLL_EBB_4(phy, ch),
+	intel_de_rmw(display, BXT_PORT_PLL_EBB_4(phy, ch),
 		     PORT_PLL_10BIT_CLK_ENABLE, 0);
 
 	/* Write P1 & P2 */
-	intel_de_rmw(i915, BXT_PORT_PLL_EBB_0(phy, ch),
+	intel_de_rmw(display, BXT_PORT_PLL_EBB_0(phy, ch),
 		     PORT_PLL_P1_MASK | PORT_PLL_P2_MASK, hw_state->ebb0);
 
 	/* Write M2 integer */
-	intel_de_rmw(i915, BXT_PORT_PLL(phy, ch, 0),
+	intel_de_rmw(display, BXT_PORT_PLL(phy, ch, 0),
 		     PORT_PLL_M2_INT_MASK, hw_state->pll0);
 
 	/* Write N */
-	intel_de_rmw(i915, BXT_PORT_PLL(phy, ch, 1),
+	intel_de_rmw(display, BXT_PORT_PLL(phy, ch, 1),
 		     PORT_PLL_N_MASK, hw_state->pll1);
 
 	/* Write M2 fraction */
-	intel_de_rmw(i915, BXT_PORT_PLL(phy, ch, 2),
+	intel_de_rmw(display, BXT_PORT_PLL(phy, ch, 2),
 		     PORT_PLL_M2_FRAC_MASK, hw_state->pll2);
 
 	/* Write M2 fraction enable */
-	intel_de_rmw(i915, BXT_PORT_PLL(phy, ch, 3),
+	intel_de_rmw(display, BXT_PORT_PLL(phy, ch, 3),
 		     PORT_PLL_M2_FRAC_ENABLE, hw_state->pll3);
 
 	/* Write coeff */
-	temp = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 6));
+	temp = intel_de_read(display, BXT_PORT_PLL(phy, ch, 6));
 	temp &= ~PORT_PLL_PROP_COEFF_MASK;
 	temp &= ~PORT_PLL_INT_COEFF_MASK;
 	temp &= ~PORT_PLL_GAIN_CTL_MASK;
 	temp |= hw_state->pll6;
-	intel_de_write(i915, BXT_PORT_PLL(phy, ch, 6), temp);
+	intel_de_write(display, BXT_PORT_PLL(phy, ch, 6), temp);
 
 	/* Write calibration val */
-	intel_de_rmw(i915, BXT_PORT_PLL(phy, ch, 8),
+	intel_de_rmw(display, BXT_PORT_PLL(phy, ch, 8),
 		     PORT_PLL_TARGET_CNT_MASK, hw_state->pll8);
 
-	intel_de_rmw(i915, BXT_PORT_PLL(phy, ch, 9),
+	intel_de_rmw(display, BXT_PORT_PLL(phy, ch, 9),
 		     PORT_PLL_LOCK_THRESHOLD_MASK, hw_state->pll9);
 
-	temp = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 10));
+	temp = intel_de_read(display, BXT_PORT_PLL(phy, ch, 10));
 	temp &= ~PORT_PLL_DCO_AMP_OVR_EN_H;
 	temp &= ~PORT_PLL_DCO_AMP_MASK;
 	temp |= hw_state->pll10;
-	intel_de_write(i915, BXT_PORT_PLL(phy, ch, 10), temp);
+	intel_de_write(display, BXT_PORT_PLL(phy, ch, 10), temp);
 
 	/* Recalibrate with new settings */
-	temp = intel_de_read(i915, BXT_PORT_PLL_EBB_4(phy, ch));
+	temp = intel_de_read(display, BXT_PORT_PLL_EBB_4(phy, ch));
 	temp |= PORT_PLL_RECALIBRATE;
-	intel_de_write(i915, BXT_PORT_PLL_EBB_4(phy, ch), temp);
+	intel_de_write(display, BXT_PORT_PLL_EBB_4(phy, ch), temp);
 	temp &= ~PORT_PLL_10BIT_CLK_ENABLE;
 	temp |= hw_state->ebb4;
-	intel_de_write(i915, BXT_PORT_PLL_EBB_4(phy, ch), temp);
+	intel_de_write(display, BXT_PORT_PLL_EBB_4(phy, ch), temp);
 
 	/* Enable PLL */
-	intel_de_rmw(i915, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_ENABLE);
-	intel_de_posting_read(i915, BXT_PORT_PLL_ENABLE(port));
+	intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_ENABLE);
+	intel_de_posting_read(display, BXT_PORT_PLL_ENABLE(port));
 
-	if (wait_for_us((intel_de_read(i915, BXT_PORT_PLL_ENABLE(port)) & PORT_PLL_LOCK),
+	if (wait_for_us((intel_de_read(display, BXT_PORT_PLL_ENABLE(port)) & PORT_PLL_LOCK),
 			200))
-		drm_err(&i915->drm, "PLL %d not locked\n", port);
+		drm_err(display->drm, "PLL %d not locked\n", port);
 
-	if (IS_GEMINILAKE(i915)) {
-		temp = intel_de_read(i915, BXT_PORT_TX_DW5_LN(phy, ch, 0));
+	if (display->platform.geminilake) {
+		temp = intel_de_read(display, BXT_PORT_TX_DW5_LN(phy, ch, 0));
 		temp |= DCC_DELAY_RANGE_2;
-		intel_de_write(i915, BXT_PORT_TX_DW5_GRP(phy, ch), temp);
+		intel_de_write(display, BXT_PORT_TX_DW5_GRP(phy, ch), temp);
 	}
 
 	/*
 	 * While we write to the group register to program all lanes at once we
 	 * can read only lane registers and we pick lanes 0/1 for that.
 	 */
-	temp = intel_de_read(i915, BXT_PORT_PCS_DW12_LN01(phy, ch));
+	temp = intel_de_read(display, BXT_PORT_PCS_DW12_LN01(phy, ch));
 	temp &= ~LANE_STAGGER_MASK;
 	temp &= ~LANESTAGGER_STRAP_OVRD;
 	temp |= hw_state->pcsdw12;
-	intel_de_write(i915, BXT_PORT_PCS_DW12_GRP(phy, ch), temp);
+	intel_de_write(display, BXT_PORT_PCS_DW12_GRP(phy, ch), temp);
 }
 
-static void bxt_ddi_pll_disable(struct drm_i915_private *i915,
+static void bxt_ddi_pll_disable(struct intel_display *display,
 				struct intel_shared_dpll *pll)
 {
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 
-	intel_de_rmw(i915, BXT_PORT_PLL_ENABLE(port), PORT_PLL_ENABLE, 0);
-	intel_de_posting_read(i915, BXT_PORT_PLL_ENABLE(port));
+	intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port), PORT_PLL_ENABLE, 0);
+	intel_de_posting_read(display, BXT_PORT_PLL_ENABLE(port));
 
-	if (IS_GEMINILAKE(i915)) {
-		intel_de_rmw(i915, BXT_PORT_PLL_ENABLE(port),
+	if (display->platform.geminilake) {
+		intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port),
 			     PORT_PLL_POWER_ENABLE, 0);
 
-		if (wait_for_us(!(intel_de_read(i915, BXT_PORT_PLL_ENABLE(port)) &
+		if (wait_for_us(!(intel_de_read(display, BXT_PORT_PLL_ENABLE(port)) &
 				  PORT_PLL_POWER_STATE), 200))
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"Power state not reset for PLL:%d\n", port);
 	}
 }
 
-static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *i915,
+static bool bxt_ddi_pll_get_hw_state(struct intel_display *display,
 				     struct intel_shared_dpll *pll,
 				     struct intel_dpll_hw_state *dpll_hw_state)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 	intel_wakeref_t wakeref;
@@ -2182,40 +2192,40 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 
 	ret = false;
 
-	val = intel_de_read(i915, BXT_PORT_PLL_ENABLE(port));
+	val = intel_de_read(display, BXT_PORT_PLL_ENABLE(port));
 	if (!(val & PORT_PLL_ENABLE))
 		goto out;
 
-	hw_state->ebb0 = intel_de_read(i915, BXT_PORT_PLL_EBB_0(phy, ch));
+	hw_state->ebb0 = intel_de_read(display, BXT_PORT_PLL_EBB_0(phy, ch));
 	hw_state->ebb0 &= PORT_PLL_P1_MASK | PORT_PLL_P2_MASK;
 
-	hw_state->ebb4 = intel_de_read(i915, BXT_PORT_PLL_EBB_4(phy, ch));
+	hw_state->ebb4 = intel_de_read(display, BXT_PORT_PLL_EBB_4(phy, ch));
 	hw_state->ebb4 &= PORT_PLL_10BIT_CLK_ENABLE;
 
-	hw_state->pll0 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 0));
+	hw_state->pll0 = intel_de_read(display, BXT_PORT_PLL(phy, ch, 0));
 	hw_state->pll0 &= PORT_PLL_M2_INT_MASK;
 
-	hw_state->pll1 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 1));
+	hw_state->pll1 = intel_de_read(display, BXT_PORT_PLL(phy, ch, 1));
 	hw_state->pll1 &= PORT_PLL_N_MASK;
 
-	hw_state->pll2 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 2));
+	hw_state->pll2 = intel_de_read(display, BXT_PORT_PLL(phy, ch, 2));
 	hw_state->pll2 &= PORT_PLL_M2_FRAC_MASK;
 
-	hw_state->pll3 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 3));
+	hw_state->pll3 = intel_de_read(display, BXT_PORT_PLL(phy, ch, 3));
 	hw_state->pll3 &= PORT_PLL_M2_FRAC_ENABLE;
 
-	hw_state->pll6 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 6));
+	hw_state->pll6 = intel_de_read(display, BXT_PORT_PLL(phy, ch, 6));
 	hw_state->pll6 &= PORT_PLL_PROP_COEFF_MASK |
 			  PORT_PLL_INT_COEFF_MASK |
 			  PORT_PLL_GAIN_CTL_MASK;
 
-	hw_state->pll8 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 8));
+	hw_state->pll8 = intel_de_read(display, BXT_PORT_PLL(phy, ch, 8));
 	hw_state->pll8 &= PORT_PLL_TARGET_CNT_MASK;
 
-	hw_state->pll9 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 9));
+	hw_state->pll9 = intel_de_read(display, BXT_PORT_PLL(phy, ch, 9));
 	hw_state->pll9 &= PORT_PLL_LOCK_THRESHOLD_MASK;
 
-	hw_state->pll10 = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 10));
+	hw_state->pll10 = intel_de_read(display, BXT_PORT_PLL(phy, ch, 10));
 	hw_state->pll10 &= PORT_PLL_DCO_AMP_OVR_EN_H |
 			   PORT_PLL_DCO_AMP_MASK;
 
@@ -2224,13 +2234,13 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 	 * can read only lane registers. We configure all lanes the same way, so
 	 * here just read out lanes 0/1 and output a note if lanes 2/3 differ.
 	 */
-	hw_state->pcsdw12 = intel_de_read(i915,
+	hw_state->pcsdw12 = intel_de_read(display,
 					  BXT_PORT_PCS_DW12_LN01(phy, ch));
-	if (intel_de_read(i915, BXT_PORT_PCS_DW12_LN23(phy, ch)) != hw_state->pcsdw12)
-		drm_dbg(&i915->drm,
+	if (intel_de_read(display, BXT_PORT_PCS_DW12_LN23(phy, ch)) != hw_state->pcsdw12)
+		drm_dbg(display->drm,
 			"lane stagger config different for lane 01 (%08x) and 23 (%08x)\n",
 			hw_state->pcsdw12,
-			intel_de_read(i915,
+			intel_de_read(display,
 				      BXT_PORT_PCS_DW12_LN23(phy, ch)));
 	hw_state->pcsdw12 &= LANE_STAGGER_MASK | LANESTAGGER_STRAP_OVRD;
 
@@ -2361,7 +2371,7 @@ static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
+static int bxt_ddi_pll_get_freq(struct intel_display *display,
 				const struct intel_shared_dpll *pll,
 				const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -2377,7 +2387,7 @@ static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
 	clock.p1 = REG_FIELD_GET(PORT_PLL_P1_MASK, hw_state->ebb0);
 	clock.p2 = REG_FIELD_GET(PORT_PLL_P2_MASK, hw_state->ebb0);
 
-	return chv_calc_dpll_params(i915->display.dpll.ref_clks.nssc, &clock);
+	return chv_calc_dpll_params(display->dpll.ref_clks.nssc, &clock);
 }
 
 static int
@@ -2393,7 +2403,7 @@ bxt_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 static int
 bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct dpll clk_div = {};
 	int ret;
 
@@ -2403,7 +2413,7 @@ bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 	if (ret)
 		return ret;
 
-	crtc_state->port_clock = bxt_ddi_pll_get_freq(i915, NULL,
+	crtc_state->port_clock = bxt_ddi_pll_get_freq(display, NULL,
 						      &crtc_state->dpll_hw_state);
 
 	return 0;
@@ -2428,17 +2438,17 @@ static int bxt_get_dpll(struct intel_atomic_state *state,
 			struct intel_crtc *crtc,
 			struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll;
 	enum intel_dpll_id id;
 
 	/* 1:1 mapping between ports and PLLs */
 	id = (enum intel_dpll_id) encoder->port;
-	pll = intel_get_shared_dpll_by_id(i915, id);
+	pll = intel_get_shared_dpll_by_id(display, id);
 
-	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] using pre-allocated %s\n",
+	drm_dbg_kms(display->drm, "[CRTC:%d:%s] using pre-allocated %s\n",
 		    crtc->base.base.id, crtc->base.name, pll->info->name);
 
 	intel_reference_shared_dpll(state, crtc,
@@ -2604,12 +2614,14 @@ static void icl_wrpll_params_populate(struct skl_wrpll_params *params,
  * Program half of the nominal DCO divider fraction value.
  */
 static bool
-ehl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
+ehl_combo_pll_div_frac_wa_needed(struct intel_display *display)
 {
-	return ((IS_ELKHARTLAKE(i915) &&
-		 IS_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
-		 IS_TIGERLAKE(i915) || IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) &&
-		 i915->display.dpll.ref_clks.nssc == 38400;
+	return ((display->platform.elkhartlake &&
+		 IS_DISPLAY_STEP(display, STEP_B0, STEP_FOREVER)) ||
+		 display->platform.tigerlake ||
+		 display->platform.alderlake_s ||
+		 display->platform.alderlake_p) &&
+		 display->dpll.ref_clks.nssc == 38400;
 }
 
 struct icl_combo_pll_params {
@@ -2756,7 +2768,7 @@ static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static int icl_ddi_tbt_pll_get_freq(struct drm_i915_private *i915,
+static int icl_ddi_tbt_pll_get_freq(struct intel_display *display,
 				    const struct intel_shared_dpll *pll,
 				    const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -2764,14 +2776,14 @@ static int icl_ddi_tbt_pll_get_freq(struct drm_i915_private *i915,
 	 * The PLL outputs multiple frequencies at the same time, selection is
 	 * made at DDI clock mux level.
 	 */
-	drm_WARN_ON(&i915->drm, 1);
+	drm_WARN_ON(display->drm, 1);
 
 	return 0;
 }
 
-static int icl_wrpll_ref_clock(struct drm_i915_private *i915)
+static int icl_wrpll_ref_clock(struct intel_display *display)
 {
-	int ref_clock = i915->display.dpll.ref_clks.nssc;
+	int ref_clock = display->dpll.ref_clks.nssc;
 
 	/*
 	 * For ICL+, the spec states: if reference frequency is 38.4,
@@ -2787,8 +2799,8 @@ static int
 icl_calc_wrpll(struct intel_crtc_state *crtc_state,
 	       struct skl_wrpll_params *wrpll_params)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	int ref_clock = icl_wrpll_ref_clock(i915);
+	struct intel_display *display = to_intel_display(crtc_state);
+	int ref_clock = icl_wrpll_ref_clock(display);
 	u32 afe_clock = crtc_state->port_clock * 5;
 	u32 dco_min = 7998000;
 	u32 dco_max = 10000000;
@@ -2827,12 +2839,12 @@ icl_calc_wrpll(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
+static int icl_ddi_combo_pll_get_freq(struct intel_display *display,
 				      const struct intel_shared_dpll *pll,
 				      const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
-	int ref_clock = icl_wrpll_ref_clock(i915);
+	int ref_clock = icl_wrpll_ref_clock(display);
 	u32 dco_fraction;
 	u32 p0, p1, p2, dco_freq;
 
@@ -2878,25 +2890,25 @@ static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
 	dco_fraction = (hw_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
 		       DPLL_CFGCR0_DCO_FRACTION_SHIFT;
 
-	if (ehl_combo_pll_div_frac_wa_needed(i915))
+	if (ehl_combo_pll_div_frac_wa_needed(display))
 		dco_fraction *= 2;
 
 	dco_freq += (dco_fraction * ref_clock) / 0x8000;
 
-	if (drm_WARN_ON(&i915->drm, p0 == 0 || p1 == 0 || p2 == 0))
+	if (drm_WARN_ON(display->drm, p0 == 0 || p1 == 0 || p2 == 0))
 		return 0;
 
 	return dco_freq / (p0 * p1 * p2 * 5);
 }
 
-static void icl_calc_dpll_state(struct drm_i915_private *i915,
+static void icl_calc_dpll_state(struct intel_display *display,
 				const struct skl_wrpll_params *pll_params,
 				struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	u32 dco_fraction = pll_params->dco_fraction;
 
-	if (ehl_combo_pll_div_frac_wa_needed(i915))
+	if (ehl_combo_pll_div_frac_wa_needed(display))
 		dco_fraction = DIV_ROUND_CLOSEST(dco_fraction, 2);
 
 	hw_state->cfgcr0 = DPLL_CFGCR0_DCO_FRACTION(dco_fraction) |
@@ -2907,13 +2919,13 @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
 			    DPLL_CFGCR1_KDIV(pll_params->kdiv) |
 			    DPLL_CFGCR1_PDIV(pll_params->pdiv);
 
-	if (DISPLAY_VER(i915) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		hw_state->cfgcr1 |= TGL_DPLL_CFGCR1_CFSELOVRD_NORMAL_XTAL;
 	else
 		hw_state->cfgcr1 |= DPLL_CFGCR1_CENTRAL_FREQ_8400;
 
-	if (i915->display.vbt.override_afc_startup)
-		hw_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(i915->display.vbt.override_afc_startup_val);
+	if (display->vbt.override_afc_startup)
+		hw_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(display->vbt.override_afc_startup_val);
 }
 
 static int icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
@@ -3200,7 +3212,7 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *i915,
+static int icl_ddi_mg_pll_get_freq(struct intel_display *display,
 				   const struct intel_shared_dpll *pll,
 				   const struct intel_dpll_hw_state *dpll_hw_state)
 {
@@ -3208,9 +3220,9 @@ static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *i915,
 	u32 m1, m2_int, m2_frac, div1, div2, ref_clock;
 	u64 tmp;
 
-	ref_clock = i915->display.dpll.ref_clks.nssc;
+	ref_clock = display->dpll.ref_clks.nssc;
 
-	if (DISPLAY_VER(i915) >= 12) {
+	if (DISPLAY_VER(display) >= 12) {
 		m1 = hw_state->mg_pll_div0 & DKL_PLL_DIV0_FBPREDIV_MASK;
 		m1 = m1 >> DKL_PLL_DIV0_FBPREDIV_SHIFT;
 		m2_int = hw_state->mg_pll_div0 & DKL_PLL_DIV0_FBDIV_INT_MASK;
@@ -3315,7 +3327,7 @@ static void icl_update_active_dpll(struct intel_atomic_state *state,
 static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
 				      struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct icl_port_dpll *port_dpll =
@@ -3332,12 +3344,12 @@ static int icl_compute_combo_phy_dpll(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	icl_calc_dpll_state(i915, &pll_params, &port_dpll->hw_state);
+	icl_calc_dpll_state(display, &pll_params, &port_dpll->hw_state);
 
 	/* this is mainly for the fastset check */
 	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
 
-	crtc_state->port_clock = icl_ddi_combo_pll_get_freq(i915, NULL,
+	crtc_state->port_clock = icl_ddi_combo_pll_get_freq(display, NULL,
 							    &port_dpll->hw_state);
 
 	return 0;
@@ -3407,7 +3419,7 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_crtc_state *old_crtc_state =
@@ -3422,7 +3434,7 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	icl_calc_dpll_state(i915, &pll_params, &port_dpll->hw_state);
+	icl_calc_dpll_state(display, &pll_params, &port_dpll->hw_state);
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
 	ret = icl_calc_mg_pll_state(crtc_state, &port_dpll->hw_state);
@@ -3436,7 +3448,7 @@ static int icl_compute_tc_phy_dplls(struct intel_atomic_state *state,
 	else
 		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
 
-	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(i915, NULL,
+	crtc_state->port_clock = icl_ddi_mg_pll_get_freq(display, NULL,
 							 &port_dpll->hw_state);
 
 	return 0;
@@ -3540,10 +3552,11 @@ static void icl_put_dplls(struct intel_atomic_state *state,
 	}
 }
 
-static bool mg_pll_get_hw_state(struct drm_i915_private *i915,
+static bool mg_pll_get_hw_state(struct intel_display *display,
 				struct intel_shared_dpll *pll,
 				struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
 	enum tc_port tc_port = icl_pll_id_to_tc_port(id);
@@ -3551,18 +3564,18 @@ static bool mg_pll_get_hw_state(struct drm_i915_private *i915,
 	bool ret = false;
 	u32 val;
 
-	i915_reg_t enable_reg = intel_tc_pll_enable_reg(i915, pll);
+	i915_reg_t enable_reg = intel_tc_pll_enable_reg(display, pll);
 
 	wakeref = intel_display_power_get_if_enabled(i915,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(i915, enable_reg);
+	val = intel_de_read(display, enable_reg);
 	if (!(val & PLL_ENABLE))
 		goto out;
 
-	hw_state->mg_refclkin_ctl = intel_de_read(i915,
+	hw_state->mg_refclkin_ctl = intel_de_read(display,
 						  MG_REFCLKIN_CTL(tc_port));
 	hw_state->mg_refclkin_ctl &= MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 
@@ -3572,23 +3585,23 @@ static bool mg_pll_get_hw_state(struct drm_i915_private *i915,
 		MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 
 	hw_state->mg_clktop2_hsclkctl =
-		intel_de_read(i915, MG_CLKTOP2_HSCLKCTL(tc_port));
+		intel_de_read(display, MG_CLKTOP2_HSCLKCTL(tc_port));
 	hw_state->mg_clktop2_hsclkctl &=
 		MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
 		MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
 		MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK;
 
-	hw_state->mg_pll_div0 = intel_de_read(i915, MG_PLL_DIV0(tc_port));
-	hw_state->mg_pll_div1 = intel_de_read(i915, MG_PLL_DIV1(tc_port));
-	hw_state->mg_pll_lf = intel_de_read(i915, MG_PLL_LF(tc_port));
-	hw_state->mg_pll_frac_lock = intel_de_read(i915,
+	hw_state->mg_pll_div0 = intel_de_read(display, MG_PLL_DIV0(tc_port));
+	hw_state->mg_pll_div1 = intel_de_read(display, MG_PLL_DIV1(tc_port));
+	hw_state->mg_pll_lf = intel_de_read(display, MG_PLL_LF(tc_port));
+	hw_state->mg_pll_frac_lock = intel_de_read(display,
 						   MG_PLL_FRAC_LOCK(tc_port));
-	hw_state->mg_pll_ssc = intel_de_read(i915, MG_PLL_SSC(tc_port));
+	hw_state->mg_pll_ssc = intel_de_read(display, MG_PLL_SSC(tc_port));
 
-	hw_state->mg_pll_bias = intel_de_read(i915, MG_PLL_BIAS(tc_port));
+	hw_state->mg_pll_bias = intel_de_read(display, MG_PLL_BIAS(tc_port));
 	hw_state->mg_pll_tdc_coldst_bias =
-		intel_de_read(i915, MG_PLL_TDC_COLDST_BIAS(tc_port));
+		intel_de_read(display, MG_PLL_TDC_COLDST_BIAS(tc_port));
 
 	if (i915->display.dpll.ref_clks.nssc == 38400) {
 		hw_state->mg_pll_tdc_coldst_bias_mask = MG_PLL_TDC_COLDST_COLDSTART;
@@ -3607,10 +3620,11 @@ static bool mg_pll_get_hw_state(struct drm_i915_private *i915,
 	return ret;
 }
 
-static bool dkl_pll_get_hw_state(struct drm_i915_private *i915,
+static bool dkl_pll_get_hw_state(struct intel_display *display,
 				 struct intel_shared_dpll *pll,
 				 struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
 	enum tc_port tc_port = icl_pll_id_to_tc_port(id);
@@ -3623,7 +3637,7 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *i915,
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(i915, intel_tc_pll_enable_reg(i915, pll));
+	val = intel_de_read(display, intel_tc_pll_enable_reg(display, pll));
 	if (!(val & PLL_ENABLE))
 		goto out;
 
@@ -3631,12 +3645,12 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *i915,
 	 * All registers read here have the same HIP_INDEX_REG even though
 	 * they are on different building blocks
 	 */
-	hw_state->mg_refclkin_ctl = intel_dkl_phy_read(i915,
+	hw_state->mg_refclkin_ctl = intel_dkl_phy_read(display,
 						       DKL_REFCLKIN_CTL(tc_port));
 	hw_state->mg_refclkin_ctl &= MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 
 	hw_state->mg_clktop2_hsclkctl =
-		intel_dkl_phy_read(i915, DKL_CLKTOP2_HSCLKCTL(tc_port));
+		intel_dkl_phy_read(display, DKL_CLKTOP2_HSCLKCTL(tc_port));
 	hw_state->mg_clktop2_hsclkctl &=
 		MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
@@ -3644,32 +3658,32 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *i915,
 		MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK;
 
 	hw_state->mg_clktop2_coreclkctl1 =
-		intel_dkl_phy_read(i915, DKL_CLKTOP2_CORECLKCTL1(tc_port));
+		intel_dkl_phy_read(display, DKL_CLKTOP2_CORECLKCTL1(tc_port));
 	hw_state->mg_clktop2_coreclkctl1 &=
 		MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 
-	hw_state->mg_pll_div0 = intel_dkl_phy_read(i915, DKL_PLL_DIV0(tc_port));
+	hw_state->mg_pll_div0 = intel_dkl_phy_read(display, DKL_PLL_DIV0(tc_port));
 	val = DKL_PLL_DIV0_MASK;
-	if (i915->display.vbt.override_afc_startup)
+	if (display->vbt.override_afc_startup)
 		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
 	hw_state->mg_pll_div0 &= val;
 
-	hw_state->mg_pll_div1 = intel_dkl_phy_read(i915, DKL_PLL_DIV1(tc_port));
+	hw_state->mg_pll_div1 = intel_dkl_phy_read(display, DKL_PLL_DIV1(tc_port));
 	hw_state->mg_pll_div1 &= (DKL_PLL_DIV1_IREF_TRIM_MASK |
 				  DKL_PLL_DIV1_TDC_TARGET_CNT_MASK);
 
-	hw_state->mg_pll_ssc = intel_dkl_phy_read(i915, DKL_PLL_SSC(tc_port));
+	hw_state->mg_pll_ssc = intel_dkl_phy_read(display, DKL_PLL_SSC(tc_port));
 	hw_state->mg_pll_ssc &= (DKL_PLL_SSC_IREF_NDIV_RATIO_MASK |
 				 DKL_PLL_SSC_STEP_LEN_MASK |
 				 DKL_PLL_SSC_STEP_NUM_MASK |
 				 DKL_PLL_SSC_EN);
 
-	hw_state->mg_pll_bias = intel_dkl_phy_read(i915, DKL_PLL_BIAS(tc_port));
+	hw_state->mg_pll_bias = intel_dkl_phy_read(display, DKL_PLL_BIAS(tc_port));
 	hw_state->mg_pll_bias &= (DKL_PLL_BIAS_FRAC_EN_H |
 				  DKL_PLL_BIAS_FBDIV_FRAC_MASK);
 
 	hw_state->mg_pll_tdc_coldst_bias =
-		intel_dkl_phy_read(i915, DKL_PLL_TDC_COLDST_BIAS(tc_port));
+		intel_dkl_phy_read(display, DKL_PLL_TDC_COLDST_BIAS(tc_port));
 	hw_state->mg_pll_tdc_coldst_bias &= (DKL_PLL_TDC_SSC_STEP_SIZE_MASK |
 					     DKL_PLL_TDC_FEED_FWD_GAIN_MASK);
 
@@ -3679,11 +3693,12 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *i915,
 	return ret;
 }
 
-static bool icl_pll_get_hw_state(struct drm_i915_private *i915,
+static bool icl_pll_get_hw_state(struct intel_display *display,
 				 struct intel_shared_dpll *pll,
 				 struct intel_dpll_hw_state *dpll_hw_state,
 				 i915_reg_t enable_reg)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
 	intel_wakeref_t wakeref;
@@ -3695,41 +3710,41 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *i915,
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(i915, enable_reg);
+	val = intel_de_read(display, enable_reg);
 	if (!(val & PLL_ENABLE))
 		goto out;
 
-	if (IS_ALDERLAKE_S(i915)) {
-		hw_state->cfgcr0 = intel_de_read(i915, ADLS_DPLL_CFGCR0(id));
-		hw_state->cfgcr1 = intel_de_read(i915, ADLS_DPLL_CFGCR1(id));
-	} else if (IS_DG1(i915)) {
-		hw_state->cfgcr0 = intel_de_read(i915, DG1_DPLL_CFGCR0(id));
-		hw_state->cfgcr1 = intel_de_read(i915, DG1_DPLL_CFGCR1(id));
-	} else if (IS_ROCKETLAKE(i915)) {
-		hw_state->cfgcr0 = intel_de_read(i915,
+	if (display->platform.alderlake_s) {
+		hw_state->cfgcr0 = intel_de_read(display, ADLS_DPLL_CFGCR0(id));
+		hw_state->cfgcr1 = intel_de_read(display, ADLS_DPLL_CFGCR1(id));
+	} else if (display->platform.dg1) {
+		hw_state->cfgcr0 = intel_de_read(display, DG1_DPLL_CFGCR0(id));
+		hw_state->cfgcr1 = intel_de_read(display, DG1_DPLL_CFGCR1(id));
+	} else if (display->platform.rocketlake) {
+		hw_state->cfgcr0 = intel_de_read(display,
 						 RKL_DPLL_CFGCR0(id));
-		hw_state->cfgcr1 = intel_de_read(i915,
+		hw_state->cfgcr1 = intel_de_read(display,
 						 RKL_DPLL_CFGCR1(id));
-	} else if (DISPLAY_VER(i915) >= 12) {
-		hw_state->cfgcr0 = intel_de_read(i915,
+	} else if (DISPLAY_VER(display) >= 12) {
+		hw_state->cfgcr0 = intel_de_read(display,
 						 TGL_DPLL_CFGCR0(id));
-		hw_state->cfgcr1 = intel_de_read(i915,
+		hw_state->cfgcr1 = intel_de_read(display,
 						 TGL_DPLL_CFGCR1(id));
 		if (i915->display.vbt.override_afc_startup) {
-			hw_state->div0 = intel_de_read(i915, TGL_DPLL0_DIV0(id));
+			hw_state->div0 = intel_de_read(display, TGL_DPLL0_DIV0(id));
 			hw_state->div0 &= TGL_DPLL0_DIV0_AFC_STARTUP_MASK;
 		}
 	} else {
-		if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
+		if ((display->platform.jasperlake || display->platform.elkhartlake) &&
 		    id == DPLL_ID_EHL_DPLL4) {
-			hw_state->cfgcr0 = intel_de_read(i915,
+			hw_state->cfgcr0 = intel_de_read(display,
 							 ICL_DPLL_CFGCR0(4));
-			hw_state->cfgcr1 = intel_de_read(i915,
+			hw_state->cfgcr1 = intel_de_read(display,
 							 ICL_DPLL_CFGCR1(4));
 		} else {
-			hw_state->cfgcr0 = intel_de_read(i915,
+			hw_state->cfgcr0 = intel_de_read(display,
 							 ICL_DPLL_CFGCR0(id));
-			hw_state->cfgcr1 = intel_de_read(i915,
+			hw_state->cfgcr1 = intel_de_read(display,
 							 ICL_DPLL_CFGCR1(id));
 		}
 	}
@@ -3740,44 +3755,44 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *i915,
 	return ret;
 }
 
-static bool combo_pll_get_hw_state(struct drm_i915_private *i915,
+static bool combo_pll_get_hw_state(struct intel_display *display,
 				   struct intel_shared_dpll *pll,
 				   struct intel_dpll_hw_state *dpll_hw_state)
 {
-	i915_reg_t enable_reg = intel_combo_pll_enable_reg(i915, pll);
+	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
 
-	return icl_pll_get_hw_state(i915, pll, dpll_hw_state, enable_reg);
+	return icl_pll_get_hw_state(display, pll, dpll_hw_state, enable_reg);
 }
 
-static bool tbt_pll_get_hw_state(struct drm_i915_private *i915,
+static bool tbt_pll_get_hw_state(struct intel_display *display,
 				 struct intel_shared_dpll *pll,
 				 struct intel_dpll_hw_state *dpll_hw_state)
 {
-	return icl_pll_get_hw_state(i915, pll, dpll_hw_state, TBT_PLL_ENABLE);
+	return icl_pll_get_hw_state(display, pll, dpll_hw_state, TBT_PLL_ENABLE);
 }
 
-static void icl_dpll_write(struct drm_i915_private *i915,
+static void icl_dpll_write(struct intel_display *display,
 			   struct intel_shared_dpll *pll,
 			   const struct icl_dpll_hw_state *hw_state)
 {
 	const enum intel_dpll_id id = pll->info->id;
 	i915_reg_t cfgcr0_reg, cfgcr1_reg, div0_reg = INVALID_MMIO_REG;
 
-	if (IS_ALDERLAKE_S(i915)) {
+	if (display->platform.alderlake_s) {
 		cfgcr0_reg = ADLS_DPLL_CFGCR0(id);
 		cfgcr1_reg = ADLS_DPLL_CFGCR1(id);
-	} else if (IS_DG1(i915)) {
+	} else if (display->platform.dg1) {
 		cfgcr0_reg = DG1_DPLL_CFGCR0(id);
 		cfgcr1_reg = DG1_DPLL_CFGCR1(id);
-	} else if (IS_ROCKETLAKE(i915)) {
+	} else if (display->platform.rocketlake) {
 		cfgcr0_reg = RKL_DPLL_CFGCR0(id);
 		cfgcr1_reg = RKL_DPLL_CFGCR1(id);
-	} else if (DISPLAY_VER(i915) >= 12) {
+	} else if (DISPLAY_VER(display) >= 12) {
 		cfgcr0_reg = TGL_DPLL_CFGCR0(id);
 		cfgcr1_reg = TGL_DPLL_CFGCR1(id);
 		div0_reg = TGL_DPLL0_DIV0(id);
 	} else {
-		if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
+		if ((display->platform.jasperlake || display->platform.elkhartlake) &&
 		    id == DPLL_ID_EHL_DPLL4) {
 			cfgcr0_reg = ICL_DPLL_CFGCR0(4);
 			cfgcr1_reg = ICL_DPLL_CFGCR1(4);
@@ -3787,18 +3802,18 @@ static void icl_dpll_write(struct drm_i915_private *i915,
 		}
 	}
 
-	intel_de_write(i915, cfgcr0_reg, hw_state->cfgcr0);
-	intel_de_write(i915, cfgcr1_reg, hw_state->cfgcr1);
-	drm_WARN_ON_ONCE(&i915->drm, i915->display.vbt.override_afc_startup &&
+	intel_de_write(display, cfgcr0_reg, hw_state->cfgcr0);
+	intel_de_write(display, cfgcr1_reg, hw_state->cfgcr1);
+	drm_WARN_ON_ONCE(display->drm, display->vbt.override_afc_startup &&
 			 !i915_mmio_reg_valid(div0_reg));
-	if (i915->display.vbt.override_afc_startup &&
+	if (display->vbt.override_afc_startup &&
 	    i915_mmio_reg_valid(div0_reg))
-		intel_de_rmw(i915, div0_reg,
+		intel_de_rmw(display, div0_reg,
 			     TGL_DPLL0_DIV0_AFC_STARTUP_MASK, hw_state->div0);
-	intel_de_posting_read(i915, cfgcr1_reg);
+	intel_de_posting_read(display, cfgcr1_reg);
 }
 
-static void icl_mg_pll_write(struct drm_i915_private *i915,
+static void icl_mg_pll_write(struct intel_display *display,
 			     struct intel_shared_dpll *pll,
 			     const struct icl_dpll_hw_state *hw_state)
 {
@@ -3810,38 +3825,38 @@ static void icl_mg_pll_write(struct drm_i915_private *i915,
 	 * during the calc/readout phase if the mask depends on some other HW
 	 * state like refclk, see icl_calc_mg_pll_state().
 	 */
-	intel_de_rmw(i915, MG_REFCLKIN_CTL(tc_port),
+	intel_de_rmw(display, MG_REFCLKIN_CTL(tc_port),
 		     MG_REFCLKIN_CTL_OD_2_MUX_MASK, hw_state->mg_refclkin_ctl);
 
-	intel_de_rmw(i915, MG_CLKTOP2_CORECLKCTL1(tc_port),
+	intel_de_rmw(display, MG_CLKTOP2_CORECLKCTL1(tc_port),
 		     MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK,
 		     hw_state->mg_clktop2_coreclkctl1);
 
-	intel_de_rmw(i915, MG_CLKTOP2_HSCLKCTL(tc_port),
+	intel_de_rmw(display, MG_CLKTOP2_HSCLKCTL(tc_port),
 		     MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		     MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
 		     MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
 		     MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK,
 		     hw_state->mg_clktop2_hsclkctl);
 
-	intel_de_write(i915, MG_PLL_DIV0(tc_port), hw_state->mg_pll_div0);
-	intel_de_write(i915, MG_PLL_DIV1(tc_port), hw_state->mg_pll_div1);
-	intel_de_write(i915, MG_PLL_LF(tc_port), hw_state->mg_pll_lf);
-	intel_de_write(i915, MG_PLL_FRAC_LOCK(tc_port),
+	intel_de_write(display, MG_PLL_DIV0(tc_port), hw_state->mg_pll_div0);
+	intel_de_write(display, MG_PLL_DIV1(tc_port), hw_state->mg_pll_div1);
+	intel_de_write(display, MG_PLL_LF(tc_port), hw_state->mg_pll_lf);
+	intel_de_write(display, MG_PLL_FRAC_LOCK(tc_port),
 		       hw_state->mg_pll_frac_lock);
-	intel_de_write(i915, MG_PLL_SSC(tc_port), hw_state->mg_pll_ssc);
+	intel_de_write(display, MG_PLL_SSC(tc_port), hw_state->mg_pll_ssc);
 
-	intel_de_rmw(i915, MG_PLL_BIAS(tc_port),
+	intel_de_rmw(display, MG_PLL_BIAS(tc_port),
 		     hw_state->mg_pll_bias_mask, hw_state->mg_pll_bias);
 
-	intel_de_rmw(i915, MG_PLL_TDC_COLDST_BIAS(tc_port),
+	intel_de_rmw(display, MG_PLL_TDC_COLDST_BIAS(tc_port),
 		     hw_state->mg_pll_tdc_coldst_bias_mask,
 		     hw_state->mg_pll_tdc_coldst_bias);
 
-	intel_de_posting_read(i915, MG_PLL_TDC_COLDST_BIAS(tc_port));
+	intel_de_posting_read(display, MG_PLL_TDC_COLDST_BIAS(tc_port));
 }
 
-static void dkl_pll_write(struct drm_i915_private *i915,
+static void dkl_pll_write(struct intel_display *display,
 			  struct intel_shared_dpll *pll,
 			  const struct icl_dpll_hw_state *hw_state)
 {
@@ -3853,90 +3868,90 @@ static void dkl_pll_write(struct drm_i915_private *i915,
 	 * though on different building block
 	 */
 	/* All the registers are RMW */
-	val = intel_dkl_phy_read(i915, DKL_REFCLKIN_CTL(tc_port));
+	val = intel_dkl_phy_read(display, DKL_REFCLKIN_CTL(tc_port));
 	val &= ~MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 	val |= hw_state->mg_refclkin_ctl;
-	intel_dkl_phy_write(i915, DKL_REFCLKIN_CTL(tc_port), val);
+	intel_dkl_phy_write(display, DKL_REFCLKIN_CTL(tc_port), val);
 
-	val = intel_dkl_phy_read(i915, DKL_CLKTOP2_CORECLKCTL1(tc_port));
+	val = intel_dkl_phy_read(display, DKL_CLKTOP2_CORECLKCTL1(tc_port));
 	val &= ~MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 	val |= hw_state->mg_clktop2_coreclkctl1;
-	intel_dkl_phy_write(i915, DKL_CLKTOP2_CORECLKCTL1(tc_port), val);
+	intel_dkl_phy_write(display, DKL_CLKTOP2_CORECLKCTL1(tc_port), val);
 
-	val = intel_dkl_phy_read(i915, DKL_CLKTOP2_HSCLKCTL(tc_port));
+	val = intel_dkl_phy_read(display, DKL_CLKTOP2_HSCLKCTL(tc_port));
 	val &= ~(MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
 		 MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
 		 MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
 		 MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK);
 	val |= hw_state->mg_clktop2_hsclkctl;
-	intel_dkl_phy_write(i915, DKL_CLKTOP2_HSCLKCTL(tc_port), val);
+	intel_dkl_phy_write(display, DKL_CLKTOP2_HSCLKCTL(tc_port), val);
 
 	val = DKL_PLL_DIV0_MASK;
-	if (i915->display.vbt.override_afc_startup)
+	if (display->vbt.override_afc_startup)
 		val |= DKL_PLL_DIV0_AFC_STARTUP_MASK;
-	intel_dkl_phy_rmw(i915, DKL_PLL_DIV0(tc_port), val,
+	intel_dkl_phy_rmw(display, DKL_PLL_DIV0(tc_port), val,
 			  hw_state->mg_pll_div0);
 
-	val = intel_dkl_phy_read(i915, DKL_PLL_DIV1(tc_port));
+	val = intel_dkl_phy_read(display, DKL_PLL_DIV1(tc_port));
 	val &= ~(DKL_PLL_DIV1_IREF_TRIM_MASK |
 		 DKL_PLL_DIV1_TDC_TARGET_CNT_MASK);
 	val |= hw_state->mg_pll_div1;
-	intel_dkl_phy_write(i915, DKL_PLL_DIV1(tc_port), val);
+	intel_dkl_phy_write(display, DKL_PLL_DIV1(tc_port), val);
 
-	val = intel_dkl_phy_read(i915, DKL_PLL_SSC(tc_port));
+	val = intel_dkl_phy_read(display, DKL_PLL_SSC(tc_port));
 	val &= ~(DKL_PLL_SSC_IREF_NDIV_RATIO_MASK |
 		 DKL_PLL_SSC_STEP_LEN_MASK |
 		 DKL_PLL_SSC_STEP_NUM_MASK |
 		 DKL_PLL_SSC_EN);
 	val |= hw_state->mg_pll_ssc;
-	intel_dkl_phy_write(i915, DKL_PLL_SSC(tc_port), val);
+	intel_dkl_phy_write(display, DKL_PLL_SSC(tc_port), val);
 
-	val = intel_dkl_phy_read(i915, DKL_PLL_BIAS(tc_port));
+	val = intel_dkl_phy_read(display, DKL_PLL_BIAS(tc_port));
 	val &= ~(DKL_PLL_BIAS_FRAC_EN_H |
 		 DKL_PLL_BIAS_FBDIV_FRAC_MASK);
 	val |= hw_state->mg_pll_bias;
-	intel_dkl_phy_write(i915, DKL_PLL_BIAS(tc_port), val);
+	intel_dkl_phy_write(display, DKL_PLL_BIAS(tc_port), val);
 
-	val = intel_dkl_phy_read(i915, DKL_PLL_TDC_COLDST_BIAS(tc_port));
+	val = intel_dkl_phy_read(display, DKL_PLL_TDC_COLDST_BIAS(tc_port));
 	val &= ~(DKL_PLL_TDC_SSC_STEP_SIZE_MASK |
 		 DKL_PLL_TDC_FEED_FWD_GAIN_MASK);
 	val |= hw_state->mg_pll_tdc_coldst_bias;
-	intel_dkl_phy_write(i915, DKL_PLL_TDC_COLDST_BIAS(tc_port), val);
+	intel_dkl_phy_write(display, DKL_PLL_TDC_COLDST_BIAS(tc_port), val);
 
-	intel_dkl_phy_posting_read(i915, DKL_PLL_TDC_COLDST_BIAS(tc_port));
+	intel_dkl_phy_posting_read(display, DKL_PLL_TDC_COLDST_BIAS(tc_port));
 }
 
-static void icl_pll_power_enable(struct drm_i915_private *i915,
+static void icl_pll_power_enable(struct intel_display *display,
 				 struct intel_shared_dpll *pll,
 				 i915_reg_t enable_reg)
 {
-	intel_de_rmw(i915, enable_reg, 0, PLL_POWER_ENABLE);
+	intel_de_rmw(display, enable_reg, 0, PLL_POWER_ENABLE);
 
 	/*
 	 * The spec says we need to "wait" but it also says it should be
 	 * immediate.
 	 */
-	if (intel_de_wait_for_set(i915, enable_reg, PLL_POWER_STATE, 1))
-		drm_err(&i915->drm, "PLL %d Power not enabled\n",
+	if (intel_de_wait_for_set(display, enable_reg, PLL_POWER_STATE, 1))
+		drm_err(display->drm, "PLL %d Power not enabled\n",
 			pll->info->id);
 }
 
-static void icl_pll_enable(struct drm_i915_private *i915,
+static void icl_pll_enable(struct intel_display *display,
 			   struct intel_shared_dpll *pll,
 			   i915_reg_t enable_reg)
 {
-	intel_de_rmw(i915, enable_reg, 0, PLL_ENABLE);
+	intel_de_rmw(display, enable_reg, 0, PLL_ENABLE);
 
 	/* Timeout is actually 600us. */
-	if (intel_de_wait_for_set(i915, enable_reg, PLL_LOCK, 1))
-		drm_err(&i915->drm, "PLL %d not locked\n", pll->info->id);
+	if (intel_de_wait_for_set(display, enable_reg, PLL_LOCK, 1))
+		drm_err(display->drm, "PLL %d not locked\n", pll->info->id);
 }
 
-static void adlp_cmtg_clock_gating_wa(struct drm_i915_private *i915, struct intel_shared_dpll *pll)
+static void adlp_cmtg_clock_gating_wa(struct intel_display *display, struct intel_shared_dpll *pll)
 {
 	u32 val;
 
-	if (!(IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0)) ||
+	if (!(display->platform.alderlake_p && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)) ||
 	    pll->info->id != DPLL_ID_ICL_DPLL0)
 		return;
 	/*
@@ -3950,22 +3965,22 @@ static void adlp_cmtg_clock_gating_wa(struct drm_i915_private *i915, struct inte
 	 * Instead of the usual place for workarounds we apply this one here,
 	 * since TRANS_CMTG_CHICKEN is only accessible while DPLL0 is enabled.
 	 */
-	val = intel_de_read(i915, TRANS_CMTG_CHICKEN);
-	val = intel_de_rmw(i915, TRANS_CMTG_CHICKEN, ~0, DISABLE_DPT_CLK_GATING);
-	if (drm_WARN_ON(&i915->drm, val & ~DISABLE_DPT_CLK_GATING))
-		drm_dbg_kms(&i915->drm, "Unexpected flags in TRANS_CMTG_CHICKEN: %08x\n", val);
+	val = intel_de_read(display, TRANS_CMTG_CHICKEN);
+	val = intel_de_rmw(display, TRANS_CMTG_CHICKEN, ~0, DISABLE_DPT_CLK_GATING);
+	if (drm_WARN_ON(display->drm, val & ~DISABLE_DPT_CLK_GATING))
+		drm_dbg_kms(display->drm, "Unexpected flags in TRANS_CMTG_CHICKEN: %08x\n", val);
 }
 
-static void combo_pll_enable(struct drm_i915_private *i915,
+static void combo_pll_enable(struct intel_display *display,
 			     struct intel_shared_dpll *pll,
 			     const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
-	i915_reg_t enable_reg = intel_combo_pll_enable_reg(i915, pll);
+	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
 
-	icl_pll_power_enable(i915, pll, enable_reg);
+	icl_pll_power_enable(display, pll, enable_reg);
 
-	icl_dpll_write(i915, pll, hw_state);
+	icl_dpll_write(display, pll, hw_state);
 
 	/*
 	 * DVFS pre sequence would be here, but in our driver the cdclk code
@@ -3973,22 +3988,22 @@ static void combo_pll_enable(struct drm_i915_private *i915,
 	 * nothing here.
 	 */
 
-	icl_pll_enable(i915, pll, enable_reg);
+	icl_pll_enable(display, pll, enable_reg);
 
-	adlp_cmtg_clock_gating_wa(i915, pll);
+	adlp_cmtg_clock_gating_wa(display, pll);
 
 	/* DVFS post sequence would be here. See the comment above. */
 }
 
-static void tbt_pll_enable(struct drm_i915_private *i915,
+static void tbt_pll_enable(struct intel_display *display,
 			   struct intel_shared_dpll *pll,
 			   const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 
-	icl_pll_power_enable(i915, pll, TBT_PLL_ENABLE);
+	icl_pll_power_enable(display, pll, TBT_PLL_ENABLE);
 
-	icl_dpll_write(i915, pll, hw_state);
+	icl_dpll_write(display, pll, hw_state);
 
 	/*
 	 * DVFS pre sequence would be here, but in our driver the cdclk code
@@ -3996,24 +4011,24 @@ static void tbt_pll_enable(struct drm_i915_private *i915,
 	 * nothing here.
 	 */
 
-	icl_pll_enable(i915, pll, TBT_PLL_ENABLE);
+	icl_pll_enable(display, pll, TBT_PLL_ENABLE);
 
 	/* DVFS post sequence would be here. See the comment above. */
 }
 
-static void mg_pll_enable(struct drm_i915_private *i915,
+static void mg_pll_enable(struct intel_display *display,
 			  struct intel_shared_dpll *pll,
 			  const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
-	i915_reg_t enable_reg = intel_tc_pll_enable_reg(i915, pll);
+	i915_reg_t enable_reg = intel_tc_pll_enable_reg(display, pll);
 
-	icl_pll_power_enable(i915, pll, enable_reg);
+	icl_pll_power_enable(display, pll, enable_reg);
 
-	if (DISPLAY_VER(i915) >= 12)
-		dkl_pll_write(i915, pll, hw_state);
+	if (DISPLAY_VER(display) >= 12)
+		dkl_pll_write(display, pll, hw_state);
 	else
-		icl_mg_pll_write(i915, pll, hw_state);
+		icl_mg_pll_write(display, pll, hw_state);
 
 	/*
 	 * DVFS pre sequence would be here, but in our driver the cdclk code
@@ -4021,12 +4036,12 @@ static void mg_pll_enable(struct drm_i915_private *i915,
 	 * nothing here.
 	 */
 
-	icl_pll_enable(i915, pll, enable_reg);
+	icl_pll_enable(display, pll, enable_reg);
 
 	/* DVFS post sequence would be here. See the comment above. */
 }
 
-static void icl_pll_disable(struct drm_i915_private *i915,
+static void icl_pll_disable(struct intel_display *display,
 			    struct intel_shared_dpll *pll,
 			    i915_reg_t enable_reg)
 {
@@ -4038,45 +4053,45 @@ static void icl_pll_disable(struct drm_i915_private *i915,
 	 * nothing here.
 	 */
 
-	intel_de_rmw(i915, enable_reg, PLL_ENABLE, 0);
+	intel_de_rmw(display, enable_reg, PLL_ENABLE, 0);
 
 	/* Timeout is actually 1us. */
-	if (intel_de_wait_for_clear(i915, enable_reg, PLL_LOCK, 1))
-		drm_err(&i915->drm, "PLL %d locked\n", pll->info->id);
+	if (intel_de_wait_for_clear(display, enable_reg, PLL_LOCK, 1))
+		drm_err(display->drm, "PLL %d locked\n", pll->info->id);
 
 	/* DVFS post sequence would be here. See the comment above. */
 
-	intel_de_rmw(i915, enable_reg, PLL_POWER_ENABLE, 0);
+	intel_de_rmw(display, enable_reg, PLL_POWER_ENABLE, 0);
 
 	/*
 	 * The spec says we need to "wait" but it also says it should be
 	 * immediate.
 	 */
-	if (intel_de_wait_for_clear(i915, enable_reg, PLL_POWER_STATE, 1))
-		drm_err(&i915->drm, "PLL %d Power not disabled\n",
+	if (intel_de_wait_for_clear(display, enable_reg, PLL_POWER_STATE, 1))
+		drm_err(display->drm, "PLL %d Power not disabled\n",
 			pll->info->id);
 }
 
-static void combo_pll_disable(struct drm_i915_private *i915,
+static void combo_pll_disable(struct intel_display *display,
 			      struct intel_shared_dpll *pll)
 {
-	i915_reg_t enable_reg = intel_combo_pll_enable_reg(i915, pll);
+	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
 
-	icl_pll_disable(i915, pll, enable_reg);
+	icl_pll_disable(display, pll, enable_reg);
 }
 
-static void tbt_pll_disable(struct drm_i915_private *i915,
+static void tbt_pll_disable(struct intel_display *display,
 			    struct intel_shared_dpll *pll)
 {
-	icl_pll_disable(i915, pll, TBT_PLL_ENABLE);
+	icl_pll_disable(display, pll, TBT_PLL_ENABLE);
 }
 
-static void mg_pll_disable(struct drm_i915_private *i915,
+static void mg_pll_disable(struct intel_display *display,
 			   struct intel_shared_dpll *pll)
 {
-	i915_reg_t enable_reg = intel_tc_pll_enable_reg(i915, pll);
+	i915_reg_t enable_reg = intel_tc_pll_enable_reg(display, pll);
 
-	icl_pll_disable(i915, pll, enable_reg);
+	icl_pll_disable(display, pll, enable_reg);
 }
 
 static void icl_update_dpll_ref_clks(struct drm_i915_private *i915)
@@ -4477,49 +4492,50 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
 
 /**
  * intel_dpll_get_freq - calculate the DPLL's output frequency
- * @i915: i915 device
+ * @display: intel_display device
  * @pll: DPLL for which to calculate the output frequency
  * @dpll_hw_state: DPLL state from which to calculate the output frequency
  *
  * Return the output frequency corresponding to @pll's passed in @dpll_hw_state.
  */
-int intel_dpll_get_freq(struct drm_i915_private *i915,
+int intel_dpll_get_freq(struct intel_display *display,
 			const struct intel_shared_dpll *pll,
 			const struct intel_dpll_hw_state *dpll_hw_state)
 {
-	if (drm_WARN_ON(&i915->drm, !pll->info->funcs->get_freq))
+	if (drm_WARN_ON(display->drm, !pll->info->funcs->get_freq))
 		return 0;
 
-	return pll->info->funcs->get_freq(i915, pll, dpll_hw_state);
+	return pll->info->funcs->get_freq(display, pll, dpll_hw_state);
 }
 
 /**
  * intel_dpll_get_hw_state - readout the DPLL's hardware state
- * @i915: i915 device
+ * @display: intel_display device instance
  * @pll: DPLL for which to calculate the output frequency
  * @dpll_hw_state: DPLL's hardware state
  *
  * Read out @pll's hardware state into @dpll_hw_state.
  */
-bool intel_dpll_get_hw_state(struct drm_i915_private *i915,
+bool intel_dpll_get_hw_state(struct intel_display *display,
 			     struct intel_shared_dpll *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state)
 {
-	return pll->info->funcs->get_hw_state(i915, pll, dpll_hw_state);
+	return pll->info->funcs->get_hw_state(display, pll, dpll_hw_state);
 }
 
-static void readout_dpll_hw_state(struct drm_i915_private *i915,
+static void readout_dpll_hw_state(struct intel_display *display,
 				  struct intel_shared_dpll *pll)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_crtc *crtc;
 
-	pll->on = intel_dpll_get_hw_state(i915, pll, &pll->state.hw_state);
+	pll->on = intel_dpll_get_hw_state(display, pll, &pll->state.hw_state);
 
 	if (pll->on && pll->info->power_domain)
 		pll->wakeref = intel_display_power_get(i915, pll->info->power_domain);
 
 	pll->state.pipe_mask = 0;
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -4528,7 +4544,7 @@ static void readout_dpll_hw_state(struct drm_i915_private *i915,
 	}
 	pll->active_mask = pll->state.pipe_mask;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "%s hw state readout: pipe_mask 0x%x, on %i\n",
 		    pll->info->name, pll->state.pipe_mask, pll->on);
 }
@@ -4539,42 +4555,40 @@ void intel_dpll_update_ref_clks(struct drm_i915_private *i915)
 		i915->display.dpll.mgr->update_ref_clks(i915);
 }
 
-void intel_dpll_readout_hw_state(struct drm_i915_private *i915)
+void intel_dpll_readout_hw_state(struct intel_display *display)
 {
-	struct intel_display *display = to_intel_display(&i915->drm);
 	struct intel_shared_dpll *pll;
 	int i;
 
 	for_each_shared_dpll(display, pll, i)
-		readout_dpll_hw_state(i915, pll);
+		readout_dpll_hw_state(display, pll);
 }
 
-static void sanitize_dpll_state(struct drm_i915_private *i915,
+static void sanitize_dpll_state(struct intel_display *display,
 				struct intel_shared_dpll *pll)
 {
 	if (!pll->on)
 		return;
 
-	adlp_cmtg_clock_gating_wa(i915, pll);
+	adlp_cmtg_clock_gating_wa(display, pll);
 
 	if (pll->active_mask)
 		return;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "%s enabled but not in use, disabling\n",
 		    pll->info->name);
 
-	_intel_disable_shared_dpll(i915, pll);
+	_intel_disable_shared_dpll(display, pll);
 }
 
-void intel_dpll_sanitize_state(struct drm_i915_private *i915)
+void intel_dpll_sanitize_state(struct intel_display *display)
 {
-	struct intel_display *display = to_intel_display(&i915->drm);
 	struct intel_shared_dpll *pll;
 	int i;
 
 	for_each_shared_dpll(display, pll, i)
-		sanitize_dpll_state(i915, pll);
+		sanitize_dpll_state(display, pll);
 }
 
 /**
@@ -4624,17 +4638,16 @@ bool intel_dpll_compare_hw_state(struct intel_display *display,
 }
 
 static void
-verify_single_dpll_state(struct drm_i915_private *i915,
+verify_single_dpll_state(struct intel_display *display,
 			 struct intel_shared_dpll *pll,
 			 struct intel_crtc *crtc,
 			 const struct intel_crtc_state *new_crtc_state)
 {
-	struct intel_display *display = &i915->display;
 	struct intel_dpll_hw_state dpll_hw_state = {};
 	u8 pipe_mask;
 	bool active;
 
-	active = intel_dpll_get_hw_state(i915, pll, &dpll_hw_state);
+	active = intel_dpll_get_hw_state(display, pll, &dpll_hw_state);
 
 	if (!pll->info->always_on) {
 		INTEL_DISPLAY_STATE_WARN(display, !pll->on && pll->active_mask,
@@ -4690,14 +4703,13 @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
 	if (new_crtc_state->shared_dpll)
-		verify_single_dpll_state(i915, new_crtc_state->shared_dpll,
+		verify_single_dpll_state(display, new_crtc_state->shared_dpll,
 					 crtc, new_crtc_state);
 
 	if (old_crtc_state->shared_dpll &&
@@ -4721,10 +4733,9 @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
 void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_shared_dpll *pll;
 	int i;
 
 	for_each_shared_dpll(display, pll, i)
-		verify_single_dpll_state(i915, pll, NULL, NULL);
+		verify_single_dpll_state(display, pll, NULL, NULL);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 42379494f347..ebd0ed79d2b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -390,7 +390,7 @@ struct intel_shared_dpll {
 
 /* shared dpll functions */
 struct intel_shared_dpll *
-intel_get_shared_dpll_by_id(struct drm_i915_private *i915,
+intel_get_shared_dpll_by_id(struct intel_display *display,
 			    enum intel_dpll_id id);
 void assert_shared_dpll(struct drm_i915_private *i915,
 			struct intel_shared_dpll *pll,
@@ -413,10 +413,10 @@ void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
 void intel_update_active_dpll(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc,
 			      struct intel_encoder *encoder);
-int intel_dpll_get_freq(struct drm_i915_private *i915,
+int intel_dpll_get_freq(struct intel_display *display,
 			const struct intel_shared_dpll *pll,
 			const struct intel_dpll_hw_state *dpll_hw_state);
-bool intel_dpll_get_hw_state(struct drm_i915_private *i915,
+bool intel_dpll_get_hw_state(struct intel_display *display,
 			     struct intel_shared_dpll *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state);
 void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
@@ -424,8 +424,8 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_shared_dpll_swap_state(struct intel_atomic_state *state);
 void intel_shared_dpll_init(struct drm_i915_private *i915);
 void intel_dpll_update_ref_clks(struct drm_i915_private *i915);
-void intel_dpll_readout_hw_state(struct drm_i915_private *i915);
-void intel_dpll_sanitize_state(struct drm_i915_private *i915);
+void intel_dpll_readout_hw_state(struct intel_display *display);
+void intel_dpll_sanitize_state(struct intel_display *display);
 
 void intel_dpll_dump_hw_state(struct intel_display *display,
 			      struct drm_printer *p,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 10cdfdad82e4..4a6dd0d99e3e 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -795,7 +795,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 			    pipe_name(pipe));
 	}
 
-	intel_dpll_readout_hw_state(i915);
+	intel_dpll_readout_hw_state(display);
 
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
@@ -1014,7 +1014,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 
 	intel_sanitize_all_crtcs(i915, ctx);
 
-	intel_dpll_sanitize_state(i915);
+	intel_dpll_sanitize_state(display);
 
 	intel_wm_get_hw_state(i915);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 8fa5a6334d10..e874a577b7d1 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -249,6 +249,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
 static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	i915_reg_t reg;
@@ -263,7 +264,7 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 
 	if (HAS_PCH_CPT(dev_priv)) {
 		reg = TRANS_CHICKEN2(pipe);
-		val = intel_de_read(dev_priv, reg);
+		val = intel_de_read(display, reg);
 		/*
 		 * Workaround: Set the timing override bit
 		 * before enabling the pch transcoder.
@@ -272,12 +273,12 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 		/* Configure frame start delay to match the CPU */
 		val &= ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
 		val |= TRANS_CHICKEN2_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
-		intel_de_write(dev_priv, reg, val);
+		intel_de_write(display, reg, val);
 	}
 
 	reg = PCH_TRANSCONF(pipe);
-	val = intel_de_read(dev_priv, reg);
-	pipeconf_val = intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe));
+	val = intel_de_read(display, reg);
+	pipeconf_val = intel_de_read(display, TRANSCONF(display, pipe));
 
 	if (HAS_PCH_IBX(dev_priv)) {
 		/* Configure frame start delay to match the CPU */
@@ -307,9 +308,9 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 		val |= TRANS_INTERLACE_PROGRESSIVE;
 	}
 
-	intel_de_write(dev_priv, reg, val | TRANS_ENABLE);
-	if (intel_de_wait_for_set(dev_priv, reg, TRANS_STATE_ENABLE, 100))
-		drm_err(&dev_priv->drm, "failed to enable transcoder %c\n",
+	intel_de_write(display, reg, val | TRANS_ENABLE);
+	if (intel_de_wait_for_set(display, reg, TRANS_STATE_ENABLE, 100))
+		drm_err(display->drm, "failed to enable transcoder %c\n",
 			pipe_name(pipe));
 }
 
@@ -383,15 +384,15 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 	if (HAS_PCH_CPT(dev_priv)) {
 		u32 sel;
 
-		temp = intel_de_read(dev_priv, PCH_DPLL_SEL);
+		temp = intel_de_read(display, PCH_DPLL_SEL);
 		temp |= TRANS_DPLL_ENABLE(pipe);
 		sel = TRANS_DPLLB_SEL(pipe);
 		if (crtc_state->shared_dpll ==
-		    intel_get_shared_dpll_by_id(dev_priv, DPLL_ID_PCH_PLL_B))
+		    intel_get_shared_dpll_by_id(display, DPLL_ID_PCH_PLL_B))
 			temp |= sel;
 		else
 			temp &= ~sel;
-		intel_de_write(dev_priv, PCH_DPLL_SEL, temp);
+		intel_de_write(display, PCH_DPLL_SEL, temp);
 	}
 
 	/*
@@ -420,11 +421,12 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 	    intel_crtc_has_dp_encoder(crtc_state)) {
 		const struct drm_display_mode *adjusted_mode =
 			&crtc_state->hw.adjusted_mode;
-		u32 bpc = (intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe)) & TRANSCONF_BPC_MASK) >> 5;
+		u32 bpc = (intel_de_read(display, TRANSCONF(display, pipe))
+			   & TRANSCONF_BPC_MASK) >> 5;
 		i915_reg_t reg = TRANS_DP_CTL(pipe);
 		enum port port;
 
-		temp = intel_de_read(dev_priv, reg);
+		temp = intel_de_read(display, reg);
 		temp &= ~(TRANS_DP_PORT_SEL_MASK |
 			  TRANS_DP_VSYNC_ACTIVE_HIGH |
 			  TRANS_DP_HSYNC_ACTIVE_HIGH |
@@ -438,10 +440,10 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 			temp |= TRANS_DP_VSYNC_ACTIVE_HIGH;
 
 		port = intel_get_crtc_new_encoder(state, crtc_state)->port;
-		drm_WARN_ON(&dev_priv->drm, port < PORT_B || port > PORT_D);
+		drm_WARN_ON(display->drm, port < PORT_B || port > PORT_D);
 		temp |= TRANS_DP_PORT_SEL(port);
 
-		intel_de_write(dev_priv, reg, temp);
+		intel_de_write(display, reg, temp);
 	}
 
 	ilk_enable_pch_transcoder(crtc_state);
@@ -496,6 +498,7 @@ static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
 void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll;
 	enum pipe pipe = crtc->pipe;
@@ -503,12 +506,12 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 	bool pll_active;
 	u32 tmp;
 
-	if ((intel_de_read(dev_priv, PCH_TRANSCONF(pipe)) & TRANS_ENABLE) == 0)
+	if ((intel_de_read(display, PCH_TRANSCONF(pipe)) & TRANS_ENABLE) == 0)
 		return;
 
 	crtc_state->has_pch_encoder = true;
 
-	tmp = intel_de_read(dev_priv, FDI_RX_CTL(pipe));
+	tmp = intel_de_read(display, FDI_RX_CTL(pipe));
 	crtc_state->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
 				 FDI_DP_PORT_WIDTH_SHIFT) + 1;
 
@@ -522,19 +525,19 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 		 */
 		pll_id = (enum intel_dpll_id) pipe;
 	} else {
-		tmp = intel_de_read(dev_priv, PCH_DPLL_SEL);
+		tmp = intel_de_read(display, PCH_DPLL_SEL);
 		if (tmp & TRANS_DPLLB_SEL(pipe))
 			pll_id = DPLL_ID_PCH_PLL_B;
 		else
 			pll_id = DPLL_ID_PCH_PLL_A;
 	}
 
-	crtc_state->shared_dpll = intel_get_shared_dpll_by_id(dev_priv, pll_id);
+	crtc_state->shared_dpll = intel_get_shared_dpll_by_id(display, pll_id);
 	pll = crtc_state->shared_dpll;
 
-	pll_active = intel_dpll_get_hw_state(dev_priv, pll,
+	pll_active = intel_dpll_get_hw_state(display, pll,
 					     &crtc_state->dpll_hw_state);
-	drm_WARN_ON(&dev_priv->drm, !pll_active);
+	drm_WARN_ON(display->drm, !pll_active);
 
 	tmp = crtc_state->dpll_hw_state.i9xx.dpll;
 	crtc_state->pixel_multiplier =
-- 
2.34.1

