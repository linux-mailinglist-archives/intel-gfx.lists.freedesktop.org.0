Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5561A223302
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 07:39:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61C66E42B;
	Fri, 17 Jul 2020 05:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 136716E42B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 05:39:02 +0000 (UTC)
IronPort-SDR: mV2fdZv9GdBDJTS/79WT4N3JgCke/SzeG94l5PTScVErWndP8iuFuq1CwO9TcpcGmY0J9jgRKY
 9Sz+BfTRwh+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="129624474"
X-IronPort-AV: E=Sophos;i="5.75,361,1589266800"; d="scan'208";a="129624474"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 22:39:02 -0700
IronPort-SDR: wXiIpqHCCFvwEAHW1ayZAT0ro4wbU2EZ9YTxkSH+njrWxzhIKeUJxFAH6H+ChCnp7wtVAHrQPh
 xg1d5SqxQ7bA==
X-IronPort-AV: E=Sophos;i="5.75,361,1589266800"; d="scan'208";a="308901071"
Received: from nnene-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.81.229])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 22:39:01 -0700
Date: Thu, 16 Jul 2020 22:39:05 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200717053905.ev3dqexc3vlzu7fa@ldmartin-desk1>
References: <20200716220551.2730644-1-matthew.d.roper@intel.com>
 <20200716220551.2730644-4-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716220551.2730644-4-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v8 3/5] drm/i915/rkl: Add DPLL4 support
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 16, 2020 at 03:05:49PM -0700, Matt Roper wrote:
>Rocket Lake has a third DPLL (called 'DPLL4') that must be used to
>enable a third display.  Unlike EHL's variant of DPLL4, the RKL variant
>behaves the same as DPLL0/1.  And despite its name, the DPLL4 registers
>are offset as if it were DPLL2.
>
>v2:
> - Add new .update_ref_clks() hook.
>
>v3:
> - Renumber TBT PLL to '3' and switch _MMIO_PLL3 to _MMIO_PLL (Lucas)
>
>v4:
> - Don't drop _MMIO_PLL3; although it's now unused, we're going to need
>   it very soon again for upcoming DG1 patches.  (Lucas)
>
>v5:
> - Don't re-number TBT PLL and beyond, just use new RKL_DPLL_CFGCR
>   macros to lookup the proper registers instead.  Although renumbering
>   the PLLs might be something we want to consider down the road, it
>   opens a big can of worms right now since a bunch of places in the
>   code have an assumption that the PLL table has idx=3D=3Did and no holes.
>   Renumbering creates a hole for TGL, so we'd either need to allow
>   holes in the table or break the idx=3D=3Did invariant, both of which are
>   somewhat invasive changes to the design.
>
>Bspec: 49202
>Bspec: 49443
>Bspec: 50288
>Bspec: 50289
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 41 ++++++++++++++++---
> drivers/gpu/drm/i915/i915_reg.h               |  6 ++-
> 2 files changed, 40 insertions(+), 7 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/d=
rm/i915/display/intel_dpll_mgr.c
>index aeb6ee395cce..134c2ecf4c80 100644
>--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>@@ -3504,13 +3504,19 @@ static bool icl_get_combo_phy_dpll(struct intel_at=
omic_state *state,
>
> 	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
>
>-	if (IS_ELKHARTLAKE(dev_priv) && port !=3D PORT_A)
>+	if (IS_ROCKETLAKE(dev_priv)) {
> 		dpll_mask =3D
> 			BIT(DPLL_ID_EHL_DPLL4) |
> 			BIT(DPLL_ID_ICL_DPLL1) |
> 			BIT(DPLL_ID_ICL_DPLL0);
>-	else
>+	} else if (IS_ELKHARTLAKE(dev_priv) && port !=3D PORT_A) {
>+		dpll_mask =3D
>+			BIT(DPLL_ID_EHL_DPLL4) |
>+			BIT(DPLL_ID_ICL_DPLL1) |
>+			BIT(DPLL_ID_ICL_DPLL0);
>+	} else {
> 		dpll_mask =3D BIT(DPLL_ID_ICL_DPLL1) | BIT(DPLL_ID_ICL_DPLL0);
>+	}
>
> 	port_dpll->pll =3D intel_find_shared_dpll(state, crtc,
> 						&port_dpll->hw_state,
>@@ -3791,7 +3797,12 @@ static bool icl_pll_get_hw_state(struct drm_i915_pr=
ivate *dev_priv,
> 	if (!(val & PLL_ENABLE))
> 		goto out;
>
>-	if (INTEL_GEN(dev_priv) >=3D 12) {
>+	if (IS_ROCKETLAKE(dev_priv)) {
>+		hw_state->cfgcr0 =3D intel_de_read(dev_priv,
>+						 RKL_DPLL_CFGCR0(id));
>+		hw_state->cfgcr1 =3D intel_de_read(dev_priv,
>+						 RKL_DPLL_CFGCR1(id));
>+	} else if (INTEL_GEN(dev_priv) >=3D 12) {
> 		hw_state->cfgcr0 =3D intel_de_read(dev_priv,
> 						 TGL_DPLL_CFGCR0(id));
> 		hw_state->cfgcr1 =3D intel_de_read(dev_priv,
>@@ -3844,7 +3855,10 @@ static void icl_dpll_write(struct drm_i915_private =
*dev_priv,
> 	const enum intel_dpll_id id =3D pll->info->id;
> 	i915_reg_t cfgcr0_reg, cfgcr1_reg;
>
>-	if (INTEL_GEN(dev_priv) >=3D 12) {
>+	if (IS_ROCKETLAKE(dev_priv)) {
>+		cfgcr0_reg =3D RKL_DPLL_CFGCR0(id);
>+		cfgcr1_reg =3D RKL_DPLL_CFGCR1(id);
>+	} else if (INTEL_GEN(dev_priv) >=3D 12) {
> 		cfgcr0_reg =3D TGL_DPLL_CFGCR0(id);
> 		cfgcr1_reg =3D TGL_DPLL_CFGCR1(id);
> 	} else {
>@@ -4276,6 +4290,21 @@ static const struct intel_dpll_mgr tgl_pll_mgr =3D {
> 	.dump_hw_state =3D icl_dump_hw_state,
> };
>
>+static const struct dpll_info rkl_plls[] =3D {
>+	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0, 0 },
>+	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1, 0 },
>+	{ "DPLL 4", &combo_pll_funcs, DPLL_ID_EHL_DPLL4, 0 },
>+	{ },
>+};
>+
>+static const struct intel_dpll_mgr rkl_pll_mgr =3D {
>+	.dpll_info =3D rkl_plls,
>+	.get_dplls =3D icl_get_dplls,
>+	.put_dplls =3D icl_put_dplls,
>+	.update_ref_clks =3D icl_update_dpll_ref_clks,
>+	.dump_hw_state =3D icl_dump_hw_state,
>+};
>+
> /**
>  * intel_shared_dpll_init - Initialize shared DPLLs
>  * @dev: drm device
>@@ -4289,7 +4318,9 @@ void intel_shared_dpll_init(struct drm_device *dev)
> 	const struct dpll_info *dpll_info;
> 	int i;
>
>-	if (INTEL_GEN(dev_priv) >=3D 12)
>+	if (IS_ROCKETLAKE(dev_priv))
>+		dpll_mgr =3D &rkl_pll_mgr;
>+	else if (INTEL_GEN(dev_priv) >=3D 12)
> 		dpll_mgr =3D &tgl_pll_mgr;
> 	else if (IS_ELKHARTLAKE(dev_priv))
> 		dpll_mgr =3D &ehl_pll_mgr;
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 00414c457941..bfdb6d23b5d8 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -10511,19 +10511,21 @@ enum skl_power_gate {
>
> #define _TGL_DPLL0_CFGCR0		0x164284
> #define _TGL_DPLL1_CFGCR0		0x16428C
>-/* TODO: add DPLL4 */
> #define _TGL_TBTPLL_CFGCR0		0x16429C
> #define TGL_DPLL_CFGCR0(pll)		_MMIO_PLL3(pll, _TGL_DPLL0_CFGCR0, \
> 						  _TGL_DPLL1_CFGCR0, \
> 						  _TGL_TBTPLL_CFGCR0)
>+#define RKL_DPLL_CFGCR0(pll)		_MMIO_PLL(pll, _TGL_DPLL0_CFGCR0, \
>+						  _TGL_DPLL1_CFGCR0)
>
> #define _TGL_DPLL0_CFGCR1		0x164288
> #define _TGL_DPLL1_CFGCR1		0x164290
>-/* TODO: add DPLL4 */
> #define _TGL_TBTPLL_CFGCR1		0x1642A0
> #define TGL_DPLL_CFGCR1(pll)		_MMIO_PLL3(pll, _TGL_DPLL0_CFGCR1, \
> 						   _TGL_DPLL1_CFGCR1, \
> 						   _TGL_TBTPLL_CFGCR1)
>+#define RKL_DPLL_CFGCR1(pll)		_MMIO_PLL(pll, _TGL_DPLL0_CFGCR1, \
>+						  _TGL_DPLL1_CFGCR1)
>
> #define _DKL_PHY1_BASE			0x168000
> #define _DKL_PHY2_BASE			0x169000
>-- =

>2.24.1
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
