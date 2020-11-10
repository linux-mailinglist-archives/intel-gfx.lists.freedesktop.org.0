Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F0B2AD7E1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Nov 2020 14:43:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1B938996F;
	Tue, 10 Nov 2020 13:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2A508996F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Nov 2020 13:43:04 +0000 (UTC)
IronPort-SDR: TD36pqeb3s/L7lti87WFR8BeCuc7gNgAfxlhTbde/428a+57quFaIsV89ONCF6WligOkJYwap6
 AwlBuj6EJF/w==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="166462143"
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="166462143"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 05:43:03 -0800
IronPort-SDR: J8fA6hhoYrPnCmjriV3oZpemFJkXN0Y1UPAPX+nUnfuLSG3DNt083+pZPjIXNygYjoKUtCvzw2
 mJkHobEO759Q==
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="541327535"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 05:43:02 -0800
Date: Tue, 10 Nov 2020 15:42:58 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201110134258.GG425411@ideak-desk.fi.intel.com>
References: <20201109231239.17002-1-ville.syrjala@linux.intel.com>
 <20201109231239.17002-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201109231239.17002-4-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Relocate cnl_get_ddi_pll()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 10, 2020 at 01:12:39AM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Move cnl_get_ddi_pll() into a better spot from between
> icl_get_ddi_pll() and dg1_get_ddi_pll(). Also reorder
> the calls to the skl and bxt functions because ocd.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 48 ++++++++++----------
>  1 file changed, 24 insertions(+), 24 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 8ab622c0186e..322db0f3bbc6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11033,28 +11033,6 @@ static void dg1_get_ddi_pll(struct drm_i915_priv=
ate *dev_priv, enum port port,
>  	icl_set_active_port_dpll(pipe_config, port_dpll_id);
>  }
>  =

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
>  static void icl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
>  			    struct intel_crtc_state *pipe_config)
>  {
> @@ -11109,6 +11087,28 @@ static void icl_get_ddi_pll(struct drm_i915_priv=
ate *dev_priv, enum port port,
>  	icl_set_active_port_dpll(pipe_config, port_dpll_id);
>  }
>  =

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
>  static void bxt_get_ddi_pll(struct drm_i915_private *dev_priv,
>  				enum port port,
>  				struct intel_crtc_state *pipe_config)
> @@ -11382,10 +11382,10 @@ static void hsw_get_ddi_port_state(struct intel=
_crtc *crtc,
>  		icl_get_ddi_pll(dev_priv, port, pipe_config);
>  	else if (IS_CANNONLAKE(dev_priv))
>  		cnl_get_ddi_pll(dev_priv, port, pipe_config);
> -	else if (IS_GEN9_BC(dev_priv))
> -		skl_get_ddi_pll(dev_priv, port, pipe_config);
>  	else if (IS_GEN9_LP(dev_priv))
>  		bxt_get_ddi_pll(dev_priv, port, pipe_config);
> +	else if (IS_GEN9_BC(dev_priv))
> +		skl_get_ddi_pll(dev_priv, port, pipe_config);
>  	else
>  		hsw_get_ddi_pll(dev_priv, port, pipe_config);
>  =

> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
