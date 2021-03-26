Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B3234AC76
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 17:26:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3186F40B;
	Fri, 26 Mar 2021 16:25:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E95016F400
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 16:25:57 +0000 (UTC)
IronPort-SDR: vo7kxUtOHrsHuFkACHGwEQkN4pWZk4Bec+B+2DJgD2Iqrjpq1UVjdwYz6dogizP/APe+Cq26t9
 IfWYVWOHB/MQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="188905844"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="188905844"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:25:55 -0700
IronPort-SDR: C8xptJMkrfjZ6i37uJTxhQDf0abkVdomQ+x1jegTXOVtasWvqekSM3kTB6uMnkj2zo3GWCHKSC
 b8lqEIUqjWhA==
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="409966584"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:25:54 -0700
Date: Fri, 26 Mar 2021 18:25:50 +0200
From: Imre Deak <imre.deak@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210326162550.GL2237616@ideak-desk.fi.intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
 <20210325180720.401410-41-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325180720.401410-41-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 40/50] drm/i915/adl_p: Add PLL Support
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, me@freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 25, 2021 at 11:07:10AM -0700, Matt Roper wrote:
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> =

> The clocks in ALD_P is similar to that of TGL.
> The combo PLLs  use the same DPLL0, DPLL1 and TBT_PLL.
> =

> This patch adds the helper function intel_mg_pll_enable_reg()
> which is similar to intel_combo_pll_enable_reg() for being lookup
> place for PLL_ENABLE register in combo phy cases.

On TypeC DDIs in dp-alt and legacy mode the DDI_BUF_CTL 'Phy link rate'
field must be also set according to crtc_state->port_clock (in
intel_ddi_init_dp_buf_reg()), see bspec 49533.

> Bspec: 55409,55316
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Clinton Taylor <clinton.a.taylor@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 69 ++++++++++++++-----
>  drivers/gpu/drm/i915/i915_reg.h               |  8 +++
>  2 files changed, 60 insertions(+), 17 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 268ecf1c000f..618c61d4d3b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -147,6 +147,16 @@ void assert_shared_dpll(struct drm_i915_private *dev=
_priv,
>  			pll->info->name, onoff(state), onoff(cur_state));
>  }
>  =

> +static enum tc_port icl_pll_id_to_tc_port(enum intel_dpll_id id)
> +{
> +	return TC_PORT_1 + id - DPLL_ID_ICL_MGPLL1;
> +}
> +
> +enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port)
> +{
> +	return tc_port - TC_PORT_1 + DPLL_ID_ICL_MGPLL1;
> +}
> +
>  static i915_reg_t
>  intel_combo_pll_enable_reg(struct drm_i915_private *i915,
>  			   struct intel_shared_dpll *pll)
> @@ -159,6 +169,19 @@ intel_combo_pll_enable_reg(struct drm_i915_private *=
i915,
>  	return CNL_DPLL_ENABLE(pll->info->id);
>  }
>  =

> +static i915_reg_t
> +intel_tc_pll_enable_reg(struct drm_i915_private *i915,
> +			struct intel_shared_dpll *pll)
> +{
> +	const enum intel_dpll_id id =3D pll->info->id;
> +	enum tc_port tc_port =3D icl_pll_id_to_tc_port(id);
> +
> +	if (IS_ALDERLAKE_P(i915))
> +		return ADLP_PORTTC_PLL_ENABLE(tc_port);
> +
> +	return MG_PLL_ENABLE(tc_port);
> +}
> +
>  /**
>   * intel_prepare_shared_dpll - call a dpll's prepare hook
>   * @crtc_state: CRTC, and its state, which has a shared dpll
> @@ -3118,16 +3141,6 @@ static void icl_calc_dpll_state(struct drm_i915_pr=
ivate *i915,
>  		pll_state->cfgcr1 |=3D DPLL_CFGCR1_CENTRAL_FREQ_8400;
>  }
>  =

> -static enum tc_port icl_pll_id_to_tc_port(enum intel_dpll_id id)
> -{
> -	return id - DPLL_ID_ICL_MGPLL1;
> -}
> -
> -enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port)
> -{
> -	return tc_port + DPLL_ID_ICL_MGPLL1;
> -}
> -
>  static bool icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use=
_ssc,
>  				     u32 *target_dco_khz,
>  				     struct intel_dpll_hw_state *state,
> @@ -3726,12 +3739,14 @@ static bool mg_pll_get_hw_state(struct drm_i915_p=
rivate *dev_priv,
>  	bool ret =3D false;
>  	u32 val;
>  =

> +	i915_reg_t enable_reg =3D intel_tc_pll_enable_reg(dev_priv, pll);
> +
>  	wakeref =3D intel_display_power_get_if_enabled(dev_priv,
>  						     POWER_DOMAIN_DISPLAY_CORE);
>  	if (!wakeref)
>  		return false;
>  =

> -	val =3D intel_de_read(dev_priv, MG_PLL_ENABLE(tc_port));
> +	val =3D intel_de_read(dev_priv, enable_reg);
>  	if (!(val & PLL_ENABLE))
>  		goto out;
>  =

> @@ -3795,7 +3810,7 @@ static bool dkl_pll_get_hw_state(struct drm_i915_pr=
ivate *dev_priv,
>  	if (!wakeref)
>  		return false;
>  =

> -	val =3D intel_de_read(dev_priv, MG_PLL_ENABLE(tc_port));
> +	val =3D intel_de_read(dev_priv, intel_tc_pll_enable_reg(dev_priv, pll));
>  	if (!(val & PLL_ENABLE))
>  		goto out;
>  =

> @@ -4167,8 +4182,7 @@ static void tbt_pll_enable(struct drm_i915_private =
*dev_priv,
>  static void mg_pll_enable(struct drm_i915_private *dev_priv,
>  			  struct intel_shared_dpll *pll)
>  {
> -	i915_reg_t enable_reg =3D
> -		MG_PLL_ENABLE(icl_pll_id_to_tc_port(pll->info->id));
> +	i915_reg_t enable_reg =3D intel_tc_pll_enable_reg(dev_priv, pll);
>  =

>  	icl_pll_power_enable(dev_priv, pll, enable_reg);
>  =

> @@ -4247,8 +4261,7 @@ static void tbt_pll_disable(struct drm_i915_private=
 *dev_priv,
>  static void mg_pll_disable(struct drm_i915_private *dev_priv,
>  			   struct intel_shared_dpll *pll)
>  {
> -	i915_reg_t enable_reg =3D
> -		MG_PLL_ENABLE(icl_pll_id_to_tc_port(pll->info->id));
> +	i915_reg_t enable_reg =3D intel_tc_pll_enable_reg(dev_priv, pll);
>  =

>  	icl_pll_disable(dev_priv, pll, enable_reg);
>  }
> @@ -4414,6 +4427,26 @@ static const struct intel_dpll_mgr adls_pll_mgr =
=3D {
>  	.dump_hw_state =3D icl_dump_hw_state,
>  };
>  =

> +static const struct dpll_info adlp_plls[] =3D {
> +	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0,  0 },
> +	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1,  0 },
> +	{ "TBT PLL",  &tbt_pll_funcs, DPLL_ID_ICL_TBTPLL, 0 },
> +	{ "TC PLL 1", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL1, 0 },
> +	{ "TC PLL 2", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL2, 0 },
> +	{ "TC PLL 3", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL3, 0 },
> +	{ "TC PLL 4", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL4, 0 },
> +	{ },
> +};
> +
> +static const struct intel_dpll_mgr adlp_pll_mgr =3D {
> +	.dpll_info =3D adlp_plls,
> +	.get_dplls =3D icl_get_dplls,
> +	.put_dplls =3D icl_put_dplls,
> +	.update_active_dpll =3D icl_update_active_dpll,
> +	.update_ref_clks =3D icl_update_dpll_ref_clks,
> +	.dump_hw_state =3D icl_dump_hw_state,
> +};
> +
>  /**
>   * intel_shared_dpll_init - Initialize shared DPLLs
>   * @dev: drm device
> @@ -4427,7 +4460,9 @@ void intel_shared_dpll_init(struct drm_device *dev)
>  	const struct dpll_info *dpll_info;
>  	int i;
>  =

> -	if (IS_ALDERLAKE_S(dev_priv))
> +	if (IS_ALDERLAKE_P(dev_priv))
> +		dpll_mgr =3D &adlp_pll_mgr;
> +	else if (IS_ALDERLAKE_S(dev_priv))
>  		dpll_mgr =3D &adls_pll_mgr;
>  	else if (IS_DG1(dev_priv))
>  		dpll_mgr =3D &dg1_pll_mgr;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 393071cde6d4..017bd4817c5b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -10539,6 +10539,14 @@ enum skl_power_gate {
>  #define DG1_DPLL_ENABLE(pll)    _MMIO_PLL3(pll, DPLL0_ENABLE, DPLL1_ENAB=
LE, \
>  					   _MG_PLL1_ENABLE, _MG_PLL2_ENABLE)
>  =

> +/* ADL-P Type C PLL */
> +#define PORTTC1_PLL_ENABLE	0x46038
> +#define PORTTC2_PLL_ENABLE	0x46040
> +
> +#define ADLP_PORTTC_PLL_ENABLE(tc_port)		_MMIO_PORT((tc_port), \
> +							    PORTTC1_PLL_ENABLE, \
> +							    PORTTC2_PLL_ENABLE)
> +
>  #define _MG_REFCLKIN_CTL_PORT1				0x16892C
>  #define _MG_REFCLKIN_CTL_PORT2				0x16992C
>  #define _MG_REFCLKIN_CTL_PORT3				0x16A92C
> -- =

> 2.25.4
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
