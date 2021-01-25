Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD5A302A96
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 19:45:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD46889E2B;
	Mon, 25 Jan 2021 18:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B14D489E2B
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 18:45:15 +0000 (UTC)
IronPort-SDR: OsSZZXGvBzB5wkoMOeleGmngQL84gQZ/vFiZ/xA3sMrpMSbgXIhFRtqPkfsrudYGuBAV8BafD7
 imrnXqfPSDEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="198561034"
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="198561034"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 10:45:15 -0800
IronPort-SDR: R1lpb9CW0+R5HvoEGfmAJSJz4MUyMr1wDBIMQ9GKykm+jUIwytq4VxIJLNp+FRkgvRy0DW4bT7
 4XtZJ01fdP0g==
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="356415890"
Received: from vlesnikx-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.30.223])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 10:45:12 -0800
Date: Mon, 25 Jan 2021 10:45:10 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210125184510.lrtkrmyg67vrupmj@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210125140753.347998-1-aditya.swarup@intel.com>
 <20210125140753.347998-6-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210125140753.347998-6-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915/adl_s: Configure DPLL for
 ADL-S
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 25, 2021 at 06:07:48AM -0800, Aditya Swarup wrote:
>Add changes for configuring DPLL for ADL-S
>- Reusing DG1 DPLL 2 & DPLL 3 for ADL-S
>- Extend CNL macro to choose DPLL_ENABLE
>  for ADL-S.
>- Select CFGCR0 and CFGCR1 for ADL-S plls.
>
>On BSpec: 53720 PLL arrangement dig for adls:
>DPLL2 cfgcr is programmed using _ADLS_DPLL3_CFGCR(0/1)
>DPLL3 cfgcr is programmed using _ADLS_DPLL4_CFGCR(0/1)
>
>v2 (Lucas): add missing update_ref_clks
>
>Bspec: 50288
>Bspec: 50289
>Bspec: 49443
>
>v3 : Adding another bit to HDPORT_DPLL_USED_MASK bitfield
>for DPLL3_USED.(mdroper)
>
>Bspec: 53707
>
>v4:  BSpec 53723 has been updated with note - DPLL2 is
>controlled by DPLL4 CFGCR 0/1.(mdroper)
>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 38 +++++++++++++++++--
> drivers/gpu/drm/i915/i915_reg.h               | 22 ++++++++++-
> 2 files changed, 54 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/d=
rm/i915/display/intel_dpll_mgr.c
>index f6ad257a260e..529b1d569af2 100644
>--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>@@ -3559,7 +3559,13 @@ static bool icl_get_combo_phy_dpll(struct intel_ato=
mic_state *state,
>
> 	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
>
>-	if (IS_DG1(dev_priv)) {
>+	if (IS_ALDERLAKE_S(dev_priv)) {
>+		dpll_mask =3D
>+			BIT(DPLL_ID_DG1_DPLL3) |
>+			BIT(DPLL_ID_DG1_DPLL2) |
>+			BIT(DPLL_ID_ICL_DPLL1) |
>+			BIT(DPLL_ID_ICL_DPLL0);

I think mixing the namespace when it's not just an extension to the
other platform, it's a bit confusing. Why not DPLL_ID_DG1_* or even
creating your own DPLL_ID_ADLS_*.

Anyway, this seems a minor thing to block the patch. The rest looks ok.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>+	} else if (IS_DG1(dev_priv)) {
> 		if (port =3D=3D PORT_D || port =3D=3D PORT_E) {
> 			dpll_mask =3D
> 				BIT(DPLL_ID_DG1_DPLL2) |
>@@ -3865,7 +3871,10 @@ static bool icl_pll_get_hw_state(struct drm_i915_pr=
ivate *dev_priv,
> 	if (!(val & PLL_ENABLE))
> 		goto out;
>
>-	if (IS_DG1(dev_priv)) {
>+	if (IS_ALDERLAKE_S(dev_priv)) {
>+		hw_state->cfgcr0 =3D intel_de_read(dev_priv, ADLS_DPLL_CFGCR0(id));
>+		hw_state->cfgcr1 =3D intel_de_read(dev_priv, ADLS_DPLL_CFGCR1(id));
>+	} else if (IS_DG1(dev_priv)) {
> 		hw_state->cfgcr0 =3D intel_de_read(dev_priv, DG1_DPLL_CFGCR0(id));
> 		hw_state->cfgcr1 =3D intel_de_read(dev_priv, DG1_DPLL_CFGCR1(id));
> 	} else if (IS_ROCKETLAKE(dev_priv)) {
>@@ -3921,7 +3930,10 @@ static void icl_dpll_write(struct drm_i915_private =
*dev_priv,
> 	const enum intel_dpll_id id =3D pll->info->id;
> 	i915_reg_t cfgcr0_reg, cfgcr1_reg;
>
>-	if (IS_DG1(dev_priv)) {
>+	if (IS_ALDERLAKE_S(dev_priv)) {
>+		cfgcr0_reg =3D ADLS_DPLL_CFGCR0(id);
>+		cfgcr1_reg =3D ADLS_DPLL_CFGCR1(id);
>+	} else if (IS_DG1(dev_priv)) {
> 		cfgcr0_reg =3D DG1_DPLL_CFGCR0(id);
> 		cfgcr1_reg =3D DG1_DPLL_CFGCR1(id);
> 	} else if (IS_ROCKETLAKE(dev_priv)) {
>@@ -4384,6 +4396,22 @@ static const struct intel_dpll_mgr dg1_pll_mgr =3D {
> 	.dump_hw_state =3D icl_dump_hw_state,
> };
>
>+static const struct dpll_info adls_plls[] =3D {
>+	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0, 0 },
>+	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1, 0 },
>+	{ "DPLL 2", &combo_pll_funcs, DPLL_ID_DG1_DPLL2, 0 },
>+	{ "DPLL 3", &combo_pll_funcs, DPLL_ID_DG1_DPLL3, 0 },
>+	{ },
>+};
>+
>+static const struct intel_dpll_mgr adls_pll_mgr =3D {
>+	.dpll_info =3D adls_plls,
>+	.get_dplls =3D icl_get_dplls,
>+	.put_dplls =3D icl_put_dplls,
>+	.update_ref_clks =3D icl_update_dpll_ref_clks,
>+	.dump_hw_state =3D icl_dump_hw_state,
>+};
>+
> /**
>  * intel_shared_dpll_init - Initialize shared DPLLs
>  * @dev: drm device
>@@ -4397,7 +4425,9 @@ void intel_shared_dpll_init(struct drm_device *dev)
> 	const struct dpll_info *dpll_info;
> 	int i;
>
>-	if (IS_DG1(dev_priv))
>+	if (IS_ALDERLAKE_S(dev_priv))
>+		dpll_mgr =3D &adls_pll_mgr;
>+	else if (IS_DG1(dev_priv))
> 		dpll_mgr =3D &dg1_pll_mgr;
> 	else if (IS_ROCKETLAKE(dev_priv))
> 		dpll_mgr =3D &rkl_pll_mgr;
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 0fe499840b82..339532222d7c 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -2930,7 +2930,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t re=
g)
> #define MBUS_BBOX_CTL_S2		_MMIO(0x45044)
>
> #define HDPORT_STATE			_MMIO(0x45050)
>-#define   HDPORT_DPLL_USED_MASK		REG_GENMASK(14, 12)
>+#define   HDPORT_DPLL_USED_MASK		REG_GENMASK(15, 12)
> #define   HDPORT_DDI_USED(phy)		REG_BIT(2 * (phy) + 1)
> #define   HDPORT_ENABLED		REG_BIT(0)
>
>@@ -10394,11 +10394,14 @@ enum skl_power_gate {
> /* CNL PLL */
> #define DPLL0_ENABLE		0x46010
> #define DPLL1_ENABLE		0x46014
>+#define _ADLS_DPLL2_ENABLE	0x46018
>+#define _ADLS_DPLL3_ENABLE	0x46030
> #define  PLL_ENABLE		(1 << 31)
> #define  PLL_LOCK		(1 << 30)
> #define  PLL_POWER_ENABLE	(1 << 27)
> #define  PLL_POWER_STATE	(1 << 26)
>-#define CNL_DPLL_ENABLE(pll)	_MMIO_PLL(pll, DPLL0_ENABLE, DPLL1_ENABLE)
>+#define CNL_DPLL_ENABLE(pll)	_MMIO_PLL3(pll, DPLL0_ENABLE, DPLL1_ENABLE, \
>+					   _ADLS_DPLL2_ENABLE, _ADLS_DPLL3_ENABLE)
>
> #define TBT_PLL_ENABLE		_MMIO(0x46020)
>
>@@ -10644,6 +10647,21 @@ enum skl_power_gate {
> 						   _DG1_DPLL2_CFGCR1, \
> 						   _DG1_DPLL3_CFGCR1)
>
>+/* For ADL-S DPLL4_CFGCR0/1 are used to control DPLL2 */
>+#define _ADLS_DPLL3_CFGCR0		0x1642C0
>+#define _ADLS_DPLL4_CFGCR0		0x164294
>+#define ADLS_DPLL_CFGCR0(pll)		_MMIO_PLL3(pll, _TGL_DPLL0_CFGCR0, \
>+						   _TGL_DPLL1_CFGCR0, \
>+						   _ADLS_DPLL4_CFGCR0, \
>+						   _ADLS_DPLL3_CFGCR0)
>+
>+#define _ADLS_DPLL3_CFGCR1		0x1642C4
>+#define _ADLS_DPLL4_CFGCR1		0x164298
>+#define ADLS_DPLL_CFGCR1(pll)		_MMIO_PLL3(pll, _TGL_DPLL0_CFGCR1, \
>+						   _TGL_DPLL1_CFGCR1, \
>+						   _ADLS_DPLL4_CFGCR1, \
>+						   _ADLS_DPLL3_CFGCR1)
>+
> #define _DKL_PHY1_BASE			0x168000
> #define _DKL_PHY2_BASE			0x169000
> #define _DKL_PHY3_BASE			0x16A000
>-- =

>2.27.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
