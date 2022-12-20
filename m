Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3F065200F
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 13:00:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2469B10E3B9;
	Tue, 20 Dec 2022 12:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7687710E0A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 12:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671537642; x=1703073642;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZDa/4XotJvlOEOtBSdO9d2xO3jgTmbBnU9ovtnaEJHQ=;
 b=Ui5u3lCJd/HaS683EZ8em4HqDNikw7I/dSOnnXC18Cked2hcei3eyoZB
 xkdL/El1XWGWLIaPgRRlf6wMj11OnPbgANJnoxzq7OxyuyFrIz4g/bpZA
 dVsdhm38SSOtkhp5WDLWY9OPUuCK2ZkW2OnHO37c9CYcbHuIGjLeVR7Xk
 n/kSuRi4IJYnheFTYMRMu0WiGnBhcwQK+7KSSnVrC8XLmdAbZV/yUJpEh
 ZVtnfidvBB/EU1alycCfVoxXAtmI9QhX3sm8k9i5132RU0u5KhZ+6lipN
 cxkia6yIiBL9NMHeHAEgYRmC456D0wU5LJVa2BsSeJOgCLYbNEzQ0fMiE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="346698129"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="346698129"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 04:00:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="650965181"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="650965181"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 04:00:38 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Dec 2022 13:00:23 +0100
Message-Id: <20221220120023.1214620-2-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221220120023.1214620-1-andrzej.hajda@intel.com>
References: <20221220120023.1214620-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display/misc: use intel_de_rmw if
 possible
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The helper makes the code more compact and readable.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         | 12 ++--
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  8 +--
 .../gpu/drm/i915/display/intel_backlight.c    | 59 +++++++------------
 .../gpu/drm/i915/display/intel_combo_phy.c    | 43 ++++----------
 drivers/gpu/drm/i915/display/intel_ddi.c      | 49 +++++----------
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 51 +++++-----------
 drivers/gpu/drm/i915/display/intel_drrs.c     | 12 +---
 drivers/gpu/drm/i915/display/intel_dvo.c      |  7 +--
 drivers/gpu/drm/i915/display/intel_fdi.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 30 ++--------
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 15 ++---
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 40 ++++---------
 drivers/gpu/drm/i915/display/intel_lvds.c     | 12 ++--
 .../gpu/drm/i915/display/intel_pch_display.c  | 41 ++++---------
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 10 +---
 drivers/gpu/drm/i915/display/intel_pps.c      | 14 ++---
 drivers/gpu/drm/i915/display/intel_psr.c      | 40 ++++---------
 drivers/gpu/drm/i915/display/intel_tv.c       | 18 ++----
 18 files changed, 141 insertions(+), 323 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 24ef36ec2d3d3c..9629b174ec5d2c 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -136,16 +136,12 @@ static void intel_dp_prepare(struct intel_encoder *encoder,
 
 		intel_dp->DP |= DP_PIPE_SEL_IVB(crtc->pipe);
 	} else if (HAS_PCH_CPT(dev_priv) && port != PORT_A) {
-		u32 trans_dp;
-
 		intel_dp->DP |= DP_LINK_TRAIN_OFF_CPT;
 
-		trans_dp = intel_de_read(dev_priv, TRANS_DP_CTL(crtc->pipe));
-		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
-			trans_dp |= TRANS_DP_ENH_FRAMING;
-		else
-			trans_dp &= ~TRANS_DP_ENH_FRAMING;
-		intel_de_write(dev_priv, TRANS_DP_CTL(crtc->pipe), trans_dp);
+		intel_de_rmw(dev_priv, TRANS_DP_CTL(crtc->pipe),
+			     TRANS_DP_ENH_FRAMING,
+			     drm_dp_enhanced_frame_cap(intel_dp->dpcd) ?
+			     TRANS_DP_ENH_FRAMING : 0);
 	} else {
 		if (IS_G4X(dev_priv) && pipe_config->limited_color_range)
 			intel_dp->DP |= DP_COLOR_RANGE_16_235;
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index c3580d96765c6c..f58849b416ea89 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -271,8 +271,8 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
 	 */
 
 	if (pipe_config->pipe_bpp > 24) {
-		intel_de_write(dev_priv, TRANS_CHICKEN1(pipe),
-			       intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) | TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
+		intel_de_rmw(dev_priv, TRANS_CHICKEN1(pipe),
+			     0, TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
 
 		temp &= ~SDVO_COLOR_FORMAT_MASK;
 		temp |= SDVO_COLOR_FORMAT_8bpc;
@@ -288,8 +288,8 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
 		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
 		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 
-		intel_de_write(dev_priv, TRANS_CHICKEN1(pipe),
-			       intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) & ~TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
+		intel_de_rmw(dev_priv, TRANS_CHICKEN1(pipe),
+			     TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, 0);
 	}
 
 	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 5b7da72c95b8c5..b088921c543eaa 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -349,8 +349,7 @@ static void lpt_disable_backlight(const struct drm_connector_state *old_conn_sta
 		intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
 	}
 
-	tmp = intel_de_read(i915, BLC_PWM_PCH_CTL1);
-	intel_de_write(i915, BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
+	tmp = intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
 }
 
 static void pch_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -361,11 +360,9 @@ static void pch_disable_backlight(const struct drm_connector_state *old_conn_sta
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(i915, BLC_PWM_CPU_CTL2);
-	intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
+	intel_de_rmw(i915, BLC_PWM_CPU_CTL2, BLM_PWM_ENABLE, 0);
 
-	tmp = intel_de_read(i915, BLC_PWM_PCH_CTL1);
-	intel_de_write(i915, BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
+	tmp = intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
 }
 
 static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -380,8 +377,7 @@ static void i965_disable_backlight(const struct drm_connector_state *old_conn_st
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(i915, BLC_PWM_CTL2);
-	intel_de_write(i915, BLC_PWM_CTL2, tmp & ~BLM_PWM_ENABLE);
+	tmp = intel_de_rmw(i915, BLC_PWM_CTL2, BLM_PWM_ENABLE, 0);
 }
 
 static void vlv_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -393,8 +389,7 @@ static void vlv_disable_backlight(const struct drm_connector_state *old_conn_sta
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(i915, VLV_BLC_PWM_CTL2(pipe));
-	intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), tmp & ~BLM_PWM_ENABLE);
+	tmp = intel_de_rmw(i915, VLV_BLC_PWM_CTL2(pipe), BLM_PWM_ENABLE, 0);
 }
 
 static void bxt_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -402,19 +397,14 @@ static void bxt_disable_backlight(const struct drm_connector_state *old_conn_sta
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
-	u32 tmp;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
-	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
-		       tmp & ~BXT_BLC_PWM_ENABLE);
+	intel_de_rmw(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
+		     BXT_BLC_PWM_ENABLE, 0);
 
-	if (panel->backlight.controller == 1) {
-		val = intel_de_read(i915, UTIL_PIN_CTL);
-		val &= ~UTIL_PIN_ENABLE;
-		intel_de_write(i915, UTIL_PIN_CTL, val);
-	}
+	if (panel->backlight.controller == 1)
+		intel_de_rmw(i915, UTIL_PIN_CTL, UTIL_PIN_ENABLE, 0);
 }
 
 static void cnp_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -422,13 +412,11 @@ static void cnp_disable_backlight(const struct drm_connector_state *old_conn_sta
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
-	u32 tmp;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
-	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
-		       tmp & ~BXT_BLC_PWM_ENABLE);
+	intel_de_rmw(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
+		     BXT_BLC_PWM_ENABLE, 0);
 }
 
 static void ext_pwm_disable_backlight(const struct drm_connector_state *old_conn_state, u32 level)
@@ -478,7 +466,7 @@ static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
-	u32 pch_ctl1, pch_ctl2, schicken;
+	u32 pch_ctl1, pch_ctl2;
 
 	pch_ctl1 = intel_de_read(i915, BLC_PWM_PCH_CTL1);
 	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
@@ -487,21 +475,14 @@ static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
 		intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
 	}
 
-	if (HAS_PCH_LPT(i915)) {
-		schicken = intel_de_read(i915, SOUTH_CHICKEN2);
-		if (panel->backlight.alternate_pwm_increment)
-			schicken |= LPT_PWM_GRANULARITY;
-		else
-			schicken &= ~LPT_PWM_GRANULARITY;
-		intel_de_write(i915, SOUTH_CHICKEN2, schicken);
-	} else {
-		schicken = intel_de_read(i915, SOUTH_CHICKEN1);
-		if (panel->backlight.alternate_pwm_increment)
-			schicken |= SPT_PWM_GRANULARITY;
-		else
-			schicken &= ~SPT_PWM_GRANULARITY;
-		intel_de_write(i915, SOUTH_CHICKEN1, schicken);
-	}
+	if (HAS_PCH_LPT(i915))
+		intel_de_rmw(i915, SOUTH_CHICKEN2, LPT_PWM_GRANULARITY,
+			     panel->backlight.alternate_pwm_increment ?
+			     LPT_PWM_GRANULARITY : 0);
+	else
+		intel_de_rmw(i915, SOUTH_CHICKEN1, SPT_PWM_GRANULARITY,
+			     panel->backlight.alternate_pwm_increment ?
+			     SPT_PWM_GRANULARITY : 0);
 
 	pch_ctl2 = panel->backlight.pwm_level_max << 16;
 	intel_de_write(i915, BLC_PWM_PCH_CTL2, pch_ctl2);
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 8b870b2dd4f9d9..27e98eabb0060a 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -78,14 +78,11 @@ static void icl_set_procmon_ref_values(struct drm_i915_private *dev_priv,
 				       enum phy phy)
 {
 	const struct icl_procmon *procmon;
-	u32 val;
 
 	procmon = icl_get_procmon_ref_values(dev_priv, phy);
 
-	val = intel_de_read(dev_priv, ICL_PORT_COMP_DW1(phy));
-	val &= ~((0xff << 16) | 0xff);
-	val |= procmon->dw1;
-	intel_de_write(dev_priv, ICL_PORT_COMP_DW1(phy), val);
+	intel_de_rmw(dev_priv, ICL_PORT_COMP_DW1(phy),
+		     (0xff << 16) | 0xff, procmon->dw1);
 
 	intel_de_write(dev_priv, ICL_PORT_COMP_DW9(phy), procmon->dw9);
 	intel_de_write(dev_priv, ICL_PORT_COMP_DW10(phy), procmon->dw10);
@@ -267,7 +264,6 @@ void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
 				    int lane_count, bool lane_reversal)
 {
 	u8 lane_mask;
-	u32 val;
 
 	if (is_dsi) {
 		drm_WARN_ON(&dev_priv->drm, lane_reversal);
@@ -308,10 +304,8 @@ void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
 		}
 	}
 
-	val = intel_de_read(dev_priv, ICL_PORT_CL_DW10(phy));
-	val &= ~PWR_DOWN_LN_MASK;
-	val |= lane_mask;
-	intel_de_write(dev_priv, ICL_PORT_CL_DW10(phy), val);
+	intel_de_rmw(dev_priv, ICL_PORT_CL_DW10(phy),
+		     PWR_DOWN_LN_MASK, lane_mask);
 }
 
 static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
@@ -366,19 +360,13 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 
 		icl_set_procmon_ref_values(dev_priv, phy);
 
-		if (phy_is_master(dev_priv, phy)) {
-			val = intel_de_read(dev_priv, ICL_PORT_COMP_DW8(phy));
-			val |= IREFGEN;
-			intel_de_write(dev_priv, ICL_PORT_COMP_DW8(phy), val);
-		}
-
-		val = intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy));
-		val |= COMP_INIT;
-		intel_de_write(dev_priv, ICL_PORT_COMP_DW0(phy), val);
+		if (phy_is_master(dev_priv, phy))
+			intel_de_rmw(dev_priv, ICL_PORT_COMP_DW8(phy),
+				     0, IREFGEN);
 
-		val = intel_de_read(dev_priv, ICL_PORT_CL_DW5(phy));
-		val |= CL_POWER_DOWN_ENABLE;
-		intel_de_write(dev_priv, ICL_PORT_CL_DW5(phy), val);
+		intel_de_rmw(dev_priv, ICL_PORT_COMP_DW0(phy), 0, COMP_INIT);
+		intel_de_rmw(dev_priv, ICL_PORT_CL_DW5(phy),
+			     0, CL_POWER_DOWN_ENABLE);
 	}
 }
 
@@ -387,8 +375,6 @@ static void icl_combo_phys_uninit(struct drm_i915_private *dev_priv)
 	enum phy phy;
 
 	for_each_combo_phy_reverse(dev_priv, phy) {
-		u32 val;
-
 		if (phy == PHY_A &&
 		    !icl_combo_phy_verify_state(dev_priv, phy)) {
 			if (IS_TIGERLAKE(dev_priv) || IS_DG1(dev_priv)) {
@@ -410,14 +396,11 @@ static void icl_combo_phys_uninit(struct drm_i915_private *dev_priv)
 		if (!has_phy_misc(dev_priv, phy))
 			goto skip_phy_misc;
 
-		val = intel_de_read(dev_priv, ICL_PHY_MISC(phy));
-		val |= ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN;
-		intel_de_write(dev_priv, ICL_PHY_MISC(phy), val);
+		intel_de_rmw(dev_priv, ICL_PHY_MISC(phy), 0,
+			     ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN);
 
 skip_phy_misc:
-		val = intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy));
-		val &= ~COMP_INIT;
-		intel_de_write(dev_priv, ICL_PORT_COMP_DW0(phy), val);
+		intel_de_rmw(dev_priv, ICL_PORT_COMP_DW0(phy), COMP_INIT, 0);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 69595cbb276651..121649015ddb15 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -631,19 +631,14 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	intel_wakeref_t wakeref;
 	int ret = 0;
-	u32 tmp;
 
 	wakeref = intel_display_power_get_if_enabled(dev_priv,
 						     intel_encoder->power_domain);
 	if (drm_WARN_ON(dev, !wakeref))
 		return -ENXIO;
 
-	tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
-	if (enable)
-		tmp |= hdcp_mask;
-	else
-		tmp &= ~hdcp_mask;
-	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), tmp);
+	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder),
+		     hdcp_mask, enable ? hdcp_mask : 0);
 	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
 	return ret;
 }
@@ -2187,15 +2182,13 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp;
-	u32 val;
 
 	if (!crtc_state->fec_enable)
 		return;
 
 	intel_dp = enc_to_intel_dp(encoder);
-	val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
-	val |= DP_TP_CTL_FEC_ENABLE;
-	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
+	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+		     0, DP_TP_CTL_FEC_ENABLE);
 }
 
 static void intel_ddi_disable_fec_state(struct intel_encoder *encoder,
@@ -2203,15 +2196,13 @@ static void intel_ddi_disable_fec_state(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp;
-	u32 val;
 
 	if (!crtc_state->fec_enable)
 		return;
 
 	intel_dp = enc_to_intel_dp(encoder);
-	val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
-	val &= ~DP_TP_CTL_FEC_ENABLE;
-	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
+	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+		     DP_TP_CTL_FEC_ENABLE, 0);
 	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
 }
 
@@ -2609,12 +2600,10 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
 		wait = true;
 	}
 
-	if (intel_crtc_has_dp_encoder(crtc_state)) {
-		val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
-		val &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
-		val |= DP_TP_CTL_LINK_TRAIN_PAT1;
-		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
-	}
+	if (intel_crtc_has_dp_encoder(crtc_state))
+		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+		             DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK,
+		             DP_TP_CTL_LINK_TRAIN_PAT1);
 
 	/* Disable FEC in DP Sink */
 	intel_ddi_disable_fec_state(encoder, crtc_state);
@@ -2647,15 +2636,10 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		if (is_mst) {
 			enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
-			u32 val;
 
-			val = intel_de_read(dev_priv,
-					    TRANS_DDI_FUNC_CTL(cpu_transcoder));
-			val &= ~(TGL_TRANS_DDI_PORT_MASK |
-				 TRANS_DDI_MODE_SELECT_MASK);
-			intel_de_write(dev_priv,
-				       TRANS_DDI_FUNC_CTL(cpu_transcoder),
-				       val);
+			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder),
+				     TGL_TRANS_DDI_PORT_MASK | TRANS_DDI_MODE_SELECT_MASK,
+				     0);
 		}
 	} else {
 		if (!is_mst)
@@ -3207,12 +3191,9 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
-	u32 val;
 
-	val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
-	val &= ~DP_TP_CTL_LINK_TRAIN_MASK;
-	val |= DP_TP_CTL_LINK_TRAIN_IDLE;
-	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
+	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+		     DP_TP_CTL_LINK_TRAIN_MASK, DP_TP_CTL_LINK_TRAIN_IDLE);
 
 	/*
 	 * Until TGL on PORT_A we can have only eDP in SST mode. There the only
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 7eb7440b31803f..9d825fdaa29055 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -389,9 +389,7 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 			"force reprogramming it\n", phy);
 	}
 
-	val = intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON);
-	val |= phy_info->pwron_mask;
-	intel_de_write(dev_priv, BXT_P_CR_GT_DISP_PWRON, val);
+	intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, 0, phy_info->pwron_mask);
 
 	/*
 	 * The PHY registers start out inaccessible and respond to reads with
@@ -410,27 +408,19 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 			phy);
 
 	/* Program PLL Rcomp code offset */
-	val = intel_de_read(dev_priv, BXT_PORT_CL1CM_DW9(phy));
-	val &= ~IREF0RC_OFFSET_MASK;
-	val |= 0xE4 << IREF0RC_OFFSET_SHIFT;
-	intel_de_write(dev_priv, BXT_PORT_CL1CM_DW9(phy), val);
+	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW9(phy), IREF0RC_OFFSET_MASK,
+		     0xE4 << IREF0RC_OFFSET_SHIFT);
 
-	val = intel_de_read(dev_priv, BXT_PORT_CL1CM_DW10(phy));
-	val &= ~IREF1RC_OFFSET_MASK;
-	val |= 0xE4 << IREF1RC_OFFSET_SHIFT;
-	intel_de_write(dev_priv, BXT_PORT_CL1CM_DW10(phy), val);
+	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW10(phy), IREF1RC_OFFSET_MASK,
+		     0xE4 << IREF1RC_OFFSET_SHIFT);
 
 	/* Program power gating */
-	val = intel_de_read(dev_priv, BXT_PORT_CL1CM_DW28(phy));
-	val |= OCL1_POWER_DOWN_EN | DW28_OLDO_DYN_PWR_DOWN_EN |
-		SUS_CLK_CONFIG;
-	intel_de_write(dev_priv, BXT_PORT_CL1CM_DW28(phy), val);
-
-	if (phy_info->dual_channel) {
-		val = intel_de_read(dev_priv, BXT_PORT_CL2CM_DW6(phy));
-		val |= DW6_OLDO_DYN_PWR_DOWN_EN;
-		intel_de_write(dev_priv, BXT_PORT_CL2CM_DW6(phy), val);
-	}
+	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW28(phy), 0,
+		     OCL1_POWER_DOWN_EN | DW28_OLDO_DYN_PWR_DOWN_EN | SUS_CLK_CONFIG);
+
+	if (phy_info->dual_channel)
+		intel_de_rmw(dev_priv, BXT_PORT_CL2CM_DW6(phy), 0,
+			     DW6_OLDO_DYN_PWR_DOWN_EN);
 
 	if (phy_info->rcomp_phy != -1) {
 		u32 grc_code;
@@ -448,34 +438,25 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 			   val << GRC_CODE_SLOW_SHIFT |
 			   val;
 		intel_de_write(dev_priv, BXT_PORT_REF_DW6(phy), grc_code);
-
-		val = intel_de_read(dev_priv, BXT_PORT_REF_DW8(phy));
-		val |= GRC_DIS | GRC_RDY_OVRD;
-		intel_de_write(dev_priv, BXT_PORT_REF_DW8(phy), val);
+		intel_de_rmw(dev_priv, BXT_PORT_REF_DW8(phy),
+			     0, GRC_DIS | GRC_RDY_OVRD);
 	}
 
 	if (phy_info->reset_delay)
 		udelay(phy_info->reset_delay);
 
-	val = intel_de_read(dev_priv, BXT_PHY_CTL_FAMILY(phy));
-	val |= COMMON_RESET_DIS;
-	intel_de_write(dev_priv, BXT_PHY_CTL_FAMILY(phy), val);
+	intel_de_rmw(dev_priv, BXT_PHY_CTL_FAMILY(phy), 0, COMMON_RESET_DIS);
 }
 
 void bxt_ddi_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
 {
 	const struct bxt_ddi_phy_info *phy_info;
-	u32 val;
 
 	phy_info = bxt_get_phy_info(dev_priv, phy);
 
-	val = intel_de_read(dev_priv, BXT_PHY_CTL_FAMILY(phy));
-	val &= ~COMMON_RESET_DIS;
-	intel_de_write(dev_priv, BXT_PHY_CTL_FAMILY(phy), val);
+	intel_de_rmw(dev_priv, BXT_PHY_CTL_FAMILY(phy), COMMON_RESET_DIS, 0);
 
-	val = intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON);
-	val &= ~phy_info->pwron_mask;
-	intel_de_write(dev_priv, BXT_P_CR_GT_DISP_PWRON, val);
+	intel_de_rmw(dev_priv, BXT_P_CR_GT_DISP_PWRON, phy_info->pwron_mask, 0);
 }
 
 void bxt_ddi_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 5b9e44443814e9..a52974f5f66042 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -68,21 +68,15 @@ intel_drrs_set_refresh_rate_pipeconf(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc->drrs.cpu_transcoder;
-	u32 val, bit;
+	u32 bit;
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		bit = PIPECONF_REFRESH_RATE_ALT_VLV;
 	else
 		bit = PIPECONF_REFRESH_RATE_ALT_ILK;
 
-	val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
-
-	if (refresh_rate == DRRS_REFRESH_RATE_LOW)
-		val |= bit;
-	else
-		val &= ~bit;
-
-	intel_de_write(dev_priv, PIPECONF(cpu_transcoder), val);
+	intel_de_rmw(dev_priv, PIPECONF(cpu_transcoder),
+		     bit, refresh_rate == DRRS_REFRESH_RATE_LOW ? bit : 0);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 4aeae0f3ac9172..77d413781020de 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -444,11 +444,8 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
 	 * the clock enabled before we attempt to initialize
 	 * the device.
 	 */
-	for_each_pipe(dev_priv, pipe) {
-		dpll[pipe] = intel_de_read(dev_priv, DPLL(pipe));
-		intel_de_write(dev_priv, DPLL(pipe),
-			       dpll[pipe] | DPLL_DVO_2X_MODE);
-	}
+	for_each_pipe(dev_priv, pipe)
+		dpll[pipe] = intel_de_rmw(dev_priv, DPLL(pipe), 0, DPLL_DVO_2X_MODE);
 
 	ret = dvo->dev_ops->init(&intel_dvo->dev, i2c);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index f62d9a9313498c..02bba5bcc00afc 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -366,8 +366,7 @@ void intel_fdi_normal_train(struct intel_crtc *crtc)
 
 	/* IVB wants error correction enabled */
 	if (IS_IVYBRIDGE(dev_priv))
-		intel_de_write(dev_priv, reg,
-			       intel_de_read(dev_priv, reg) | FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);
+		intel_de_rmw(dev_priv, reg, 0, FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);
 }
 
 /* The FDI link training functions for ILK/Ibexpeak. */
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 0bc4f6b48e80ae..3ddfc8080ee890 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -215,41 +215,23 @@ intel_gmbus_reset(struct drm_i915_private *i915)
 static void pnv_gmbus_clock_gating(struct drm_i915_private *i915,
 				   bool enable)
 {
-	u32 val;
-
 	/* When using bit bashing for I2C, this bit needs to be set to 1 */
-	val = intel_de_read(i915, DSPCLK_GATE_D(i915));
-	if (!enable)
-		val |= PNV_GMBUSUNIT_CLOCK_GATE_DISABLE;
-	else
-		val &= ~PNV_GMBUSUNIT_CLOCK_GATE_DISABLE;
-	intel_de_write(i915, DSPCLK_GATE_D(i915), val);
+	intel_de_rmw(i915, DSPCLK_GATE_D(i915), PNV_GMBUSUNIT_CLOCK_GATE_DISABLE,
+		     !enable ? PNV_GMBUSUNIT_CLOCK_GATE_DISABLE : 0);
 }
 
 static void pch_gmbus_clock_gating(struct drm_i915_private *i915,
 				   bool enable)
 {
-	u32 val;
-
-	val = intel_de_read(i915, SOUTH_DSPCLK_GATE_D);
-	if (!enable)
-		val |= PCH_GMBUSUNIT_CLOCK_GATE_DISABLE;
-	else
-		val &= ~PCH_GMBUSUNIT_CLOCK_GATE_DISABLE;
-	intel_de_write(i915, SOUTH_DSPCLK_GATE_D, val);
+	intel_de_rmw(i915, SOUTH_DSPCLK_GATE_D, PCH_GMBUSUNIT_CLOCK_GATE_DISABLE,
+		     !enable ? PCH_GMBUSUNIT_CLOCK_GATE_DISABLE : 0);
 }
 
 static void bxt_gmbus_clock_gating(struct drm_i915_private *i915,
 				   bool enable)
 {
-	u32 val;
-
-	val = intel_de_read(i915, GEN9_CLKGATE_DIS_4);
-	if (!enable)
-		val |= BXT_GMBUS_GATING_DIS;
-	else
-		val &= ~BXT_GMBUS_GATING_DIS;
-	intel_de_write(i915, GEN9_CLKGATE_DIS_4, val);
+	intel_de_rmw(i915, GEN9_CLKGATE_DIS_4, BXT_GMBUS_GATING_DIS,
+		     !enable ? BXT_GMBUS_GATING_DIS : 0);
 }
 
 static u32 get_reserved(struct intel_gmbus *bus)
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 6406fd487ee524..2984d2810e42cc 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -943,8 +943,7 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 
 	repeater_ctl = intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder,
 						   port);
-	intel_de_write(dev_priv, HDCP_REP_CTL,
-		       intel_de_read(dev_priv, HDCP_REP_CTL) & ~repeater_ctl);
+	intel_de_rmw(dev_priv, HDCP_REP_CTL, repeater_ctl, 0);
 
 	ret = hdcp->shim->toggle_signalling(dig_port, cpu_transcoder, false);
 	if (ret) {
@@ -1819,12 +1818,10 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 	}
 
 	if (intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
-	    LINK_AUTH_STATUS) {
+	    LINK_AUTH_STATUS)
 		/* Link is Authenticated. Now set for Encryption */
-		intel_de_write(dev_priv,
-			       HDCP2_CTL(dev_priv, cpu_transcoder, port),
-			       intel_de_read(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port)) | CTL_LINK_ENCRYPTION_REQ);
-	}
+		intel_de_rmw(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port),
+			     0, CTL_LINK_ENCRYPTION_REQ);
 
 	ret = intel_de_wait_for_set(dev_priv,
 				    HDCP2_STATUS(dev_priv, cpu_transcoder,
@@ -1848,8 +1845,8 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
 	drm_WARN_ON(&dev_priv->drm, !(intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
 				      LINK_ENCRYPTION_STATUS));
 
-	intel_de_write(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port),
-		       intel_de_read(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port)) & ~CTL_LINK_ENCRYPTION_REQ);
+	intel_de_rmw(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port),
+		     CTL_LINK_ENCRYPTION_REQ, 0);
 
 	ret = intel_de_wait_for_clear(dev_priv,
 				      HDCP2_STATUS(dev_priv, cpu_transcoder,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index efa2da080f62d4..4b09f17aa4b23b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -237,15 +237,11 @@ static void g4x_read_infoframe(struct intel_encoder *encoder,
 			       void *frame, ssize_t len)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 val, *data = frame;
+	u32 *data = frame;
 	int i;
 
-	val = intel_de_read(dev_priv, VIDEO_DIP_CTL);
-
-	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
-	val |= g4x_infoframe_index(type);
-
-	intel_de_write(dev_priv, VIDEO_DIP_CTL, val);
+	intel_de_rmw(dev_priv, VIDEO_DIP_CTL,
+		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
 
 	for (i = 0; i < len; i += 4)
 		*data++ = intel_de_read(dev_priv, VIDEO_DIP_DATA);
@@ -313,15 +309,11 @@ static void ibx_read_infoframe(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	u32 val, *data = frame;
+	u32 *data = frame;
 	int i;
 
-	val = intel_de_read(dev_priv, TVIDEO_DIP_CTL(crtc->pipe));
-
-	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
-	val |= g4x_infoframe_index(type);
-
-	intel_de_write(dev_priv, TVIDEO_DIP_CTL(crtc->pipe), val);
+	intel_de_rmw(dev_priv, TVIDEO_DIP_CTL(crtc->pipe),
+		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
 
 	for (i = 0; i < len; i += 4)
 		*data++ = intel_de_read(dev_priv, TVIDEO_DIP_DATA(crtc->pipe));
@@ -395,15 +387,11 @@ static void cpt_read_infoframe(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	u32 val, *data = frame;
+	u32 *data = frame;
 	int i;
 
-	val = intel_de_read(dev_priv, TVIDEO_DIP_CTL(crtc->pipe));
-
-	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
-	val |= g4x_infoframe_index(type);
-
-	intel_de_write(dev_priv, TVIDEO_DIP_CTL(crtc->pipe), val);
+	intel_de_rmw(dev_priv, TVIDEO_DIP_CTL(crtc->pipe),
+		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
 
 	for (i = 0; i < len; i += 4)
 		*data++ = intel_de_read(dev_priv, TVIDEO_DIP_DATA(crtc->pipe));
@@ -471,15 +459,11 @@ static void vlv_read_infoframe(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	u32 val, *data = frame;
+	u32 *data = frame;
 	int i;
 
-	val = intel_de_read(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe));
-
-	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
-	val |= g4x_infoframe_index(type);
-
-	intel_de_write(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe), val);
+	intel_de_rmw(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe),
+		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
 
 	for (i = 0; i < len; i += 4)
 		*data++ = intel_de_read(dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index aecec992cd0d2d..e8f47b7ef87649 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -316,11 +316,9 @@ static void intel_enable_lvds(struct intel_atomic_state *state,
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct drm_i915_private *dev_priv = to_i915(dev);
 
-	intel_de_write(dev_priv, lvds_encoder->reg,
-		       intel_de_read(dev_priv, lvds_encoder->reg) | LVDS_PORT_EN);
+	intel_de_rmw(dev_priv, lvds_encoder->reg, 0, LVDS_PORT_EN);
 
-	intel_de_write(dev_priv, PP_CONTROL(0),
-		       intel_de_read(dev_priv, PP_CONTROL(0)) | PANEL_POWER_ON);
+	intel_de_rmw(dev_priv, PP_CONTROL(0), 0, PANEL_POWER_ON);
 	intel_de_posting_read(dev_priv, lvds_encoder->reg);
 
 	if (intel_de_wait_for_set(dev_priv, PP_STATUS(0), PP_ON, 5000))
@@ -338,14 +336,12 @@ static void intel_disable_lvds(struct intel_atomic_state *state,
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	intel_de_write(dev_priv, PP_CONTROL(0),
-		       intel_de_read(dev_priv, PP_CONTROL(0)) & ~PANEL_POWER_ON);
+	intel_de_rmw(dev_priv, PP_CONTROL(0), PANEL_POWER_ON, 0);
 	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(0), PP_ON, 1000))
 		drm_err(&dev_priv->drm,
 			"timed out waiting for panel to power off\n");
 
-	intel_de_write(dev_priv, lvds_encoder->reg,
-		       intel_de_read(dev_priv, lvds_encoder->reg) & ~LVDS_PORT_EN);
+	intel_de_rmw(dev_priv, lvds_encoder->reg, LVDS_PORT_EN, 0);
 	intel_de_posting_read(dev_priv, lvds_encoder->reg);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index cecc0d007cf39c..4b5e069a1b9051 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -307,7 +307,6 @@ static void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	i915_reg_t reg;
-	u32 val;
 
 	/* FDI relies on the transcoder */
 	assert_fdi_tx_disabled(dev_priv, pipe);
@@ -317,21 +316,16 @@ static void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
 	assert_pch_ports_disabled(dev_priv, pipe);
 
 	reg = PCH_TRANSCONF(pipe);
-	val = intel_de_read(dev_priv, reg);
-	val &= ~TRANS_ENABLE;
-	intel_de_write(dev_priv, reg, val);
+	intel_de_rmw(dev_priv, reg, TRANS_ENABLE, 0);
 	/* wait for PCH transcoder off, transcoder state */
 	if (intel_de_wait_for_clear(dev_priv, reg, TRANS_STATE_ENABLE, 50))
 		drm_err(&dev_priv->drm, "failed to disable transcoder %c\n",
 			pipe_name(pipe));
 
-	if (HAS_PCH_CPT(dev_priv)) {
+	if (HAS_PCH_CPT(dev_priv))
 		/* Workaround: Clear the timing override chicken bit again. */
-		reg = TRANS_CHICKEN2(pipe);
-		val = intel_de_read(dev_priv, reg);
-		val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
-		intel_de_write(dev_priv, reg, val);
-	}
+		intel_de_rmw(dev_priv, TRANS_CHICKEN2(pipe),
+			     TRANS_CHICKEN2_TIMING_OVERRIDE, 0);
 }
 
 void ilk_pch_pre_enable(struct intel_atomic_state *state,
@@ -456,21 +450,14 @@ void ilk_pch_post_disable(struct intel_atomic_state *state,
 	ilk_disable_pch_transcoder(crtc);
 
 	if (HAS_PCH_CPT(dev_priv)) {
-		i915_reg_t reg;
-		u32 temp;
-
 		/* disable TRANS_DP_CTL */
-		reg = TRANS_DP_CTL(pipe);
-		temp = intel_de_read(dev_priv, reg);
-		temp &= ~(TRANS_DP_OUTPUT_ENABLE |
-			  TRANS_DP_PORT_SEL_MASK);
-		temp |= TRANS_DP_PORT_SEL_NONE;
-		intel_de_write(dev_priv, reg, temp);
+		intel_de_rmw(dev_priv, TRANS_DP_CTL(pipe),
+			     TRANS_DP_OUTPUT_ENABLE | TRANS_DP_PORT_SEL_MASK,
+			     TRANS_DP_PORT_SEL_NONE);
 
 		/* disable DPLL_SEL */
-		temp = intel_de_read(dev_priv, PCH_DPLL_SEL);
-		temp &= ~(TRANS_DPLL_ENABLE(pipe) | TRANS_DPLLB_SEL(pipe));
-		intel_de_write(dev_priv, PCH_DPLL_SEL, temp);
+		intel_de_rmw(dev_priv, PCH_DPLL_SEL,
+			     TRANS_DPLL_ENABLE(pipe) | TRANS_DPLLB_SEL(pipe), 0);
 	}
 
 	ilk_fdi_pll_disable(crtc);
@@ -580,20 +567,14 @@ static void lpt_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 
 static void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv)
 {
-	u32 val;
-
-	val = intel_de_read(dev_priv, LPT_TRANSCONF);
-	val &= ~TRANS_ENABLE;
-	intel_de_write(dev_priv, LPT_TRANSCONF, val);
+	intel_de_rmw(dev_priv, LPT_TRANSCONF, TRANS_ENABLE, 0);
 	/* wait for PCH transcoder off, transcoder state */
 	if (intel_de_wait_for_clear(dev_priv, LPT_TRANSCONF,
 				    TRANS_STATE_ENABLE, 50))
 		drm_err(&dev_priv->drm, "Failed to disable PCH transcoder\n");
 
 	/* Workaround: clear timing override bit. */
-	val = intel_de_read(dev_priv, TRANS_CHICKEN2(PIPE_A));
-	val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
-	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
+	intel_de_rmw(dev_priv, TRANS_CHICKEN2(PIPE_A), TRANS_CHICKEN2_TIMING_OVERRIDE, 0);
 }
 
 void lpt_pch_enable(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 08a94365b7d13b..6780c8fd9a1d31 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -12,19 +12,13 @@
 
 static void lpt_fdi_reset_mphy(struct drm_i915_private *dev_priv)
 {
-	u32 tmp;
-
-	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
-	tmp |= FDI_MPHY_IOSFSB_RESET_CTL;
-	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
+	intel_de_rmw(dev_priv, SOUTH_CHICKEN2, 0, FDI_MPHY_IOSFSB_RESET_CTL);
 
 	if (wait_for_us(intel_de_read(dev_priv, SOUTH_CHICKEN2) &
 			FDI_MPHY_IOSFSB_RESET_STATUS, 100))
 		drm_err(&dev_priv->drm, "FDI mPHY reset assert timeout\n");
 
-	tmp = intel_de_read(dev_priv, SOUTH_CHICKEN2);
-	tmp &= ~FDI_MPHY_IOSFSB_RESET_CTL;
-	intel_de_write(dev_priv, SOUTH_CHICKEN2, tmp);
+	intel_de_rmw(dev_priv, SOUTH_CHICKEN2, FDI_MPHY_IOSFSB_RESET_CTL, 0);
 
 	if (wait_for_us((intel_de_read(dev_priv, SOUTH_CHICKEN2) &
 			 FDI_MPHY_IOSFSB_RESET_STATUS) == 0, 100))
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 7b21438edd9bc5..a4e00cab5f0ed8 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1534,17 +1534,13 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 	/*
 	 * Compute the divisor for the pp clock, simply match the Bspec formula.
 	 */
-	if (i915_mmio_reg_valid(regs.pp_div)) {
+	if (i915_mmio_reg_valid(regs.pp_div))
 		intel_de_write(dev_priv, regs.pp_div,
 			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, (100 * div) / 2 - 1) | REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000)));
-	} else {
-		u32 pp_ctl;
-
-		pp_ctl = intel_de_read(dev_priv, regs.pp_ctrl);
-		pp_ctl &= ~BXT_POWER_CYCLE_DELAY_MASK;
-		pp_ctl |= REG_FIELD_PREP(BXT_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000));
-		intel_de_write(dev_priv, regs.pp_ctrl, pp_ctl);
-	}
+	else
+		intel_de_rmw(dev_priv, regs.pp_ctrl, BXT_POWER_CYCLE_DELAY_MASK,
+			     REG_FIELD_PREP(BXT_POWER_CYCLE_DELAY_MASK,
+					    DIV_ROUND_UP(seq->t11_t12, 1000)));
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "panel power sequencer register settings: PP_ON %#x, PP_OFF %#x, PP_DIV %#x\n",
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9820e5fdd087ae..7dc80f0d4a3b78 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -153,7 +153,7 @@ static void psr_irq_control(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	i915_reg_t imr_reg;
-	u32 mask, val;
+	u32 mask;
 
 	if (DISPLAY_VER(dev_priv) >= 12)
 		imr_reg = TRANS_PSR_IMR(intel_dp->psr.transcoder);
@@ -165,10 +165,7 @@ static void psr_irq_control(struct intel_dp *intel_dp)
 		mask |= psr_irq_post_exit_bit_get(intel_dp) |
 			psr_irq_pre_entry_bit_get(intel_dp);
 
-	val = intel_de_read(dev_priv, imr_reg);
-	val &= ~psr_irq_mask_get(intel_dp);
-	val |= ~mask;
-	intel_de_write(dev_priv, imr_reg, val);
+	intel_de_rmw(dev_priv, imr_reg, psr_irq_mask_get(intel_dp), ~mask);
 }
 
 static void psr_event_print(struct drm_i915_private *i915,
@@ -246,8 +243,6 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 	}
 
 	if (psr_iir & psr_irq_psr_error_bit_get(intel_dp)) {
-		u32 val;
-
 		drm_warn(&dev_priv->drm, "[transcoder %s] PSR aux error\n",
 			 transcoder_name(cpu_transcoder));
 
@@ -261,9 +256,7 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 		 * again so we don't care about unmask the interruption
 		 * or unset irq_aux_error.
 		 */
-		val = intel_de_read(dev_priv, imr_reg);
-		val |= psr_irq_psr_error_bit_get(intel_dp);
-		intel_de_write(dev_priv, imr_reg, val);
+		intel_de_rmw(dev_priv, imr_reg, 0, psr_irq_psr_error_bit_get(intel_dp));
 
 		schedule_work(&intel_dp->psr.work);
 	}
@@ -638,13 +631,10 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
 				     u32 idle_frames)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	u32 val;
 
 	idle_frames <<=  EDP_PSR2_IDLE_FRAME_SHIFT;
-	val = intel_de_read(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder));
-	val &= ~EDP_PSR2_IDLE_FRAME_MASK;
-	val |= idle_frames;
-	intel_de_write(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder), val);
+	intel_de_rmw(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder),
+		     EDP_PSR2_IDLE_FRAME_MASK, idle_frames);
 }
 
 static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp)
@@ -1144,19 +1134,13 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 
 	psr_irq_control(intel_dp);
 
-	if (intel_dp->psr.dc3co_exitline) {
-		u32 val;
-
-		/*
-		 * TODO: if future platforms supports DC3CO in more than one
-		 * transcoder, EXITLINE will need to be unset when disabling PSR
-		 */
-		val = intel_de_read(dev_priv, EXITLINE(cpu_transcoder));
-		val &= ~EXITLINE_MASK;
-		val |= intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT;
-		val |= EXITLINE_ENABLE;
-		intel_de_write(dev_priv, EXITLINE(cpu_transcoder), val);
-	}
+	/*
+	 * TODO: if future platforms supports DC3CO in more than one
+	 * transcoder, EXITLINE will need to be unset when disabling PSR
+	 */
+	if (intel_dp->psr.dc3co_exitline)
+		intel_de_rmw(dev_priv, EXITLINE(cpu_transcoder), EXITLINE_MASK,
+			     intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT | EXITLINE_ENABLE);
 
 	if (HAS_PSR_HW_TRACKING(dev_priv) && HAS_PSR2_SEL_FETCH(dev_priv))
 		intel_de_rmw(dev_priv, CHICKEN_PAR1_1, IGNORE_PSR2_HW_TRACKING,
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index b986bf075889a1..e1b0034db9be66 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -930,8 +930,7 @@ intel_enable_tv(struct intel_atomic_state *state,
 	/* Prevents vblank waits from timing out in intel_tv_detect_type() */
 	intel_crtc_wait_for_next_vblank(to_intel_crtc(pipe_config->uapi.crtc));
 
-	intel_de_write(dev_priv, TV_CTL,
-		       intel_de_read(dev_priv, TV_CTL) | TV_ENC_ENABLE);
+	intel_de_rmw(dev_priv, TV_CTL, 0, TV_ENC_ENABLE);
 }
 
 static void
@@ -943,8 +942,7 @@ intel_disable_tv(struct intel_atomic_state *state,
 	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 
-	intel_de_write(dev_priv, TV_CTL,
-		       intel_de_read(dev_priv, TV_CTL) & ~TV_ENC_ENABLE);
+	intel_de_rmw(dev_priv, TV_CTL, TV_ENC_ENABLE, 0);
 }
 
 static const struct tv_mode *intel_tv_mode_find(const struct drm_connector_state *conn_state)
@@ -1945,15 +1943,9 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	 * Sanity check the TV output by checking to see if the
 	 * DAC register holds a value
 	 */
-	save_tv_dac = intel_de_read(dev_priv, TV_DAC);
-
-	intel_de_write(dev_priv, TV_DAC, save_tv_dac | TVDAC_STATE_CHG_EN);
-	tv_dac_on = intel_de_read(dev_priv, TV_DAC);
-
-	intel_de_write(dev_priv, TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
-	tv_dac_off = intel_de_read(dev_priv, TV_DAC);
-
-	intel_de_write(dev_priv, TV_DAC, save_tv_dac);
+	save_tv_dac = intel_de_rmw(dev_priv, TV_DAC, 0, TVDAC_STATE_CHG_EN);
+	tv_dac_on = intel_de_rmw(dev_priv, TV_DAC, ~0, save_tv_dac & ~TVDAC_STATE_CHG_EN);
+	tv_dac_off = intel_de_rmw(dev_priv, TV_DAC, ~0, save_tv_dac);
 
 	/*
 	 * If the register does not hold the state change enable
-- 
2.34.1

