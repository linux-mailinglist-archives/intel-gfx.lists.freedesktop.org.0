Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF922F3C9F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 00:48:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C0E6897AC;
	Tue, 12 Jan 2021 23:48:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B875C897AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 23:48:01 +0000 (UTC)
IronPort-SDR: sT7yUrshm0+WEIjWxQXwNHeEsMRadx+HKjvuwpegYfPYRmcPZTjf7S3oyg4prA4PV6b6Ih4t6x
 UkBcXhVo/2gw==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="196757010"
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="196757010"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 15:48:01 -0800
IronPort-SDR: 3WVOZbC0dSYbZmSjI6odSu6c4UrSQkaY/vRDGmfD4yT3oy9lTeieC0YIjOMj3AA8dIDrj6pnjq
 KvzKfjsKtrBg==
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="389321140"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 15:48:00 -0800
Date: Tue, 12 Jan 2021 15:47:58 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210112234758.GM21197@mdroper-desk1.amr.corp.intel.com>
References: <20201205010844.361880-1-aditya.swarup@intel.com>
 <20201205010844.361880-10-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201205010844.361880-10-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/22] drm/i915/adl_s: Configure Port clock
 registers for ADL-S
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 04, 2020 at 05:08:31PM -0800, Aditya Swarup wrote:
> Add changes to configure port clock registers for ADL-S. Combo phy port
> clocks are configured by DPCLKA_CFGCR0 and DPCLKA_CFGCR1 registers.
> =

> The DDI to internal clock mappings in DPCLKA_CFGCR0 register for ADL-S
> translates to
> DDI A -> DDIA
> DDI B -> USBC1
> DDI I -> USBC2
> =

> For DPCLKA_CFGCR1
> DDI J -> USBC3
> DDI K -> USBC4
> =

> Bspec: 50287
> Bspec: 53812
> Bspec: 53723
> =

> v2: Replace I915_READ() with intel_de_read().(Jani)
> =

> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 64 +++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_display.c | 18 +++++-
>  drivers/gpu/drm/i915/i915_reg.h              | 23 ++++++-
>  3 files changed, 82 insertions(+), 23 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 76e975b4765b..fdf692be2bc3 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3088,25 +3088,30 @@ static void icl_map_plls_to_ports(struct intel_en=
coder *encoder,
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_shared_dpll *pll =3D crtc_state->shared_dpll;
>  	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> -	u32 val;
> +	u32 val, mask, sel;
> +	i915_reg_t reg;
> +
> +	if (IS_ALDERLAKE_S(dev_priv)) {
> +		reg =3D ADLS_DPCLKA_CFGCR(phy);
> +		mask =3D ADLS_DPCLKA_CFGCR_DDI_CLK_SEL_MASK(phy);
> +		sel =3D ((pll->info->id) << ADLS_DPCLKA_CFGCR_DDI_SHIFT(phy));
> +	} else if (IS_ROCKETLAKE(dev_priv)) {
> +		reg =3D ICL_DPCLKA_CFGCR0;
> +		mask =3D RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
> +		sel =3D RKL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
> +	} else {
> +		reg =3D ICL_DPCLKA_CFGCR0;
> +		mask =3D ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
> +		sel =3D ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
> +	}
>  =

>  	mutex_lock(&dev_priv->dpll.lock);
>  =

> -	val =3D intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
> +	val =3D intel_de_read(dev_priv, reg);
>  	drm_WARN_ON(&dev_priv->drm,
>  		    (val & icl_dpclka_cfgcr0_clk_off(dev_priv, phy)) =3D=3D 0);
>  =

>  	if (intel_phy_is_combo(dev_priv, phy)) {
> -		u32 mask, sel;
> -
> -		if (IS_ROCKETLAKE(dev_priv)) {
> -			mask =3D RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
> -			sel =3D RKL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
> -		} else {
> -			mask =3D ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
> -			sel =3D ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
> -		}
> -
>  		/*
>  		 * Even though this register references DDIs, note that we
>  		 * want to pass the PHY rather than the port (DDI).  For
> @@ -3119,12 +3124,12 @@ static void icl_map_plls_to_ports(struct intel_en=
coder *encoder,
>  		 */
>  		val &=3D ~mask;
>  		val |=3D sel;
> -		intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
> -		intel_de_posting_read(dev_priv, ICL_DPCLKA_CFGCR0);
> +		intel_de_write(dev_priv, reg, val);
> +		intel_de_posting_read(dev_priv, reg);
>  	}
>  =

>  	val &=3D ~icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
> -	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
> +	intel_de_write(dev_priv, reg, val);
>  =

>  	mutex_unlock(&dev_priv->dpll.lock);
>  }
> @@ -3150,9 +3155,17 @@ static void icl_unmap_plls_to_ports(struct intel_e=
ncoder *encoder)
>  =

>  	mutex_lock(&dev_priv->dpll.lock);
>  =

> -	val =3D intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
> +	if (IS_ALDERLAKE_S(dev_priv))
> +		val =3D intel_de_read(dev_priv, ADLS_DPCLKA_CFGCR(phy));
> +	else
> +		val =3D intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
> +
>  	val |=3D icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
> -	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
> +
> +	if (IS_ALDERLAKE_S(dev_priv))
> +		intel_de_write(dev_priv, ADLS_DPCLKA_CFGCR(phy), val);
> +	else
> +		intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);

We could potentially assign the register to a local at the top of the
function like we did in icl_map_plls_to_ports() to avoid having to do
two separate conditionals.  Up to you though; it doesn't really matter
either way.

>  =

>  	mutex_unlock(&dev_priv->dpll.lock);
>  }
> @@ -3192,13 +3205,19 @@ static void icl_sanitize_port_clk_off(struct drm_=
i915_private *dev_priv,
>  				      u32 port_mask, bool ddi_clk_needed)
>  {
>  	enum port port;
> +	bool ddi_clk_off;
>  	u32 val;
>  =

> -	val =3D intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
>  	for_each_port_masked(port, port_mask) {
>  		enum phy phy =3D intel_port_to_phy(dev_priv, port);
> -		bool ddi_clk_off =3D val & icl_dpclka_cfgcr0_clk_off(dev_priv,
> -								   phy);
> +
> +		if (IS_ALDERLAKE_S(dev_priv))
> +			val =3D intel_de_read(dev_priv, ADLS_DPCLKA_CFGCR(phy));
> +		else
> +			val =3D intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0);
> +
> +		ddi_clk_off =3D val & icl_dpclka_cfgcr0_clk_off(dev_priv,
> +							      phy);
>  =

>  		if (ddi_clk_needed =3D=3D !ddi_clk_off)
>  			continue;
> @@ -3214,7 +3233,10 @@ static void icl_sanitize_port_clk_off(struct drm_i=
915_private *dev_priv,
>  			   "PHY %c is disabled/in DSI mode with an ungated DDI clock, gate it=
\n",
>  			   phy_name(phy));
>  		val |=3D icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
> -		intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
> +		if (IS_ALDERLAKE_S(dev_priv))
> +			intel_de_write(dev_priv, ADLS_DPCLKA_CFGCR(phy), val);
> +		else
> +			intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);

Same comment here.

Either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

The way the bits are spread across two different registers and with
strange offsets is sort of an unintuitive hardware design, but your
implementation here looks correct to me.


Matt

>  	}
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 2d1c5bfe4032..0ff0eeabab8c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11028,6 +11028,20 @@ static int hsw_crtc_compute_clock(struct intel_c=
rtc *crtc,
>  	return 0;
>  }
>  =

> +static void adls_get_ddi_pll(struct drm_i915_private *dev_priv, enum por=
t port,
> +			     struct intel_crtc_state *pipe_config)
> +{
> +	enum phy phy =3D intel_port_to_phy(dev_priv, port);
> +	enum intel_dpll_id id;
> +	u32 val;
> +
> +	val =3D intel_de_read(dev_priv, ADLS_DPCLKA_CFGCR(phy));
> +	val &=3D ADLS_DPCLKA_CFGCR_DDI_CLK_SEL_MASK(phy);
> +	id =3D val >> ADLS_DPCLKA_CFGCR_DDI_SHIFT(phy);
> +
> +	pipe_config->shared_dpll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +}
> +
>  static void dg1_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
>  			    struct intel_crtc_state *pipe_config)
>  {
> @@ -11401,7 +11415,9 @@ static void hsw_get_ddi_port_state(struct intel_c=
rtc *crtc,
>  			port =3D TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
>  	}
>  =

> -	if (IS_DG1(dev_priv))
> +	if (IS_ALDERLAKE_S(dev_priv))
> +		adls_get_ddi_pll(dev_priv, port, pipe_config);
> +	else if (IS_DG1(dev_priv))
>  		dg1_get_ddi_pll(dev_priv, port, pipe_config);
>  	else if (INTEL_GEN(dev_priv) >=3D 11)
>  		icl_get_ddi_pll(dev_priv, port, pipe_config);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 999b4eb422db..ce4ef7fa4000 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -10307,7 +10307,7 @@ enum skl_power_gate {
>  =

>  /* ICL Clocks */
>  #define ICL_DPCLKA_CFGCR0			_MMIO(0x164280)
> -#define  ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	(1 << _PICK(phy, 10, 11, 24))
> +#define  ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	(1 << _PICK(phy, 10, 11, 24,=
 4, 5))
>  #define  RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	REG_BIT((phy) + 10)
>  #define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < TC_POR=
T_4 ? \
>  						       (tc_port) + 12 : \
> @@ -10342,6 +10342,27 @@ enum skl_power_gate {
>  #define   DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_DPLL_MAP(clk_sel, phy) \
>  	(((clk_sel) >> DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)) + _DG1_PHY_DPL=
L_MAP(phy))
>  =

> +/* ADLS Clocks */
> +#define _ADLS_DPCLKA_CFGCR0			0x164280
> +#define _ADLS_DPCLKA_CFGCR1			0x1642BC
> +#define ADLS_DPCLKA_CFGCR(phy)			_MMIO_PHY((phy) / 3, \
> +							  _ADLS_DPCLKA_CFGCR0, \
> +							  _ADLS_DPCLKA_CFGCR1)
> +#define  ADLS_DPCLKA_CFGCR_DDI_SHIFT(phy)		(((phy) % 3) * 2)
> +/* ADLS DPCLKA_CFGCR0 DDI mask */
> +#define  ADLS_DPCLKA_DDII_SEL_MASK			REG_GENMASK(5, 4)
> +#define  ADLS_DPCLKA_DDIB_SEL_MASK			REG_GENMASK(3, 2)
> +#define  ADLS_DPCLKA_DDIA_SEL_MASK			REG_GENMASK(1, 0)
> +/* ADLS DPCLKA_CFGCR1 DDI mask */
> +#define  ADLS_DPCLKA_DDIK_SEL_MASK			REG_GENMASK(3, 2)
> +#define  ADLS_DPCLKA_DDIJ_SEL_MASK			REG_GENMASK(1, 0)
> +#define  ADLS_DPCLKA_CFGCR_DDI_CLK_SEL_MASK(phy)	_PICK((phy), \
> +							ADLS_DPCLKA_DDIA_SEL_MASK, \
> +							ADLS_DPCLKA_DDIB_SEL_MASK, \
> +							ADLS_DPCLKA_DDII_SEL_MASK, \
> +							ADLS_DPCLKA_DDIJ_SEL_MASK, \
> +							ADLS_DPCLKA_DDIK_SEL_MASK)
> +
>  /* CNL PLL */
>  #define DPLL0_ENABLE		0x46010
>  #define DPLL1_ENABLE		0x46014
> -- =

> 2.27.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
