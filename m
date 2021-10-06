Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8382D424848
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:50:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 270E56EE84;
	Wed,  6 Oct 2021 20:50:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 633186EE7F
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:50:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="223496014"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="223496014"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:49:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="624019802"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 06 Oct 2021 13:49:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 23:49:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Oct 2021 23:49:25 +0300
Message-Id: <20211006204937.30774-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/16] drm/i915: Add all per-lane register
 definitions for icl combo phy
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

Add the FOO_LN() register macros for all the icl combo phy registers.
Also get rid of the semi-pointless FOO_LN0() variants and just use
the parametrized version.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c         | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_combo_phy.c |  8 ++++----
 drivers/gpu/drm/i915/display/intel_ddi.c       | 14 +++++++-------
 drivers/gpu/drm/i915/i915_reg.h                | 10 ++++------
 4 files changed, 22 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 9ee62707ec72..168c84a74d30 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -233,7 +233,7 @@ static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
 		 * Program voltage swing and pre-emphasis level values as per
 		 * table in BSPEC under DDI buffer programing
 		 */
-		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
 		tmp &= ~(SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK);
 		tmp |= SCALING_MODE_SEL(0x2);
 		tmp |= TAP2_DISABLE | TAP3_DISABLE;
@@ -247,7 +247,7 @@ static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
 		tmp |= RTERM_SELECT(0x6);
 		intel_de_write(dev_priv, ICL_PORT_TX_DW5_AUX(phy), tmp);
 
-		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN0(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN(0, phy));
 		tmp &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
 			 RCOMP_SCALAR_MASK);
 		tmp |= SWING_SEL_UPPER(0x2);
@@ -455,7 +455,7 @@ static void gen11_dsi_config_phy_lanes_sequence(struct intel_encoder *encoder)
 		tmp &= ~FRC_LATENCY_OPTIM_MASK;
 		tmp |= FRC_LATENCY_OPTIM_VAL(0x5);
 		intel_de_write(dev_priv, ICL_PORT_TX_DW2_AUX(phy), tmp);
-		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN0(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN(0, phy));
 		tmp &= ~FRC_LATENCY_OPTIM_MASK;
 		tmp |= FRC_LATENCY_OPTIM_VAL(0x5);
 		intel_de_write(dev_priv, ICL_PORT_TX_DW2_GRP(phy), tmp);
@@ -470,7 +470,7 @@ static void gen11_dsi_config_phy_lanes_sequence(struct intel_encoder *encoder)
 				       tmp);
 
 			tmp = intel_de_read(dev_priv,
-					    ICL_PORT_PCS_DW1_LN0(phy));
+					    ICL_PORT_PCS_DW1_LN(0, phy));
 			tmp &= ~LATENCY_OPTIM_MASK;
 			tmp |= LATENCY_OPTIM_VAL(0x1);
 			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy),
@@ -489,7 +489,7 @@ static void gen11_dsi_voltage_swing_program_seq(struct intel_encoder *encoder)
 
 	/* clear common keeper enable bit */
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		tmp = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN0(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
 		tmp &= ~COMMON_KEEPER_EN;
 		intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), tmp);
 		tmp = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_AUX(phy));
@@ -510,7 +510,7 @@ static void gen11_dsi_voltage_swing_program_seq(struct intel_encoder *encoder)
 
 	/* Clear training enable to change swing values */
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
 		tmp &= ~TX_TRAINING_EN;
 		intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), tmp);
 		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_AUX(phy));
@@ -523,7 +523,7 @@ static void gen11_dsi_voltage_swing_program_seq(struct intel_encoder *encoder)
 
 	/* Set training enable to trigger update */
 	for_each_dsi_phy(phy, intel_dsi->phys) {
-		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
+		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
 		tmp |= TX_TRAINING_EN;
 		intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), tmp);
 		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_AUX(phy));
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index bacdf8a16bcb..634e8d449457 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -220,13 +220,13 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 		return false;
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_TX_DW8_LN0(phy),
+		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_TX_DW8_LN(0, phy),
 				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
 				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK,
 				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
 				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2);
 
-		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_LN0(phy),
+		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_LN(0, phy),
 				     DCC_MODE_SELECT_MASK,
 				     DCC_MODE_SELECT_CONTINUOSLY);
 	}
@@ -343,13 +343,13 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 
 skip_phy_misc:
 		if (DISPLAY_VER(dev_priv) >= 12) {
-			val = intel_de_read(dev_priv, ICL_PORT_TX_DW8_LN0(phy));
+			val = intel_de_read(dev_priv, ICL_PORT_TX_DW8_LN(0, phy));
 			val &= ~ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK;
 			val |= ICL_PORT_TX_DW8_ODCC_CLK_SEL;
 			val |= ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2;
 			intel_de_write(dev_priv, ICL_PORT_TX_DW8_GRP(phy), val);
 
-			val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN0(phy));
+			val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
 			val &= ~DCC_MODE_SELECT_MASK;
 			val |= DCC_MODE_SELECT_CONTINUOSLY;
 			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b0bd50383d57..0c9ed705af47 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1047,7 +1047,7 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	}
 
 	/* Set PORT_TX_DW5 */
-	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
 	val &= ~(SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK |
 		  TAP2_DISABLE | TAP3_DISABLE);
 	val |= SCALING_MODE_SEL(0x2);
@@ -1056,7 +1056,7 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
 
 	/* Program PORT_TX_DW2 */
-	val = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN0(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN(0, phy));
 	val &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
 		 RCOMP_SCALAR_MASK);
 	val |= SWING_SEL_UPPER(trans->entries[level].icl.dw2_swing_sel);
@@ -1078,7 +1078,7 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	}
 
 	/* Program PORT_TX_DW7 */
-	val = intel_de_read(dev_priv, ICL_PORT_TX_DW7_LN0(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_TX_DW7_LN(0, phy));
 	val &= ~N_SCALAR_MASK;
 	val |= N_SCALAR(trans->entries[level].icl.dw7_n_scalar);
 	intel_de_write(dev_priv, ICL_PORT_TX_DW7_GRP(phy), val);
@@ -1100,7 +1100,7 @@ static void icl_combo_phy_set_signal_levels(struct intel_encoder *encoder,
 	 * set PORT_PCS_DW1 cmnkeeper_enable to 1b,
 	 * else clear to 0b.
 	 */
-	val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN0(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		val &= ~COMMON_KEEPER_EN;
 	else
@@ -1109,7 +1109,7 @@ static void icl_combo_phy_set_signal_levels(struct intel_encoder *encoder,
 
 	/* 2. Program loadgen select */
 	/*
-	 * Program PORT_TX_DW4_LN depending on Bit rate and used lanes
+	 * Program PORT_TX_DW4 depending on Bit rate and used lanes
 	 * <= 6 GHz and 4 lanes (LN0=0, LN1=1, LN2=1, LN3=1)
 	 * <= 6 GHz and 1,2 lanes (LN0=0, LN1=1, LN2=1, LN3=0)
 	 * > 6 GHz (LN0=0, LN1=0, LN2=0, LN3=0)
@@ -1131,7 +1131,7 @@ static void icl_combo_phy_set_signal_levels(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, ICL_PORT_CL_DW5(phy), val);
 
 	/* 4. Clear training enable to change swing values */
-	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
 	val &= ~TX_TRAINING_EN;
 	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
 
@@ -1139,7 +1139,7 @@ static void icl_combo_phy_set_signal_levels(struct intel_encoder *encoder,
 	icl_ddi_combo_vswing_program(encoder, crtc_state);
 
 	/* 6. Set training enable to trigger update */
-	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
 	val |= TX_TRAINING_EN;
 	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a897f4abea0c..5e7a55e6ef50 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1968,7 +1968,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 					  _ICL_PORT_PCS_LN(ln) + 4 * (dw))
 #define ICL_PORT_PCS_DW1_AUX(phy)	_MMIO(_ICL_PORT_PCS_DW_AUX(1, phy))
 #define ICL_PORT_PCS_DW1_GRP(phy)	_MMIO(_ICL_PORT_PCS_DW_GRP(1, phy))
-#define ICL_PORT_PCS_DW1_LN0(phy)	_MMIO(_ICL_PORT_PCS_DW_LN(1, 0, phy))
+#define ICL_PORT_PCS_DW1_LN(ln, phy)	_MMIO(_ICL_PORT_PCS_DW_LN(1, ln, phy))
 #define   DCC_MODE_SELECT_MASK		(0x3 << 20)
 #define   DCC_MODE_SELECT_CONTINUOSLY	(0x3 << 20)
 #define   COMMON_KEEPER_EN		(1 << 26)
@@ -1989,7 +1989,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define ICL_PORT_TX_DW2_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(2, phy))
 #define ICL_PORT_TX_DW2_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(2, phy))
-#define ICL_PORT_TX_DW2_LN0(phy)	_MMIO(_ICL_PORT_TX_DW_LN(2, 0, phy))
+#define ICL_PORT_TX_DW2_LN(ln, phy)	_MMIO(_ICL_PORT_TX_DW_LN(2, ln, phy))
 #define   SWING_SEL_UPPER(x)		(((x) >> 3) << 15)
 #define   SWING_SEL_UPPER_MASK		(1 << 15)
 #define   SWING_SEL_LOWER(x)		(((x) & 0x7) << 11)
@@ -2001,7 +2001,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define ICL_PORT_TX_DW4_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(4, phy))
 #define ICL_PORT_TX_DW4_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(4, phy))
-#define ICL_PORT_TX_DW4_LN0(phy)	_MMIO(_ICL_PORT_TX_DW_LN(4, 0, phy))
 #define ICL_PORT_TX_DW4_LN(ln, phy)	_MMIO(_ICL_PORT_TX_DW_LN(4, ln, phy))
 #define   LOADGEN_SELECT		(1 << 31)
 #define   POST_CURSOR_1(x)		((x) << 12)
@@ -2013,7 +2012,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define ICL_PORT_TX_DW5_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(5, phy))
 #define ICL_PORT_TX_DW5_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(5, phy))
-#define ICL_PORT_TX_DW5_LN0(phy)	_MMIO(_ICL_PORT_TX_DW_LN(5, 0, phy))
+#define ICL_PORT_TX_DW5_LN(ln, phy)	_MMIO(_ICL_PORT_TX_DW_LN(5, ln, phy))
 #define   TX_TRAINING_EN		(1 << 31)
 #define   TAP2_DISABLE			(1 << 30)
 #define   TAP3_DISABLE			(1 << 29)
@@ -2024,14 +2023,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define ICL_PORT_TX_DW7_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(7, phy))
 #define ICL_PORT_TX_DW7_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(7, phy))
-#define ICL_PORT_TX_DW7_LN0(phy)	_MMIO(_ICL_PORT_TX_DW_LN(7, 0, phy))
 #define ICL_PORT_TX_DW7_LN(ln, phy)	_MMIO(_ICL_PORT_TX_DW_LN(7, ln, phy))
 #define   N_SCALAR(x)			((x) << 24)
 #define   N_SCALAR_MASK			(0x7F << 24)
 
 #define ICL_PORT_TX_DW8_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(8, phy))
 #define ICL_PORT_TX_DW8_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(8, phy))
-#define ICL_PORT_TX_DW8_LN0(phy)		_MMIO(_ICL_PORT_TX_DW_LN(8, 0, phy))
+#define ICL_PORT_TX_DW8_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(8, ln, phy))
 #define   ICL_PORT_TX_DW8_ODCC_CLK_SEL		REG_BIT(31)
 #define   ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK	REG_GENMASK(30, 29)
 #define   ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2	REG_FIELD_PREP(ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK, 0x1)
-- 
2.32.0

