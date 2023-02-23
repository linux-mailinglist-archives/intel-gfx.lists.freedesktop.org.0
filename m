Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB356A0B00
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 14:46:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B4710EB91;
	Thu, 23 Feb 2023 13:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07F0F10EB91
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 13:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677159953; x=1708695953;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cN4DwyOK4tZyjup+pnn2YyDl4j/nE1URqAttvRfl/u8=;
 b=mlHJY2zPFSFc64Lsu/6skluNP7Eki7JDTd/99YaPC6YgIsLk8TcriizF
 QBziHT259/wIN5l1fFV7t2hBNTPrxmoUglK0MmCNFST86Wwy/JA5/qe0A
 1wISNbCfoGmQs9c4dbuhwVyJBsW6+cdsPWXuiVtSTLntQsEClusqrAkSe
 3tvOmT9hqgaNWDA6IR9DhUjBKxAXLa6p+lmUqhd6ECZKbQaC+sR7y36Wu
 LFpLwoL98ffT/cXppUbDPrYws2jIuQ6j3Vkm9Hx/rvheLI6d3V2+ARtT8
 OIUiGfbUwSE5qNnc3m6uOpblpJgH3YVavGNTetOPq2g1BpuFzHgKcnp80 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334581633"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="334581633"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 05:45:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="846562420"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="846562420"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 23 Feb 2023 05:45:40 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 15:40:05 +0200
Message-Id: <20230223134021.2236889-7-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230223134021.2236889-1-mika.kahola@intel.com>
References: <20230223134021.2236889-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 06/22] drm/i915/mtl: Add vswing programming
 for C10 phys
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

From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

C10 phys uses direct mapping internally for voltage and pre-emphasis levels.
Program the levels directly to the fields in the VDR Registers.

Bspec: 65449

v2: From table "C10: Tx EQ settings for DP 1.4x" it shows level 1
    and preemphasis 1 instead of two times of level 1 preemphasis 0.
    Fix this in the driver code as well.
v3: VSwing update (Clint)

Cc: Imre Deak <imre.deak@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 140 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  14 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |  36 ++++-
 .../drm/i915/display/intel_ddi_buf_trans.h    |   6 +
 .../i915/display/intel_display_power_map.c    |   1 +
 7 files changed, 192 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index c73d2bc3e1a8..3d61afbe7bdb 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -6,11 +6,15 @@
 #include "i915_reg.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
+#include "intel_ddi.h"
+#include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_panel.h"
 #include "intel_tc.h"
+#include "intel_psr.h"
+#include "intel_uncore.h"
 
 bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
 {
@@ -20,6 +24,15 @@ bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
 	return false;
 }
 
+static void
+assert_dc_off(struct drm_i915_private *i915)
+{
+	bool enabled;
+
+	enabled = intel_display_power_is_enabled(i915, POWER_DOMAIN_DC_OFF);
+	drm_WARN_ON(&i915->drm, !enabled);
+}
+
 static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, int lane)
 {
 	enum phy phy = intel_port_to_phy(i915, port);
@@ -112,6 +125,8 @@ static u8 intel_cx0_read(struct drm_i915_private *i915, enum port port,
 	int i, status = 0;
 	u32 val;
 
+	assert_dc_off(i915);
+
 	for (i = 0; i < 3; i++) {
 		status = __intel_cx0_read(i915, port, lane, addr, &val);
 
@@ -194,6 +209,8 @@ static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
 	enum phy phy = intel_port_to_phy(i915, port);
 	int i, status;
 
+	assert_dc_off(i915);
+
 	for (i = 0; i < 3; i++) {
 		status = __intel_cx0_write_once(i915, port, lane, addr, data, committed);
 
@@ -241,6 +258,89 @@ static void intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
 	}
 }
 
+/*
+ * Prepare HW for CX0 phy transactions.
+ *
+ * It is required that PSR and DC5/6 are disabled before any CX0 message
+ * bus transaction is executed.
+ */
+static intel_wakeref_t intel_cx0_phy_transaction_begin(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_psr_pause(intel_dp);
+	return intel_display_power_get(i915, POWER_DOMAIN_DC_OFF);
+}
+
+static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_wakeref_t wakeref)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_psr_resume(intel_dp);
+	intel_display_power_put(i915, POWER_DOMAIN_DC_OFF, wakeref);
+}
+
+void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
+				     const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
+	u8 master_lane = lane_reversal ? INTEL_CX0_LANE1 :
+					 INTEL_CX0_LANE0;
+	u8 follower_lane = lane_reversal ? INTEL_CX0_LANE0 :
+					 INTEL_CX0_LANE1;
+	const struct intel_ddi_buf_trans *trans;
+	intel_wakeref_t wakeref;
+	int n_entries, ln;
+
+	wakeref = intel_cx0_phy_transaction_begin(encoder);
+
+	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	if (drm_WARN_ON_ONCE(&i915->drm, !trans))
+		return;
+
+	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+		      0, C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
+
+	for (ln = 0; ln < 4; ln++) {
+		int level = intel_ddi_level(encoder, crtc_state, ln);
+		int lane, tx;
+
+		lane = ln / 2 + 1;
+		tx = ln % 2 + 1;
+
+		intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 0),
+			      C10_PHY_OVRD_LEVEL_MASK,
+			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.pre_cursor),
+			      MB_WRITE_COMMITTED);
+		intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 1),
+			      C10_PHY_OVRD_LEVEL_MASK,
+			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.vswing),
+			      MB_WRITE_COMMITTED);
+		intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 2),
+			      C10_PHY_OVRD_LEVEL_MASK,
+			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.post_cursor),
+			      MB_WRITE_COMMITTED);
+	}
+
+	/* Write Override enables in 0xD71 */
+	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_OVRD,
+		      PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,
+		      PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,
+		      MB_WRITE_COMMITTED);
+	intel_cx0_write(i915, encoder->port, follower_lane, PHY_C10_VDR_CONTROL(1),
+			C10_VDR_CTRL_MSGBUS_ACCESS | C10_VDR_CTRL_UPDATE_CFG,
+			MB_WRITE_COMMITTED);
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CONTROL(1),
+			C10_VDR_CTRL_MASTER_LANE | C10_VDR_CTRL_MSGBUS_ACCESS |
+			C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
+}
+
 /*
  * Basic DP link rates with 38.4 MHz reference clock.
  * Note: The tables below are with SSC. In non-ssc
@@ -1085,9 +1185,12 @@ void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
 	u8 lane = lane_reversal ? INTEL_CX0_LANE1 :
 				  INTEL_CX0_LANE0;
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	intel_wakeref_t wakeref;
 	int i;
 	u8 cmn, tx0;
 
+	wakeref = intel_cx0_phy_transaction_begin(encoder);
+
 	/*
 	 * According to C10 VDR Register programming Sequence we need
 	 * to do this to read PHY internal registers from MsgBus.
@@ -1106,6 +1209,8 @@ void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
 				   cmn != C10_CMN0_HDMI_VAL))
 		drm_dbg_kms(&i915->drm, "Unexpected tx: %x or cmn: %x for phy: %c.\n",
 			    tx0, cmn, phy_name(phy));
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
 static void intel_c10_pll_program(struct drm_i915_private *i915,
@@ -1243,8 +1348,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		intel_dp = enc_to_intel_dp(encoder);
-		ssc_enabled = intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
-			      DP_MAX_DOWNSPREAD_0_5;
+		ssc_enabled = (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
+			      DP_MAX_DOWNSPREAD_0_5);
+
+		if (intel_dp_is_edp(intel_dp) && !intel_panel_use_ssc(i915))
+			ssc_enabled = false;
 
 		if (!intel_panel_use_ssc(i915))
 			ssc_enabled = false;
@@ -1252,11 +1360,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 		/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
 		val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
 	}
+
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
-		     XELPDP_LANE1_PHY_CLOCK_SELECT |
-		     XELPDP_FORWARD_CLOCK_UNGATE |
+		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
 		     XELPDP_DDI_CLOCK_SELECT_MASK |
-		     XELPDP_SSC_ENABLE_PLLB, val);
+		     XELPDP_SSC_ENABLE_PLLA | XELPDP_SSC_ENABLE_PLLB, val);
 }
 
 static u32 intel_cx0_get_powerdown_update(u8 lane)
@@ -1396,9 +1504,12 @@ static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
 	bool dp_alt_mode = intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
 	enum port port = encoder->port;
 
-	intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
-		      C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MSGBUS_ACCESS,
-		      MB_WRITE_COMMITTED);
+	intel_cx0_rmw(i915, port, INTEL_CX0_LANE1, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_MSGBUS_ACCESS | C10_VDR_CTRL_UPDATE_CFG,
+		      C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
+	intel_cx0_rmw(i915, port, INTEL_CX0_LANE0, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_MSGBUS_ACCESS | C10_VDR_CTRL_UPDATE_CFG,
+		      C10_VDR_CTRL_MASTER_LANE  | C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
 
 	l0t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2));
 	l0t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2));
@@ -1561,9 +1672,14 @@ void intel_cx0pll_enable(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	intel_wakeref_t wakeref;
+
+	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
 	intel_c10pll_enable(encoder, crtc_state);
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
 static void intel_c10pll_disable(struct intel_encoder *encoder)
@@ -1608,7 +1724,8 @@ static void intel_c10pll_disable(struct intel_encoder *encoder)
 
 	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
-		     XELPDP_DDI_CLOCK_SELECT_MASK |
+		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
 		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
 }
 
@@ -1616,9 +1733,14 @@ void intel_cx0pll_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	intel_wakeref_t wakeref;
+
+	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
 	intel_c10pll_disable(encoder);
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
 void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index f8023f240727..952c7deeffaa 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -40,5 +40,7 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 				 struct intel_crtc_state *new_crtc_state);
 int intel_c10_phy_check_hdmi_link_rate(int clock);
+void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
+				     const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index f6002b70ddbe..9bf7408fb363 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -162,6 +162,14 @@
 #define CX0_P4PG_STATE_DISABLE		0xC
 #define CX0_P2_STATE_RESET		0x2
 
+#define PHY_C10_VDR_OVRD		0xD71
+#define  PHY_C10_VDR_OVRD_TX1		REG_BIT8(0)
+#define  PHY_C10_VDR_OVRD_TX2		REG_BIT8(2)
+#define PHY_C10_VDR_PRE_OVRD_TX1	0xD80
+#define C10_PHY_OVRD_LEVEL_MASK		REG_GENMASK8(5, 0)
+#define C10_PHY_OVRD_LEVEL(val)		REG_FIELD_PREP8(C10_PHY_OVRD_LEVEL_MASK, val)
+#define PHY_CX0_VDR_OVRD_CONTROL(lane, tx, control) (PHY_C10_VDR_PRE_OVRD_TX1 + ((lane) ^ ((tx) - 1)) * 0x10 + (control))
+
 /* PHY_C10_VDR_PLL0 */
 #define PLL_C10_MPLL_SSC_EN		REG_BIT8(0)
 
@@ -169,4 +177,10 @@
 #define PHY_CX0_TX_CONTROL(tx, control)	(0x400 + ((tx) - 1) * 0x200 + (control))
 #define CONTROL2_DISABLE_SINGLE_TX	REG_BIT(6)
 
+/* C10 Phy VSWING Masks */
+#define C10_PHY_VSWING_LEVEL_MASK	REG_GENMASK8(2, 0)
+#define C10_PHY_VSWING_LEVEL(val)	REG_FIELD_PREP8(C10_PHY_VSWING_LEVEL_MASK, val)
+#define C10_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(1, 0)
+#define C10_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C10_PHY_VSWING_PREEMPH_MASK, val)
+
 #endif /* __INTEL_CX0_PHY_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d48e1ffdfc71..60c38bc77683 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4457,7 +4457,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		encoder->get_config = hsw_ddi_get_config;
 	}
 
-	if (IS_DG2(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		encoder->set_signal_levels = intel_cx0_phy_set_signal_levels;
+	} else if (IS_DG2(dev_priv)) {
 		encoder->set_signal_levels = intel_snps_phy_set_signal_levels;
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		if (intel_phy_is_combo(dev_priv, phy))
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 006a2e979000..d5a9aa2de2fa 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1035,6 +1035,30 @@ static const struct intel_ddi_buf_trans dg2_snps_trans_uhbr = {
 	.num_entries = ARRAY_SIZE(_dg2_snps_trans_uhbr),
 };
 
+/*
+ * Some platforms don't need a mapping table and only expect us to
+ * to program the vswing + preemphasis levels directly since the
+ * hardware will do its own mapping to tuning values internally.
+ */
+static const union intel_ddi_buf_trans_entry _mtl_c10_trans_dp14[] = {
+	{ .snps = { 26, 0, 0  } },      /* preset 0 */
+	{ .snps = { 33, 0, 6  } },      /* preset 1 */
+	{ .snps = { 38, 0, 11 } },      /* preset 2 */
+	{ .snps = { 43, 0, 19 } },      /* preset 3 */
+	{ .snps = { 39, 0, 0  } },      /* preset 4 */
+	{ .snps = { 45, 0, 7  } },      /* preset 5 */
+	{ .snps = { 46, 0, 13 } },      /* preset 6 */
+	{ .snps = { 46, 0, 0  } },      /* preset 7 */
+	{ .snps = { 55, 0, 7  } },      /* preset 8 */
+	{ .snps = { 62, 0, 0  } },      /* preset 9 */
+};
+
+static const struct intel_ddi_buf_trans mtl_cx0_trans = {
+	.entries = _mtl_c10_trans_dp14,
+	.num_entries = ARRAY_SIZE(_mtl_c10_trans_dp14),
+	.hdmi_default_entry = ARRAY_SIZE(_mtl_c10_trans_dp14) - 1,
+};
+
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
 {
 	return table == &tgl_combo_phy_trans_edp_hbr2_hobl;
@@ -1606,12 +1630,22 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
 }
 
+static const struct intel_ddi_buf_trans *
+mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
+		      const struct intel_crtc_state *crtc_state,
+		      int *n_entries)
+{
+	return intel_get_buf_trans(&mtl_cx0_trans, n_entries);
+}
+
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
-	if (IS_DG2(i915)) {
+	if (DISPLAY_VER(i915) >= 14) {
+		encoder->get_buf_trans = mtl_get_cx0_buf_trans;
+	} else if (IS_DG2(i915)) {
 		encoder->get_buf_trans = dg2_get_snps_buf_trans;
 	} else if (IS_ALDERLAKE_P(i915)) {
 		if (intel_phy_is_combo(i915, phy))
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 2133984a572b..e4a857b9829d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -51,6 +51,11 @@ struct dg2_snps_phy_buf_trans {
 	u8 post_cursor;
 };
 
+struct direct_phy_buf_trans {
+	u8 level;
+	u8 preemph;
+};
+
 union intel_ddi_buf_trans_entry {
 	struct hsw_ddi_buf_trans hsw;
 	struct bxt_ddi_buf_trans bxt;
@@ -58,6 +63,7 @@ union intel_ddi_buf_trans_entry {
 	struct icl_mg_phy_ddi_buf_trans mg;
 	struct tgl_dkl_phy_ddi_buf_trans dkl;
 	struct dg2_snps_phy_buf_trans snps;
+	struct direct_phy_buf_trans direct;
 };
 
 struct intel_ddi_buf_trans {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 6645eb1911d8..5ec2b9a109ae 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1427,6 +1427,7 @@ I915_DECL_PW_DOMAINS(xelpdp_pwdoms_dc_off,
 	XELPDP_PW_2_POWER_DOMAINS,
 	POWER_DOMAIN_AUDIO_MMIO,
 	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_DC_OFF,
-- 
2.34.1

