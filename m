Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF22310CF6
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 16:09:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E18E36E1E8;
	Fri,  5 Feb 2021 15:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A348C6E1E8
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 15:09:18 +0000 (UTC)
IronPort-SDR: FlVvymd6PHK+jVxDDp3KHE1qzNyjgrMWJsjfYZI0kLYl6VB2SXefvoJnyaVemkKSihyoo4cAoO
 dszu/8JAQXFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="168560413"
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; d="scan'208";a="168560413"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 07:09:17 -0800
IronPort-SDR: iXGbmEVJDAC5FD/qpj3t/ehSE/UOvx7lp7iLWURAJS1E9rvLnEdP6EQ4Owew8DC7DeQmNf/m3C
 eGncg1FGt3+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,155,1610438400"; d="scan'208";a="397473102"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 05 Feb 2021 07:09:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Feb 2021 17:09:14 +0200
Date: Fri, 5 Feb 2021 17:09:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YB1fmmHXYdg/A8iK@intel.com>
References: <cover.1612536383.git.jani.nikula@intel.com>
 <7a9463a87517fc5cbb5d4cbf395531b7fc0713d0.1612536383.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7a9463a87517fc5cbb5d4cbf395531b7fc0713d0.1612536383.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v12 8/8] drm/i915: move ddi pll state get to
 dpll mgr
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
Cc: Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 05, 2021 at 04:48:43PM +0200, Jani Nikula wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> This just migrates the hsw+ code to a better place.
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 219 +----------------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 223 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   2 +
>  3 files changed, 226 insertions(+), 218 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index beed08c00b6c..f7c1f036d38f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6520,212 +6520,6 @@ static bool ilk_get_pipe_config(struct intel_crtc=
 *crtc,
>  	return ret;
>  }
>  =

> -static void dg1_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> -			    struct intel_crtc_state *pipe_config)
> -{
> -	enum icl_port_dpll_id port_dpll_id =3D ICL_PORT_DPLL_DEFAULT;
> -	enum phy phy =3D intel_port_to_phy(dev_priv, port);
> -	struct icl_port_dpll *port_dpll;
> -	struct intel_shared_dpll *pll;
> -	enum intel_dpll_id id;
> -	bool pll_active;
> -	u32 clk_sel;
> -
> -	clk_sel =3D intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy)) & DG1_DPCLK=
A_CFGCR0_DDI_CLK_SEL_MASK(phy);
> -	id =3D DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_DPLL_MAP(clk_sel, phy);

Hmm. Since this mostly about DPCLKA_CFGCR/PORT_CLK_SEL/etc.
I think intel_ddi.c would the more approriate place, especially
when considering my recent DDI clock routing refactoring.
I guess we could even consider intel_ddi_clock.c or
somesuch to stuff all of it into. Now I'm also tempted
to turn this stuff into vfuncs as well, to partner up
with the new encoder->{enable,disable}_clock().

> -
> -	if (WARN_ON(id > DPLL_ID_DG1_DPLL3))
> -		return;
> -
> -	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> -	port_dpll =3D &pipe_config->icl_port_dplls[port_dpll_id];
> -
> -	port_dpll->pll =3D pll;
> -	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> -					     &port_dpll->hw_state);
> -	drm_WARN_ON(&dev_priv->drm, !pll_active);
> -
> -	icl_set_active_port_dpll(pipe_config, port_dpll_id);
> -}
> -
> -static void icl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> -			    struct intel_crtc_state *pipe_config)
> -{
> -	enum phy phy =3D intel_port_to_phy(dev_priv, port);
> -	enum icl_port_dpll_id port_dpll_id;
> -	struct icl_port_dpll *port_dpll;
> -	struct intel_shared_dpll *pll;
> -	enum intel_dpll_id id;
> -	bool pll_active;
> -	i915_reg_t reg;
> -	u32 temp;
> -
> -	if (intel_phy_is_combo(dev_priv, phy)) {
> -		u32 mask, shift;
> -
> -		if (IS_ALDERLAKE_S(dev_priv)) {
> -			reg =3D ADLS_DPCLKA_CFGCR(phy);
> -			mask =3D ADLS_DPCLKA_CFGCR_DDI_CLK_SEL_MASK(phy);
> -			shift =3D ADLS_DPCLKA_CFGCR_DDI_SHIFT(phy);
> -		} else if (IS_ROCKETLAKE(dev_priv)) {
> -			reg =3D ICL_DPCLKA_CFGCR0;
> -			mask =3D RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
> -			shift =3D RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy);
> -		} else {
> -			reg =3D ICL_DPCLKA_CFGCR0;
> -			mask =3D ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
> -			shift =3D ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy);
> -		}
> -
> -		temp =3D intel_de_read(dev_priv, reg) & mask;
> -		id =3D temp >> shift;
> -		port_dpll_id =3D ICL_PORT_DPLL_DEFAULT;
> -	} else if (intel_phy_is_tc(dev_priv, phy)) {
> -		u32 clk_sel =3D intel_de_read(dev_priv, DDI_CLK_SEL(port)) & DDI_CLK_S=
EL_MASK;
> -
> -		if (clk_sel =3D=3D DDI_CLK_SEL_MG) {
> -			id =3D icl_tc_port_to_pll_id(intel_port_to_tc(dev_priv,
> -								    port));
> -			port_dpll_id =3D ICL_PORT_DPLL_MG_PHY;
> -		} else {
> -			drm_WARN_ON(&dev_priv->drm,
> -				    clk_sel < DDI_CLK_SEL_TBT_162);
> -			id =3D DPLL_ID_ICL_TBTPLL;
> -			port_dpll_id =3D ICL_PORT_DPLL_DEFAULT;
> -		}
> -	} else {
> -		drm_WARN(&dev_priv->drm, 1, "Invalid port %x\n", port);
> -		return;
> -	}
> -
> -	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> -	port_dpll =3D &pipe_config->icl_port_dplls[port_dpll_id];
> -
> -	port_dpll->pll =3D pll;
> -	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> -					     &port_dpll->hw_state);
> -	drm_WARN_ON(&dev_priv->drm, !pll_active);
> -
> -	icl_set_active_port_dpll(pipe_config, port_dpll_id);
> -}
> -
> -static void cnl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> -			    struct intel_crtc_state *pipe_config)
> -{
> -	struct intel_shared_dpll *pll;
> -	enum intel_dpll_id id;
> -	bool pll_active;
> -	u32 temp;
> -
> -	temp =3D intel_de_read(dev_priv, DPCLKA_CFGCR0) & DPCLKA_CFGCR0_DDI_CLK=
_SEL_MASK(port);
> -	id =3D temp >> DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(port);
> -
> -	if (drm_WARN_ON(&dev_priv->drm, id < SKL_DPLL0 || id > SKL_DPLL2))
> -		return;
> -
> -	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> -
> -	pipe_config->shared_dpll =3D pll;
> -	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> -					     &pipe_config->dpll_hw_state);
> -	drm_WARN_ON(&dev_priv->drm, !pll_active);
> -}
> -
> -static void bxt_get_ddi_pll(struct drm_i915_private *dev_priv,
> -				enum port port,
> -				struct intel_crtc_state *pipe_config)
> -{
> -	struct intel_shared_dpll *pll;
> -	enum intel_dpll_id id;
> -	bool pll_active;
> -
> -	switch (port) {
> -	case PORT_A:
> -		id =3D DPLL_ID_SKL_DPLL0;
> -		break;
> -	case PORT_B:
> -		id =3D DPLL_ID_SKL_DPLL1;
> -		break;
> -	case PORT_C:
> -		id =3D DPLL_ID_SKL_DPLL2;
> -		break;
> -	default:
> -		drm_err(&dev_priv->drm, "Incorrect port type\n");
> -		return;
> -	}
> -
> -	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> -
> -	pipe_config->shared_dpll =3D pll;
> -	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> -					     &pipe_config->dpll_hw_state);
> -	drm_WARN_ON(&dev_priv->drm, !pll_active);
> -}
> -
> -static void skl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> -			    struct intel_crtc_state *pipe_config)
> -{
> -	struct intel_shared_dpll *pll;
> -	enum intel_dpll_id id;
> -	bool pll_active;
> -	u32 temp;
> -
> -	temp =3D intel_de_read(dev_priv, DPLL_CTRL2) & DPLL_CTRL2_DDI_CLK_SEL_M=
ASK(port);
> -	id =3D temp >> (port * 3 + 1);
> -
> -	if (drm_WARN_ON(&dev_priv->drm, id < SKL_DPLL0 || id > SKL_DPLL3))
> -		return;
> -
> -	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> -
> -	pipe_config->shared_dpll =3D pll;
> -	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> -					     &pipe_config->dpll_hw_state);
> -	drm_WARN_ON(&dev_priv->drm, !pll_active);
> -}
> -
> -static void hsw_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> -			    struct intel_crtc_state *pipe_config)
> -{
> -	struct intel_shared_dpll *pll;
> -	enum intel_dpll_id id;
> -	u32 ddi_pll_sel =3D intel_de_read(dev_priv, PORT_CLK_SEL(port));
> -	bool pll_active;
> -
> -	switch (ddi_pll_sel) {
> -	case PORT_CLK_SEL_WRPLL1:
> -		id =3D DPLL_ID_WRPLL1;
> -		break;
> -	case PORT_CLK_SEL_WRPLL2:
> -		id =3D DPLL_ID_WRPLL2;
> -		break;
> -	case PORT_CLK_SEL_SPLL:
> -		id =3D DPLL_ID_SPLL;
> -		break;
> -	case PORT_CLK_SEL_LCPLL_810:
> -		id =3D DPLL_ID_LCPLL_810;
> -		break;
> -	case PORT_CLK_SEL_LCPLL_1350:
> -		id =3D DPLL_ID_LCPLL_1350;
> -		break;
> -	case PORT_CLK_SEL_LCPLL_2700:
> -		id =3D DPLL_ID_LCPLL_2700;
> -		break;
> -	default:
> -		MISSING_CASE(ddi_pll_sel);
> -		fallthrough;
> -	case PORT_CLK_SEL_NONE:
> -		return;
> -	}
> -
> -	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> -
> -	pipe_config->shared_dpll =3D pll;
> -	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> -					     &pipe_config->dpll_hw_state);
> -	drm_WARN_ON(&dev_priv->drm, !pll_active);
> -}
> -
>  static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
>  				     struct intel_crtc_state *pipe_config,
>  				     struct intel_display_power_domain_set *power_domain_set)
> @@ -6882,18 +6676,7 @@ static void hsw_get_ddi_port_state(struct intel_cr=
tc *crtc,
>  			port =3D TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
>  	}
>  =

> -	if (IS_DG1(dev_priv))
> -		dg1_get_ddi_pll(dev_priv, port, pipe_config);
> -	else if (INTEL_GEN(dev_priv) >=3D 11)
> -		icl_get_ddi_pll(dev_priv, port, pipe_config);
> -	else if (IS_CANNONLAKE(dev_priv))
> -		cnl_get_ddi_pll(dev_priv, port, pipe_config);
> -	else if (IS_GEN9_LP(dev_priv))
> -		bxt_get_ddi_pll(dev_priv, port, pipe_config);
> -	else if (IS_GEN9_BC(dev_priv))
> -		skl_get_ddi_pll(dev_priv, port, pipe_config);
> -	else
> -		hsw_get_ddi_pll(dev_priv, port, pipe_config);
> +	intel_get_ddi_pll(dev_priv, port, pipe_config);
>  =

>  	/*
>  	 * Haswell has only FDI/PCH transcoder A. It is which is connected to
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 529b1d569af2..cdbdc6508eaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4670,3 +4670,226 @@ void intel_dpll_dump_hw_state(struct drm_i915_pri=
vate *dev_priv,
>  			    hw_state->fp1);
>  	}
>  }
> +
> +static void dg1_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> +			    struct intel_crtc_state *pipe_config)
> +{
> +	enum icl_port_dpll_id port_dpll_id =3D ICL_PORT_DPLL_DEFAULT;
> +	enum phy phy =3D intel_port_to_phy(dev_priv, port);
> +	struct icl_port_dpll *port_dpll;
> +	struct intel_shared_dpll *pll;
> +	enum intel_dpll_id id;
> +	bool pll_active;
> +	u32 clk_sel;
> +
> +	clk_sel =3D intel_de_read(dev_priv, DG1_DPCLKA_CFGCR0(phy)) & DG1_DPCLK=
A_CFGCR0_DDI_CLK_SEL_MASK(phy);
> +	id =3D DG1_DPCLKA_CFGCR0_DDI_CLK_SEL_DPLL_MAP(clk_sel, phy);
> +
> +	if (WARN_ON(id > DPLL_ID_DG1_DPLL3))
> +		return;
> +
> +	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +	port_dpll =3D &pipe_config->icl_port_dplls[port_dpll_id];
> +
> +	port_dpll->pll =3D pll;
> +	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> +					     &port_dpll->hw_state);
> +	drm_WARN_ON(&dev_priv->drm, !pll_active);
> +
> +	icl_set_active_port_dpll(pipe_config, port_dpll_id);
> +}
> +
> +static void icl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> +			    struct intel_crtc_state *pipe_config)
> +{
> +	enum phy phy =3D intel_port_to_phy(dev_priv, port);
> +	enum icl_port_dpll_id port_dpll_id;
> +	struct icl_port_dpll *port_dpll;
> +	struct intel_shared_dpll *pll;
> +	enum intel_dpll_id id;
> +	bool pll_active;
> +	i915_reg_t reg;
> +	u32 temp;
> +
> +	if (intel_phy_is_combo(dev_priv, phy)) {
> +		u32 mask, shift;
> +
> +		if (IS_ALDERLAKE_S(dev_priv)) {
> +			reg =3D ADLS_DPCLKA_CFGCR(phy);
> +			mask =3D ADLS_DPCLKA_CFGCR_DDI_CLK_SEL_MASK(phy);
> +			shift =3D ADLS_DPCLKA_CFGCR_DDI_SHIFT(phy);
> +		} else if (IS_ROCKETLAKE(dev_priv)) {
> +			reg =3D ICL_DPCLKA_CFGCR0;
> +			mask =3D RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
> +			shift =3D RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy);
> +		} else {
> +			reg =3D ICL_DPCLKA_CFGCR0;
> +			mask =3D ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
> +			shift =3D ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy);
> +		}
> +
> +		temp =3D intel_de_read(dev_priv, reg) & mask;
> +		id =3D temp >> shift;
> +		port_dpll_id =3D ICL_PORT_DPLL_DEFAULT;
> +	} else if (intel_phy_is_tc(dev_priv, phy)) {
> +		u32 clk_sel =3D intel_de_read(dev_priv, DDI_CLK_SEL(port)) & DDI_CLK_S=
EL_MASK;
> +
> +		if (clk_sel =3D=3D DDI_CLK_SEL_MG) {
> +			id =3D icl_tc_port_to_pll_id(intel_port_to_tc(dev_priv,
> +								    port));
> +			port_dpll_id =3D ICL_PORT_DPLL_MG_PHY;
> +		} else {
> +			drm_WARN_ON(&dev_priv->drm,
> +				    clk_sel < DDI_CLK_SEL_TBT_162);
> +			id =3D DPLL_ID_ICL_TBTPLL;
> +			port_dpll_id =3D ICL_PORT_DPLL_DEFAULT;
> +		}
> +	} else {
> +		drm_WARN(&dev_priv->drm, 1, "Invalid port %x\n", port);
> +		return;
> +	}
> +
> +	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +	port_dpll =3D &pipe_config->icl_port_dplls[port_dpll_id];
> +
> +	port_dpll->pll =3D pll;
> +	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> +					     &port_dpll->hw_state);
> +	drm_WARN_ON(&dev_priv->drm, !pll_active);
> +
> +	icl_set_active_port_dpll(pipe_config, port_dpll_id);
> +}
> +
> +static void cnl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> +			    struct intel_crtc_state *pipe_config)
> +{
> +	struct intel_shared_dpll *pll;
> +	enum intel_dpll_id id;
> +	bool pll_active;
> +	u32 temp;
> +
> +	temp =3D intel_de_read(dev_priv, DPCLKA_CFGCR0) & DPCLKA_CFGCR0_DDI_CLK=
_SEL_MASK(port);
> +	id =3D temp >> DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(port);
> +
> +	if (drm_WARN_ON(&dev_priv->drm, id < SKL_DPLL0 || id > SKL_DPLL2))
> +		return;
> +
> +	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +
> +	pipe_config->shared_dpll =3D pll;
> +	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> +					     &pipe_config->dpll_hw_state);
> +	drm_WARN_ON(&dev_priv->drm, !pll_active);
> +}
> +
> +static void bxt_get_ddi_pll(struct drm_i915_private *dev_priv,
> +				enum port port,
> +				struct intel_crtc_state *pipe_config)
> +{
> +	struct intel_shared_dpll *pll;
> +	enum intel_dpll_id id;
> +	bool pll_active;
> +
> +	switch (port) {
> +	case PORT_A:
> +		id =3D DPLL_ID_SKL_DPLL0;
> +		break;
> +	case PORT_B:
> +		id =3D DPLL_ID_SKL_DPLL1;
> +		break;
> +	case PORT_C:
> +		id =3D DPLL_ID_SKL_DPLL2;
> +		break;
> +	default:
> +		drm_err(&dev_priv->drm, "Incorrect port type\n");
> +		return;
> +	}
> +
> +	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +
> +	pipe_config->shared_dpll =3D pll;
> +	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> +					     &pipe_config->dpll_hw_state);
> +	drm_WARN_ON(&dev_priv->drm, !pll_active);
> +}
> +
> +static void skl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> +			    struct intel_crtc_state *pipe_config)
> +{
> +	struct intel_shared_dpll *pll;
> +	enum intel_dpll_id id;
> +	bool pll_active;
> +	u32 temp;
> +
> +	temp =3D intel_de_read(dev_priv, DPLL_CTRL2) & DPLL_CTRL2_DDI_CLK_SEL_M=
ASK(port);
> +	id =3D temp >> (port * 3 + 1);
> +
> +	if (drm_WARN_ON(&dev_priv->drm, id < SKL_DPLL0 || id > SKL_DPLL3))
> +		return;
> +
> +	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +
> +	pipe_config->shared_dpll =3D pll;
> +	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> +					     &pipe_config->dpll_hw_state);
> +	drm_WARN_ON(&dev_priv->drm, !pll_active);
> +}
> +
> +static void hsw_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> +			    struct intel_crtc_state *pipe_config)
> +{
> +	struct intel_shared_dpll *pll;
> +	enum intel_dpll_id id;
> +	u32 ddi_pll_sel =3D intel_de_read(dev_priv, PORT_CLK_SEL(port));
> +	bool pll_active;
> +
> +	switch (ddi_pll_sel) {
> +	case PORT_CLK_SEL_WRPLL1:
> +		id =3D DPLL_ID_WRPLL1;
> +		break;
> +	case PORT_CLK_SEL_WRPLL2:
> +		id =3D DPLL_ID_WRPLL2;
> +		break;
> +	case PORT_CLK_SEL_SPLL:
> +		id =3D DPLL_ID_SPLL;
> +		break;
> +	case PORT_CLK_SEL_LCPLL_810:
> +		id =3D DPLL_ID_LCPLL_810;
> +		break;
> +	case PORT_CLK_SEL_LCPLL_1350:
> +		id =3D DPLL_ID_LCPLL_1350;
> +		break;
> +	case PORT_CLK_SEL_LCPLL_2700:
> +		id =3D DPLL_ID_LCPLL_2700;
> +		break;
> +	default:
> +		MISSING_CASE(ddi_pll_sel);
> +		fallthrough;
> +	case PORT_CLK_SEL_NONE:
> +		return;
> +	}
> +
> +	pll =3D intel_get_shared_dpll_by_id(dev_priv, id);
> +
> +	pipe_config->shared_dpll =3D pll;
> +	pll_active =3D intel_dpll_get_hw_state(dev_priv, pll,
> +					     &pipe_config->dpll_hw_state);
> +	drm_WARN_ON(&dev_priv->drm, !pll_active);
> +}
> +
> +void intel_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
> +		       struct intel_crtc_state *pipe_config)
> +{
> +	if (IS_DG1(dev_priv))
> +		dg1_get_ddi_pll(dev_priv, port, pipe_config);
> +	else if (INTEL_GEN(dev_priv) >=3D 11)
> +		icl_get_ddi_pll(dev_priv, port, pipe_config);
> +	else if (IS_CANNONLAKE(dev_priv))
> +		cnl_get_ddi_pll(dev_priv, port, pipe_config);
> +	else if (IS_GEN9_LP(dev_priv))
> +		bxt_get_ddi_pll(dev_priv, port, pipe_config);
> +	else if (IS_GEN9_BC(dev_priv))
> +		skl_get_ddi_pll(dev_priv, port, pipe_config);
> +	else
> +		hsw_get_ddi_pll(dev_priv, port, pipe_config);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.h
> index 2eb7618ef957..fe4e99355d6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -418,4 +418,6 @@ void intel_dpll_dump_hw_state(struct drm_i915_private=
 *dev_priv,
>  enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
>  bool intel_dpll_is_combophy(enum intel_dpll_id id);
>  =

> +void intel_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
> +		       struct intel_crtc_state *pipe_config);
>  #endif /* _INTEL_DPLL_MGR_H_ */
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
