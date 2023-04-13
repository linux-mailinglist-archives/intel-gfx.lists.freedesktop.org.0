Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 175196E1673
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 23:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B58310E411;
	Thu, 13 Apr 2023 21:26:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE67010E06A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 21:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681421155; x=1712957155;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mitLnI4zoi7ilkG//hcEQW8oH1EmTxjbtq30JDKAl3s=;
 b=e4qDQrSM6bPHmjUV9p2UJUsQr4vXOF+8mtKURN177O8ALvErxgXtEYhR
 vf+5OYfqYwRL7MCzzeAaFkl9w2z4mQWgfwvZ0xtV6njwfp1uQpGcjeWi0
 a29VtSlsAw1Cmg1HDfDTI+iCnjrHykTEpOKr9w1RnFTbwVG/AOraVr+W3
 +I3vGJcUmsiG1YxR6C41028OrthId1rhUUIL4AxqnZx2P74V+6E4b92uI
 KFZUdCM4MsQqKNoWSA5qTk7QEfVQMbwBsJj4ItXHjbkztElh236sZmxfT
 rCMGgfF2YNKz0vFZfSfclveVI2NLAHrCYubCxyZHf8+xARra6se7LRb58 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="346129620"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="346129620"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:25:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="754168638"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="754168638"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:25:54 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 14:24:38 -0700
Message-Id: <20230413212443.1504245-5-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230413212443.1504245-1-radhakrishna.sripada@intel.com>
References: <20230413212443.1504245-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/mtl: Add vswing programming for
 C10 phys
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

From: Mika Kahola <mika.kahola@intel.com>

C10 phys uses direct mapping internally for voltage and pre-emphasis levels.
Program the levels directly to the fields in the VDR Registers.

Bspec: 65449

v2: From table "C10: Tx EQ settings for DP 1.4x" it shows level 1
    and preemphasis 1 instead of two times of level 1 preemphasis 0.
    Fix this in the driver code as well.
v3: VSwing update (Clint)
v4: Add vboost termination ctl programming(Imre)
    Fix tx llogic and other nits
    Restrict C10 vdr ctl register access for C10 phy(RK)
v5: Program vboots, termination ctl for both lanes(Imre)

Cc: Imre Deak <imre.deak@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>(v3)
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 102 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  14 ++-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |  31 +++++-
 5 files changed, 143 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 9ab1e686a40b..5ffd661fa507 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -6,6 +6,8 @@
 #include "i915_reg.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
+#include "intel_ddi.h"
+#include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
@@ -292,6 +294,97 @@ static void intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
 		__intel_cx0_rmw(i915, port, lane, addr, clear, set, committed);
 }
 
+static u8 intel_c10_get_tx_vboost_lvl(const struct intel_crtc_state *crtc_state)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
+		    (crtc_state->port_clock == 540000 ||
+		     crtc_state->port_clock == 810000))
+			return 5;
+		else
+			return 4;
+	} else {
+		return 5;
+	}
+}
+
+static u8 intel_c10_get_tx_term_ctl(const struct intel_crtc_state *crtc_state)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
+		    (crtc_state->port_clock == 540000 ||
+		     crtc_state->port_clock == 810000))
+			return 5;
+		else
+			return 2;
+	} else {
+		return 6;
+	}
+}
+
+void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
+				     const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	const struct intel_ddi_buf_trans *trans;
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	intel_wakeref_t wakeref;
+	int n_entries, ln;
+
+	wakeref = intel_cx0_phy_transaction_begin(encoder);
+
+	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	if (drm_WARN_ON_ONCE(&i915->drm, !trans)) {
+		intel_cx0_phy_transaction_end(encoder, wakeref);
+		return;
+	}
+
+	if (intel_is_c10phy(i915, phy)) {
+		intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+			      0, C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
+		intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CMN(3),
+			      C10_CMN3_TXVBOOST_MASK,
+			      C10_CMN3_TXVBOOST(intel_c10_get_tx_vboost_lvl(crtc_state)),
+			      MB_WRITE_UNCOMMITTED);
+		intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_TX(1),
+			      C10_TX1_TERMCTL_MASK,
+			      C10_TX1_TERMCTL(intel_c10_get_tx_term_ctl(crtc_state)),
+			      MB_WRITE_COMMITTED);
+	}
+
+	for (ln = 0; ln < crtc_state->lane_count; ln++) {
+		int level = intel_ddi_level(encoder, crtc_state, ln);
+		int lane, tx;
+
+		lane = ln / 2;
+		tx = ln % 2;
+
+		intel_cx0_rmw(i915, encoder->port, BIT(lane), PHY_CX0_VDROVRD_CTL(lane, tx, 0),
+			      C10_PHY_OVRD_LEVEL_MASK,
+			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.pre_cursor),
+			      MB_WRITE_COMMITTED);
+		intel_cx0_rmw(i915, encoder->port, BIT(lane), PHY_CX0_VDROVRD_CTL(lane, tx, 1),
+			      C10_PHY_OVRD_LEVEL_MASK,
+			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.vswing),
+			      MB_WRITE_COMMITTED);
+		intel_cx0_rmw(i915, encoder->port, BIT(lane), PHY_CX0_VDROVRD_CTL(lane, tx, 2),
+			      C10_PHY_OVRD_LEVEL_MASK,
+			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.post_cursor),
+			      MB_WRITE_COMMITTED);
+	}
+
+	/* Write Override enables in 0xD71 */
+	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_OVRD,
+		      0, PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,
+		      MB_WRITE_COMMITTED);
+
+	if (intel_is_c10phy(i915, phy))
+		intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+			      0, C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
+}
+
 /*
  * Basic DP link rates with 38.4 MHz reference clock.
  * Note: The tables below are with SSC. In non-ssc
@@ -766,10 +859,8 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 	val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
 
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
-		     XELPDP_LANE1_PHY_CLOCK_SELECT |
-		     XELPDP_FORWARD_CLOCK_UNGATE |
-		     XELPDP_DDI_CLOCK_SELECT_MASK |
-		     XELPDP_SSC_ENABLE_PLLB, val);
+		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
+		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_SSC_ENABLE_PLLB, val);
 }
 
 static u32 intel_cx0_get_powerdown_update(u8 lane_mask)
@@ -1144,7 +1235,8 @@ static void intel_c10pll_disable(struct intel_encoder *encoder)
 
 	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
-		     XELPDP_DDI_CLOCK_SELECT_MASK |
+		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
 		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 46fa0576ef0d..6b736acb83e0 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -30,5 +30,7 @@ int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_c10pll_state *pll_state);
 void intel_c10pll_state_verify(struct intel_atomic_state *state,
 			       struct intel_crtc_state *new_crtc_state);
+void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
+				     const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 21a699c678a1..9cfa7f508c90 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -144,6 +144,8 @@
 #define   C10_CMN3_TXVBOOST(val)	REG_FIELD_PREP8(C10_CMN3_TXVBOOST_MASK, val)
 #define PHY_C10_VDR_TX(idx)		(0xC30 + (idx))
 #define   C10_TX0_TX_MPLLB_SEL		REG_BIT(4)
+#define   C10_TX1_TERMCTL_MASK		REG_GENMASK8(7, 5)
+#define   C10_TX1_TERMCTL(val)		REG_FIELD_PREP8(C10_TX1_TERMCTL_MASK, val)
 #define PHY_C10_VDR_CONTROL(idx)	(0xC70 + (idx) - 1)
 #define   C10_VDR_CTRL_MSGBUS_ACCESS	REG_BIT8(2)
 #define   C10_VDR_CTRL_MASTER_LANE	REG_BIT8(1)
@@ -151,9 +153,15 @@
 #define PHY_C10_VDR_CUSTOM_WIDTH	0xD02
 #define   C10_VDR_CUSTOM_WIDTH_MASK    REG_GENMASK(1, 0)
 #define   C10_VDR_CUSTOM_WIDTH_8_10    REG_FIELD_PREP(C10_VDR_CUSTOM_WIDTH_MASK, 0)
-
-/* PHY_C10_VDR_PLL0 */
-#define PLL_C10_MPLL_SSC_EN             REG_BIT8(0)
+#define PHY_C10_VDR_OVRD		0xD71
+#define   PHY_C10_VDR_OVRD_TX1		REG_BIT8(0)
+#define   PHY_C10_VDR_OVRD_TX2		REG_BIT8(2)
+#define PHY_C10_VDR_PRE_OVRD_TX1	0xD80
+#define C10_PHY_OVRD_LEVEL_MASK		REG_GENMASK8(5, 0)
+#define C10_PHY_OVRD_LEVEL(val)		REG_FIELD_PREP8(C10_PHY_OVRD_LEVEL_MASK, val)
+#define PHY_CX0_VDROVRD_CTL(lane, tx, control)				\
+					(PHY_C10_VDR_PRE_OVRD_TX1 +	\
+					 ((lane) ^ (tx)) * 0x10 + (control))
 
 /* PIPE SPEC Defined Registers */
 #define PHY_CX0_TX_CONTROL(tx, control)	(0x400 + ((tx) - 1) * 0x200 + (control))
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3c1a0f46d6bf..21a86cb7b2dc 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4476,7 +4476,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
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
index 006a2e979000..cd4becbae098 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1035,6 +1035,25 @@ static const struct intel_ddi_buf_trans dg2_snps_trans_uhbr = {
 	.num_entries = ARRAY_SIZE(_dg2_snps_trans_uhbr),
 };
 
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
+static const struct intel_ddi_buf_trans mtl_cx0c10_trans = {
+	.entries = _mtl_c10_trans_dp14,
+	.num_entries = ARRAY_SIZE(_mtl_c10_trans_dp14),
+	.hdmi_default_entry = ARRAY_SIZE(_mtl_c10_trans_dp14) - 1,
+};
+
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
 {
 	return table == &tgl_combo_phy_trans_edp_hbr2_hobl;
@@ -1606,12 +1625,22 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
 }
 
+static const struct intel_ddi_buf_trans *
+mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
+		      const struct intel_crtc_state *crtc_state,
+		      int *n_entries)
+{
+	return intel_get_buf_trans(&mtl_cx0c10_trans, n_entries);
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
-- 
2.34.1

