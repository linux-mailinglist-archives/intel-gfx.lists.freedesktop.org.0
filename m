Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 324F85FEE26
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 14:52:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0926310EAE8;
	Fri, 14 Oct 2022 12:52:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3985210EADB
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 12:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665751920; x=1697287920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EIPunRt9+9ybS9UAPV62L6UsJE8K0Fy5QMwhB2BPDEA=;
 b=Y0Rs88eH1AP2dTwoZL19NxfyHNNSlKRH335QuoJGarOOT+gpRdS3wL5n
 gOOHVbFaApi4mCFtR1kVoRimVSivfCm11udsHL+hY3bgCael4eNEvI6AP
 ioANkbT+OnRdYNftRIWtEilfcUIPUOQzUsTyUEvZTR86zUl+XxCHRPNxT
 CAc4slDpwNQaYOFnAy+E7rnyM1hKGfdXn5bMOhvs2EIz8EUfjgTOEuv15
 cF1/aBu5pWnMl/xOxAzISFSH4RmjJwU4dq689NlsUHKBLEYb4FFhmmd3t
 Gg33cNAW40n8gzeGwCQ2QRP53jlyBPDGOaC/lJ9fhnTwVmsdhUgbQ3o5G g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="304104628"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="304104628"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 05:52:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="716739719"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="716739719"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2022 05:51:58 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 15:47:25 +0300
Message-Id: <20221014124740.774835-6-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221014124740.774835-1-mika.kahola@intel.com>
References: <20221014124740.774835-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/20] drm/i915/mtl: Add C10 phy programming for
 HDMI
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

Like DG2, we still don't have a proper algorithm that can be used
for calculating PHY settings, but we do have tables of register
values for a handful of the more common link rates. Some support is
better than none, so let's go ahead and add/use these tables when we
can, and also add some logic to hdmi_port_clock_valid() to filter the
modelist to just the modes we can actually support with these link
rates.

Hopefully we'll have a proper / non-encumbered algorithm to calculate
these registers by the time we upstream and we'll be able to replace
this patch with something more general purpose.

Bspec: 64568

Cc: Imre Deak <imre.deak@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 168 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
 .../gpu/drm/i915/display/intel_cx0_reg_defs.h |  31 ++--
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   5 +-
 4 files changed, 185 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index d0e8ddd0a905..dc033174c9c0 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -484,6 +484,152 @@ static const struct intel_c10mpllb_state * const mtl_c10_edp_tables[] = {
 	NULL,
 };
 
+/*
+ * HDMI link rates with 38.4 MHz reference clock.
+ */
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_25_175 = {
+	.clock = 25175,
+	.pll[0] = 0x4,
+	.pll[1] = 0,
+	.pll[2] = 0xB2,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xD,
+	.pll[16] = 0x6,
+	.pll[17] = 0x8F,
+	.pll[18] = 0x84,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_27_0 = {
+	.clock = 27000,
+	.pll[0] = 0x34,
+	.pll[1] = 0,
+	.pll[2] = 0xC0,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x80,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xD,
+	.pll[16] = 0x6,
+	.pll[17] = 0xCF,
+	.pll[18] = 0x84,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_74_25 = {
+	.clock = 74250,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0x7A,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x58,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xB,
+	.pll[16] = 0x6,
+	.pll[17] = 0xF,
+	.pll[18] = 0x85,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_148_5 = {
+	.clock = 148500,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0x7A,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x58,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xA,
+	.pll[16] = 0x6,
+	.pll[17] = 0xF,
+	.pll[18] = 0x85,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_hdmi_594 = {
+	.clock = 594000,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0x7A,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x58,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x8,
+	.pll[16] = 0x6,
+	.pll[17] = 0xF,
+	.pll[18] = 0x85,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state * const mtl_c10_hdmi_tables[] = {
+	&mtl_c10_hdmi_25_175,
+	&mtl_c10_hdmi_27_0,
+	&mtl_c10_hdmi_74_25,
+	&mtl_c10_hdmi_148_5,
+	&mtl_c10_hdmi_594,
+	NULL,
+};
+
+int intel_c10_phy_check_hdmi_link_rate(int clock)
+{
+	const struct intel_c10mpllb_state * const *tables = mtl_c10_hdmi_tables;
+	int i;
+
+	for (i = 0; tables[i]; i++) {
+		if (clock == tables[i]->clock)
+			return MODE_OK;
+	}
+
+	return MODE_CLOCK_RANGE;
+}
+
 static const struct intel_c10mpllb_state * const *
 intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
 			   struct intel_encoder *encoder)
@@ -493,9 +639,10 @@ intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
 			return mtl_c10_edp_tables;
 		else
 			return mtl_c10_dp_tables;
+	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		return mtl_c10_hdmi_tables;
 	}
 
-	/* TODO: Add HDMI Support */
 	MISSING_CASE(encoder->type);
 	return NULL;
 }
@@ -503,9 +650,20 @@ intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
 static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
 				     struct intel_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct intel_c10mpllb_state * const *tables;
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
 	int i;
 
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		if (intel_c10_phy_check_hdmi_link_rate(crtc_state->port_clock)
+		    != MODE_OK) {
+			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d on phy %c.\n",
+				      crtc_state->port_clock, phy_name(phy));
+			return -EINVAL;
+		}
+	}
+
 	tables = intel_c10_mpllb_tables_get(crtc_state, encoder);
 	if (!tables)
 		return -EINVAL;
@@ -557,7 +715,8 @@ void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
 	cmn = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_CMN(0));
 	tx0 = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_TX(0));
 
-	if (tx0 != C10_TX0_VAL || cmn != C10_CMN0_DP_VAL)
+	if (tx0 != C10_TX0_VAL || cmn != (intel_encoder_is_dp(encoder) ?
+					  C10_CMN0_DP_VAL : C10_CMN0_HDMI_VAL))
 		drm_warn(&i915->drm, "Unexpected tx: %x or cmn: %x for phy: %c.\n",
 			 tx0, cmn, phy_name(phy));
 }
@@ -573,11 +732,10 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 					 INTEL_CX0_LANE0;
 	u8 follower_lane = lane_reversal ? INTEL_CX0_LANE0 :
 					   INTEL_CX0_LANE1;
-
 	int i;
 	struct intel_dp *intel_dp;
 	bool use_ssc = false;
-	u8 cmn0 = 0;
+	u8 cmn0;
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		intel_dp = enc_to_intel_dp(encoder);
@@ -588,6 +746,8 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 			use_ssc = false;
 
 		cmn0 = C10_CMN0_DP_VAL;
+	} else {
+		cmn0 = C10_CMN0_HDMI_VAL;
 	}
 
 	intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 8cf340509097..f8023f240727 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -39,5 +39,6 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 				   const struct intel_c10mpllb_state *pll_state);
 void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 				 struct intel_crtc_state *new_crtc_state);
+int intel_c10_phy_check_hdmi_link_rate(int clock);
 
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h b/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h
index f91f8824febb..b394f5c23acb 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h
@@ -134,21 +134,22 @@
 #define XELPDP_SSC_ENABLE_PLLB				REG_BIT(0)
 
 /* C10 Vendor Registers */
-#define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
-#define  C10_PLL0_FRACEN		REG_BIT8(4)
-#define  C10_PLL3_MULTIPLIERH_MASK	REG_GENMASK8(3, 0)
-#define  C10_PLL15_TXCLKDIV_MASK	REG_GENMASK8(2, 0)
-#define PHY_C10_VDR_CMN(idx)		(0xC20 + (idx))
-#define  C10_CMN0_DP_VAL		0x21
-#define  C10_CMN3_TXVBOOST_MASK		REG_GENMASK8(7, 5)
-#define  C10_CMN3_TXVBOOST(val)		REG_FIELD_PREP8(C10_CMN3_TXVBOOST_MASK, val)
-#define PHY_C10_VDR_TX(idx)		(0xC30 + (idx))
-#define  C10_TX0_VAL			0x10
-#define PHY_C10_VDR_CONTROL(idx)	(0xC70 + (idx) - 1)
-#define  C10_VDR_CTRL_MSGBUS_ACCESS	REG_BIT8(2)
-#define  C10_VDR_CTRL_MASTER_LANE	REG_BIT8(1)
-#define  C10_VDR_CTRL_UPDATE_CFG	REG_BIT8(0)
-#define PHY_C10_VDR_CUSTOM_WIDTH	0xD02
+#define PHY_C10_VDR_PLL(idx)            (0xC00 + (idx))
+#define  C10_PLL0_FRACEN                REG_BIT8(4)
+#define  C10_PLL3_MULTIPLIERH_MASK      REG_GENMASK8(3, 0)
+#define  C10_PLL15_TXCLKDIV_MASK        REG_GENMASK8(2, 0)
+#define PHY_C10_VDR_CMN(idx)            (0xC20 + (idx))
+#define  C10_CMN0_DP_VAL                0x21
+#define  C10_CMN0_HDMI_VAL              0x1
+#define  C10_CMN3_TXVBOOST_MASK         REG_GENMASK8(7, 5)
+#define  C10_CMN3_TXVBOOST(val)         REG_FIELD_PREP8(C10_CMN3_TXVBOOST_MASK, val)
+#define PHY_C10_VDR_TX(idx)             (0xC30 + (idx))
+#define  C10_TX0_VAL                    0x10
+#define PHY_C10_VDR_CONTROL(idx)        (0xC70 + (idx) - 1)
+#define  C10_VDR_CTRL_MSGBUS_ACCESS     REG_BIT8(2)
+#define  C10_VDR_CTRL_MASTER_LANE       REG_BIT8(1)
+#define  C10_VDR_CTRL_UPDATE_CFG        REG_BIT8(0)
+#define PHY_C10_VDR_CUSTOM_WIDTH        0xD02
 
 #define CX0_P0_STATE_ACTIVE             0x0
 #define CX0_P2_STATE_READY              0x2
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 93519fb23d9d..c274098f2196 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -44,6 +44,7 @@
 #include "i915_drv.h"
 #include "intel_atomic.h"
 #include "intel_connector.h"
+#include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
@@ -1875,7 +1876,9 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 	 * FIXME: We will hopefully get an algorithmic way of programming
 	 * the MPLLB for HDMI in the future.
 	 */
-	if (IS_DG2(dev_priv))
+	if (IS_METEORLAKE(dev_priv))
+		return intel_c10_phy_check_hdmi_link_rate(clock);
+	else if (IS_DG2(dev_priv))
 		return intel_snps_phy_check_hdmi_link_rate(clock);
 
 	return MODE_OK;
-- 
2.34.1

