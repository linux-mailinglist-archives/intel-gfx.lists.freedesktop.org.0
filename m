Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF94D917D2D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 12:04:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4308F10E81B;
	Wed, 26 Jun 2024 10:04:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S6KI0SPL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88A1110E81B;
 Wed, 26 Jun 2024 10:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719396251; x=1750932251;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=KQIrqKpLyumqefB7N0fx9U+VveUR0hrCNrAOUrtfe/k=;
 b=S6KI0SPLWVdyYnn4pBFdEo1GJAfBcVIn7imew/W9yNpRRj1waB5hRQj5
 UgxvZF6vg2I4XCqS72Dfb16K3Sm+6o49+QbYJuYZARO8KFoWJsJZGpqMg
 Cr5y1c6EdHwz86XqI3ntd+eqZ96CNMQfWXymj+cHdhl9oqe+Ul9Qg0pRA
 z4+xbGHMRRSRhAUxoypZxz3JjUXS/9xWsCVhY1g9k06RhYdGHmH31pqQ7
 36lqmR5STLTfm8m7uryOHhHcvOX1XRZBgUolLp2rAVbsHrrd1dGDWn04r
 ngGDbMbhOr98YAOMQrKLocVpyvDW+ejo93h1jMbN6c+JaOxllyLhacqOp g==;
X-CSE-ConnectionGUID: tY5gzdd1RpygHkrwgG7y5A==
X-CSE-MsgGUID: 2qbmptN8Q/KEWL/ubWx9Vw==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="33991275"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="33991275"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 03:04:10 -0700
X-CSE-ConnectionGUID: ZnC8G6j+RWax+rkCs12DcQ==
X-CSE-MsgGUID: TfTa/uBmQhSUHcS76dzg5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="43851743"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.95])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 03:04:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, mika.kahola@intel.com,
 matthew.d.roper@intel.com
Subject: Re: [PATCH 1/5] drm/i915/display: Add support for SNPS PHY HDMI PLL
 algorithm for DG2
In-Reply-To: <20240626050056.3996349-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
 <20240626050056.3996349-2-ankit.k.nautiyal@intel.com>
Date: Wed, 26 Jun 2024 13:04:00 +0300
Message-ID: <87y16sc967.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 26 Jun 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Add helper _intel_phy_compute_hdmi_tmds_pll to calculate the necessary
> parameters for configuring the HDMI PLL for SNPS MPLLB and C10 PHY.
>
> The pll parameters are computed for desired pixel clock, curve data
> and other inputs used for interpolation and finally stored in the
> pll_state. Bspec:54032
>
> Currently the helper is used to compute PLLs for DG2 SNPS PHY.
> Support for computing Plls for C10 PHY is added in subsequent patches.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Okay, usually the high level review should come first, but there are so
many annoying details here that they distract review. See inline.

> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../drm/i915/display/intel_pll_algorithm.c    | 252 ++++++++++++++++++
>  .../drm/i915/display/intel_pll_algorithm.h    |  39 +++
>  3 files changed, 292 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_pll_algorithm.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_pll_algorithm.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 4022e4499382..f1a293110bc6 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -334,6 +334,7 @@ i915-y +=3D \
>  	display/intel_lspcon.o \
>  	display/intel_lvds.o \
>  	display/intel_panel.o \
> +	display/intel_pll_algorithm.o \

We probably need to figure out a new name for this. That's too generic
for what it is.

>  	display/intel_pps.o \
>  	display/intel_qp_tables.o \
>  	display/intel_sdvo.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_pll_algorithm.c b/drivers=
/gpu/drm/i915/display/intel_pll_algorithm.c
> new file mode 100644
> index 000000000000..d935715bd3ab
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_pll_algorithm.c
> @@ -0,0 +1,252 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2024 Synopsys, Inc., Intel Corporation
> + */
> +
> +#include <linux/math.h>

Blank line here.

> +#include "i915_reg.h"
> +#include "intel_ddi.h"
> +#include "intel_ddi_buf_trans.h"
> +#include "intel_de.h"
> +#include "intel_display_types.h"
> +#include "intel_snps_phy.h"
> +#include "intel_snps_phy_regs.h"
> +#include "intel_pll_algorithm.h"

Do you really need all of the includes here?

> +
> +#define INTEL_SNPS_PHY_HDMI_4999MHZ 4999999900ull
> +#define INTEL_SNPS_PHY_HDMI_16GHZ 16000000000ull
> +#define INTEL_SNPS_PHY_HDMI_9999MHZ (2 * INTEL_SNPS_PHY_HDMI_4999MHZ)
> +
> +#define CURVE0_MULTIPLIER 1000000000
> +#define CURVE1_MULTIPLIER 100
> +#define CURVE2_MULTIPLIER 1000000000000
> +
> +static int64_t interp(s64 x, s64 x1, s64 x2, s64 y1, s64 y2)

Please use kernel types instead of C99 types.

> +{
> +	s64 dydx;
> +
> +	dydx =3D DIV_ROUND_UP((y2 - y1) * 100000, (x2 - x1));
> +
> +	return (y1 + DIV_ROUND_UP(dydx * (x - x1), 100000));
> +}
> +
> +static void get_ana_cp_int_prop(u32 vco_clk,
> +				u32 refclk_postscalar,
> +				int mpll_ana_v2i,
> +				int c, int a,
> +				const u64 curve_freq_hz[2][8],
> +				const u64 curve_0[2][8],
> +				const u64 curve_1[2][8],
> +				const u64 curve_2[2][8],
> +				u32 *ana_cp_int,
> +				u32 *ana_cp_prop)
> +{
> +	u64 vco_div_refclk_float;
> +	u64 o_397ced90;
> +	u64 o_20c634d6;
> +	u64 o_20c634d4;
> +	u64 o_72019306;
> +	u64 o_6593e82b;
> +	u64 o_5cefc329;
> +	u64 o_49960328;
> +	u64 o_544adb37;
> +	u64 o_4ef74e66;

That's pretty obfuscated. Result of some automated conversion? Can we
have some more sensible names?

> +	u32 ana_cp_int_temp;
> +	u64 temp1, temp2, temp3, temp4;
> +
> +	vco_div_refclk_float =3D vco_clk * (1000000000000 / refclk_postscalar);
> +	o_397ced90 =3D interp(vco_clk, curve_freq_hz[c][a], curve_freq_hz[c][a =
+ 1],
> +			    curve_0[c][a], curve_0[c][a + 1]);
> +
> +	o_20c634d6 =3D interp(vco_clk, curve_freq_hz[c][a], curve_freq_hz[c][a =
+ 1],
> +			    curve_2[c][a], curve_2[c][a + 1]);
> +
> +	o_20c634d4 =3D interp(vco_clk, curve_freq_hz[c][a], curve_freq_hz[c][a =
+ 1],
> +			    curve_1[c][a], curve_1[c][a + 1]);
> +
> +	o_20c634d4 /=3D CURVE1_MULTIPLIER;
> +
> +	temp1 =3D o_20c634d6 * (4 - mpll_ana_v2i);
> +
> +	o_72019306 =3D temp1 / 16000;
> +	o_6593e82b =3D temp1 / 160;
> +
> +	temp2 =3D ((112008301 * (vco_div_refclk_float / 100000)));
> +	o_5cefc329 =3D CURVE2_MULTIPLIER * (temp2 / (o_397ced90 * (o_20c634d4 /=
 CURVE0_MULTIPLIER)));
> +
> +	ana_cp_int_temp =3D min(DIV_ROUND_CLOSEST(o_5cefc329 / o_72019306, CURV=
E2_MULTIPLIER), 127);
> +	ana_cp_int_temp =3D max(1, ana_cp_int_temp);
> +
> +	*ana_cp_int =3D ana_cp_int_temp;
> +
> +	o_49960328 =3D o_72019306 * ana_cp_int_temp;
> +
> +	temp3 =3D o_20c634d4 * (o_49960328 * o_397ced90 / CURVE0_MULTIPLIER);
> +	o_544adb37 =3D int_sqrt(DIV_ROUND_UP(temp3, vco_div_refclk_float) * (10=
00000000000 / 55));
> +
> +	temp4 =3D DIV_ROUND_UP(vco_div_refclk_float, 1000000);
> +	o_4ef74e66 =3D (1460281 * DIV_ROUND_UP(o_544adb37 * temp4, o_20c634d4));
> +
> +	*ana_cp_prop =3D max(1, min(DIV_ROUND_UP(o_4ef74e66, o_6593e82b), 127));
> +}
> +
> +static int _intel_phy_compute_hdmi_tmds_pll(u64 pixel_clock, u32 refclk,

What's with the underscore prefix? It's not a convention we have.

> +					    u32 ref_range,
> +					    u32 ana_cp_int_gs,
> +					    u32 ana_cp_prop_gs,
> +					    const u64 curve_freq_hz[2][8],
> +					    const u64 curve_0[2][8],
> +					    const u64 curve_1[2][8],
> +					    const u64 curve_2[2][8],
> +					    u32 prescaler_divider,
> +					    struct pll_output_params *pll_params)
> +{
> +	/*datarate 10khz */

Please put space around /* and */.

> +	u64 datarate =3D pixel_clock * 10000;
> +	u32 ssc_up_spread =3D 1;
> +	u32 mpll_div5_en =3D 1;
> +	u32 hdmi_div =3D 1;
> +	u32 ana_cp_int;
> +	u32 ana_cp_prop;
> +	u32 refclk_postscalar =3D refclk >> prescaler_divider;
> +	u32 tx_clk_div;
> +	u64 vco_clk;
> +	u32 vco_div_refclk_integer;
> +	u32 vco_div_refclk_fracn;
> +	u32 fracn_quot;
> +	u32 fracn_rem;
> +	u32 fracn_den;
> +	u32 fracn_en;
> +	u32 pmix_en;
> +	u32 multiplier;
> +	int mpll_ana_v2i;
> +	int ana_freq_vco;
> +	int c, a, j;
> +
> +	if (pixel_clock < 25175 || pixel_clock > 600000)
> +		return -EINVAL;
> +
> +	/* Select appropriate v2i point */
> +	if (datarate <=3D INTEL_SNPS_PHY_HDMI_9999MHZ) {
> +		mpll_ana_v2i =3D 2;
> +		tx_clk_div =3D ilog2(INTEL_SNPS_PHY_HDMI_9999MHZ / datarate);
> +	} else {
> +		mpll_ana_v2i =3D 3;
> +		tx_clk_div =3D ilog2(INTEL_SNPS_PHY_HDMI_16GHZ / datarate);
> +	}
> +	vco_clk =3D (datarate << tx_clk_div) >> 1;
> +
> +	/* Highly accurate division, calculate fraction to 32 bits of precision=
 */
> +	vco_div_refclk_integer =3D vco_clk / refclk_postscalar;
> +	vco_div_refclk_fracn =3D ((vco_clk % refclk_postscalar) << 32) / refclk=
_postscalar;
> +	fracn_quot =3D vco_div_refclk_fracn >> 16;
> +	fracn_rem =3D vco_div_refclk_fracn & 0xffff;
> +	fracn_rem =3D fracn_rem - (fracn_rem >> 15);
> +	fracn_den =3D 0xffff;
> +	fracn_en =3D (fracn_quot !=3D 0 || fracn_rem !=3D 0) ? 1 : 0;
> +	pmix_en =3D fracn_en;
> +	multiplier =3D (vco_div_refclk_integer - 16) * 2;
> +	/* Curve selection for ana_cp_* calculations. One curve hardcoded per v=
2i range */
> +	c =3D mpll_ana_v2i - 2;
> +
> +	/* Find the right segment of the table */
> +	for (j =3D 0; j < 8; j +=3D 2) {

i is the usual loop variable.

> +		if (vco_clk <=3D curve_freq_hz[c][j + 1]) {
> +			a =3D j;
> +			ana_freq_vco =3D 3 - (a >> 1);
> +			break;
> +		}
> +	}
> +
> +	get_ana_cp_int_prop(vco_clk, refclk_postscalar, mpll_ana_v2i, c, a,
> +			    curve_freq_hz, curve_0, curve_1, curve_2,
> +			    &ana_cp_int, &ana_cp_prop);
> +
> +	pll_params->ssc_up_spread =3D ssc_up_spread;
> +	pll_params->mpll_div5_en =3D mpll_div5_en;
> +	pll_params->hdmi_div =3D hdmi_div;
> +	pll_params->ana_cp_int =3D ana_cp_int;
> +	pll_params->refclk_postscalar =3D refclk_postscalar;
> +	pll_params->tx_clk_div =3D tx_clk_div;
> +	pll_params->fracn_quot =3D fracn_quot;
> +	pll_params->fracn_rem =3D fracn_rem;
> +	pll_params->fracn_den =3D fracn_den;
> +	pll_params->fracn_en =3D fracn_en;
> +	pll_params->pmix_en =3D pmix_en;
> +	pll_params->multiplier =3D multiplier;
> +	pll_params->ana_cp_prop =3D ana_cp_prop;
> +	pll_params->mpll_ana_v2i =3D mpll_ana_v2i;
> +	pll_params->ana_freq_vco =3D ana_freq_vco;
> +
> +	return 0;
> +}
> +
> +int intel_snps_phy_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_m=
pllb_state *pll_state)
> +{
> +	struct pll_output_params pll_params;
> +	u32 refclk =3D 100000000;
> +	u32 prescaler_divider =3D 1;
> +	u32 ref_range =3D 3;
> +	u32 ana_cp_int_gs =3D 64;
> +	u32 ana_cp_prop_gs =3D 124;
> +	int ret;
> +	/* x axis frequencies. One curve in each array per v2i point */
> +	const u64 dg2_curve_freq_hz[2][8] =3D {
> +		{2500000000, 3000000000, 3000000000, 3500000000, 3500000000, 400000000=
0, 4000000000, 5000000000},
> +		{4000000000, 4600000000, 4601000000, 5400000000, 5401000000, 660000000=
0, 6601000000, 8001000000}};
> +
> +	/* y axis heights multiplied with 1000000000 */
> +	const u64 dg2_curve_0[2][8] =3D {
> +		{34149871, 39803269, 36034544, 40601014, 35646940, 40016109, 35127987,=
 41889522},
> +		{70000000, 78770454, 70451838, 80427119, 70991400, 84230173, 72945921,=
 87064218}};
> +
> +	/* Multiplied with 100 */
> +	const u64 dg2_curve_1[2][8] =3D {
> +		{85177000000000, 79385227160000, 95672603580000, 88857207160000, 10937=
9790900000, 103528193900000, 131941242400000, 117279000000000},
> +		{60255000000000, 55569000000000, 72036000000000, 69509000000000,  8178=
5000000000, 731030000000000, 96591000000000, 69077000000000}};
> +
> +	/* Multiplied with 1000000000000 */
> +	const u64 dg2_curve_2[2][8] =3D {
> +		{2186930000, 2835287134, 2395395343, 2932270687, 2351887545, 286103169=
7, 2294149152, 3091730000},
> +		{4560000000, 5570000000, 4610000000, 5770000000, 4670000000, 624000000=
0, 4890000000, 6600000000}
> +	};

These can be static const instead of on the stack. Please put spaces
between { } and the numbers. Please put the final }; on a line of its
own. Put these as first variables in the function.

Just eyeballing, the constants look big enough to warrant ULL.

> +
> +	ret =3D _intel_phy_compute_hdmi_tmds_pll(pixel_clock, refclk, ref_range,
> +					       ana_cp_int_gs, ana_cp_prop_gs,
> +					       dg2_curve_freq_hz, dg2_curve_0,
> +					       dg2_curve_1, dg2_curve_2, prescaler_divider,
> +					       &pll_params);
> +
> +	if (ret)
> +		return ret;
> +
> +	pll_state->clock =3D pixel_clock;
> +	pll_state->ref_control =3D
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, ref_range);
> +	pll_state->mpllb_cp =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, pll_params.ana_cp_int) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, pll_params.ana_cp_prop) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, ana_cp_int_gs) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, ana_cp_prop_gs);
> +	pll_state->mpllb_div =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, pll_params.mpll_div5_en) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, pll_params.tx_clk_div) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, pll_params.pmix_en) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, pll_params.mpll_ana_v2i) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, pll_params.ana_freq_vco);
> +	pll_state->mpllb_div2 =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, prescaler_divider) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, pll_params.multiplier) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, pll_params.hdmi_div);
> +	pll_state->mpllb_fracn1 =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, pll_params.fracn_en) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, pll_params.fracn_den);
> +	pll_state->mpllb_fracn2 =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, pll_params.fracn_quot) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, pll_params.fracn_rem);
> +	pll_state->mpllb_sscen =3D
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, pll_params.ssc_up_spread);
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_pll_algorithm.h b/drivers=
/gpu/drm/i915/display/intel_pll_algorithm.h
> new file mode 100644
> index 000000000000..83a620fb3db2
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_pll_algorithm.h
> @@ -0,0 +1,39 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2024 Synopsys, Inc., Intel Corporation
> + */
> +
> +#ifndef __INTEL_PLL_ALGORITHM_H__
> +#define __INTEL_PLL_ALGORITHM_H__
> +
> +#include <linux/types.h>
> +
> +struct drm_i915_private;
> +struct intel_atomic_state;
> +struct intel_crtc;
> +struct intel_crtc_state;
> +struct intel_encoder;
> +struct intel_mpllb_state;
> +enum phy;

What's the deal with the forward declarations? You need exactly one of
them in this file.

> +
> +struct pll_output_params {
> +	u32 ssc_up_spread;
> +	u32 mpll_div5_en;
> +	u32 hdmi_div;
> +	u32 ana_cp_int;
> +	u32 ana_cp_prop;
> +	u32 refclk_postscalar;
> +	u32 tx_clk_div;
> +	u32 fracn_quot;
> +	u32 fracn_rem;
> +	u32 fracn_den;
> +	u32 fracn_en;
> +	u32 pmix_en;
> +	u32 multiplier;
> +	int mpll_ana_v2i;
> +	int ana_freq_vco;
> +};

This is internal to the implementation and should be in the .c file.

> +
> +int intel_snps_phy_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_m=
pllb_state *pll_state);

Usually context params go first.

> +
> +#endif /* __INTEL_PLL_ALGORITHM_H__ */

--=20
Jani Nikula, Intel
