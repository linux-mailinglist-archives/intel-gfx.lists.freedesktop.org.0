Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EF28A3536
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 19:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9555510F6C4;
	Fri, 12 Apr 2024 17:58:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aHoUIeKw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E248010F641
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 17:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712944704; x=1744480704;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cCzMLCkwJztAR2Z17ogVh+5dlJqfGAB4Ko6gh4b4pt4=;
 b=aHoUIeKwjSOmzNcRovxeUbBVJCcYckBeFvnF/U8nWz8Pwzr6biRda/Fk
 nDmLR4hHe6I5p6Y9euEQ+tBA58XiOrv7jC90RegxDqptGGZSmhIFzHTxX
 q5PkbSb2+2gHdZ+LNwSxojPm4fibAIHO1u68pepRGubkP19P2u69Z5Fgm
 lhcwcIHFmhJ6wLV2OeFFOt7EVnIOZm7F9qVys+b0bc7psj6QrBPpr/xlF
 OC5xGGVwjNkx/Wx+KE8/uKMI5RiO1B8sbe0/dYtan5Mj9yfVjRgHvrPZq
 lzbCCqokvM9ia7zGOrF3ri4G+Ixy8ML7Uuc1+LlZd5WTFRiHHGvVwXUPz A==;
X-CSE-ConnectionGUID: 3Pfq2KL6RxuMluYsQRZTIw==
X-CSE-MsgGUID: JNpWLOUhRlmKp7O4rIaXTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8586946"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8586946"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 10:58:23 -0700
X-CSE-ConnectionGUID: Ud7AkkKCTf6JaCfx6LGopw==
X-CSE-MsgGUID: TxV+IhYkS2m+P72M39RLgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21383015"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 10:58:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 20:58:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/8] drm/i915/dpio: Clean up bxt/glk PHY registers
Date: Fri, 12 Apr 2024 20:58:11 +0300
Message-ID: <20240412175818.29217-2-ville.syrjala@linux.intel.com>
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

Use REG_BIT() & co. for the bxt/glk PHY register definitons.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 44 +++++------
 drivers/gpu/drm/i915/i915_reg.h               | 74 +++++++++----------
 2 files changed, 59 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 2d7a71c8c69c..d14e80ece8aa 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -295,9 +295,9 @@ void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, BXT_PORT_PCS_DW10_GRP(phy, ch), val);
 
 	val = intel_de_read(dev_priv, BXT_PORT_TX_DW2_LN0(phy, ch));
-	val &= ~(MARGIN_000 | UNIQ_TRANS_SCALE);
-	val |= trans->entries[level].bxt.margin << MARGIN_000_SHIFT |
-		trans->entries[level].bxt.scale << UNIQ_TRANS_SCALE_SHIFT;
+	val &= ~(MARGIN_000_MASK | UNIQ_TRANS_SCALE_MASK);
+	val |= MARGIN_000(trans->entries[level].bxt.margin) |
+		UNIQ_TRANS_SCALE(trans->entries[level].bxt.scale);
 	intel_de_write(dev_priv, BXT_PORT_TX_DW2_GRP(phy, ch), val);
 
 	val = intel_de_read(dev_priv, BXT_PORT_TX_DW3_LN0(phy, ch));
@@ -312,8 +312,8 @@ void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, BXT_PORT_TX_DW3_GRP(phy, ch), val);
 
 	val = intel_de_read(dev_priv, BXT_PORT_TX_DW4_LN0(phy, ch));
-	val &= ~DE_EMPHASIS;
-	val |= trans->entries[level].bxt.deemphasis << DEEMPH_SHIFT;
+	val &= ~DE_EMPHASIS_MASK;
+	val |= DE_EMPHASIS(trans->entries[level].bxt.deemphasis);
 	intel_de_write(dev_priv, BXT_PORT_TX_DW4_GRP(phy, ch), val);
 
 	val = intel_de_read(dev_priv, BXT_PORT_PCS_DW10_LN01(phy, ch));
@@ -353,7 +353,7 @@ static u32 bxt_get_grc(struct drm_i915_private *dev_priv, enum dpio_phy phy)
 {
 	u32 val = intel_de_read(dev_priv, BXT_PORT_REF_DW6(phy));
 
-	return (val & GRC_CODE_MASK) >> GRC_CODE_SHIFT;
+	return REG_FIELD_GET(GRC_CODE_MASK, val);
 }
 
 static void bxt_phy_wait_grc_done(struct drm_i915_private *dev_priv,
@@ -405,11 +405,11 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 			phy);
 
 	/* Program PLL Rcomp code offset */
-	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW9(phy), IREF0RC_OFFSET_MASK,
-		     0xE4 << IREF0RC_OFFSET_SHIFT);
+	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW9(phy),
+		     IREF0RC_OFFSET_MASK, IREF0RC_OFFSET(0xE4));
 
-	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW10(phy), IREF1RC_OFFSET_MASK,
-		     0xE4 << IREF1RC_OFFSET_SHIFT);
+	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW10(phy),
+		     IREF1RC_OFFSET_MASK, IREF1RC_OFFSET(0xE4));
 
 	/* Program power gating */
 	intel_de_rmw(dev_priv, BXT_PORT_CL1CM_DW28(phy), 0,
@@ -432,9 +432,9 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
 		val = bxt_get_grc(dev_priv, phy_info->rcomp_phy);
 		dev_priv->display.state.bxt_phy_grc = val;
 
-		grc_code = val << GRC_CODE_FAST_SHIFT |
-			   val << GRC_CODE_SLOW_SHIFT |
-			   val;
+		grc_code = GRC_CODE_FAST(val) |
+			GRC_CODE_SLOW(val) |
+			GRC_CODE_NOM(val);
 		intel_de_write(dev_priv, BXT_PORT_REF_DW6(phy), grc_code);
 		intel_de_rmw(dev_priv, BXT_PORT_REF_DW8(phy),
 			     0, GRC_DIS | GRC_RDY_OVRD);
@@ -530,16 +530,16 @@ bool bxt_ddi_phy_verify_state(struct drm_i915_private *dev_priv,
 
 	/* PLL Rcomp code offset */
 	ok &= _CHK(BXT_PORT_CL1CM_DW9(phy),
-		    IREF0RC_OFFSET_MASK, 0xe4 << IREF0RC_OFFSET_SHIFT,
-		    "BXT_PORT_CL1CM_DW9(%d)", phy);
+		   IREF0RC_OFFSET_MASK, IREF0RC_OFFSET(0xe4),
+		   "BXT_PORT_CL1CM_DW9(%d)", phy);
 	ok &= _CHK(BXT_PORT_CL1CM_DW10(phy),
-		    IREF1RC_OFFSET_MASK, 0xe4 << IREF1RC_OFFSET_SHIFT,
-		    "BXT_PORT_CL1CM_DW10(%d)", phy);
+		   IREF1RC_OFFSET_MASK, IREF1RC_OFFSET(0xe4),
+		   "BXT_PORT_CL1CM_DW10(%d)", phy);
 
 	/* Power gating */
 	mask = OCL1_POWER_DOWN_EN | DW28_OLDO_DYN_PWR_DOWN_EN | SUS_CLK_CONFIG;
 	ok &= _CHK(BXT_PORT_CL1CM_DW28(phy), mask, mask,
-		    "BXT_PORT_CL1CM_DW28(%d)", phy);
+		   "BXT_PORT_CL1CM_DW28(%d)", phy);
 
 	if (phy_info->dual_channel)
 		ok &= _CHK(BXT_PORT_CL2CM_DW6(phy),
@@ -549,9 +549,9 @@ bool bxt_ddi_phy_verify_state(struct drm_i915_private *dev_priv,
 	if (phy_info->rcomp_phy != -1) {
 		u32 grc_code = dev_priv->display.state.bxt_phy_grc;
 
-		grc_code = grc_code << GRC_CODE_FAST_SHIFT |
-			   grc_code << GRC_CODE_SLOW_SHIFT |
-			   grc_code;
+		grc_code = GRC_CODE_FAST(grc_code) |
+			GRC_CODE_SLOW(grc_code) |
+			GRC_CODE_NOM(grc_code);
 		mask = GRC_CODE_FAST_MASK | GRC_CODE_SLOW_MASK |
 		       GRC_CODE_NOM_MASK;
 		ok &= _CHK(BXT_PORT_REF_DW6(phy), mask, grc_code,
@@ -559,7 +559,7 @@ bool bxt_ddi_phy_verify_state(struct drm_i915_private *dev_priv,
 
 		mask = GRC_DIS | GRC_RDY_OVRD;
 		ok &= _CHK(BXT_PORT_REF_DW8(phy), mask, mask,
-			    "BXT_PORT_REF_DW8(%d)", phy);
+			   "BXT_PORT_REF_DW8(%d)", phy);
 	}
 
 	return ok;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3f34efcd7d6c..9701aad57e3a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -648,32 +648,32 @@
 /* BXT PHY common lane registers */
 #define _PORT_CL1CM_DW0_A		0x162000
 #define _PORT_CL1CM_DW0_BC		0x6C000
-#define   PHY_POWER_GOOD		(1 << 16)
-#define   PHY_RESERVED			(1 << 7)
+#define   PHY_POWER_GOOD		REG_BIT(16)
+#define   PHY_RESERVED			REG_BIT(7)
 #define BXT_PORT_CL1CM_DW0(phy)		_BXT_PHY((phy), _PORT_CL1CM_DW0_BC)
 
 #define _PORT_CL1CM_DW9_A		0x162024
 #define _PORT_CL1CM_DW9_BC		0x6C024
-#define   IREF0RC_OFFSET_SHIFT		8
-#define   IREF0RC_OFFSET_MASK		(0xFF << IREF0RC_OFFSET_SHIFT)
+#define   IREF0RC_OFFSET_MASK		REG_GENMASK(15, 8)
+#define   IREF0RC_OFFSET(x)		REG_FIELD_PREP(IREF0RC_OFFSET_MASK, (x))
 #define BXT_PORT_CL1CM_DW9(phy)		_BXT_PHY((phy), _PORT_CL1CM_DW9_BC)
 
 #define _PORT_CL1CM_DW10_A		0x162028
 #define _PORT_CL1CM_DW10_BC		0x6C028
-#define   IREF1RC_OFFSET_SHIFT		8
-#define   IREF1RC_OFFSET_MASK		(0xFF << IREF1RC_OFFSET_SHIFT)
+#define   IREF1RC_OFFSET_MASK		REG_GENMASK(15, 8)
+#define   IREF1RC_OFFSET(x)		REG_FIELD_PREP(IREF1RC_OFFSET_MASK, (x))
 #define BXT_PORT_CL1CM_DW10(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW10_BC)
 
 #define _PORT_CL1CM_DW28_A		0x162070
 #define _PORT_CL1CM_DW28_BC		0x6C070
-#define   OCL1_POWER_DOWN_EN		(1 << 23)
-#define   DW28_OLDO_DYN_PWR_DOWN_EN	(1 << 22)
-#define   SUS_CLK_CONFIG		0x3
+#define   OCL1_POWER_DOWN_EN		REG_BIT(23)
+#define   DW28_OLDO_DYN_PWR_DOWN_EN	REG_BIT(22)
+#define   SUS_CLK_CONFIG		REG_GENMASK(1, 0)
 #define BXT_PORT_CL1CM_DW28(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW28_BC)
 
 #define _PORT_CL1CM_DW30_A		0x162078
 #define _PORT_CL1CM_DW30_BC		0x6C078
-#define   OCL2_LDOFUSE_PWR_DIS		(1 << 6)
+#define   OCL2_LDOFUSE_PWR_DIS		REG_BIT(6)
 #define BXT_PORT_CL1CM_DW30(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW30_BC)
 
 /* The spec defines this only for BXT PHY0, but lets assume that this
@@ -682,29 +682,30 @@
 #define _PORT_CL2CM_DW6_A		0x162358
 #define _PORT_CL2CM_DW6_BC		0x6C358
 #define BXT_PORT_CL2CM_DW6(phy)		_BXT_PHY((phy), _PORT_CL2CM_DW6_BC)
-#define   DW6_OLDO_DYN_PWR_DOWN_EN	(1 << 28)
+#define   DW6_OLDO_DYN_PWR_DOWN_EN	REG_BIT(28)
 
 /* BXT PHY Ref registers */
 #define _PORT_REF_DW3_A			0x16218C
 #define _PORT_REF_DW3_BC		0x6C18C
-#define   GRC_DONE			(1 << 22)
+#define   GRC_DONE			REG_BIT(22)
 #define BXT_PORT_REF_DW3(phy)		_BXT_PHY((phy), _PORT_REF_DW3_BC)
 
 #define _PORT_REF_DW6_A			0x162198
 #define _PORT_REF_DW6_BC		0x6C198
-#define   GRC_CODE_SHIFT		24
-#define   GRC_CODE_MASK			(0xFF << GRC_CODE_SHIFT)
-#define   GRC_CODE_FAST_SHIFT		16
-#define   GRC_CODE_FAST_MASK		(0xFF << GRC_CODE_FAST_SHIFT)
-#define   GRC_CODE_SLOW_SHIFT		8
-#define   GRC_CODE_SLOW_MASK		(0xFF << GRC_CODE_SLOW_SHIFT)
-#define   GRC_CODE_NOM_MASK		0xFF
+#define   GRC_CODE_MASK			REG_GENMASK(31, 24)
+#define   GRC_CODE(x)			REG_FIELD_PREP(GRC_CODE_MASK, (x))
+#define   GRC_CODE_FAST_MASK		REG_GENMASK(23, 16)
+#define   GRC_CODE_FAST(x)		REG_FIELD_PREP(GRC_CODE_FAST_MASK, (x))
+#define   GRC_CODE_SLOW_MASK		REG_GENMASK(15, 8)
+#define   GRC_CODE_SLOW(x)		REG_FIELD_PREP(GRC_CODE_SLOW_MASK, (x))
+#define   GRC_CODE_NOM_MASK		REG_GENMASK(7, 0)
+#define   GRC_CODE_NOM(x)		REG_FIELD_PREP(GRC_CODE_NOM_MASK, (x))
 #define BXT_PORT_REF_DW6(phy)		_BXT_PHY((phy), _PORT_REF_DW6_BC)
 
 #define _PORT_REF_DW8_A			0x1621A0
 #define _PORT_REF_DW8_BC		0x6C1A0
-#define   GRC_DIS			(1 << 15)
-#define   GRC_RDY_OVRD			(1 << 1)
+#define   GRC_DIS			REG_BIT(15)
+#define   GRC_RDY_OVRD			REG_BIT(1)
 #define BXT_PORT_REF_DW8(phy)		_BXT_PHY((phy), _PORT_REF_DW8_BC)
 
 /* BXT PHY PCS registers */
@@ -721,8 +722,8 @@
 							 _PORT_PCS_DW10_GRP_B, \
 							 _PORT_PCS_DW10_GRP_C)
 
-#define   TX2_SWING_CALC_INIT		(1 << 31)
-#define   TX1_SWING_CALC_INIT		(1 << 30)
+#define   TX2_SWING_CALC_INIT		REG_BIT(31)
+#define   TX1_SWING_CALC_INIT		REG_BIT(30)
 
 #define _PORT_PCS_DW12_LN01_A		0x162430
 #define _PORT_PCS_DW12_LN01_B		0x6C430
@@ -733,8 +734,8 @@
 #define _PORT_PCS_DW12_GRP_A		0x162c30
 #define _PORT_PCS_DW12_GRP_B		0x6CC30
 #define _PORT_PCS_DW12_GRP_C		0x6CE30
-#define   LANESTAGGER_STRAP_OVRD	(1 << 6)
-#define   LANE_STAGGER_MASK		0x1F
+#define   LANESTAGGER_STRAP_OVRD	REG_BIT(6)
+#define   LANE_STAGGER_MASK		REG_GENMASK(4, 0)
 #define BXT_PORT_PCS_DW12_LN01(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
 							 _PORT_PCS_DW12_LN01_B, \
 							 _PORT_PCS_DW12_LN01_C)
@@ -761,10 +762,10 @@
 #define BXT_PORT_TX_DW2_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
 							 _PORT_TX_DW2_GRP_B, \
 							 _PORT_TX_DW2_GRP_C)
-#define   MARGIN_000_SHIFT		16
-#define   MARGIN_000			(0xFF << MARGIN_000_SHIFT)
-#define   UNIQ_TRANS_SCALE_SHIFT	8
-#define   UNIQ_TRANS_SCALE		(0xFF << UNIQ_TRANS_SCALE_SHIFT)
+#define   MARGIN_000_MASK		REG_GENMASK(23, 16)
+#define   MARGIN_000(x)			REG_FIELD_PREP(MARGIN_000_MASK, (x))
+#define   UNIQ_TRANS_SCALE_MASK		REG_GENMASK(15, 8)
+#define   UNIQ_TRANS_SCALE(x)		REG_FIELD_PREP(UNIQ_TRANS_SCALE_MASK, (x))
 
 #define _PORT_TX_DW3_LN0_A		0x16250C
 #define _PORT_TX_DW3_LN0_B		0x6C50C
@@ -778,8 +779,8 @@
 #define BXT_PORT_TX_DW3_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
 							 _PORT_TX_DW3_GRP_B, \
 							 _PORT_TX_DW3_GRP_C)
-#define   SCALE_DCOMP_METHOD		(1 << 26)
-#define   UNIQUE_TRANGE_EN_METHOD	(1 << 27)
+#define   SCALE_DCOMP_METHOD		REG_BIT(26)
+#define   UNIQUE_TRANGE_EN_METHOD	REG_BIT(27)
 
 #define _PORT_TX_DW4_LN0_A		0x162510
 #define _PORT_TX_DW4_LN0_B		0x6C510
@@ -793,8 +794,8 @@
 #define BXT_PORT_TX_DW4_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
 							 _PORT_TX_DW4_GRP_B, \
 							 _PORT_TX_DW4_GRP_C)
-#define   DEEMPH_SHIFT			24
-#define   DE_EMPHASIS			(0xFF << DEEMPH_SHIFT)
+#define   DE_EMPHASIS_MASK		REG_GENMASK(31, 24)
+#define   DE_EMPHASIS(x)		REG_FIELD_PREP(DE_EMPHASIS_MASK, (x))
 
 #define _PORT_TX_DW5_LN0_A		0x162514
 #define _PORT_TX_DW5_LN0_B		0x6C514
@@ -808,14 +809,13 @@
 #define BXT_PORT_TX_DW5_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
 							 _PORT_TX_DW5_GRP_B, \
 							 _PORT_TX_DW5_GRP_C)
-#define   DCC_DELAY_RANGE_1		(1 << 9)
-#define   DCC_DELAY_RANGE_2		(1 << 8)
+#define   DCC_DELAY_RANGE_1		REG_BIT(9)
+#define   DCC_DELAY_RANGE_2		REG_BIT(8)
 
 #define _PORT_TX_DW14_LN0_A		0x162538
 #define _PORT_TX_DW14_LN0_B		0x6C538
 #define _PORT_TX_DW14_LN0_C		0x6C938
-#define   LATENCY_OPTIM_SHIFT		30
-#define   LATENCY_OPTIM			(1 << LATENCY_OPTIM_SHIFT)
+#define   LATENCY_OPTIM			REG_BIT(30)
 #define BXT_PORT_TX_DW14_LN(phy, ch, lane)				\
 	_MMIO(_BXT_PHY_CH(phy, ch, _PORT_TX_DW14_LN0_B,			\
 				   _PORT_TX_DW14_LN0_C) +		\
-- 
2.43.2

