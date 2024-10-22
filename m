Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9989AB2E6
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 17:57:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 377FB10E6B1;
	Tue, 22 Oct 2024 15:57:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TqdOAuLZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DA4110E6B4;
 Tue, 22 Oct 2024 15:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729612671; x=1761148671;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fazWqV4l14QOpMsJWNjMRWHIBWp5C8ngyvVlc3Ss6xw=;
 b=TqdOAuLZ6q2JDVPR81jF/cQSXzxRU2T+6SFONYFrUtQVQC9bHBAwYr5G
 AGavoiULI0JCARjc5msVM89E/jtHL9msSUbwLpIio1Qz6HDudTAUhnFd9
 6JcqQqGckQKtWjyfawU7smRWoVJ99FTSQOyrz36JQIaShstm2EbGRjGEx
 8ARdeP1DPPB59+RIwriCtRwAJIHBrknoThLCkNojghiYN9mepF60pFGL9
 1qQe43WvS3xvDEg+YY5ZFV1yYQhIpch5pLgo1OyzQEuvCfxIzz04pgXOg
 O+l7a7ZSLJq07Rw2cNwmksZ68A1XeuGkLcmt1Sa1iAF0eybW+u66Khg3A g==;
X-CSE-ConnectionGUID: LlVWyHQSQuarC5yJeMnkaQ==
X-CSE-MsgGUID: Ue1uRx0TQGSneQ95ngUrKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="29270583"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="29270583"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:57:50 -0700
X-CSE-ConnectionGUID: rR7EarESTIa2QeSUjIymvQ==
X-CSE-MsgGUID: CWlpNhTkQfK/ZXzKpGktnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79857970"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.58])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:57:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/11] drm/i915/dpio: convert to struct intel_display
Date: Tue, 22 Oct 2024 18:57:20 +0300
Message-Id: <d466f457803245caff9725c506deb37f8bcb2e63.1729612605.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729612605.git.jani.nikula@intel.com>
References: <cover.1729612605.git.jani.nikula@intel.com>
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

struct intel_display will replace struct drm_i915_private as the main
device pointer for display code. Switch DPIO PHY code over to it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../i915/display/intel_display_power_well.c   |  19 ++-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 158 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpio_phy.h |  22 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   6 +-
 4 files changed, 106 insertions(+), 99 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index adaf7cf3a33b..885bc2e563c5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -919,38 +919,45 @@ static void hsw_power_well_sync_hw(struct drm_i915_private *dev_priv,
 static void bxt_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well)
 {
-	bxt_dpio_phy_init(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
+	struct intel_display *display = &dev_priv->display;
+
+	bxt_dpio_phy_init(display, i915_power_well_instance(power_well)->bxt.phy);
 }
 
 static void bxt_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 					    struct i915_power_well *power_well)
 {
-	bxt_dpio_phy_uninit(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
+	struct intel_display *display = &dev_priv->display;
+
+	bxt_dpio_phy_uninit(display, i915_power_well_instance(power_well)->bxt.phy);
 }
 
 static bool bxt_dpio_cmn_power_well_enabled(struct drm_i915_private *dev_priv,
 					    struct i915_power_well *power_well)
 {
-	return bxt_dpio_phy_is_enabled(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
+	struct intel_display *display = &dev_priv->display;
+
+	return bxt_dpio_phy_is_enabled(display, i915_power_well_instance(power_well)->bxt.phy);
 }
 
 static void bxt_verify_dpio_phy_power_wells(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct i915_power_well *power_well;
 
 	power_well = lookup_power_well(dev_priv, BXT_DISP_PW_DPIO_CMN_A);
 	if (intel_power_well_refcount(power_well) > 0)
-		bxt_dpio_phy_verify_state(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
+		bxt_dpio_phy_verify_state(display, i915_power_well_instance(power_well)->bxt.phy);
 
 	power_well = lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
 	if (intel_power_well_refcount(power_well) > 0)
-		bxt_dpio_phy_verify_state(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
+		bxt_dpio_phy_verify_state(display, i915_power_well_instance(power_well)->bxt.phy);
 
 	if (IS_GEMINILAKE(dev_priv)) {
 		power_well = lookup_power_well(dev_priv,
 					       GLK_DISP_PW_DPIO_CMN_C);
 		if (intel_power_well_refcount(power_well) > 0)
-			bxt_dpio_phy_verify_state(dev_priv,
+			bxt_dpio_phy_verify_state(display,
 						  i915_power_well_instance(power_well)->bxt.phy);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index d20e4e9cf7f7..0f12f2c3467c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -219,8 +219,10 @@ static const struct bxt_dpio_phy_info glk_dpio_phy_info[] = {
 };
 
 static const struct bxt_dpio_phy_info *
-bxt_get_phy_list(struct drm_i915_private *dev_priv, int *count)
+bxt_get_phy_list(struct intel_display *display, int *count)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	if (IS_GEMINILAKE(dev_priv)) {
 		*count =  ARRAY_SIZE(glk_dpio_phy_info);
 		return glk_dpio_phy_info;
@@ -231,22 +233,22 @@ bxt_get_phy_list(struct drm_i915_private *dev_priv, int *count)
 }
 
 static const struct bxt_dpio_phy_info *
-bxt_get_phy_info(struct drm_i915_private *dev_priv, enum dpio_phy phy)
+bxt_get_phy_info(struct intel_display *display, enum dpio_phy phy)
 {
 	int count;
 	const struct bxt_dpio_phy_info *phy_list =
-		bxt_get_phy_list(dev_priv, &count);
+		bxt_get_phy_list(display, &count);
 
 	return &phy_list[phy];
 }
 
-void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
+void bxt_port_to_phy_channel(struct intel_display *display, enum port port,
 			     enum dpio_phy *phy, enum dpio_channel *ch)
 {
 	const struct bxt_dpio_phy_info *phy_info, *phys;
 	int i, count;
 
-	phys = bxt_get_phy_list(dev_priv, &count);
+	phys = bxt_get_phy_list(display, &count);
 
 	for (i = 0; i < count; i++) {
 		phy_info = &phys[i];
@@ -265,7 +267,7 @@ void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
 		}
 	}
 
-	drm_WARN(&dev_priv->drm, 1, "PHY not found for PORT %c",
+	drm_WARN(display->drm, 1, "PHY not found for PORT %c",
 		 port_name(port));
 	*phy = DPIO_PHY0;
 	*ch = DPIO_CH0;
@@ -275,16 +277,16 @@ void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
  * Like intel_de_rmw() but reads from a single per-lane register and
  * writes to the group register to write the same value to all the lanes.
  */
-static u32 bxt_dpio_phy_rmw_grp(struct drm_i915_private *i915,
+static u32 bxt_dpio_phy_rmw_grp(struct intel_display *display,
 				i915_reg_t reg_single,
 				i915_reg_t reg_group,
 				u32 clear, u32 set)
 {
 	u32 old, val;
 
-	old = intel_de_read(i915, reg_single);
+	old = intel_de_read(display, reg_single);
 	val = (old & ~clear) | set;
-	intel_de_write(i915, reg_group, val);
+	intel_de_write(display, reg_group, val);
 
 	return old;
 }
@@ -292,30 +294,30 @@ static u32 bxt_dpio_phy_rmw_grp(struct drm_i915_private *i915,
 void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_ddi_buf_trans *trans;
 	enum dpio_channel ch;
 	enum dpio_phy phy;
 	int lane, n_entries;
 
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
+	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return;
 
-	bxt_port_to_phy_channel(dev_priv, encoder->port, &phy, &ch);
+	bxt_port_to_phy_channel(display, encoder->port, &phy, &ch);
 
 	/*
 	 * While we write to the group register to program all lanes at once we
 	 * can read only lane registers and we pick lanes 0/1 for that.
 	 */
-	bxt_dpio_phy_rmw_grp(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch),
+	bxt_dpio_phy_rmw_grp(display, BXT_PORT_PCS_DW10_LN01(phy, ch),
 			     BXT_PORT_PCS_DW10_GRP(phy, ch),
 			     TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT, 0);
 
 	for (lane = 0; lane < crtc_state->lane_count; lane++) {
 		int level = intel_ddi_level(encoder, crtc_state, lane);
 
-		intel_de_rmw(dev_priv, BXT_PORT_TX_DW2_LN(phy, ch, lane),
+		intel_de_rmw(display, BXT_PORT_TX_DW2_LN(phy, ch, lane),
 			     MARGIN_000_MASK | UNIQ_TRANS_SCALE_MASK,
 			     MARGIN_000(trans->entries[level].bxt.margin) |
 			     UNIQ_TRANS_SCALE(trans->entries[level].bxt.scale));
@@ -325,50 +327,50 @@ void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,
 		int level = intel_ddi_level(encoder, crtc_state, lane);
 		u32 val;
 
-		intel_de_rmw(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, lane),
+		intel_de_rmw(display, BXT_PORT_TX_DW3_LN(phy, ch, lane),
 			     SCALE_DCOMP_METHOD,
 			     trans->entries[level].bxt.enable ?
 			     SCALE_DCOMP_METHOD : 0);
 
-		val = intel_de_read(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, lane));
+		val = intel_de_read(display, BXT_PORT_TX_DW3_LN(phy, ch, lane));
 		if ((val & UNIQUE_TRANGE_EN_METHOD) && !(val & SCALE_DCOMP_METHOD))
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"Disabled scaling while ouniqetrangenmethod was set");
 	}
 
 	for (lane = 0; lane < crtc_state->lane_count; lane++) {
 		int level = intel_ddi_level(encoder, crtc_state, lane);
 
-		intel_de_rmw(dev_priv, BXT_PORT_TX_DW4_LN(phy, ch, lane),
+		intel_de_rmw(display, BXT_PORT_TX_DW4_LN(phy, ch, lane),
 			     DE_EMPHASIS_MASK,
 			     DE_EMPHASIS(trans->entries[level].bxt.deemphasis));
 	}
 
-	bxt_dpio_phy_rmw_grp(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch),
+	bxt_dpio_phy_rmw_grp(display, BXT_PORT_PCS_DW10_LN01(phy, ch),
 			     BXT_PORT_PCS_DW10_GRP(phy, ch),
 			     0, TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT);
 }
 
-bool bxt_dpio_phy_is_enabled(struct drm_i915_private *dev_priv,
+bool bxt_dpio_phy_is_enabled(struct intel_display *display,
 			     enum dpio_phy phy)
 {
 	const struct bxt_dpio_phy_info *phy_info;
 
-	phy_info = bxt_get_phy_info(dev_priv, phy);
+	phy_info = bxt_get_phy_info(display, phy);
 
-	if (!(intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON) & phy_info->pwron_mask))
+	if (!(intel_de_read(display, BXT_P_CR_GT_DISP_PWRON) & phy_info->pwron_mask))
 		return false;
 
-	if ((intel_de_read(dev_priv, BXT_PORT_CL1CM_DW0(phy)) &
+	if ((intel_de_read(display, BXT_PORT_CL1CM_DW0(phy)) &
 	     (PHY_POWER_GOOD | PHY_RESERVED)) != PHY_POWER_GOOD) {
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"DDI PHY %d powered, but power hasn't settled\n", phy);
 
 		return false;
 	}
 
-	if (!(intel_de_read(dev_priv, BXT_PHY_CTL_FAMILY(phy)) & COMMON_RESET_DIS)) {
-		drm_dbg(&dev_priv->drm,
+	if (!(intel_de_read(display, BXT_PHY_CTL_FAMILY(phy)) & COMMON_RESET_DIS)) {
+		drm_dbg(display->drm,
 			"DDI PHY %d powered, but still in reset\n", phy);
 
 		return false;
@@ -377,47 +379,44 @@ bool bxt_dpio_phy_is_enabled(struct drm_i915_private *dev_priv,
 	return true;
 }
 
-static u32 bxt_get_grc(struct drm_i915_private *dev_priv, enum dpio_phy phy)
+static u32 bxt_get_grc(struct intel_display *display, enum dpio_phy phy)
 {
-	u32 val = intel_de_read(dev_priv, BXT_PORT_REF_DW6(phy));
+	u32 val = intel_de_read(display, BXT_PORT_REF_DW6(phy));
 
 	return REG_FIELD_GET(GRC_CODE_MASK, val);
 }
 
-static void bxt_phy_wait_grc_done(struct drm_i915_private *dev_priv,
+static void bxt_phy_wait_grc_done(struct intel_display *display,
 				  enum dpio_phy phy)
 {
-	if (intel_de_wait_for_set(dev_priv, BXT_PORT_REF_DW3(phy),
-				  GRC_DONE, 10))
-		drm_err(&dev_priv->drm, "timeout waiting for PHY%d GRC\n",
-			phy);
+	if (intel_de_wait_for_set(display, BXT_PORT_REF_DW3(phy), GRC_DONE, 10))
+		drm_err(display->drm, "timeout waiting for PHY%d GRC\n", phy);
 }
 
-static void _bxt_dpio_phy_init(struct drm_i915_private *dev_priv,
-			       enum dpio_phy phy)
+static void _bxt_dpio_phy_init(struct intel_display *display, enum dpio_phy phy)
 {
 	const struct bxt_dpio_phy_info *phy_info;
 	u32 val;
 
-	phy_info = bxt_get_phy_info(dev_priv, phy);
+	phy_info = bxt_get_phy_info(display, phy);
 
-	if (bxt_dpio_phy_is_enabled(dev_priv, phy)) {
+	if (bxt_dpio_phy_is_enabled(display, phy)) {
 		/* Still read out the GRC value for state verification */
 		if (phy_info->rcomp_phy != -1)
-			dev_priv->display.state.bxt_phy_grc = bxt_get_grc(dev_priv, phy);
+			display->state.bxt_phy_grc = bxt_get_grc(display, phy);
 
-		if (bxt_dpio_phy_verify_state(dev_priv, phy)) {
-			drm_dbg(&dev_priv->drm, "DDI PHY %d already enabled, "
+		if (bxt_dpio_phy_verify_state(display, phy)) {
+			drm_dbg(display->drm, "DDI PHY %d already enabled, "
 				"won't reprogram it\n", phy);
 			return;
 		}
 
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"DDI PHY %d enabled with invalid state, "
 			"force reprogramming it\n", phy);
 	}
 
-	intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, 0, phy_info->pwron_mask);
+	intel_de_rmw(display, BXT_P_CR_GT_DISP_PWRON, 0, phy_info->pwron_mask);
 
 	/*
 	 * The PHY registers start out inaccessible and respond to reads with
@@ -427,92 +426,91 @@ static void _bxt_dpio_phy_init(struct drm_i915_private *dev_priv,
 	 * The flag should get set in 100us according to the HW team, but
 	 * use 1ms due to occasional timeouts observed with that.
 	 */
-	if (intel_de_wait_fw(dev_priv, BXT_PORT_CL1CM_DW0(phy),
+	if (intel_de_wait_fw(display, BXT_PORT_CL1CM_DW0(phy),
 			     PHY_RESERVED | PHY_POWER_GOOD, PHY_POWER_GOOD, 1))
-		drm_err(&dev_priv->drm, "timeout during PHY%d power on\n",
+		drm_err(display->drm, "timeout during PHY%d power on\n",
 			phy);
 
 	/* Program PLL Rcomp code offset */
-	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW9(phy),
+	intel_de_rmw(display, BXT_PORT_CL1CM_DW9(phy),
 		     IREF0RC_OFFSET_MASK, IREF0RC_OFFSET(0xE4));
 
-	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW10(phy),
+	intel_de_rmw(display, BXT_PORT_CL1CM_DW10(phy),
 		     IREF1RC_OFFSET_MASK, IREF1RC_OFFSET(0xE4));
 
 	/* Program power gating */
-	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW28(phy), 0,
+	intel_de_rmw(display, BXT_PORT_CL1CM_DW28(phy), 0,
 		     OCL1_POWER_DOWN_EN | DW28_OLDO_DYN_PWR_DOWN_EN | SUS_CLK_CONFIG);
 
 	if (phy_info->dual_channel)
-		intel_de_rmw(dev_priv, BXT_PORT_CL2CM_DW6(phy), 0,
+		intel_de_rmw(display, BXT_PORT_CL2CM_DW6(phy), 0,
 			     DW6_OLDO_DYN_PWR_DOWN_EN);
 
 	if (phy_info->rcomp_phy != -1) {
 		u32 grc_code;
 
-		bxt_phy_wait_grc_done(dev_priv, phy_info->rcomp_phy);
+		bxt_phy_wait_grc_done(display, phy_info->rcomp_phy);
 
 		/*
 		 * PHY0 isn't connected to an RCOMP resistor so copy over
 		 * the corresponding calibrated value from PHY1, and disable
 		 * the automatic calibration on PHY0.
 		 */
-		val = bxt_get_grc(dev_priv, phy_info->rcomp_phy);
-		dev_priv->display.state.bxt_phy_grc = val;
+		val = bxt_get_grc(display, phy_info->rcomp_phy);
+		display->state.bxt_phy_grc = val;
 
 		grc_code = GRC_CODE_FAST(val) |
 			GRC_CODE_SLOW(val) |
 			GRC_CODE_NOM(val);
-		intel_de_write(dev_priv, BXT_PORT_REF_DW6(phy), grc_code);
-		intel_de_rmw(dev_priv, BXT_PORT_REF_DW8(phy),
+		intel_de_write(display, BXT_PORT_REF_DW6(phy), grc_code);
+		intel_de_rmw(display, BXT_PORT_REF_DW8(phy),
 			     0, GRC_DIS | GRC_RDY_OVRD);
 	}
 
 	if (phy_info->reset_delay)
 		udelay(phy_info->reset_delay);
 
-	intel_de_rmw(dev_priv, BXT_PHY_CTL_FAMILY(phy), 0, COMMON_RESET_DIS);
+	intel_de_rmw(display, BXT_PHY_CTL_FAMILY(phy), 0, COMMON_RESET_DIS);
 }
 
-void bxt_dpio_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
+void bxt_dpio_phy_uninit(struct intel_display *display, enum dpio_phy phy)
 {
 	const struct bxt_dpio_phy_info *phy_info;
 
-	phy_info = bxt_get_phy_info(dev_priv, phy);
+	phy_info = bxt_get_phy_info(display, phy);
 
-	intel_de_rmw(dev_priv, BXT_PHY_CTL_FAMILY(phy), COMMON_RESET_DIS, 0);
+	intel_de_rmw(display, BXT_PHY_CTL_FAMILY(phy), COMMON_RESET_DIS, 0);
 
-	intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, phy_info->pwron_mask, 0);
+	intel_de_rmw(display, BXT_P_CR_GT_DISP_PWRON, phy_info->pwron_mask, 0);
 }
 
-void bxt_dpio_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
+void bxt_dpio_phy_init(struct intel_display *display, enum dpio_phy phy)
 {
-	const struct bxt_dpio_phy_info *phy_info =
-		bxt_get_phy_info(dev_priv, phy);
+	const struct bxt_dpio_phy_info *phy_info = bxt_get_phy_info(display, phy);
 	enum dpio_phy rcomp_phy = phy_info->rcomp_phy;
 	bool was_enabled;
 
-	lockdep_assert_held(&dev_priv->display.power.domains.lock);
+	lockdep_assert_held(&display->power.domains.lock);
 
 	was_enabled = true;
 	if (rcomp_phy != -1)
-		was_enabled = bxt_dpio_phy_is_enabled(dev_priv, rcomp_phy);
+		was_enabled = bxt_dpio_phy_is_enabled(display, rcomp_phy);
 
 	/*
 	 * We need to copy the GRC calibration value from rcomp_phy,
 	 * so make sure it's powered up.
 	 */
 	if (!was_enabled)
-		_bxt_dpio_phy_init(dev_priv, rcomp_phy);
+		_bxt_dpio_phy_init(display, rcomp_phy);
 
-	_bxt_dpio_phy_init(dev_priv, phy);
+	_bxt_dpio_phy_init(display, phy);
 
 	if (!was_enabled)
-		bxt_dpio_phy_uninit(dev_priv, rcomp_phy);
+		bxt_dpio_phy_uninit(display, rcomp_phy);
 }
 
 static bool __printf(6, 7)
-__phy_reg_verify_state(struct drm_i915_private *dev_priv, enum dpio_phy phy,
+__phy_reg_verify_state(struct intel_display *display, enum dpio_phy phy,
 		       i915_reg_t reg, u32 mask, u32 expected,
 		       const char *reg_fmt, ...)
 {
@@ -520,7 +518,7 @@ __phy_reg_verify_state(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 	va_list args;
 	u32 val;
 
-	val = intel_de_read(dev_priv, reg);
+	val = intel_de_read(display, reg);
 	if ((val & mask) == expected)
 		return true;
 
@@ -528,7 +526,7 @@ __phy_reg_verify_state(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 	vaf.fmt = reg_fmt;
 	vaf.va = &args;
 
-	drm_dbg(&dev_priv->drm, "DDI PHY %d reg %pV [%08x] state mismatch: "
+	drm_dbg(display->drm, "DDI PHY %d reg %pV [%08x] state mismatch: "
 			 "current %08x, expected %08x (mask %08x)\n",
 			 phy, &vaf, reg.reg, val, (val & ~mask) | expected,
 			 mask);
@@ -538,20 +536,20 @@ __phy_reg_verify_state(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 	return false;
 }
 
-bool bxt_dpio_phy_verify_state(struct drm_i915_private *dev_priv,
+bool bxt_dpio_phy_verify_state(struct intel_display *display,
 			       enum dpio_phy phy)
 {
 	const struct bxt_dpio_phy_info *phy_info;
 	u32 mask;
 	bool ok;
 
-	phy_info = bxt_get_phy_info(dev_priv, phy);
+	phy_info = bxt_get_phy_info(display, phy);
 
 #define _CHK(reg, mask, exp, fmt, ...)					\
-	__phy_reg_verify_state(dev_priv, phy, reg, mask, exp, fmt,	\
+	__phy_reg_verify_state(display, phy, reg, mask, exp, fmt,	\
 			       ## __VA_ARGS__)
 
-	if (!bxt_dpio_phy_is_enabled(dev_priv, phy))
+	if (!bxt_dpio_phy_is_enabled(display, phy))
 		return false;
 
 	ok = true;
@@ -575,7 +573,7 @@ bool bxt_dpio_phy_verify_state(struct drm_i915_private *dev_priv,
 			   "BXT_PORT_CL2CM_DW6(%d)", phy);
 
 	if (phy_info->rcomp_phy != -1) {
-		u32 grc_code = dev_priv->display.state.bxt_phy_grc;
+		u32 grc_code = display->state.bxt_phy_grc;
 
 		grc_code = GRC_CODE_FAST(grc_code) |
 			GRC_CODE_SLOW(grc_code) |
@@ -614,20 +612,20 @@ bxt_dpio_phy_calc_lane_lat_optim_mask(u8 lane_count)
 void bxt_dpio_phy_set_lane_optim_mask(struct intel_encoder *encoder,
 				      u8 lane_lat_optim_mask)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	enum dpio_phy phy;
 	enum dpio_channel ch;
 	int lane;
 
-	bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);
+	bxt_port_to_phy_channel(display, port, &phy, &ch);
 
 	for (lane = 0; lane < 4; lane++) {
 		/*
 		 * Note that on CHV this flag is called UPAR, but has
 		 * the same function.
 		 */
-		intel_de_rmw(dev_priv, BXT_PORT_TX_DW14_LN(phy, ch, lane),
+		intel_de_rmw(display, BXT_PORT_TX_DW14_LN(phy, ch, lane),
 			     LATENCY_OPTIM,
 			     lane_lat_optim_mask & BIT(lane) ? LATENCY_OPTIM : 0);
 	}
@@ -636,18 +634,18 @@ void bxt_dpio_phy_set_lane_optim_mask(struct intel_encoder *encoder,
 u8
 bxt_dpio_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	enum dpio_phy phy;
 	enum dpio_channel ch;
 	int lane;
 	u8 mask;
 
-	bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);
+	bxt_port_to_phy_channel(display, port, &phy, &ch);
 
 	mask = 0;
 	for (lane = 0; lane < 4; lane++) {
-		u32 val = intel_de_read(dev_priv,
+		u32 val = intel_de_read(display,
 					BXT_PORT_TX_DW14_LN(phy, ch, lane));
 
 		if (val & LATENCY_OPTIM)
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.h b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
index 226994dcb89b..a82939165546 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
@@ -10,9 +10,9 @@
 
 enum pipe;
 enum port;
-struct drm_i915_private;
 struct intel_crtc_state;
 struct intel_digital_port;
+struct intel_display;
 struct intel_encoder;
 
 enum dpio_channel {
@@ -27,15 +27,15 @@ enum dpio_phy {
 };
 
 #ifdef I915
-void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
+void bxt_port_to_phy_channel(struct intel_display *display, enum port port,
 			     enum dpio_phy *phy, enum dpio_channel *ch);
 void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *crtc_state);
-void bxt_dpio_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy);
-void bxt_dpio_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy);
-bool bxt_dpio_phy_is_enabled(struct drm_i915_private *dev_priv,
+void bxt_dpio_phy_init(struct intel_display *display, enum dpio_phy phy);
+void bxt_dpio_phy_uninit(struct intel_display *display, enum dpio_phy phy);
+bool bxt_dpio_phy_is_enabled(struct intel_display *display,
 			     enum dpio_phy phy);
-bool bxt_dpio_phy_verify_state(struct drm_i915_private *dev_priv,
+bool bxt_dpio_phy_verify_state(struct intel_display *display,
 			       enum dpio_phy phy);
 u8 bxt_dpio_phy_calc_lane_lat_optim_mask(u8 lane_count);
 void bxt_dpio_phy_set_lane_optim_mask(struct intel_encoder *encoder,
@@ -73,7 +73,7 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 void vlv_phy_reset_lanes(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *old_crtc_state);
 #else
-static inline void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
+static inline void bxt_port_to_phy_channel(struct intel_display *display, enum port port,
 					   enum dpio_phy *phy, enum dpio_channel *ch)
 {
 }
@@ -81,18 +81,18 @@ static inline void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,
 						  const struct intel_crtc_state *crtc_state)
 {
 }
-static inline void bxt_dpio_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
+static inline void bxt_dpio_phy_init(struct intel_display *display, enum dpio_phy phy)
 {
 }
-static inline void bxt_dpio_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
+static inline void bxt_dpio_phy_uninit(struct intel_display *display, enum dpio_phy phy)
 {
 }
-static inline bool bxt_dpio_phy_is_enabled(struct drm_i915_private *dev_priv,
+static inline bool bxt_dpio_phy_is_enabled(struct intel_display *display,
 					   enum dpio_phy phy)
 {
 	return false;
 }
-static inline bool bxt_dpio_phy_verify_state(struct drm_i915_private *dev_priv,
+static inline bool bxt_dpio_phy_verify_state(struct intel_display *display,
 					     enum dpio_phy phy)
 {
 	return true;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index f490b2157828..99962d8cc6b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2035,13 +2035,14 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
 			       struct intel_shared_dpll *pll,
 			       const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct intel_display *display = &i915->display;
 	const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 	enum dpio_phy phy;
 	enum dpio_channel ch;
 	u32 temp;
 
-	bxt_port_to_phy_channel(i915, port, &phy, &ch);
+	bxt_port_to_phy_channel(display, port, &phy, &ch);
 
 	/* Non-SSC reference */
 	intel_de_rmw(i915, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_REF_SEL);
@@ -2157,6 +2158,7 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 				     struct intel_shared_dpll *pll,
 				     struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct intel_display *display = &i915->display;
 	struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 	intel_wakeref_t wakeref;
@@ -2165,7 +2167,7 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 	u32 val;
 	bool ret;
 
-	bxt_port_to_phy_channel(i915, port, &phy, &ch);
+	bxt_port_to_phy_channel(display, port, &phy, &ch);
 
 	wakeref = intel_display_power_get_if_enabled(i915,
 						     POWER_DOMAIN_DISPLAY_CORE);
-- 
2.39.5

