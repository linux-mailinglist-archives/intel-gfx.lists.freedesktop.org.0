Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAB18A8721
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 17:12:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ABFD113603;
	Wed, 17 Apr 2024 15:12:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bpo0juKp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 619E01135FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Apr 2024 15:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713366735; x=1744902735;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aTxO6lUalBsYHOGHxBCKlEOU7rqU5j20KMYHF3tn69M=;
 b=bpo0juKpZ91NAyUbYQEBG9a5Cv+j/3rAFrzzDx4P7PHd7b8jM3A/cqRH
 TYkRA5Hmeq4KckCn+a0mwoEznt2/BUtEJ7f0PNUVVwilWD1IqtuCQmlEh
 VwP3mqvclnOU2lxLjtYTfYXRSMgDpAK5ECv9ec/ZY8ND3KEbf9ivHvrkm
 ygNJVx2JBliQ0vrCBSTEXAZSYW+qYaZxHXcycafoB5mUKaFonkTi8WgLG
 KwyhKxmPA/2i8RdjWbZDIJFlsNawmJopfEsigqpGgv0TAm86tuaPI64uJ
 N51IVwN9ttas5xjyHCLcMi/zNZwY4G4TMGSjiQf55pb88DfNUrvxg+1k/ w==;
X-CSE-ConnectionGUID: hKk2rFV+TAu4niuceDmR7g==
X-CSE-MsgGUID: VXk+39+XQUW49v33VjDzbw==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="12647495"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="12647495"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 08:12:14 -0700
X-CSE-ConnectionGUID: +3P4d17jReyuF+upJ6rJVQ==
X-CSE-MsgGUID: TiOJiJO8QfqE9ULYsBawbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="22729057"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Apr 2024 08:12:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Apr 2024 18:12:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 2/8] drm/i915/dpio: Add per-lane PHY TX register definitons
 for bxt/glk
Date: Wed, 17 Apr 2024 18:12:11 +0300
Message-ID: <20240417151211.32135-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412175818.29217-3-ville.syrjala@linux.intel.com>
References: <20240412175818.29217-3-ville.syrjala@linux.intel.com>
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

Add consistent definitions for the per-lane PHY TX registers
on bxt/glk. The current situation is a slight mess with some
registers having a LN0 define, while others have a parametrized
per-lane definition.

v2: Adjust gvt accordingly

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  6 +--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  6 +--
 drivers/gpu/drm/i915/i915_reg.h               | 38 +++++++++----------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 18 ++++-----
 5 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index d14e80ece8aa..50d6b412d652 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -294,13 +294,13 @@ void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
 	val &= ~(TX2_SWING_CALC_INIT | TX1_SWING_CALC_INIT);
 	intel_de_write(dev_priv, BXT_PORT_PCS_DW10_GRP(phy, ch), val);
 
-	val = intel_de_read(dev_priv, BXT_PORT_TX_DW2_LN0(phy, ch));
+	val = intel_de_read(dev_priv, BXT_PORT_TX_DW2_LN(phy, ch, 0));
 	val &= ~(MARGIN_000_MASK | UNIQ_TRANS_SCALE_MASK);
 	val |= MARGIN_000(trans->entries[level].bxt.margin) |
 		UNIQ_TRANS_SCALE(trans->entries[level].bxt.scale);
 	intel_de_write(dev_priv, BXT_PORT_TX_DW2_GRP(phy, ch), val);
 
-	val = intel_de_read(dev_priv, BXT_PORT_TX_DW3_LN0(phy, ch));
+	val = intel_de_read(dev_priv, BXT_PORT_TX_DW3_LN(phy, ch, 0));
 	val &= ~SCALE_DCOMP_METHOD;
 	if (trans->entries[level].bxt.enable)
 		val |= SCALE_DCOMP_METHOD;
@@ -311,7 +311,7 @@ void bxt_ddi_phy_set_signal_levels(struct intel_encoder *encoder,
 
 	intel_de_write(dev_priv, BXT_PORT_TX_DW3_GRP(phy, ch), val);
 
-	val = intel_de_read(dev_priv, BXT_PORT_TX_DW4_LN0(phy, ch));
+	val = intel_de_read(dev_priv, BXT_PORT_TX_DW4_LN(phy, ch, 0));
 	val &= ~DE_EMPHASIS_MASK;
 	val |= DE_EMPHASIS(trans->entries[level].bxt.deemphasis);
 	intel_de_write(dev_priv, BXT_PORT_TX_DW4_GRP(phy, ch), val);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 9ff6c4cc2e4b..cc3acdafdbf8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2071,7 +2071,7 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
 		drm_err(&i915->drm, "PLL %d not locked\n", port);
 
 	if (IS_GEMINILAKE(i915)) {
-		temp = intel_de_read(i915, BXT_PORT_TX_DW5_LN0(phy, ch));
+		temp = intel_de_read(i915, BXT_PORT_TX_DW5_LN(phy, ch, 0));
 		temp |= DCC_DELAY_RANGE_2;
 		intel_de_write(i915, BXT_PORT_TX_DW5_GRP(phy, ch), temp);
 	}
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index efcb00472be2..d36092615ae3 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -2763,15 +2763,15 @@ static int init_bxt_mmio_info(struct intel_gvt *gvt)
 
 	MMIO_DH(BXT_PORT_PCS_DW12_GRP(DPIO_PHY0, DPIO_CH0), D_BXT,
 		NULL, bxt_pcs_dw12_grp_write);
-	MMIO_DH(BXT_PORT_TX_DW3_LN0(DPIO_PHY0, DPIO_CH0), D_BXT,
+	MMIO_DH(BXT_PORT_TX_DW3_LN(DPIO_PHY0, DPIO_CH0, 0), D_BXT,
 		bxt_port_tx_dw3_read, NULL);
 	MMIO_DH(BXT_PORT_PCS_DW12_GRP(DPIO_PHY0, DPIO_CH1), D_BXT,
 		NULL, bxt_pcs_dw12_grp_write);
-	MMIO_DH(BXT_PORT_TX_DW3_LN0(DPIO_PHY0, DPIO_CH1), D_BXT,
+	MMIO_DH(BXT_PORT_TX_DW3_LN(DPIO_PHY0, DPIO_CH1, 0), D_BXT,
 		bxt_port_tx_dw3_read, NULL);
 	MMIO_DH(BXT_PORT_PCS_DW12_GRP(DPIO_PHY1, DPIO_CH0), D_BXT,
 		NULL, bxt_pcs_dw12_grp_write);
-	MMIO_DH(BXT_PORT_TX_DW3_LN0(DPIO_PHY1, DPIO_CH0), D_BXT,
+	MMIO_DH(BXT_PORT_TX_DW3_LN(DPIO_PHY1, DPIO_CH0, 0), D_BXT,
 		bxt_port_tx_dw3_read, NULL);
 	MMIO_DH(BXT_DE_PLL_ENABLE, D_BXT, NULL, bxt_de_pll_enable_write);
 	MMIO_DFH(GEN8_L3SQCREG1, D_BXT, F_CMD_ACCESS, NULL, NULL);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9701aad57e3a..261b520da399 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -555,6 +555,10 @@
 					 (reg_ch1) - _BXT_PHY0_BASE))
 #define _MMIO_BXT_PHY_CH(phy, ch, reg_ch0, reg_ch1)		\
 	_MMIO(_BXT_PHY_CH(phy, ch, reg_ch0, reg_ch1))
+#define _BXT_LANE_OFFSET(lane)           (((lane) >> 1) * 0x200 + \
+					  ((lane) & 1) * 0x80)
+#define _MMIO_BXT_PHY_CH_LN(phy, ch, lane, reg_ch0, reg_ch1) \
+	_MMIO(_BXT_PHY_CH(phy, ch, reg_ch0, reg_ch1) + _BXT_LANE_OFFSET(lane))
 
 #define BXT_P_CR_GT_DISP_PWRON		_MMIO(0x138090)
 #define  MIPIO_RST_CTRL				(1 << 2)
@@ -747,18 +751,15 @@
 							 _PORT_PCS_DW12_GRP_C)
 
 /* BXT PHY TX registers */
-#define _BXT_LANE_OFFSET(lane)           (((lane) >> 1) * 0x200 +	\
-					  ((lane) & 1) * 0x80)
-
 #define _PORT_TX_DW2_LN0_A		0x162508
 #define _PORT_TX_DW2_LN0_B		0x6C508
 #define _PORT_TX_DW2_LN0_C		0x6C908
 #define _PORT_TX_DW2_GRP_A		0x162D08
 #define _PORT_TX_DW2_GRP_B		0x6CD08
 #define _PORT_TX_DW2_GRP_C		0x6CF08
-#define BXT_PORT_TX_DW2_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW2_LN0_B, \
-							 _PORT_TX_DW2_LN0_C)
+#define BXT_PORT_TX_DW2_LN(phy, ch, lane)	_MMIO_BXT_PHY_CH_LN(phy, ch, lane, \
+								    _PORT_TX_DW2_LN0_B,	\
+								    _PORT_TX_DW2_LN0_C)
 #define BXT_PORT_TX_DW2_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
 							 _PORT_TX_DW2_GRP_B, \
 							 _PORT_TX_DW2_GRP_C)
@@ -773,9 +774,9 @@
 #define _PORT_TX_DW3_GRP_A		0x162D0C
 #define _PORT_TX_DW3_GRP_B		0x6CD0C
 #define _PORT_TX_DW3_GRP_C		0x6CF0C
-#define BXT_PORT_TX_DW3_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW3_LN0_B, \
-							 _PORT_TX_DW3_LN0_C)
+#define BXT_PORT_TX_DW3_LN(phy, ch, lane)	_MMIO_BXT_PHY_CH_LN(phy, ch, lane, \
+								    _PORT_TX_DW3_LN0_B, \
+								    _PORT_TX_DW3_LN0_C)
 #define BXT_PORT_TX_DW3_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
 							 _PORT_TX_DW3_GRP_B, \
 							 _PORT_TX_DW3_GRP_C)
@@ -788,9 +789,9 @@
 #define _PORT_TX_DW4_GRP_A		0x162D10
 #define _PORT_TX_DW4_GRP_B		0x6CD10
 #define _PORT_TX_DW4_GRP_C		0x6CF10
-#define BXT_PORT_TX_DW4_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW4_LN0_B, \
-							 _PORT_TX_DW4_LN0_C)
+#define BXT_PORT_TX_DW4_LN(phy, ch, lane)	_MMIO_BXT_PHY_CH_LN(phy, ch, lane, \
+								    _PORT_TX_DW4_LN0_B, \
+								    _PORT_TX_DW4_LN0_C)
 #define BXT_PORT_TX_DW4_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
 							 _PORT_TX_DW4_GRP_B, \
 							 _PORT_TX_DW4_GRP_C)
@@ -803,9 +804,9 @@
 #define _PORT_TX_DW5_GRP_A		0x162D14
 #define _PORT_TX_DW5_GRP_B		0x6CD14
 #define _PORT_TX_DW5_GRP_C		0x6CF14
-#define BXT_PORT_TX_DW5_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW5_LN0_B, \
-							 _PORT_TX_DW5_LN0_C)
+#define BXT_PORT_TX_DW5_LN(phy, ch, lane)	_MMIO_BXT_PHY_CH_LN(phy, ch, lane, \
+								    _PORT_TX_DW5_LN0_B, \
+								    _PORT_TX_DW5_LN0_C)
 #define BXT_PORT_TX_DW5_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
 							 _PORT_TX_DW5_GRP_B, \
 							 _PORT_TX_DW5_GRP_C)
@@ -816,10 +817,9 @@
 #define _PORT_TX_DW14_LN0_B		0x6C538
 #define _PORT_TX_DW14_LN0_C		0x6C938
 #define   LATENCY_OPTIM			REG_BIT(30)
-#define BXT_PORT_TX_DW14_LN(phy, ch, lane)				\
-	_MMIO(_BXT_PHY_CH(phy, ch, _PORT_TX_DW14_LN0_B,			\
-				   _PORT_TX_DW14_LN0_C) +		\
-	      _BXT_LANE_OFFSET(lane))
+#define BXT_PORT_TX_DW14_LN(phy, ch, lane)	_MMIO_BXT_PHY_CH_LN(phy, ch, lane, \
+								    _PORT_TX_DW14_LN0_B, \
+								    _PORT_TX_DW14_LN0_C)
 
 /* UAIMI scratch pad register 1 */
 #define UAIMI_SPR1			_MMIO(0x4F074)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 87ecc5104fd9..afb5b103df3e 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -1155,11 +1155,11 @@ static int iterate_bxt_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY0, DPIO_CH0));
 	MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY0, DPIO_CH0));
 	MMIO_D(BXT_PORT_PCS_DW12_GRP(DPIO_PHY0, DPIO_CH0));
-	MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW2_LN(DPIO_PHY0, DPIO_CH0, 0));
 	MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY0, DPIO_CH0));
-	MMIO_D(BXT_PORT_TX_DW3_LN0(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW3_LN(DPIO_PHY0, DPIO_CH0, 0));
 	MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY0, DPIO_CH0));
-	MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY0, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW4_LN(DPIO_PHY0, DPIO_CH0, 0));
 	MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY0, DPIO_CH0));
 	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 0));
 	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH0, 1));
@@ -1180,11 +1180,11 @@ static int iterate_bxt_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY0, DPIO_CH1));
 	MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY0, DPIO_CH1));
 	MMIO_D(BXT_PORT_PCS_DW12_GRP(DPIO_PHY0, DPIO_CH1));
-	MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_TX_DW2_LN(DPIO_PHY0, DPIO_CH1, 0));
 	MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY0, DPIO_CH1));
-	MMIO_D(BXT_PORT_TX_DW3_LN0(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_TX_DW3_LN(DPIO_PHY0, DPIO_CH1, 0));
 	MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY0, DPIO_CH1));
-	MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY0, DPIO_CH1));
+	MMIO_D(BXT_PORT_TX_DW4_LN(DPIO_PHY0, DPIO_CH1, 0));
 	MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY0, DPIO_CH1));
 	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 0));
 	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY0, DPIO_CH1, 1));
@@ -1205,11 +1205,11 @@ static int iterate_bxt_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(BXT_PORT_PCS_DW12_LN01(DPIO_PHY1, DPIO_CH0));
 	MMIO_D(BXT_PORT_PCS_DW12_LN23(DPIO_PHY1, DPIO_CH0));
 	MMIO_D(BXT_PORT_PCS_DW12_GRP(DPIO_PHY1, DPIO_CH0));
-	MMIO_D(BXT_PORT_TX_DW2_LN0(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW2_LN(DPIO_PHY1, DPIO_CH0, 0));
 	MMIO_D(BXT_PORT_TX_DW2_GRP(DPIO_PHY1, DPIO_CH0));
-	MMIO_D(BXT_PORT_TX_DW3_LN0(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW3_LN(DPIO_PHY1, DPIO_CH0, 0));
 	MMIO_D(BXT_PORT_TX_DW3_GRP(DPIO_PHY1, DPIO_CH0));
-	MMIO_D(BXT_PORT_TX_DW4_LN0(DPIO_PHY1, DPIO_CH0));
+	MMIO_D(BXT_PORT_TX_DW4_LN(DPIO_PHY1, DPIO_CH0, 0));
 	MMIO_D(BXT_PORT_TX_DW4_GRP(DPIO_PHY1, DPIO_CH0));
 	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 0));
 	MMIO_D(BXT_PORT_TX_DW14_LN(DPIO_PHY1, DPIO_CH0, 1));
-- 
2.43.2

