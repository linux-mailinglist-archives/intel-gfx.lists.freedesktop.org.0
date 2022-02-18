Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 908BC4BAEF5
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 02:02:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2D2410E99B;
	Fri, 18 Feb 2022 01:02:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF97210E99B
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 01:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645146151; x=1676682151;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jhtXsxrQhBPCvYsvuz+lYy+DaVAD4ZM0e/nv/xWiP3U=;
 b=cHcJ+SiVvDOg+amk+jKzz6NKGMii7AeupqfRwm+D2um1fR8VevRC0QEo
 AiUZBeOpi1BIbd0ElhaRF68T5wLt2zp9urzceCCcjTN8CywlOgG9/i1EB
 DWThaQbs023rAFuAmVvXKCUF7LcYrNUm6IClVqKtIbiJMvE1prZvLNZST
 0VcTK5fS1Ua/dslOPv1xWsQry+WrLhFsNcdwIV22bFJPpM50x0Crva8nC
 qyrJX4ktJQ+LMil3ZEKrU72cqMATPyhWJz17TBrYwHRxDH1pctckwPcjV
 1HySmDWhxhXVZFg9P1XxrATdpG+nKR3S706thUWXeKWTQTRXsZw5ShAPp A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="311760958"
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="311760958"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 17:02:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="637494129"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 17:02:30 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Feb 2022 17:03:27 -0800
Message-Id: <20220218010328.183423-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220218010328.183423-1-lucas.demarchi@intel.com>
References: <20220218010328.183423-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/3] drm/i915/dg2: Drop 38.4 MHz MPLLB tables
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

Our early understanding of DG2 was incorrect; since the 5th display
isn't actually a Type-C output, 38.4 MHz input clocks are never used on
this platform and we can drop the corresponding MPLLB tables.

Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 208 +-----------------
 1 file changed, 1 insertion(+), 207 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 36a0f78a18dd..f08061c748b3 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -250,197 +250,6 @@ static const struct intel_mpllb_state * const dg2_dp_100_tables[] = {
 	NULL,
 };
 
-/*
- * Basic DP link rates with 38.4 MHz reference clock.
- */
-
-static const struct intel_mpllb_state dg2_dp_rbr_38_4 = {
-	.clock = 162000,
-	.ref_control =
-		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 1),
-	.mpllb_cp =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 5) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 25) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 65) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 127),
-	.mpllb_div =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 2) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 2),
-	.mpllb_div2 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 304),
-	.mpllb_fracn1 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 1),
-	.mpllb_fracn2 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 49152),
-};
-
-static const struct intel_mpllb_state dg2_dp_hbr1_38_4 = {
-	.clock = 270000,
-	.ref_control =
-		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 1),
-	.mpllb_cp =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 5) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 25) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 65) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 127),
-	.mpllb_div =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
-	.mpllb_div2 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 248),
-	.mpllb_fracn1 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 1),
-	.mpllb_fracn2 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 40960),
-};
-
-static const struct intel_mpllb_state dg2_dp_hbr2_38_4 = {
-	.clock = 540000,
-	.ref_control =
-		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 1),
-	.mpllb_cp =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 5) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 25) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 65) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 127),
-	.mpllb_div =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
-	.mpllb_div2 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 248),
-	.mpllb_fracn1 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 1),
-	.mpllb_fracn2 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 40960),
-};
-
-static const struct intel_mpllb_state dg2_dp_hbr3_38_4 = {
-	.clock = 810000,
-	.ref_control =
-		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 1),
-	.mpllb_cp =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 26) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 65) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 127),
-	.mpllb_div =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2),
-	.mpllb_div2 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 388),
-	.mpllb_fracn1 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 1),
-	.mpllb_fracn2 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 61440),
-};
-
-static const struct intel_mpllb_state dg2_dp_uhbr10_38_4 = {
-	.clock = 1000000,
-	.ref_control =
-		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 1),
-	.mpllb_cp =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 5) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 26) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 65) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 127),
-	.mpllb_div =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV_CLK_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV_MULTIPLIER, 8) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_WORD_DIV2_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_DP2_MODE, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_SHIM_DIV32_CLK_SEL, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2),
-	.mpllb_div2 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 488),
-	.mpllb_fracn1 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 3),
-	.mpllb_fracn2 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 2) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 27306),
-
-	/*
-	 * SSC will be enabled, DP UHBR has a minimum SSC requirement.
-	 */
-	.mpllb_sscen =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_PEAK, 76800),
-	.mpllb_sscstep =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_STEPSIZE, 129024),
-};
-
-static const struct intel_mpllb_state dg2_dp_uhbr13_38_4 = {
-	.clock = 1350000,
-	.ref_control =
-		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 1),
-	.mpllb_cp =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 56) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 65) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 127),
-	.mpllb_div =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV_CLK_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV_MULTIPLIER, 8) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_WORD_DIV2_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_DP2_MODE, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 3),
-	.mpllb_div2 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 670),
-	.mpllb_fracn1 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 1),
-	.mpllb_fracn2 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 36864),
-
-	/*
-	 * SSC will be enabled, DP UHBR has a minimum SSC requirement.
-	 */
-	.mpllb_sscen =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_PEAK, 103680),
-	.mpllb_sscstep =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_STEPSIZE, 174182),
-};
-
-static const struct intel_mpllb_state * const dg2_dp_38_4_tables[] = {
-	&dg2_dp_rbr_38_4,
-	&dg2_dp_hbr1_38_4,
-	&dg2_dp_hbr2_38_4,
-	&dg2_dp_hbr3_38_4,
-	&dg2_dp_uhbr10_38_4,
-	&dg2_dp_uhbr13_38_4,
-	NULL,
-};
-
 /*
  * eDP link rates with 100 MHz reference clock.
  */
@@ -749,22 +558,7 @@ intel_mpllb_tables_get(struct intel_crtc_state *crtc_state,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
 		return dg2_edp_tables;
 	} else if (intel_crtc_has_dp_encoder(crtc_state)) {
-		/*
-		 * FIXME: Initially we're just enabling the "combo" outputs on
-		 * port A-D.  The MPLLB for those ports takes an input from the
-		 * "Display Filter PLL" which always has an output frequency
-		 * of 100 MHz, hence the use of the _100 tables below.
-		 *
-		 * Once we enable port TC1 it will either use the same 100 MHz
-		 * "Display Filter PLL" (when strapped to support a native
-		 * display connection) or different 38.4 MHz "Filter PLL" when
-		 * strapped to support a USB connection, so we'll need to check
-		 * that to determine which table to use.
-		 */
-		if (0)
-			return dg2_dp_38_4_tables;
-		else
-			return dg2_dp_100_tables;
+		return dg2_dp_100_tables;
 	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
 		return dg2_hdmi_tables;
 	}
-- 
2.35.1

