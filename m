Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1690A8C0A09
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 05:16:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51FED10E236;
	Thu,  9 May 2024 03:16:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bmsJ+aRk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE9E10E1C1
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 03:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715224605; x=1746760605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mCHeplQnEiKcI6MHUkIE8S4baeNZkFxj2PqbLXN5Q3I=;
 b=bmsJ+aRk9gkEMimSPeaEDAeczosYwKZXe02LmYgfyibgL+Pz9SvyNYG9
 KIf7sCBzRnbod2P4Hnn0bKIEC6LnsMjNY1x9nN2dSnT7R2QQn+JqBLyiB
 Cd9YGBn9gvaCdhXCqD+A9sKOcCAt42/F62GBhauYKbOoy5aG1mx3wyc95
 v/QC1uUppAJV5itN96c2kWTUafYUDxwAQpyriRR/hI0GxjiVxd3G6PuJa
 GE+tUebvP3rUNQmDt+RS8fcTgCAJIyXPFPoCDo8S4iDWDj5Hh8ylGD9uG
 6EmPKIc049qlzLS44vjUnF4nGuE4FZczrP8PsPaWxGbrDgVSomx4t6tpN w==;
X-CSE-ConnectionGUID: qrcf0SYiSLeEQGRBieWTUA==
X-CSE-MsgGUID: 4DfAfbBNS2mWwb6rzyk/9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="11247063"
X-IronPort-AV: E=Sophos;i="6.08,146,1712646000"; d="scan'208";a="11247063"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 20:16:43 -0700
X-CSE-ConnectionGUID: zHsslkeeQ7WKujAB2ARk8A==
X-CSE-MsgGUID: bJ+hiT5vSLGJFD3LYzkvRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,146,1712646000"; d="scan'208";a="28974151"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa010.jf.intel.com with ESMTP; 08 May 2024 20:16:41 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 ville.syrjala@intel.com
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 2/2] drm/i915/display: Remove uhbr13.5 pll state values
Date: Thu,  9 May 2024 08:36:46 +0530
Message-Id: <20240509030646.3037310-2-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240509030646.3037310-1-arun.r.murthy@intel.com>
References: <20240509030646.3037310-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
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

uhbr13.5 is not supported on dg2/mtl. This patch removes the pll state
table for synps and c20 PHY.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 26 --------------
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 --
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 35 -------------------
 3 files changed, 63 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 8e3b13884bb8..fb07d14d9a7a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -885,31 +885,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
 		},
 };
 
-static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
-	.clock = 1350000, /* 13.5 Gbps */
-	.tx = {	0xbea0, /* tx cfg0 */
-		0x4800, /* tx cfg1 */
-		0x0000, /* tx cfg2 */
-		},
-	.cmn = {0x0500, /* cmn cfg0*/
-		0x0005, /* cmn cfg1 */
-		0x0000, /* cmn cfg2 */
-		0x0000, /* cmn cfg3 */
-		},
-	.mpllb = { 0x015f,	/* mpllb cfg0 */
-		0x2205,		/* mpllb cfg1 */
-		0x1b17,		/* mpllb cfg2 */
-		0xffc1,		/* mpllb cfg3 */
-		0xe100,		/* mpllb cfg4 */
-		0xbd00,		/* mpllb cfg5 */
-		0x2000,		/* mpllb cfg6 */
-		0x0001,		/* mpllb cfg7 */
-		0x4800,		/* mpllb cfg8 */
-		0x0000,		/* mpllb cfg9 */
-		0x0000,		/* mpllb cfg10 */
-		},
-};
-
 static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
 	.clock = 2000000, /* 20 Gbps */
 	.tx = {	0xbe20, /* tx cfg0 */
@@ -940,7 +915,6 @@ static const struct intel_c20pll_state * const mtl_c20_dp_tables[] = {
 	&mtl_c20_dp_hbr2,
 	&mtl_c20_dp_hbr3,
 	&mtl_c20_dp_uhbr10,
-	&mtl_c20_dp_uhbr13_5,
 	&mtl_c20_dp_uhbr20,
 	NULL,
 };
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7098ca65701f..a9c17c6d8d77 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -247,8 +247,6 @@ static void intel_dp_set_dpcd_sink_rates(struct intel_dp *intel_dp)
 
 		if (uhbr_rates & DP_UHBR10)
 			intel_dp->sink_rates[i++] = 1000000;
-		if (uhbr_rates & DP_UHBR13_5)
-			intel_dp->sink_rates[i++] = 1350000;
 		if (uhbr_rates & DP_UHBR20)
 			intel_dp->sink_rates[i++] = 2000000;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index e6df1f92def5..6b1eda0d73d8 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -213,47 +213,12 @@ static const struct intel_mpllb_state dg2_dp_uhbr10_100 = {
 		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_STEPSIZE, 76101),
 };
 
-static const struct intel_mpllb_state dg2_dp_uhbr13_100 = {
-	.clock = 1350000,
-	.ref_control =
-		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
-	.mpllb_cp =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 5) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 45) |
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
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 2) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 508),
-	.mpllb_fracn1 =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 1),
-
-	/*
-	 * SSC will be enabled, DP UHBR has a minimum SSC requirement.
-	 */
-	.mpllb_sscen =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_EN, 1) |
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_PEAK, 79626),
-	.mpllb_sscstep =
-		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_STEPSIZE, 102737),
-};
-
 static const struct intel_mpllb_state * const dg2_dp_100_tables[] = {
 	&dg2_dp_rbr_100,
 	&dg2_dp_hbr1_100,
 	&dg2_dp_hbr2_100,
 	&dg2_dp_hbr3_100,
 	&dg2_dp_uhbr10_100,
-	&dg2_dp_uhbr13_100,
 	NULL,
 };
 
-- 
2.25.1

