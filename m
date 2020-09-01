Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B50259F35
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Sep 2020 21:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A6ED6E041;
	Tue,  1 Sep 2020 19:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA3ED6E041
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Sep 2020 19:28:41 +0000 (UTC)
IronPort-SDR: 9Vi09KM19ky0T70HVSTxyw1BNtvmaPxT4jloFS/Jb/tf++Ldyp1KNghvDuGT71cOg+cDtJd1YP
 zPm2x3J3cY0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="154660977"
X-IronPort-AV: E=Sophos;i="5.76,380,1592895600"; d="scan'208";a="154660977"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2020 12:28:41 -0700
IronPort-SDR: LxAPW5eu+CGzQiF15d0y6TPftq/7QMi2/sU0v9Ui6xp31Ynh6VIm64l3pzc26uOoKMGzxiKyC2
 Zwg6RuA12v/g==
X-IronPort-AV: E=Sophos;i="5.76,380,1592895600"; d="scan'208";a="502364545"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2020 12:28:41 -0700
Date: Tue, 1 Sep 2020 15:29:52 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20200901192952.GA386451@intel.com>
References: <20200901182758.29203-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200901182758.29203-1-anusha.srivatsa@intel.com>
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

On Tue, Sep 01, 2020 at 11:27:58AM -0700, Anusha Srivatsa wrote:
> We currenty check for platform at multiple parts in the driver
> to grab the correct PLL. Let us begin to centralize it through a
> helper function.
> =

> v2: s/intel_get_pll_enable_reg()/intel_combo_pll_enable_reg() (Ville)
> =

> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 25 +++++++++++--------
>  1 file changed, 15 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index c9013f8f766f..7440836c5e44 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -147,6 +147,18 @@ void assert_shared_dpll(struct drm_i915_private *dev=
_priv,
>  			pll->info->name, onoff(state), onoff(cur_state));
>  }
>  =

> +static
> +i915_reg_t intel_combo_pll_enable_reg(struct drm_i915_private *dev_priv,
> +				    struct intel_shared_dpll *pll)
> +{
> +
> +	if (IS_ELKHARTLAKE(dev_priv) && (pll->info->id =3D=3D DPLL_ID_EHL_DPLL4=
))
> +			return MG_PLL_ENABLE(0);
> +
> +	return CNL_DPLL_ENABLE(pll->info->id);
> +
> +
> +}
>  /**
>   * intel_prepare_shared_dpll - call a dpll's prepare hook
>   * @crtc_state: CRTC, and its state, which has a shared dpll
> @@ -3842,12 +3854,7 @@ static bool combo_pll_get_hw_state(struct drm_i915=
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
> +	i915_reg_t enable_reg =3D intel_combo_pll_enable_reg(dev_priv, pll);
>  =

>  	return icl_pll_get_hw_state(dev_priv, pll, hw_state, enable_reg);
>  }
> @@ -4045,11 +4052,10 @@ static void icl_pll_enable(struct drm_i915_privat=
e *dev_priv,
>  static void combo_pll_enable(struct drm_i915_private *dev_priv,
>  			     struct intel_shared_dpll *pll)
>  {
> -	i915_reg_t enable_reg =3D CNL_DPLL_ENABLE(pll->info->id);
> +	i915_reg_t enable_reg =3D intel_combo_pll_enable_reg(dev_priv, pll);
>  =

>  	if (IS_ELKHARTLAKE(dev_priv) &&
>  	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {

there's probably something else that we can do now with the power_{put,get}
to get rid of the, now, doubled if checks...

> -		enable_reg =3D MG_PLL_ENABLE(0);
>  =

>  		/*
>  		 * We need to disable DC states when this DPLL is enabled.
> @@ -4157,11 +4163,10 @@ static void icl_pll_disable(struct drm_i915_priva=
te *dev_priv,
>  static void combo_pll_disable(struct drm_i915_private *dev_priv,
>  			      struct intel_shared_dpll *pll)
>  {
> -	i915_reg_t enable_reg =3D CNL_DPLL_ENABLE(pll->info->id);
> +	i915_reg_t enable_reg =3D intel_combo_pll_enable_reg(dev_priv, pll);
>  =

>  	if (IS_ELKHARTLAKE(dev_priv) &&
>  	    pll->info->id =3D=3D DPLL_ID_EHL_DPLL4) {
> -		enable_reg =3D MG_PLL_ENABLE(0);
>  		icl_pll_disable(dev_priv, pll, enable_reg);

but here, at least, let's clean this function now...
move this call above and out of the if and delete the one below
and keep just the power_put inside the if...

>  =

>  		intel_display_power_put(dev_priv, POWER_DOMAIN_DPLL_DC_OFF,
> -- =

> 2.25.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
