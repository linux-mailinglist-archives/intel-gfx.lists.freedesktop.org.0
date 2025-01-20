Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B35A16614
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 05:32:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED26010E29C;
	Mon, 20 Jan 2025 04:32:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A4y+Pt1S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F091210E299;
 Mon, 20 Jan 2025 04:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737347560; x=1768883560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U4DBi0GkcJc67v45C854MKL6ZxiahFqWMSmXfnTBUiQ=;
 b=A4y+Pt1SZ7DIi1u9t8ev6PtcdmRA5hdnvpU0mJr4E/dJqOduxCnF29J2
 3up2h4IOfr6aI7P3299gbf36EssadKz5UDL1vgv977z8YYCf1H0vFK1HD
 7/NYNTgljjUWM3p7uHrGjcHH4YbmZmaR3eAlI3CvYB7kJfwkdku/IzL0A
 L/oGq2/AkVih5Cut62ZDqJoIClUHOkgmHI0RrTRoMKUFzRMijj7I1EfNA
 xB4vla3oBTiv1Fh7PC0MguEzwJdBIHT4JKSHuEG3LaPLQ/6eZeqO1cbgL
 34waUT/PbLwJ0lxgfDZAogqZGGPPYvP4tDlTaRNrynZcPeuJPdNqjqTev g==;
X-CSE-ConnectionGUID: egQpZUjnTjOgoXxLbbaDOQ==
X-CSE-MsgGUID: GSJS/pUiSgOYaESBJZWbyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="48700018"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="48700018"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 20:32:40 -0800
X-CSE-ConnectionGUID: 0wZWA0LMTu+LUq5zIiHAQw==
X-CSE-MsgGUID: w8sl5g9kTlCTzxkNNiXIQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="106315668"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 20:32:38 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	suraj.kandpal@intel.com
Subject: [PATCH 1/5] drm/i915/display: Add support for SNPS PHY HDMI PLL
 algorithm for DG2
Date: Mon, 20 Jan 2025 09:51:17 +0530
Message-ID: <20250120042122.1029481-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
References: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
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

Add helpers to calculate the necessary parameters for configuring the
HDMI PLL for SNPS MPLLB and C10 PHY.

The pll parameters are computed for desired pixel clock, curve data
and other inputs used for interpolation and finally stored in the
pll_state.

Currently the helper is used to compute PLLs for DG2 SNPS PHY.
Support for computing Plls for C10 PHY is added in subsequent patches.

v2:
-Used kernel types instead of C99 types. (Jani)
-Fixed styling issues and renamed few variables to more meaningful
 names. (Jani)
-Added Xe make file changes. (Jani)
-Fixed build errors reported by kernel test robot

v3:
-Renamed helper to align with file name. (Jani)

v4:
-Removed erroraneous comment, and added Bspec# as part of trailer. (Suraj)
-Fixed warning flagged by kernel test robot.

Bspec: 54032
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../drm/i915/display/intel_snps_hdmi_pll.c    | 288 ++++++++++++++++++
 .../drm/i915/display/intel_snps_hdmi_pll.h    |  15 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 4 files changed, 305 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 3dda9f0eda82..4caa8e30bc98 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -346,6 +346,7 @@ i915-y += \
 	display/intel_pps.o \
 	display/intel_qp_tables.o \
 	display/intel_sdvo.o \
+	display/intel_snps_hdmi_pll.o \
 	display/intel_snps_phy.o \
 	display/intel_tv.o \
 	display/intel_vdsc.o \
diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
new file mode 100644
index 000000000000..0e52578ef181
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
@@ -0,0 +1,288 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2025 Synopsys, Inc., Intel Corporation
+ */
+
+#include <linux/math.h>
+
+#include "intel_display_types.h"
+#include "intel_snps_phy.h"
+#include "intel_snps_phy_regs.h"
+#include "intel_snps_hdmi_pll.h"
+
+#define INTEL_SNPS_PHY_HDMI_4999MHZ 4999999900ULL
+#define INTEL_SNPS_PHY_HDMI_16GHZ 16000000000ULL
+#define INTEL_SNPS_PHY_HDMI_9999MHZ (2 * INTEL_SNPS_PHY_HDMI_4999MHZ)
+
+#define CURVE0_MULTIPLIER 1000000000
+#define CURVE1_MULTIPLIER 100
+#define CURVE2_MULTIPLIER 1000000000000ULL
+
+struct pll_output_params {
+	u32 ssc_up_spread;
+	u32 mpll_div5_en;
+	u32 hdmi_div;
+	u32 ana_cp_int;
+	u32 ana_cp_prop;
+	u32 refclk_postscalar;
+	u32 tx_clk_div;
+	u32 fracn_quot;
+	u32 fracn_rem;
+	u32 fracn_den;
+	u32 fracn_en;
+	u32 pmix_en;
+	u32 multiplier;
+	int mpll_ana_v2i;
+	int ana_freq_vco;
+};
+
+static s64 interp(s64 x, s64 x1, s64 x2, s64 y1, s64 y2)
+{
+	s64 dydx;
+
+	dydx = DIV_ROUND_UP_ULL((y2 - y1) * 100000, (x2 - x1));
+
+	return (y1 + DIV_ROUND_UP_ULL(dydx * (x - x1), 100000));
+}
+
+static void get_ana_cp_int_prop(u32 vco_clk,
+				u32 refclk_postscalar,
+				int mpll_ana_v2i,
+				int c, int a,
+				const u64 curve_freq_hz[2][8],
+				const u64 curve_0[2][8],
+				const u64 curve_1[2][8],
+				const u64 curve_2[2][8],
+				u32 *ana_cp_int,
+				u32 *ana_cp_prop)
+{
+	u64 vco_div_refclk_float;
+	u64 curve_0_interpolated;
+	u64 curve_2_interpolated;
+	u64 curve_1_interpolated;
+	u64 curve_2_scaled1;
+	u64 curve_2_scaled2;
+	u64 adjusted_vco_clk1;
+	u64 adjusted_vco_clk2;
+	u64 curve_2_scaled_int;
+	u64 interpolated_product;
+	u64 scaled_interpolated_sqrt;
+	u64 scaled_vco_div_refclk1;
+	u64 scaled_vco_div_refclk2;
+	u64 ana_cp_int_temp;
+	u64 temp;
+
+	vco_div_refclk_float = vco_clk * DIV_ROUND_DOWN_ULL(1000000000000ULL, refclk_postscalar);
+
+	/* Interpolate curve values at the target vco_clk frequency */
+	curve_0_interpolated = interp(vco_clk, curve_freq_hz[c][a], curve_freq_hz[c][a + 1],
+				      curve_0[c][a], curve_0[c][a + 1]);
+
+	curve_2_interpolated = interp(vco_clk, curve_freq_hz[c][a], curve_freq_hz[c][a + 1],
+				      curve_2[c][a], curve_2[c][a + 1]);
+
+	curve_1_interpolated = interp(vco_clk, curve_freq_hz[c][a], curve_freq_hz[c][a + 1],
+				      curve_1[c][a], curve_1[c][a + 1]);
+
+	curve_1_interpolated = DIV_ROUND_DOWN_ULL(curve_1_interpolated, CURVE1_MULTIPLIER);
+
+	/*
+	 * Scale curve_2_interpolated based on mpll_ana_v2i, for integer part
+	 * ana_cp_int and for the proportional part ana_cp_prop
+	 */
+	temp = curve_2_interpolated * (4 - mpll_ana_v2i);
+	curve_2_scaled1 = DIV_ROUND_DOWN_ULL(temp, 16000);
+	curve_2_scaled2 = DIV_ROUND_DOWN_ULL(temp, 160);
+
+	/* Scale vco_div_refclk for ana_cp_int */
+	scaled_vco_div_refclk1 = 112008301 * DIV_ROUND_DOWN_ULL(vco_div_refclk_float, 100000);
+
+	adjusted_vco_clk1 = CURVE2_MULTIPLIER *
+			    DIV_ROUND_DOWN_ULL(scaled_vco_div_refclk1, (curve_0_interpolated *
+			    DIV_ROUND_DOWN_ULL(curve_1_interpolated, CURVE0_MULTIPLIER)));
+
+	ana_cp_int_temp =
+		DIV_ROUND_CLOSEST_ULL(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1, curve_2_scaled1),
+				      CURVE2_MULTIPLIER);
+
+	*ana_cp_int = max(1, min(ana_cp_int_temp, 127));
+
+	curve_2_scaled_int = curve_2_scaled1 * (*ana_cp_int);
+
+	interpolated_product = curve_1_interpolated *
+			       (curve_2_scaled_int * DIV_ROUND_DOWN_ULL(curve_0_interpolated,
+								      CURVE0_MULTIPLIER));
+
+	scaled_interpolated_sqrt =
+			int_sqrt(DIV_ROUND_UP_ULL(interpolated_product, vco_div_refclk_float) *
+			DIV_ROUND_DOWN_ULL(1000000000000ULL, 55));
+
+	/* Scale vco_div_refclk for ana_cp_int */
+	scaled_vco_div_refclk2 = DIV_ROUND_UP_ULL(vco_div_refclk_float, 1000000);
+	adjusted_vco_clk2 = 1460281 * DIV_ROUND_UP_ULL(scaled_interpolated_sqrt *
+						       scaled_vco_div_refclk2,
+						       curve_1_interpolated);
+
+	*ana_cp_prop = DIV_ROUND_UP_ULL(adjusted_vco_clk2, curve_2_scaled2);
+	*ana_cp_prop = max(1, min(*ana_cp_prop, 127));
+}
+
+static void compute_hdmi_tmds_pll(u64 pixel_clock, u32 refclk,
+				  u32 ref_range,
+				  u32 ana_cp_int_gs,
+				  u32 ana_cp_prop_gs,
+				  const u64 curve_freq_hz[2][8],
+				  const u64 curve_0[2][8],
+				  const u64 curve_1[2][8],
+				  const u64 curve_2[2][8],
+				  u32 prescaler_divider,
+				  struct pll_output_params *pll_params)
+{
+	u64 datarate = pixel_clock * 10000;
+	u32 ssc_up_spread = 1;
+	u32 mpll_div5_en = 1;
+	u32 hdmi_div = 1;
+	u32 ana_cp_int;
+	u32 ana_cp_prop;
+	u32 refclk_postscalar = refclk >> prescaler_divider;
+	u32 tx_clk_div;
+	u64 vco_clk;
+	u64 vco_clk_do_div;
+	u32 vco_div_refclk_integer;
+	u32 vco_div_refclk_fracn;
+	u32 fracn_quot;
+	u32 fracn_rem;
+	u32 fracn_den;
+	u32 fracn_en;
+	u32 pmix_en;
+	u32 multiplier;
+	int mpll_ana_v2i;
+	int ana_freq_vco = 0;
+	int c, a = 0;
+	int i;
+
+	/* Select appropriate v2i point */
+	if (datarate <= INTEL_SNPS_PHY_HDMI_9999MHZ) {
+		mpll_ana_v2i = 2;
+		tx_clk_div = ilog2(DIV_ROUND_DOWN_ULL(INTEL_SNPS_PHY_HDMI_9999MHZ, datarate));
+	} else {
+		mpll_ana_v2i = 3;
+		tx_clk_div = ilog2(DIV_ROUND_DOWN_ULL(INTEL_SNPS_PHY_HDMI_16GHZ, datarate));
+	}
+	vco_clk = (datarate << tx_clk_div) >> 1;
+
+	vco_div_refclk_integer = DIV_ROUND_DOWN_ULL(vco_clk, refclk_postscalar);
+	vco_clk_do_div = do_div(vco_clk, refclk_postscalar);
+	vco_div_refclk_fracn = DIV_ROUND_DOWN_ULL(vco_clk_do_div << 32, refclk_postscalar);
+
+	fracn_quot = vco_div_refclk_fracn >> 16;
+	fracn_rem = vco_div_refclk_fracn & 0xffff;
+	fracn_rem = fracn_rem - (fracn_rem >> 15);
+	fracn_den = 0xffff;
+	fracn_en = (fracn_quot != 0 || fracn_rem != 0) ? 1 : 0;
+	pmix_en = fracn_en;
+	multiplier = (vco_div_refclk_integer - 16) * 2;
+	/* Curve selection for ana_cp_* calculations. One curve hardcoded per v2i range */
+	c = mpll_ana_v2i - 2;
+
+	/* Find the right segment of the table */
+	for (i = 0; i < 8; i += 2) {
+		if (vco_clk <= curve_freq_hz[c][i + 1]) {
+			a = i;
+			ana_freq_vco = 3 - (a >> 1);
+			break;
+		}
+	}
+
+	get_ana_cp_int_prop(vco_clk, refclk_postscalar, mpll_ana_v2i, c, a,
+			    curve_freq_hz, curve_0, curve_1, curve_2,
+			    &ana_cp_int, &ana_cp_prop);
+
+	pll_params->ssc_up_spread = ssc_up_spread;
+	pll_params->mpll_div5_en = mpll_div5_en;
+	pll_params->hdmi_div = hdmi_div;
+	pll_params->ana_cp_int = ana_cp_int;
+	pll_params->refclk_postscalar = refclk_postscalar;
+	pll_params->tx_clk_div = tx_clk_div;
+	pll_params->fracn_quot = fracn_quot;
+	pll_params->fracn_rem = fracn_rem;
+	pll_params->fracn_den = fracn_den;
+	pll_params->fracn_en = fracn_en;
+	pll_params->pmix_en = pmix_en;
+	pll_params->multiplier = multiplier;
+	pll_params->ana_cp_prop = ana_cp_prop;
+	pll_params->mpll_ana_v2i = mpll_ana_v2i;
+	pll_params->ana_freq_vco = ana_freq_vco;
+}
+
+void intel_snps_hdmi_pll_compute_mpllb(struct intel_mpllb_state *pll_state, u64 pixel_clock)
+{
+	/* x axis frequencies. One curve in each array per v2i point */
+	static const u64 dg2_curve_freq_hz[2][8] = {
+		{ 2500000000ULL, 3000000000ULL, 3000000000ULL, 3500000000ULL, 3500000000ULL,
+		  4000000000ULL, 4000000000ULL, 5000000000ULL },
+		{ 4000000000ULL, 4600000000ULL, 4601000000ULL, 5400000000ULL, 5401000000ULL,
+		  6600000000ULL, 6601000000ULL, 8001000000ULL }
+	};
+
+	/* y axis heights multiplied with 1000000000 */
+	static const u64 dg2_curve_0[2][8] = {
+		{ 34149871, 39803269, 36034544, 40601014, 35646940, 40016109, 35127987, 41889522 },
+		{ 70000000, 78770454, 70451838, 80427119, 70991400, 84230173, 72945921, 87064218 }
+	};
+
+	/* Multiplied with 100 */
+	static const u64 dg2_curve_1[2][8] = {
+		{ 85177000000000ULL, 79385227160000ULL, 95672603580000ULL, 88857207160000ULL,
+		  109379790900000ULL, 103528193900000ULL, 131941242400000ULL, 117279000000000ULL },
+		{ 60255000000000ULL, 55569000000000ULL, 72036000000000ULL, 69509000000000ULL,
+		  81785000000000ULL, 731030000000000ULL, 96591000000000ULL, 69077000000000ULL }
+	};
+
+	/* Multiplied with 1000000000000 */
+	static const u64 dg2_curve_2[2][8] = {
+		{ 2186930000ULL, 2835287134ULL, 2395395343ULL, 2932270687ULL, 2351887545ULL,
+		  2861031697ULL, 2294149152ULL, 3091730000ULL },
+		{ 4560000000ULL, 5570000000ULL, 4610000000ULL, 5770000000ULL, 4670000000ULL,
+		  6240000000ULL, 4890000000ULL, 6600000000ULL }
+	};
+
+	struct pll_output_params pll_params;
+	u32 refclk = 100000000;
+	u32 prescaler_divider = 1;
+	u32 ref_range = 3;
+	u32 ana_cp_int_gs = 64;
+	u32 ana_cp_prop_gs = 124;
+
+	compute_hdmi_tmds_pll(pixel_clock, refclk, ref_range, ana_cp_int_gs, ana_cp_prop_gs,
+			      dg2_curve_freq_hz, dg2_curve_0, dg2_curve_1, dg2_curve_2,
+			      prescaler_divider, &pll_params);
+
+	pll_state->clock = pixel_clock;
+	pll_state->ref_control =
+		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, ref_range);
+	pll_state->mpllb_cp =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, pll_params.ana_cp_int) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, pll_params.ana_cp_prop) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, ana_cp_int_gs) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, ana_cp_prop_gs);
+	pll_state->mpllb_div =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, pll_params.mpll_div5_en) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, pll_params.tx_clk_div) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, pll_params.pmix_en) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, pll_params.mpll_ana_v2i) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, pll_params.ana_freq_vco);
+	pll_state->mpllb_div2 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, prescaler_divider) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, pll_params.multiplier) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, pll_params.hdmi_div);
+	pll_state->mpllb_fracn1 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, pll_params.fracn_en) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, pll_params.fracn_den);
+	pll_state->mpllb_fracn2 =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, pll_params.fracn_quot) |
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, pll_params.fracn_rem);
+	pll_state->mpllb_sscen =
+		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, pll_params.ssc_up_spread);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
new file mode 100644
index 000000000000..70b7023c1135
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2025 Synopsys, Inc., Intel Corporation
+ */
+
+#ifndef __INTEL_SNPS_HDMI_PLL_H__
+#define __INTEL_SNPS_HDMI_PLL_H__
+
+#include <linux/types.h>
+
+struct intel_mpllb_state;
+
+void intel_snps_hdmi_pll_compute_mpllb(struct intel_mpllb_state *pll_state, u64 pixel_clock);
+
+#endif /* __INTEL_SNPS_HDMI_PLL_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 68861db5f27c..80ab87cfeecb 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -263,6 +263,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_psr.o \
 	i915-display/intel_qp_tables.o \
 	i915-display/intel_quirks.o \
+	i915-display/intel_snps_hdmi_pll.o \
 	i915-display/intel_snps_phy.o \
 	i915-display/intel_tc.o \
 	i915-display/intel_vblank.o \
-- 
2.45.2

