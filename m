Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A9B5EF434
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 13:22:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1E6410EA27;
	Thu, 29 Sep 2022 11:22:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6925E10E5D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 11:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664450494; x=1695986494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=71kiSa5eTgMJGu6vl2J4evyONYSjRv37omZ12G/6H8A=;
 b=D1CMhoFS1xuvREtQoS2Q3RvTQgVp4WkrYjkwKzmVJy+aQjVSDlGr4zm+
 SsdxNVuvScHqwRvuQVSREmf5Cq7wFPpB+/ZP4uzqdyTJHIBUfmTfw711K
 9JJ48n95E5nJkpurAYrYiX3kNtFsDgZGZiL/PKvUFCjNUvhlwO2PhICrS
 lRP3LH1hO347Cu6qyyL+gNyrXRzYguGlsWmsofWJ3IXEHmbEgZqMgBgT0
 iXEUYerZuY7WVMlt1qNB9lo8MV1o3ZNC6mq3VoFQQpQ08vwoOHEo9NdSG
 Q1cHXK2i9g+D+bU60F+orpDGHIXOpd5c04blz+ddEv6x2gynAKfpqDueu A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="299465354"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="299465354"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:21:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="655515843"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="655515843"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 29 Sep 2022 04:21:32 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 14:17:02 +0300
Message-Id: <20220929111703.2472410-5-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220929111703.2472410-1-mika.kahola@intel.com>
References: <20220929111703.2472410-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/mtl: Add C10 phy programming for
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
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 168 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |   2 +
 drivers/gpu/drm/i915/display/intel_hdmi.c    |   5 +-
 3 files changed, 170 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 6ba11cd7cd75..a08788d2a3bc 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -448,6 +448,152 @@ static const struct intel_c10mpllb_state * const mtl_c10_edp_tables[] = {
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
@@ -457,9 +603,10 @@ intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
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
@@ -467,9 +614,20 @@ intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
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
@@ -521,7 +679,8 @@ void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
 	cmn = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_CMN(0));
 	tx0 = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_TX(0));
 
-	if (tx0 != C10_TX0_VAL || cmn != C10_CMN0_DP_VAL)
+	if (tx0 != C10_TX0_VAL || cmn != (intel_encoder_is_dp(encoder) ?
+					  C10_CMN0_DP_VAL : C10_CMN0_HDMI_VAL))
 		drm_warn(&i915->drm, "Unexpected tx: %x or cmn: %x for phy: %c.\n",
 			 tx0, cmn, phy_name(phy));
 }
@@ -537,11 +696,10 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 				 INTEL_CX0_LANE0;
 	enum intel_cx0_lanes follower_lane = lane_reversal ? INTEL_CX0_LANE0 :
 				 INTEL_CX0_LANE1;
-
 	int i;
 	struct intel_dp *intel_dp;
 	bool use_ssc = false;
-	u8 cmn0 = 0;
+	u8 cmn0;
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		intel_dp = enc_to_intel_dp(encoder);
@@ -552,6 +710,8 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 			use_ssc = false;
 
 		cmn0 = C10_CMN0_DP_VAL;
+	} else {
+		cmn0 = C10_CMN0_HDMI_VAL;
 	}
 
 	intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index d12d2e2f02ee..fc8e4041f26f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -96,6 +96,7 @@ enum intel_cx0_lanes {
 #define  C10_PLL15_TXCLKDIV_MASK	REG_GENMASK8(2, 0)
 #define PHY_C10_VDR_CMN(idx)		(0xC20 + (idx))
 #define  C10_CMN0_DP_VAL		0x21
+#define  C10_CMN0_HDMI_VAL		0x1
 #define  C10_CMN3_TXVBOOST_MASK		REG_GENMASK8(7, 5)
 #define  C10_CMN3_TXVBOOST(val)		REG_FIELD_PREP8(C10_CMN3_TXVBOOST_MASK, val)
 #define PHY_C10_VDR_TX(idx)		(0xC30 + (idx))
@@ -141,5 +142,6 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 				   const struct intel_c10mpllb_state *pll_state);
 void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 				 struct intel_crtc_state *new_crtc_state);
+int intel_c10_phy_check_hdmi_link_rate(int clock);
 
 #endif /* __INTEL_CX0_PHY_H__ */
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

