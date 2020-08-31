Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E41257AA3
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Aug 2020 15:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4384890C8;
	Mon, 31 Aug 2020 13:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60BBD890C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Aug 2020 13:42:13 +0000 (UTC)
IronPort-SDR: g09LG5a/ZdHek8a11rbyAIWDThOpF6iEgVgK3snQJnb82keuYiI/TgSlOxfLnSWKI3FyGUst1P
 eTC6NLF+U5tg==
X-IronPort-AV: E=McAfee;i="6000,8403,9729"; a="154491924"
X-IronPort-AV: E=Sophos;i="5.76,375,1592895600"; d="scan'208";a="154491924"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2020 06:42:12 -0700
IronPort-SDR: 1owitMEPuVXm9Cx2foqIITEWLZ0xNgcyPGO1hDMtMv0FWTieMglzPbRWWc1gRxgLUNNfG78Vbs
 2jshW3C6Z6+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,375,1592895600"; d="scan'208";a="404447687"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 31 Aug 2020 06:42:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Aug 2020 16:42:10 +0300
Date: Mon, 31 Aug 2020 16:42:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20200831134210.GX6112@intel.com>
References: <20200828215832.11687-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200828215832.11687-1-anusha.srivatsa@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pll: Centralize PLL_ENABLE
 register lookup
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 28, 2020 at 02:58:32PM -0700, Anusha Srivatsa wrote:
> We currenty check for platform at multiple parts in the driver
> to grab the correct PLL. Let us begin to centralize it through a
> helper function.
> =

> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 27 ++++++++++++-------
>  1 file changed, 17 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 81ab975fe4f0..388136618bb7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -147,6 +147,20 @@ void assert_shared_dpll(struct drm_i915_private *dev=
_priv,
>  			pll->info->name, onoff(state), onoff(cur_state));
>  }
>  =

> +static
> +i915_reg_t intel_get_pll_enable_reg(struct drm_i915_private *dev_priv,
> +				    struct intel_shared_dpll *pll)

combo_pll_enable_reg() ?

> +{
> +
> +	if (IS_ELKHARTLAKE(dev_priv)) {
> +		if (pll->info->id =3D=3D DPLL_ID_EHL_DPLL4)
> +			return MG_PLL_ENABLE(0);
> +	}

Ugly nested if.

> +
> +	return CNL_DPLL_ENABLE(pll->info->id);
> +
> +
> +}
>  /**
>   * intel_prepare_shared_dpll - call a dpll's prepare hook
>   * @crtc_state: CRTC, and its state, which has a shared dpll
> @@ -3842,12 +3856,7 @@ static bool combo_pll_get_hw_state(struct drm_i915=
_private *dev_priv,
>  				   struct intel_shared_dpll *pll,
>  				   struct intel_dpll_hw_state *hw_state)
>  {
> -	i915_reg_t enable_reg =3D CNL_DPLL_ENABLE(pll->info->id);
> -
> -	if (IS_ELKHARTLAKE(dev_priv) &&
> -	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
> -		enable_reg =3D MG_PLL_ENABLE(0);
> -	}
> +	i915_reg_t enable_reg =3D intel_get_pll_enable_reg(dev_priv, pll);
>  =

>  	return icl_pll_get_hw_state(dev_priv, pll, hw_state, enable_reg);
>  }
> @@ -4045,11 +4054,10 @@ static void icl_pll_enable(struct drm_i915_privat=
e *dev_priv,
>  static void combo_pll_enable(struct drm_i915_private *dev_priv,
>  			     struct intel_shared_dpll *pll)
>  {
> -	i915_reg_t enable_reg =3D CNL_DPLL_ENABLE(pll->info->id);
> +	i915_reg_t enable_reg =3D intel_get_pll_enable_reg(dev_priv, pll);
>  =

>  	if (IS_ELKHARTLAKE(dev_priv) &&
>  	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
> -		enable_reg =3D MG_PLL_ENABLE(0);
>  =

>  		/*
>  		 * We need to disable DC states when this DPLL is enabled.
> @@ -4157,11 +4165,10 @@ static void icl_pll_disable(struct drm_i915_priva=
te *dev_priv,
>  static void combo_pll_disable(struct drm_i915_private *dev_priv,
>  			      struct intel_shared_dpll *pll)
>  {
> -	i915_reg_t enable_reg =3D CNL_DPLL_ENABLE(pll->info->id);
> +	i915_reg_t enable_reg =3D intel_get_pll_enable_reg(dev_priv, pll);
>  =

>  	if (IS_ELKHARTLAKE(dev_priv) &&
>  	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
> -		enable_reg =3D MG_PLL_ENABLE(0);
>  		icl_pll_disable(dev_priv, pll, enable_reg);
>  =

>  		intel_display_power_put(dev_priv, POWER_DOMAIN_DPLL_DC_OFF,
> -- =

> 2.25.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
