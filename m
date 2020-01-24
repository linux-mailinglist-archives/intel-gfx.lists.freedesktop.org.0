Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C40D51485FF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:25:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 187EC72A7B;
	Fri, 24 Jan 2020 13:25:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E74C72A7B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:25:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:49 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="426615261"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:32 +0200
Message-Id: <40fe2f095a9ecd4c4a1564101a0e07cc77b9ddf9.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 11/33] drm/i915/dpio_phy: use intel_de_*()
 functions for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 77 ++++++++++---------
 1 file changed, 40 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 6fb1f7a7364e..e9d46ae75377 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -278,16 +278,16 @@ void bxt_ddi_phy_set_signal_level(struct drm_i915_private *dev_priv,
 	 * While we write to the group register to program all lanes at once we
 	 * can read only lane registers and we pick lanes 0/1 for that.
 	 */
-	val = I915_READ(BXT_PORT_PCS_DW10_LN01(phy, ch));
+	val = intel_de_read(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch));
 	val &= ~(TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT);
-	I915_WRITE(BXT_PORT_PCS_DW10_GRP(phy, ch), val);
+	intel_de_write(dev_priv, BXT_PORT_PCS_DW10_GRP(phy, ch), val);
 
-	val = I915_READ(BXT_PORT_TX_DW2_LN0(phy, ch));
+	val = intel_de_read(dev_priv, BXT_PORT_TX_DW2_LN0(phy, ch));
 	val &= ~(MARGIN_000 | UNIQ_TRANS_SCALE);
 	val |= margin << MARGIN_000_SHIFT | scale << UNIQ_TRANS_SCALE_SHIFT;
-	I915_WRITE(BXT_PORT_TX_DW2_GRP(phy, ch), val);
+	intel_de_write(dev_priv, BXT_PORT_TX_DW2_GRP(phy, ch), val);
 
-	val = I915_READ(BXT_PORT_TX_DW3_LN0(phy, ch));
+	val = intel_de_read(dev_priv, BXT_PORT_TX_DW3_LN0(phy, ch));
 	val &= ~SCALE_DCOMP_METHOD;
 	if (enable)
 		val |= SCALE_DCOMP_METHOD;
@@ -295,16 +295,16 @@ void bxt_ddi_phy_set_signal_level(struct drm_i915_private *dev_priv,
 	if ((val & UNIQUE_TRANGE_EN_METHOD) && !(val & SCALE_DCOMP_METHOD))
 		DRM_ERROR("Disabled scaling while ouniqetrangenmethod was set");
 
-	I915_WRITE(BXT_PORT_TX_DW3_GRP(phy, ch), val);
+	intel_de_write(dev_priv, BXT_PORT_TX_DW3_GRP(phy, ch), val);
 
-	val = I915_READ(BXT_PORT_TX_DW4_LN0(phy, ch));
+	val = intel_de_read(dev_priv, BXT_PORT_TX_DW4_LN0(phy, ch));
 	val &= ~DE_EMPHASIS;
 	val |= deemphasis << DEEMPH_SHIFT;
-	I915_WRITE(BXT_PORT_TX_DW4_GRP(phy, ch), val);
+	intel_de_write(dev_priv, BXT_PORT_TX_DW4_GRP(phy, ch), val);
 
-	val = I915_READ(BXT_PORT_PCS_DW10_LN01(phy, ch));
+	val = intel_de_read(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch));
 	val |= TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT;
-	I915_WRITE(BXT_PORT_PCS_DW10_GRP(phy, ch), val);
+	intel_de_write(dev_priv, BXT_PORT_PCS_DW10_GRP(phy, ch), val);
 }
 
 bool bxt_ddi_phy_is_enabled(struct drm_i915_private *dev_priv,
@@ -314,10 +314,10 @@ bool bxt_ddi_phy_is_enabled(struct drm_i915_private *dev_priv,
 
 	phy_info = bxt_get_phy_info(dev_priv, phy);
 
-	if (!(I915_READ(BXT_P_CR_GT_DISP_PWRON) & phy_info->pwron_mask))
+	if (!(intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON) & phy_info->pwron_mask))
 		return false;
 
-	if ((I915_READ(BXT_PORT_CL1CM_DW0(phy)) &
+	if ((intel_de_read(dev_priv, BXT_PORT_CL1CM_DW0(phy)) &
 	     (PHY_POWER_GOOD | PHY_RESERVED)) != PHY_POWER_GOOD) {
 		DRM_DEBUG_DRIVER("DDI PHY %d powered, but power hasn't settled\n",
 				 phy);
@@ -325,7 +325,7 @@ bool bxt_ddi_phy_is_enabled(struct drm_i915_private *dev_priv,
 		return false;
 	}
 
-	if (!(I915_READ(BXT_PHY_CTL_FAMILY(phy)) & COMMON_RESET_DIS)) {
+	if (!(intel_de_read(dev_priv, BXT_PHY_CTL_FAMILY(phy)) & COMMON_RESET_DIS)) {
 		DRM_DEBUG_DRIVER("DDI PHY %d powered, but still in reset\n",
 				 phy);
 
@@ -337,7 +337,7 @@ bool bxt_ddi_phy_is_enabled(struct drm_i915_private *dev_priv,
 
 static u32 bxt_get_grc(struct drm_i915_private *dev_priv, enum dpio_phy phy)
 {
-	u32 val = I915_READ(BXT_PORT_REF_DW6(phy));
+	u32 val = intel_de_read(dev_priv, BXT_PORT_REF_DW6(phy));
 
 	return (val & GRC_CODE_MASK) >> GRC_CODE_SHIFT;
 }
@@ -373,9 +373,9 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 				 "force reprogramming it\n", phy);
 	}
 
-	val = I915_READ(BXT_P_CR_GT_DISP_PWRON);
+	val = intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON);
 	val |= phy_info->pwron_mask;
-	I915_WRITE(BXT_P_CR_GT_DISP_PWRON, val);
+	intel_de_write(dev_priv, BXT_P_CR_GT_DISP_PWRON, val);
 
 	/*
 	 * The PHY registers start out inaccessible and respond to reads with
@@ -393,26 +393,26 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 		DRM_ERROR("timeout during PHY%d power on\n", phy);
 
 	/* Program PLL Rcomp code offset */
-	val = I915_READ(BXT_PORT_CL1CM_DW9(phy));
+	val = intel_de_read(dev_priv, BXT_PORT_CL1CM_DW9(phy));
 	val &= ~IREF0RC_OFFSET_MASK;
 	val |= 0xE4 << IREF0RC_OFFSET_SHIFT;
-	I915_WRITE(BXT_PORT_CL1CM_DW9(phy), val);
+	intel_de_write(dev_priv, BXT_PORT_CL1CM_DW9(phy), val);
 
-	val = I915_READ(BXT_PORT_CL1CM_DW10(phy));
+	val = intel_de_read(dev_priv, BXT_PORT_CL1CM_DW10(phy));
 	val &= ~IREF1RC_OFFSET_MASK;
 	val |= 0xE4 << IREF1RC_OFFSET_SHIFT;
-	I915_WRITE(BXT_PORT_CL1CM_DW10(phy), val);
+	intel_de_write(dev_priv, BXT_PORT_CL1CM_DW10(phy), val);
 
 	/* Program power gating */
-	val = I915_READ(BXT_PORT_CL1CM_DW28(phy));
+	val = intel_de_read(dev_priv, BXT_PORT_CL1CM_DW28(phy));
 	val |= OCL1_POWER_DOWN_EN | DW28_OLDO_DYN_PWR_DOWN_EN |
 		SUS_CLK_CONFIG;
-	I915_WRITE(BXT_PORT_CL1CM_DW28(phy), val);
+	intel_de_write(dev_priv, BXT_PORT_CL1CM_DW28(phy), val);
 
 	if (phy_info->dual_channel) {
-		val = I915_READ(BXT_PORT_CL2CM_DW6(phy));
+		val = intel_de_read(dev_priv, BXT_PORT_CL2CM_DW6(phy));
 		val |= DW6_OLDO_DYN_PWR_DOWN_EN;
-		I915_WRITE(BXT_PORT_CL2CM_DW6(phy), val);
+		intel_de_write(dev_priv, BXT_PORT_CL2CM_DW6(phy), val);
 	}
 
 	if (phy_info->rcomp_phy != -1) {
@@ -430,19 +430,19 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 		grc_code = val << GRC_CODE_FAST_SHIFT |
 			   val << GRC_CODE_SLOW_SHIFT |
 			   val;
-		I915_WRITE(BXT_PORT_REF_DW6(phy), grc_code);
+		intel_de_write(dev_priv, BXT_PORT_REF_DW6(phy), grc_code);
 
-		val = I915_READ(BXT_PORT_REF_DW8(phy));
+		val = intel_de_read(dev_priv, BXT_PORT_REF_DW8(phy));
 		val |= GRC_DIS | GRC_RDY_OVRD;
-		I915_WRITE(BXT_PORT_REF_DW8(phy), val);
+		intel_de_write(dev_priv, BXT_PORT_REF_DW8(phy), val);
 	}
 
 	if (phy_info->reset_delay)
 		udelay(phy_info->reset_delay);
 
-	val = I915_READ(BXT_PHY_CTL_FAMILY(phy));
+	val = intel_de_read(dev_priv, BXT_PHY_CTL_FAMILY(phy));
 	val |= COMMON_RESET_DIS;
-	I915_WRITE(BXT_PHY_CTL_FAMILY(phy), val);
+	intel_de_write(dev_priv, BXT_PHY_CTL_FAMILY(phy), val);
 }
 
 void bxt_ddi_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
@@ -452,13 +452,13 @@ void bxt_ddi_phy_uninit(struct drm_i915_private *dev_priv, enum dpio_phy phy)
 
 	phy_info = bxt_get_phy_info(dev_priv, phy);
 
-	val = I915_READ(BXT_PHY_CTL_FAMILY(phy));
+	val = intel_de_read(dev_priv, BXT_PHY_CTL_FAMILY(phy));
 	val &= ~COMMON_RESET_DIS;
-	I915_WRITE(BXT_PHY_CTL_FAMILY(phy), val);
+	intel_de_write(dev_priv, BXT_PHY_CTL_FAMILY(phy), val);
 
-	val = I915_READ(BXT_P_CR_GT_DISP_PWRON);
+	val = intel_de_read(dev_priv, BXT_P_CR_GT_DISP_PWRON);
 	val &= ~phy_info->pwron_mask;
-	I915_WRITE(BXT_P_CR_GT_DISP_PWRON, val);
+	intel_de_write(dev_priv, BXT_P_CR_GT_DISP_PWRON, val);
 }
 
 void bxt_ddi_phy_init(struct drm_i915_private *dev_priv, enum dpio_phy phy)
@@ -496,7 +496,7 @@ __phy_reg_verify_state(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 	va_list args;
 	u32 val;
 
-	val = I915_READ(reg);
+	val = intel_de_read(dev_priv, reg);
 	if ((val & mask) == expected)
 		return true;
 
@@ -599,7 +599,8 @@ void bxt_ddi_phy_set_lane_optim_mask(struct intel_encoder *encoder,
 	bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);
 
 	for (lane = 0; lane < 4; lane++) {
-		u32 val = I915_READ(BXT_PORT_TX_DW14_LN(phy, ch, lane));
+		u32 val = intel_de_read(dev_priv,
+					BXT_PORT_TX_DW14_LN(phy, ch, lane));
 
 		/*
 		 * Note that on CHV this flag is called UPAR, but has
@@ -609,7 +610,8 @@ void bxt_ddi_phy_set_lane_optim_mask(struct intel_encoder *encoder,
 		if (lane_lat_optim_mask & BIT(lane))
 			val |= LATENCY_OPTIM;
 
-		I915_WRITE(BXT_PORT_TX_DW14_LN(phy, ch, lane), val);
+		intel_de_write(dev_priv, BXT_PORT_TX_DW14_LN(phy, ch, lane),
+			       val);
 	}
 }
 
@@ -627,7 +629,8 @@ bxt_ddi_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder)
 
 	mask = 0;
 	for (lane = 0; lane < 4; lane++) {
-		u32 val = I915_READ(BXT_PORT_TX_DW14_LN(phy, ch, lane));
+		u32 val = intel_de_read(dev_priv,
+					BXT_PORT_TX_DW14_LN(phy, ch, lane));
 
 		if (val & LATENCY_OPTIM)
 			mask |= BIT(lane);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
