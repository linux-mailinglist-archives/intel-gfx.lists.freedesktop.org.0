Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 380A58A353A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 19:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5FEB10F783;
	Fri, 12 Apr 2024 17:58:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kw4gnsR1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D494010F6FF
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 17:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712944717; x=1744480717;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=20s/wYSIbXkBLza6Ww1pZxvdGWNMJ5TPxKo6/EQ/LSY=;
 b=Kw4gnsR1lBfe/XTm9sM5N7a3wvAX1zB5hsVbygu0Ean1lIUJf8JKwrFi
 JxlhZDuO6QTr6Q/kCcXx5O5oEiGtcFmkFQtvbCgyC0IRoQsygNHkj0zYW
 YyYrvVjqTwlBaykuAM2487YHRHY9DO8EcVDv/L1GuWJMB+wVE9aYr+skn
 75y+4WN2ujEUePqyfy64zznvTOJWaOuFNwaWRaHLzMnUTmCRpT0sinaGV
 9n7tqMN8sWzIdD5H9XXzX29WCVf7gMrZAFwSKUG+iMX6yiFEztDWuBp7Z
 jLZdKzvIrJPEsIGsfzF6BSQt1bQXhn6bmmXJ1I6nx9Ro3ZoEMlcYNhjjT g==;
X-CSE-ConnectionGUID: T//NfBJBR8+H2hEsQYxhqg==
X-CSE-MsgGUID: DgQ1jbQ6RVGgRC6/qq8nAA==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8586971"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8586971"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 10:58:37 -0700
X-CSE-ConnectionGUID: BkfCiV8kRMG1l83Pwwy5/w==
X-CSE-MsgGUID: xu/MfEhFRRmlyIGreQX0EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21383070"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 10:58:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 20:58:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/8] drm/i915/dpio: s/ddi/dpio/ for bxt/glk PHY stuff
Date: Fri, 12 Apr 2024 20:58:16 +0300
Message-ID: <20240412175818.29217-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Since all of this lives in intel_dpio_phy.c let's rename the
bxt/glk functions to have bxt_dpio_phy_ namespace.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  10 +-
 .../i915/display/intel_display_power_well.c   |  18 +--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 122 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpio_phy.h |  48 +++----
 5 files changed, 100 insertions(+), 100 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3255d4e375af..a42c7f8abba0 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3517,8 +3517,8 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 		 */
 		intel_tc_port_set_fia_lane_count(dig_port, crtc_state->lane_count);
 	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		bxt_ddi_phy_set_lane_optim_mask(encoder,
-						crtc_state->lane_lat_optim_mask);
+		bxt_dpio_phy_set_lane_optim_mask(encoder,
+						 crtc_state->lane_lat_optim_mask);
 }
 
 static void adlp_tbt_to_dp_alt_switch_wa(struct intel_encoder *encoder)
@@ -3950,7 +3950,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		pipe_config->lane_lat_optim_mask =
-			bxt_ddi_phy_get_lane_lat_optim_mask(encoder);
+			bxt_dpio_phy_get_lane_lat_optim_mask(encoder);
 
 	intel_ddi_compute_min_voltage_level(pipe_config);
 
@@ -4227,7 +4227,7 @@ static int intel_ddi_compute_config(struct intel_encoder *encoder,
 
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		pipe_config->lane_lat_optim_mask =
-			bxt_ddi_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
+			bxt_dpio_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
 
 	intel_ddi_compute_min_voltage_level(pipe_config);
 
@@ -5079,7 +5079,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
 		else
 			encoder->set_signal_levels = icl_mg_phy_set_signal_levels;
 	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
-		encoder->set_signal_levels = bxt_ddi_phy_set_signal_levels;
+		encoder->set_signal_levels = bxt_dpio_phy_set_signal_levels;
 	} else {
 		encoder->set_signal_levels = hsw_set_signal_levels;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index e4de40228997..95609467664f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -900,39 +900,39 @@ static void hsw_power_well_sync_hw(struct drm_i915_private *dev_priv,
 static void bxt_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well)
 {
-	bxt_ddi_phy_init(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
+	bxt_dpio_phy_init(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
 }
 
 static void bxt_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 					    struct i915_power_well *power_well)
 {
-	bxt_ddi_phy_uninit(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
+	bxt_dpio_phy_uninit(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
 }
 
 static bool bxt_dpio_cmn_power_well_enabled(struct drm_i915_private *dev_priv,
 					    struct i915_power_well *power_well)
 {
-	return bxt_ddi_phy_is_enabled(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
+	return bxt_dpio_phy_is_enabled(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
 }
 
-static void bxt_verify_ddi_phy_power_wells(struct drm_i915_private *dev_priv)
+static void bxt_verify_dpio_phy_power_wells(struct drm_i915_private *dev_priv)
 {
 	struct i915_power_well *power_well;
 
 	power_well = lookup_power_well(dev_priv, BXT_DISP_PW_DPIO_CMN_A);
 	if (intel_power_well_refcount(power_well) > 0)
-		bxt_ddi_phy_verify_state(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
+		bxt_dpio_phy_verify_state(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
 
 	power_well = lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
 	if (intel_power_well_refcount(power_well) > 0)
-		bxt_ddi_phy_verify_state(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
+		bxt_dpio_phy_verify_state(dev_priv, i915_power_well_instance(power_well)->bxt.phy);
 
 	if (IS_GEMINILAKE(dev_priv)) {
 		power_well = lookup_power_well(dev_priv,
 					       GLK_DISP_PW_DPIO_CMN_C);
 		if (intel_power_well_refcount(power_well) > 0)
-			bxt_ddi_phy_verify_state(dev_priv,
-						 i915_power_well_instance(power_well)->bxt.phy);
+			bxt_dpio_phy_verify_state(dev_priv,
+						  i915_power_well_instance(power_well)->bxt.phy);
 	}
 }
 
@@ -979,7 +979,7 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	gen9_assert_dbuf_enabled(dev_priv);
 
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		bxt_verify_ddi_phy_power_wells(dev_priv);
+		bxt_verify_dpio_phy_power_wells(dev_priv);
 
 	if (DISPLAY_VER(dev_priv) >= 11)
 		/*
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index d43617734009..d447924245b7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -620,7 +620,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		pipe_config->lane_lat_optim_mask =
-			bxt_ddi_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
+			bxt_dpio_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
 
 	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 377963c0ed5f..77597edb391c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -124,9 +124,9 @@
  */
 
 /**
- * struct bxt_ddi_phy_info - Hold info for a broxton DDI phy
+ * struct bxt_dpio_phy_info - Hold info for a broxton DDI phy
  */
-struct bxt_ddi_phy_info {
+struct bxt_dpio_phy_info {
 	/**
 	 * @dual_channel: true if this phy has a second channel.
 	 */
@@ -162,7 +162,7 @@ struct bxt_ddi_phy_info {
 	} channel[2];
 };
 
-static const struct bxt_ddi_phy_info bxt_ddi_phy_info[] = {
+static const struct bxt_dpio_phy_info bxt_dpio_phy_info[] = {
 	[DPIO_PHY0] = {
 		.dual_channel = true,
 		.rcomp_phy = DPIO_PHY1,
@@ -184,7 +184,7 @@ static const struct bxt_ddi_phy_info bxt_ddi_phy_info[] = {
 	},
 };
 
-static const struct bxt_ddi_phy_info glk_ddi_phy_info[] = {
+static const struct bxt_dpio_phy_info glk_dpio_phy_info[] = {
 	[DPIO_PHY0] = {
 		.dual_channel = false,
 		.rcomp_phy = DPIO_PHY1,
@@ -217,23 +217,23 @@ static const struct bxt_ddi_phy_info glk_ddi_phy_info[] = {
 	},
 };
 
-static const struct bxt_ddi_phy_info *
+static const struct bxt_dpio_phy_info *
 bxt_get_phy_list(struct drm_i915_private *dev_priv, int *count)
 {
 	if (IS_GEMINILAKE(dev_priv)) {
-		*count =  ARRAY_SIZE(glk_ddi_phy_info);
-		return glk_ddi_phy_info;
+		*count =  ARRAY_SIZE(glk_dpio_phy_info);
+		return glk_dpio_phy_info;
 	} else {
-		*count =  ARRAY_SIZE(bxt_ddi_phy_info);
-		return bxt_ddi_phy_info;
+		*count =  ARRAY_SIZE(bxt_dpio_phy_info);
+		return bxt_dpio_phy_info;
 	}
 }
 
-static const struct bxt_ddi_phy_info *
+static const struct bxt_dpio_phy_info *
 bxt_get_phy_info(struct drm_i915_private *dev_priv, enum dpio_phy phy)
 {
 	int count;
-	const struct bxt_ddi_phy_info *phy_list =
+	const struct bxt_dpio_phy_info *phy_list =
 		bxt_get_phy_list(dev_priv, &count);
 
 	return &phy_list[phy];
@@ -242,7 +242,7 @@ bxt_get_phy_info(struct drm_i915_private *dev_priv, enum dpio_phy phy)
 void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
 			     enum dpio_phy *phy, enum dpio_channel *ch)
 {
-	const struct bxt_ddi_phy_info *phy_info, *phys;
+	const struct bxt_dpio_phy_info *phy_info, *phys;
 	int i, count;
 
 	phys = bxt_get_phy_list(dev_priv, &count);
@@ -274,10 +274,10 @@ void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
  * Like intel_de_rmw() but reads from a single per-lane register and
  * writes to the group register to write the same value to all the lanes.
  */
-static u32 bxt_ddi_phy_rmw_grp(struct drm_i915_private *i915,
-			       i915_reg_t reg_single,
-			       i915_reg_t reg_group,
-			       u32 clear, u32 set)
+static u32 bxt_dpio_phy_rmw_grp(struct drm_i915_private *i915,
+				i915_reg_t reg_single,
+				i915_reg_t reg_group,
+				u32 clear, u32 set)
 {
 	u32 old, val;
 
@@ -288,8 +288,8 @@ static u32 bxt_ddi_phy_rmw_grp(struct drm_i915_private *i915,
 	return old;
 }
 
-void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
-				   const struct intel_crtc_state *crtc_state)
+void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,
+				    const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int level = intel_ddi_level(encoder, crtc_state, 0);
@@ -309,40 +309,40 @@ void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
 	 * While we write to the group register to program all lanes at once we
 	 * can read only lane registers and we pick lanes 0/1 for that.
 	 */
-	bxt_ddi_phy_rmw_grp(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch),
-			    BXT_PORT_PCS_DW10_GRP(phy, ch),
-			    TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT, 0);
+	bxt_dpio_phy_rmw_grp(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch),
+			     BXT_PORT_PCS_DW10_GRP(phy, ch),
+			     TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT, 0);
 
-	bxt_ddi_phy_rmw_grp(dev_priv, BXT_PORT_TX_DW2_LN(phy, ch, 0),
-			    BXT_PORT_TX_DW2_GRP(phy, ch),
-			    MARGIN_000_MASK | UNIQ_TRANS_SCALE_MASK,
-			    MARGIN_000(trans->entries[level].bxt.margin) |
-			    UNIQ_TRANS_SCALE(trans->entries[level].bxt.scale));
+	bxt_dpio_phy_rmw_grp(dev_priv, BXT_PORT_TX_DW2_LN(phy, ch, 0),
+			     BXT_PORT_TX_DW2_GRP(phy, ch),
+			     MARGIN_000_MASK | UNIQ_TRANS_SCALE_MASK,
+			     MARGIN_000(trans->entries[level].bxt.margin) |
+			     UNIQ_TRANS_SCALE(trans->entries[level].bxt.scale));
 
-	bxt_ddi_phy_rmw_grp(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, 0),
-			    BXT_PORT_TX_DW3_GRP(phy, ch),
-			    SCALE_DCOMP_METHOD,
-			    trans->entries[level].bxt.enable ?
-			    SCALE_DCOMP_METHOD : 0);
+	bxt_dpio_phy_rmw_grp(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, 0),
+			     BXT_PORT_TX_DW3_GRP(phy, ch),
+			     SCALE_DCOMP_METHOD,
+			     trans->entries[level].bxt.enable ?
+			     SCALE_DCOMP_METHOD : 0);
 
 	val = intel_de_read(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, 0));
 	if ((val & UNIQUE_TRANGE_EN_METHOD) && !(val & SCALE_DCOMP_METHOD))
 		drm_err(&dev_priv->drm,
 			"Disabled scaling while ouniqetrangenmethod was set");
 
-	bxt_ddi_phy_rmw_grp(dev_priv, BXT_PORT_TX_DW4_LN(phy, ch, 0),
-			    BXT_PORT_TX_DW4_GRP(phy, ch), DE_EMPHASIS_MASK,
-			    DE_EMPHASIS(trans->entries[level].bxt.deemphasis));
+	bxt_dpio_phy_rmw_grp(dev_priv, BXT_PORT_TX_DW4_LN(phy, ch, 0),
+			     BXT_PORT_TX_DW4_GRP(phy, ch), DE_EMPHASIS_MASK,
+			     DE_EMPHASIS(trans->entries[level].bxt.deemphasis));
 
-	bxt_ddi_phy_rmw_grp(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch),
-			    BXT_PORT_PCS_DW10_GRP(phy, ch),
-			    0, TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT);
+	bxt_dpio_phy_rmw_grp(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch),
+			     BXT_PORT_PCS_DW10_GRP(phy, ch),
+			     0, TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT);
 }
 
-bool bxt_ddi_phy_is_enabled(struct drm_i915_private *dev_priv,
-			    enum dpio_phy phy)
+bool bxt_dpio_phy_is_enabled(struct drm_i915_private *dev_priv,
+			     enum dpio_phy phy)
 {
-	const struct bxt_ddi_phy_info *phy_info;
+	const struct bxt_dpio_phy_info *phy_info;
 
 	phy_info = bxt_get_phy_info(dev_priv, phy);
 
@@ -383,20 +383,20 @@ static void bxt_phy_wait_grc_done(struct drm_i915_private *dev_priv,
 			phy);
 }
 
-static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
-			      enum dpio_phy phy)
+static void _bxt_dpio_phy_init(struct drm_i915_private *dev_priv,
+			       enum dpio_phy phy)
 {
-	const struct bxt_ddi_phy_info *phy_info;
+	const struct bxt_dpio_phy_info *phy_info;
 	u32 val;
 
 	phy_info = bxt_get_phy_info(dev_priv, phy);
 
-	if (bxt_ddi_phy_is_enabled(dev_priv, phy)) {
+	if (bxt_dpio_phy_is_enabled(dev_priv, phy)) {
 		/* Still read out the GRC value for state verification */
 		if (phy_info->rcomp_phy != -1)
 			dev_priv->display.state.bxt_phy_grc = bxt_get_grc(dev_priv, phy);
 
-		if (bxt_ddi_phy_verify_state(dev_priv, phy)) {
+		if (bxt_dpio_phy_verify_state(dev_priv, phy)) {
 			drm_dbg(&dev_priv->drm, "DDI PHY %d already enabled, "
 				"won't reprogram it\n", phy);
 			return;
@@ -464,9 +464,9 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 	intel_de_rmw(dev_priv, BXT_PHY_CTL_FAMILY(phy), 0, COMMON_RESET_DIS);
 }
 
-void bxt_ddi_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
+void bxt_dpio_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
 {
-	const struct bxt_ddi_phy_info *phy_info;
+	const struct bxt_dpio_phy_info *phy_info;
 
 	phy_info = bxt_get_phy_info(dev_priv, phy);
 
@@ -475,9 +475,9 @@ void bxt_ddi_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
 	intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, phy_info->pwron_mask, 0);
 }
 
-void bxt_ddi_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
+void bxt_dpio_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
 {
-	const struct bxt_ddi_phy_info *phy_info =
+	const struct bxt_dpio_phy_info *phy_info =
 		bxt_get_phy_info(dev_priv, phy);
 	enum dpio_phy rcomp_phy = phy_info->rcomp_phy;
 	bool was_enabled;
@@ -486,19 +486,19 @@ void bxt_ddi_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
 
 	was_enabled = true;
 	if (rcomp_phy != -1)
-		was_enabled = bxt_ddi_phy_is_enabled(dev_priv, rcomp_phy);
+		was_enabled = bxt_dpio_phy_is_enabled(dev_priv, rcomp_phy);
 
 	/*
 	 * We need to copy the GRC calibration value from rcomp_phy,
 	 * so make sure it's powered up.
 	 */
 	if (!was_enabled)
-		_bxt_ddi_phy_init(dev_priv, rcomp_phy);
+		_bxt_dpio_phy_init(dev_priv, rcomp_phy);
 
-	_bxt_ddi_phy_init(dev_priv, phy);
+	_bxt_dpio_phy_init(dev_priv, phy);
 
 	if (!was_enabled)
-		bxt_ddi_phy_uninit(dev_priv, rcomp_phy);
+		bxt_dpio_phy_uninit(dev_priv, rcomp_phy);
 }
 
 static bool __printf(6, 7)
@@ -528,10 +528,10 @@ __phy_reg_verify_state(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 	return false;
 }
 
-bool bxt_ddi_phy_verify_state(struct drm_i915_private *dev_priv,
-			      enum dpio_phy phy)
+bool bxt_dpio_phy_verify_state(struct drm_i915_private *dev_priv,
+			       enum dpio_phy phy)
 {
-	const struct bxt_ddi_phy_info *phy_info;
+	const struct bxt_dpio_phy_info *phy_info;
 	u32 mask;
 	bool ok;
 
@@ -541,7 +541,7 @@ bool bxt_ddi_phy_verify_state(struct drm_i915_private *dev_priv,
 	__phy_reg_verify_state(dev_priv, phy, reg, mask, exp, fmt,	\
 			       ## __VA_ARGS__)
 
-	if (!bxt_ddi_phy_is_enabled(dev_priv, phy))
+	if (!bxt_dpio_phy_is_enabled(dev_priv, phy))
 		return false;
 
 	ok = true;
@@ -585,7 +585,7 @@ bool bxt_ddi_phy_verify_state(struct drm_i915_private *dev_priv,
 }
 
 u8
-bxt_ddi_phy_calc_lane_lat_optim_mask(u8 lane_count)
+bxt_dpio_phy_calc_lane_lat_optim_mask(u8 lane_count)
 {
 	switch (lane_count) {
 	case 1:
@@ -601,8 +601,8 @@ bxt_ddi_phy_calc_lane_lat_optim_mask(u8 lane_count)
 	}
 }
 
-void bxt_ddi_phy_set_lane_optim_mask(struct intel_encoder *encoder,
-				     u8 lane_lat_optim_mask)
+void bxt_dpio_phy_set_lane_optim_mask(struct intel_encoder *encoder,
+				      u8 lane_lat_optim_mask)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
@@ -624,7 +624,7 @@ void bxt_ddi_phy_set_lane_optim_mask(struct intel_encoder *encoder,
 }
 
 u8
-bxt_ddi_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder)
+bxt_dpio_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.h b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
index 9adc4e8c1738..226994dcb89b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
@@ -29,18 +29,18 @@ enum dpio_phy {
 #ifdef I915
 void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, enum port port,
 			     enum dpio_phy *phy, enum dpio_channel *ch);
-void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
-				   const struct intel_crtc_state *crtc_state);
-void bxt_ddi_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy);
-void bxt_ddi_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy);
-bool bxt_ddi_phy_is_enabled(struct drm_i915_private *dev_priv,
-			    enum dpio_phy phy);
-bool bxt_ddi_phy_verify_state(struct drm_i915_private *dev_priv,
-			      enum dpio_phy phy);
-u8 bxt_ddi_phy_calc_lane_lat_optim_mask(u8 lane_count);
-void bxt_ddi_phy_set_lane_optim_mask(struct intel_encoder *encoder,
-				     u8 lane_lat_optim_mask);
-u8 bxt_ddi_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder);
+void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,
+				    const struct intel_crtc_state *crtc_state);
+void bxt_dpio_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy);
+void bxt_dpio_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy);
+bool bxt_dpio_phy_is_enabled(struct drm_i915_private *dev_priv,
+			     enum dpio_phy phy);
+bool bxt_dpio_phy_verify_state(struct drm_i915_private *dev_priv,
+			       enum dpio_phy phy);
+u8 bxt_dpio_phy_calc_lane_lat_optim_mask(u8 lane_count);
+void bxt_dpio_phy_set_lane_optim_mask(struct intel_encoder *encoder,
+				      u8 lane_lat_optim_mask);
+u8 bxt_dpio_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder);
 
 enum dpio_channel vlv_dig_port_to_channel(struct intel_digital_port *dig_port);
 enum dpio_phy vlv_dig_port_to_phy(struct intel_digital_port *dig_port);
@@ -77,35 +77,35 @@ static inline void bxt_port_to_phy_channel(struct drm_i915_private *dev_priv, en
 					   enum dpio_phy *phy, enum dpio_channel *ch)
 {
 }
-static inline void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
-						 const struct intel_crtc_state *crtc_state)
+static inline void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,
+						  const struct intel_crtc_state *crtc_state)
 {
 }
-static inline void bxt_ddi_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
+static inline void bxt_dpio_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
 {
 }
-static inline void bxt_ddi_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
+static inline void bxt_dpio_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
 {
 }
-static inline bool bxt_ddi_phy_is_enabled(struct drm_i915_private *dev_priv,
-					  enum dpio_phy phy)
+static inline bool bxt_dpio_phy_is_enabled(struct drm_i915_private *dev_priv,
+					   enum dpio_phy phy)
 {
 	return false;
 }
-static inline bool bxt_ddi_phy_verify_state(struct drm_i915_private *dev_priv,
-					    enum dpio_phy phy)
+static inline bool bxt_dpio_phy_verify_state(struct drm_i915_private *dev_priv,
+					     enum dpio_phy phy)
 {
 	return true;
 }
-static inline u8 bxt_ddi_phy_calc_lane_lat_optim_mask(u8 lane_count)
+static inline u8 bxt_dpio_phy_calc_lane_lat_optim_mask(u8 lane_count)
 {
 	return 0;
 }
-static inline void bxt_ddi_phy_set_lane_optim_mask(struct intel_encoder *encoder,
-						   u8 lane_lat_optim_mask)
+static inline void bxt_dpio_phy_set_lane_optim_mask(struct intel_encoder *encoder,
+						    u8 lane_lat_optim_mask)
 {
 }
-static inline u8 bxt_ddi_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder)
+static inline u8 bxt_dpio_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder)
 {
 	return 0;
 }
-- 
2.43.2

