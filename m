Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 933ADA16617
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 05:32:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2786310E2B4;
	Mon, 20 Jan 2025 04:32:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="INw5vwTj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0A7310E2A2;
 Mon, 20 Jan 2025 04:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737347566; x=1768883566;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6ZLEvrKgjzkJCCiMmdwEH3W7c/bng6eBLAnKNAMfAtY=;
 b=INw5vwTjKSzuUFSI8KW6+WlSRkK7kPbbPwB0entfnFMF5Jawn2/Q3Fgu
 JAsY5iUV5SmecogOO91WJqL3htlGHDv4qX+91dkGUtIkFYhi8X7YUjuma
 e1fzg5LdBsp5mqzL96ypLu6NrIqFoKvEPZ5Ix8qE44HY24yOkXwyltjkm
 Ok9cHKVQ/J34XmG13HyQiEyD9XJcysXUsKswRaAaxF8wXZ5cI5ml9jjZB
 GVXMlYgpvGQ/v1xMulvvqeq4l/fps5EPEUo+y/d+pR8+6VFKrVye6wouY
 u1MsvWT94TLPq/yRdRN1YBH18Ul+wxStYOuV37idlKVt75DMyXOLUHW87 g==;
X-CSE-ConnectionGUID: J/jnhqQKRpudaJlqhFX+Jw==
X-CSE-MsgGUID: YhkJFLdvSg6ZcuybMJWuaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="48700049"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="48700049"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 20:32:46 -0800
X-CSE-ConnectionGUID: ldqR6Uh6RGmwLt97LHHGKg==
X-CSE-MsgGUID: dZWacv6rR52LpMNO123BTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="106315695"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 20:32:44 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	suraj.kandpal@intel.com
Subject: [PATCH 4/5] drm/i915/intel_snps_hdmi_pll: Compute C10 HDMI PLLs with
 algorithm
Date: Mon, 20 Jan 2025 09:51:20 +0530
Message-ID: <20250120042122.1029481-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
References: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
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

Add support for computing C10 HDMI PLLS using the HDMI PLL algorithm.

v2: Fix styling issues. (Jani)
v3: Rename function to align with filename. (Jani)
v4: Add Bspec reference. (Suraj)

Bspec: 74166
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_snps_hdmi_pll.c    | 76 +++++++++++++++++++
 .../drm/i915/display/intel_snps_hdmi_pll.h    |  2 +
 2 files changed, 78 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
index 0e52578ef181..c6321dafef4f 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
@@ -5,6 +5,7 @@
 
 #include <linux/math.h>
 
+#include "intel_cx0_phy_regs.h"
 #include "intel_display_types.h"
 #include "intel_snps_phy.h"
 #include "intel_snps_phy_regs.h"
@@ -286,3 +287,78 @@ void intel_snps_hdmi_pll_compute_mpllb(struct intel_mpllb_state *pll_state, u64
 	pll_state->mpllb_sscen =
 		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, pll_params.ssc_up_spread);
 }
+
+void intel_snps_hdmi_pll_compute_c10pll(struct intel_c10pll_state *pll_state, u64 pixel_clock)
+{
+	/* x axis frequencies. One curve in each array per v2i point */
+	static const u64 c10_curve_freq_hz[2][8] = {
+		{ 2500000000ULL, 3000000000ULL, 3000000000ULL, 3500000000ULL, 3500000000ULL,
+		  4000000000ULL, 4000000000ULL, 5000000000ULL },
+		{ 4000000000ULL, 4600000000ULL, 4601000000ULL, 5400000000ULL, 5401000000ULL,
+		  6600000000ULL, 6601000000ULL, 8001000000ULL }
+	};
+
+	/* y axis heights multiplied with 1000000000 */
+	static const u64 c10_curve_0[2][8] = {
+		{ 41174500, 48605500, 42973700, 49433100, 42408600, 47681900, 40297400, 49131400 },
+		{ 82056800, 94420700, 82323400, 96370600, 81273300, 98630100, 81728700, 99105700}
+	};
+
+	static const u64 c10_curve_1[2][8] = {
+		{ 73300000000000ULL, 66000000000000ULL, 83100000000000ULL, 75300000000000ULL,
+		  99700000000000ULL, 92300000000000ULL, 125000000000000ULL, 110000000000000ULL },
+		{ 53700000000000ULL, 47700000000000ULL, 62200000000000ULL, 54400000000000ULL,
+		  75100000000000ULL, 63400000000000ULL, 90600000000000ULL, 76300000000000ULL }
+	};
+
+	/* Multiplied with 1000000000000 */
+	static const u64 c10_curve_2[2][8] = {
+		{ 2415790000ULL, 3136460000ULL, 2581990000ULL, 3222670000ULL, 2529330000ULL,
+		  3042020000ULL, 2336970000ULL, 3191460000ULL},
+		{ 4808390000ULL, 5994250000ULL, 4832730000ULL, 6193730000ULL, 4737700000ULL,
+		  6428750000ULL, 4779200000ULL, 6479340000ULL }
+	};
+
+	struct pll_output_params pll_params;
+	u32 refclk = 38400000;
+	u32 prescaler_divider = 0;
+	u32 ref_range = 1;
+	u32 ana_cp_int_gs = 30;
+	u32 ana_cp_prop_gs = 28;
+
+	compute_hdmi_tmds_pll(pixel_clock, refclk, ref_range,
+			      ana_cp_int_gs, ana_cp_prop_gs,
+			      c10_curve_freq_hz, c10_curve_0,
+			      c10_curve_1, c10_curve_2, prescaler_divider,
+			      &pll_params);
+
+	pll_state->tx = 0x10;
+	pll_state->cmn = 0x1;
+	pll_state->pll[0] = REG_FIELD_PREP(C10_PLL0_DIV5CLK_EN, pll_params.mpll_div5_en) |
+			    REG_FIELD_PREP(C10_PLL0_FRACEN, pll_params.fracn_en) |
+			    REG_FIELD_PREP(C10_PLL0_PMIX_EN, pll_params.pmix_en) |
+			    REG_FIELD_PREP(C10_PLL0_ANA_FREQ_VCO_MASK, pll_params.ana_freq_vco);
+	pll_state->pll[2] = REG_FIELD_PREP(C10_PLL2_MULTIPLIERL_MASK, pll_params.multiplier);
+	pll_state->pll[3] = REG_FIELD_PREP(C10_PLL3_MULTIPLIERH_MASK, pll_params.multiplier >> 8);
+	pll_state->pll[8] = REG_FIELD_PREP(C10_PLL8_SSC_UP_SPREAD, pll_params.ssc_up_spread);
+	pll_state->pll[9] = REG_FIELD_PREP(C10_PLL9_FRACN_DENL_MASK, pll_params.fracn_den);
+	pll_state->pll[10] = REG_FIELD_PREP(C10_PLL10_FRACN_DENH_MASK, pll_params.fracn_den >> 8);
+	pll_state->pll[11] = REG_FIELD_PREP(C10_PLL11_FRACN_QUOT_L_MASK, pll_params.fracn_quot);
+	pll_state->pll[12] = REG_FIELD_PREP(C10_PLL12_FRACN_QUOT_H_MASK,
+					    pll_params.fracn_quot >> 8);
+
+	pll_state->pll[13] = REG_FIELD_PREP(C10_PLL13_FRACN_REM_L_MASK, pll_params.fracn_rem);
+	pll_state->pll[14] = REG_FIELD_PREP(C10_PLL14_FRACN_REM_H_MASK, pll_params.fracn_rem >> 8);
+	pll_state->pll[15] = REG_FIELD_PREP(C10_PLL15_TXCLKDIV_MASK, pll_params.tx_clk_div) |
+			     REG_FIELD_PREP(C10_PLL15_HDMIDIV_MASK, pll_params.hdmi_div);
+	pll_state->pll[16] = REG_FIELD_PREP(C10_PLL16_ANA_CPINT, pll_params.ana_cp_int) |
+			     REG_FIELD_PREP(C10_PLL16_ANA_CPINTGS_L, ana_cp_int_gs);
+	pll_state->pll[17] = REG_FIELD_PREP(C10_PLL17_ANA_CPINTGS_H_MASK, ana_cp_int_gs >> 1) |
+			     REG_FIELD_PREP(C10_PLL17_ANA_CPPROP_L_MASK, pll_params.ana_cp_prop);
+	pll_state->pll[18] =
+			REG_FIELD_PREP(C10_PLL18_ANA_CPPROP_H_MASK, pll_params.ana_cp_prop >> 2) |
+			REG_FIELD_PREP(C10_PLL18_ANA_CPPROPGS_L_MASK, ana_cp_prop_gs);
+
+	pll_state->pll[19] = REG_FIELD_PREP(C10_PLL19_ANA_CPPROPGS_H_MASK, ana_cp_prop_gs >> 3) |
+			     REG_FIELD_PREP(C10_PLL19_ANA_V2I_MASK, pll_params.mpll_ana_v2i);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
index 70b7023c1135..aac70c4bb0f8 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
+++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
@@ -8,8 +8,10 @@
 
 #include <linux/types.h>
 
+struct intel_c10pll_state;
 struct intel_mpllb_state;
 
 void intel_snps_hdmi_pll_compute_mpllb(struct intel_mpllb_state *pll_state, u64 pixel_clock);
+void intel_snps_hdmi_pll_compute_c10pll(struct intel_c10pll_state *pll_state, u64 pixel_clock);
 
 #endif /* __INTEL_SNPS_HDMI_PLL_H__ */
-- 
2.45.2

