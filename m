Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D952B9B3B18
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 21:08:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0157910E565;
	Mon, 28 Oct 2024 20:08:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iHaRRk1Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1E5810E565;
 Mon, 28 Oct 2024 20:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730146102; x=1761682102;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sBzVPXsFXg3tp1YZlMTrA/twX8z3mLjVMLBtGQiw8C0=;
 b=iHaRRk1Q5oS8NWR2x4BPuPJULwFTcOJ3eMLbgtPR88CTBNwQ1KVU+ZoS
 jLz/xtXm2WRcNS4b2fQjNzlHJq91qijja00qvnvAbCfi4iaGC9rWpsdnt
 POTuk9N18PjL5lr+vhvZfQbVoqgenTEqjarRbLUYHMkB1vKlviT0+vQvm
 5jsZichl0M2y3Y4wAHv+A1LMMf2qyfIfnUBYI3+P7sxqo41PcHeviDcbJ
 f2nIsQNP5891QZ2rshwQkOPnKc5bdm5A4RlEfAEiVEIiH5WvtaUrrSYyR
 6Ec/xt8x2EGmTCHSfOj+GsBRKTzgk1kfgqb4ATcwQ7twXZEBow27Z9gcz w==;
X-CSE-ConnectionGUID: ipsghBghTU+L/a6uyAsYeg==
X-CSE-MsgGUID: G1ZwAWLDRuCqpLe3BCIhmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33456853"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33456853"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:08:22 -0700
X-CSE-ConnectionGUID: +MPiqr36RaW+7GmInYMt1A==
X-CSE-MsgGUID: DV1y+anlQ0Cy18G0a0bj1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81628592"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:08:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 09/12] drm/i915/power: convert assert_chv_phy_status() to
 struct intel_display
Date: Mon, 28 Oct 2024 22:07:27 +0200
Message-Id: <de6b01e1f21934ff520aa3b49ab5f97cbbf028f2.1730146000.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730146000.git.jani.nikula@intel.com>
References: <cover.1730146000.git.jani.nikula@intel.com>
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
device pointer for display code. Switch assert_chv_phy_status() and its
callers to it. Main motivation to do just one function is to stop
passing i915 to intel_de_wait(), so its generic wrapper can be removed.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 95 ++++++++++---------
 1 file changed, 50 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 885bc2e563c5..f0131dd853de 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1337,13 +1337,14 @@ static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 
 #define BITS_SET(val, bits) (((val) & (bits)) == (bits))
 
-static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
+static void assert_chv_phy_status(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_well *cmn_bc =
 		lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
 	struct i915_power_well *cmn_d =
 		lookup_power_well(dev_priv, CHV_DISP_PW_DPIO_CMN_D);
-	u32 phy_control = dev_priv->display.power.chv_phy_control;
+	u32 phy_control = display->power.chv_phy_control;
 	u32 phy_status = 0;
 	u32 phy_status_mask = 0xffffffff;
 
@@ -1354,7 +1355,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 	 * reset (ie. the power well has been disabled at
 	 * least once).
 	 */
-	if (!dev_priv->display.power.chv_phy_assert[DPIO_PHY0])
+	if (!display->power.chv_phy_assert[DPIO_PHY0])
 		phy_status_mask &= ~(PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH0) |
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH0, 0) |
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH0, 1) |
@@ -1362,7 +1363,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH1, 0) |
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH1, 1));
 
-	if (!dev_priv->display.power.chv_phy_assert[DPIO_PHY1])
+	if (!display->power.chv_phy_assert[DPIO_PHY1])
 		phy_status_mask &= ~(PHY_STATUS_CMN_LDO(DPIO_PHY1, DPIO_CH0) |
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 0) |
 				     PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 1));
@@ -1390,7 +1391,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 		 */
 		if (BITS_SET(phy_control,
 			     PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0, DPIO_CH1)) &&
-		    (intel_de_read(dev_priv, DPLL(dev_priv, PIPE_B)) & DPLL_VCO_ENABLE) == 0)
+		    (intel_de_read(display, DPLL(display, PIPE_B)) & DPLL_VCO_ENABLE) == 0)
 			phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH1);
 
 		if (BITS_SET(phy_control,
@@ -1433,12 +1434,12 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 	 * The PHY may be busy with some initial calibration and whatnot,
 	 * so the power state can take a while to actually change.
 	 */
-	if (intel_de_wait(dev_priv, DISPLAY_PHY_STATUS,
+	if (intel_de_wait(display, DISPLAY_PHY_STATUS,
 			  phy_status_mask, phy_status, 10))
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Unexpected PHY_STATUS 0x%08x, expected 0x%08x (PHY_CONTROL=0x%08x)\n",
-			intel_de_read(dev_priv, DISPLAY_PHY_STATUS) & phy_status_mask,
-			phy_status, dev_priv->display.power.chv_phy_control);
+			intel_de_read(display, DISPLAY_PHY_STATUS) & phy_status_mask,
+			phy_status, display->power.chv_phy_control);
 }
 
 #undef BITS_SET
@@ -1446,11 +1447,12 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well)
 {
+	struct intel_display *display = &dev_priv->display;
 	enum i915_power_well_id id = i915_power_well_instance(power_well)->id;
 	enum dpio_phy phy;
 	u32 tmp;
 
-	drm_WARN_ON_ONCE(&dev_priv->drm,
+	drm_WARN_ON_ONCE(display->drm,
 			 id != VLV_DISP_PW_DPIO_CMN_BC &&
 			 id != CHV_DISP_PW_DPIO_CMN_D);
 
@@ -1464,9 +1466,9 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 	vlv_set_power_well(dev_priv, power_well, true);
 
 	/* Poll for phypwrgood signal */
-	if (intel_de_wait_for_set(dev_priv, DISPLAY_PHY_STATUS,
+	if (intel_de_wait_for_set(display, DISPLAY_PHY_STATUS,
 				  PHY_POWERGOOD(phy), 1))
-		drm_err(&dev_priv->drm, "Display PHY %d is not power up\n",
+		drm_err(display->drm, "Display PHY %d is not power up\n",
 			phy);
 
 	vlv_dpio_get(dev_priv);
@@ -1494,24 +1496,25 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 
 	vlv_dpio_put(dev_priv);
 
-	dev_priv->display.power.chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(phy);
-	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-		       dev_priv->display.power.chv_phy_control);
+	display->power.chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(phy);
+	intel_de_write(display, DISPLAY_PHY_CONTROL,
+		       display->power.chv_phy_control);
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Enabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
-		    phy, dev_priv->display.power.chv_phy_control);
+		    phy, display->power.chv_phy_control);
 
-	assert_chv_phy_status(dev_priv);
+	assert_chv_phy_status(display);
 }
 
 static void chv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 					    struct i915_power_well *power_well)
 {
+	struct intel_display *display = &dev_priv->display;
 	enum i915_power_well_id id = i915_power_well_instance(power_well)->id;
 	enum dpio_phy phy;
 
-	drm_WARN_ON_ONCE(&dev_priv->drm,
+	drm_WARN_ON_ONCE(display->drm,
 			 id != VLV_DISP_PW_DPIO_CMN_BC &&
 			 id != CHV_DISP_PW_DPIO_CMN_D);
 
@@ -1524,20 +1527,20 @@ static void chv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 		assert_pll_disabled(dev_priv, PIPE_C);
 	}
 
-	dev_priv->display.power.chv_phy_control &= ~PHY_COM_LANE_RESET_DEASSERT(phy);
-	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-		       dev_priv->display.power.chv_phy_control);
+	display->power.chv_phy_control &= ~PHY_COM_LANE_RESET_DEASSERT(phy);
+	intel_de_write(display, DISPLAY_PHY_CONTROL,
+		       display->power.chv_phy_control);
 
 	vlv_set_power_well(dev_priv, power_well, false);
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Disabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
-		    phy, dev_priv->display.power.chv_phy_control);
+		    phy, display->power.chv_phy_control);
 
 	/* PHY is fully reset now, so we can enable the PHY state asserts */
-	dev_priv->display.power.chv_phy_assert[phy] = true;
+	display->power.chv_phy_assert[phy] = true;
 
-	assert_chv_phy_status(dev_priv);
+	assert_chv_phy_status(display);
 }
 
 static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpio_phy phy,
@@ -1607,29 +1610,30 @@ static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpi
 bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 			  enum dpio_channel ch, bool override)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct intel_display *display = &dev_priv->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	bool was_override;
 
 	mutex_lock(&power_domains->lock);
 
-	was_override = dev_priv->display.power.chv_phy_control & PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
+	was_override = display->power.chv_phy_control & PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
 
 	if (override == was_override)
 		goto out;
 
 	if (override)
-		dev_priv->display.power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
+		display->power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
 	else
-		dev_priv->display.power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
+		display->power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
 
-	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-		       dev_priv->display.power.chv_phy_control);
+	intel_de_write(display, DISPLAY_PHY_CONTROL,
+		       display->power.chv_phy_control);
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Power gating DPIO PHY%d CH%d (DPIO_PHY_CONTROL=0x%08x)\n",
-		    phy, ch, dev_priv->display.power.chv_phy_control);
+		    phy, ch, display->power.chv_phy_control);
 
-	assert_chv_phy_status(dev_priv);
+	assert_chv_phy_status(display);
 
 out:
 	mutex_unlock(&power_domains->lock);
@@ -1640,29 +1644,30 @@ bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 void chv_phy_powergate_lanes(struct intel_encoder *encoder,
 			     bool override, unsigned int mask)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	enum dpio_phy phy = vlv_dig_port_to_phy(enc_to_dig_port(encoder));
 	enum dpio_channel ch = vlv_dig_port_to_channel(enc_to_dig_port(encoder));
 
 	mutex_lock(&power_domains->lock);
 
-	dev_priv->display.power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD(0xf, phy, ch);
-	dev_priv->display.power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD(mask, phy, ch);
+	display->power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD(0xf, phy, ch);
+	display->power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD(mask, phy, ch);
 
 	if (override)
-		dev_priv->display.power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
+		display->power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
 	else
-		dev_priv->display.power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
+		display->power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
 
-	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
-		       dev_priv->display.power.chv_phy_control);
+	intel_de_write(display, DISPLAY_PHY_CONTROL,
+		       display->power.chv_phy_control);
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Power gating DPIO PHY%d CH%d lanes 0x%x (PHY_CONTROL=0x%08x)\n",
-		    phy, ch, mask, dev_priv->display.power.chv_phy_control);
+		    phy, ch, mask, display->power.chv_phy_control);
 
-	assert_chv_phy_status(dev_priv);
+	assert_chv_phy_status(display);
 
 	assert_chv_phy_powergate(dev_priv, phy, ch, override, mask);
 
-- 
2.39.5

