Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 038D13F9833
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 12:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5E526E91B;
	Fri, 27 Aug 2021 10:38:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98C966E91B
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 10:38:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10088"; a="303513453"
X-IronPort-AV: E=Sophos;i="5.84,356,1620716400"; d="scan'208";a="303513453"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 03:38:50 -0700
X-IronPort-AV: E=Sophos;i="5.84,356,1620716400"; d="scan'208";a="528270445"
Received: from gali-mobl2.gar.corp.intel.com (HELO localhost)
 ([10.251.212.203])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 03:38:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Animesh Manna <animesh.manna@intel.com>
Date: Fri, 27 Aug 2021 13:38:43 +0300
Message-Id: <20210827103843.527-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: UHBR tables added for pll
 programming
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

From: Animesh Manna <animesh.manna@intel.com>

UHBR modes has higher link rate and added new values for programming
mpll of SNPS phy. No change in sequence, only the pll parameters
are different for UHBR modes.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 147 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               |   4 +
 2 files changed, 151 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 58ec2467ad66..2405f70d82de 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -171,11 +171,81 @@ static const struct intel_mpllb_state dg2_dp_hbr3_100 = {
 		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 1),
 };
 
+static const struct intel_mpllb_state dg2_dp_uhbr10_100 = {
+	.clock = 1000000,
+	.ref_control =
+		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
+	.mpllb_cp =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 4) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 21) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 65) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 127),
+	.mpllb_div =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV_CLK_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV_MULTIPLIER, 8) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_WORD_DIV2_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DP2_MODE, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2),
+	.mpllb_div2 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 2) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 368),
+	.mpllb_fracn1 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 1),
+
+	/*
+	 * SSC will be enabled, DP UHBR has a minimum SSC requirement.
+	 */
+	.mpllb_sscen =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_PEAK, 58982),
+	.mpllb_sscstep =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_STEPSIZE, 76101),
+};
+
+static const struct intel_mpllb_state dg2_dp_uhbr13_100 = {
+	.clock = 1350000,
+	.ref_control =
+		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
+	.mpllb_cp =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 5) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 45) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 65) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 127),
+	.mpllb_div =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV_CLK_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV_MULTIPLIER, 8) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_WORD_DIV2_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DP2_MODE, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 3),
+	.mpllb_div2 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 2) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 508),
+	.mpllb_fracn1 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 1),
+
+	/*
+	 * SSC will be enabled, DP UHBR has a minimum SSC requirement.
+	 */
+	.mpllb_sscen =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_PEAK, 79626),
+	.mpllb_sscstep =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_STEPSIZE, 102737),
+};
+
 static const struct intel_mpllb_state * const dg2_dp_100_tables[] = {
 	&dg2_dp_rbr_100,
 	&dg2_dp_hbr1_100,
 	&dg2_dp_hbr2_100,
 	&dg2_dp_hbr3_100,
+	&dg2_dp_uhbr10_100,
+	&dg2_dp_uhbr13_100,
 	NULL,
 };
 
@@ -284,11 +354,88 @@ static const struct intel_mpllb_state dg2_dp_hbr3_38_4 = {
 		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 61440),
 };
 
+static const struct intel_mpllb_state dg2_dp_uhbr10_38_4 = {
+	.clock = 1000000,
+	.ref_control =
+		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 1),
+	.mpllb_cp =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 5) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 26) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 65) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 127),
+	.mpllb_div =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV_CLK_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV_MULTIPLIER, 8) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_WORD_DIV2_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DP2_MODE, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2),
+	.mpllb_div2 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 488),
+	.mpllb_fracn1 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 3),
+	.mpllb_fracn2 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 2) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 27306),
+
+	/*
+	 * SSC will be enabled, DP UHBR has a minimum SSC requirement.
+	 */
+	.mpllb_sscen =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_PEAK, 76800),
+	.mpllb_sscstep =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_STEPSIZE, 129024),
+};
+
+static const struct intel_mpllb_state dg2_dp_uhbr13_38_4 = {
+	.clock = 1350000,
+	.ref_control =
+		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 1),
+	.mpllb_cp =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 56) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 65) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 127),
+	.mpllb_div =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV_CLK_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV_MULTIPLIER, 8) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_WORD_DIV2_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DP2_MODE, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 3),
+	.mpllb_div2 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 670),
+	.mpllb_fracn1 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 1),
+	.mpllb_fracn2 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 36864),
+
+	/*
+	 * SSC will be enabled, DP UHBR has a minimum SSC requirement.
+	 */
+	.mpllb_sscen =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_PEAK, 103680),
+	.mpllb_sscstep =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_STEPSIZE, 174182),
+};
+
 static const struct intel_mpllb_state * const dg2_dp_38_4_tables[] = {
 	&dg2_dp_rbr_38_4,
 	&dg2_dp_hbr1_38_4,
 	&dg2_dp_hbr2_38_4,
 	&dg2_dp_hbr3_38_4,
+	&dg2_dp_uhbr10_38_4,
+	&dg2_dp_uhbr13_38_4,
 	NULL,
 };
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8d4cf1e203ab..40943dd5e0db 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2237,10 +2237,14 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define SNPS_PHY_MPLLB_DIV(phy)			_MMIO_SNPS(phy, 0x168004)
 #define   SNPS_PHY_MPLLB_FORCE_EN		REG_BIT(31)
+#define   SNPS_PHY_MPLLB_DIV_CLK_EN		REG_BIT(30)
 #define   SNPS_PHY_MPLLB_DIV5_CLK_EN		REG_BIT(29)
 #define   SNPS_PHY_MPLLB_V2I			REG_GENMASK(27, 26)
 #define   SNPS_PHY_MPLLB_FREQ_VCO		REG_GENMASK(25, 24)
+#define   SNPS_PHY_MPLLB_DIV_MULTIPLIER		REG_GENMASK(23, 16)
 #define   SNPS_PHY_MPLLB_PMIX_EN		REG_BIT(10)
+#define   SNPS_PHY_MPLLB_DP2_MODE		REG_BIT(9)
+#define   SNPS_PHY_MPLLB_WORD_DIV2_EN		REG_BIT(8)
 #define   SNPS_PHY_MPLLB_TX_CLK_DIV		REG_GENMASK(7, 5)
 
 #define SNPS_PHY_MPLLB_FRACN1(phy)		_MMIO_SNPS(phy, 0x168008)
-- 
2.20.1

