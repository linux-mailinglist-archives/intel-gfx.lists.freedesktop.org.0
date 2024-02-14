Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D7B854ABC
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 14:51:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 432E410E247;
	Wed, 14 Feb 2024 13:50:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l+P3EC02";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A43410E247
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707918654; x=1739454654;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=9Jqw7Wf8iHMqumV0dD9cWGC/T9y0cuzHWgsuAN0owDs=;
 b=l+P3EC02iPLy7xmiwdpRstYxlgqfe4/IPTt7N4lIeHmoLhaPCaxGh4DE
 7zY07GpOYctlRGk7+f9zwWQHQgcm1zYfgmwss3SFQ1vIWESkx9fjPIDka
 oxgg3hEdgb8QWnFSHQB29KqScEX6YES0tUc2z0rL8hRJd4LWudDpbjpT9
 tup15T/j0mbTP/7zn61HPy1hIsDgHGry5pV3qvHQkVrQAJo+Tvz5MBnO5
 3vwa+iEQkVO+gmis/VNiACEDEP1mMm8jhApYM6VumZcS4zjzjBOZiHo+6
 ym3CQR143NmkuDGElB9BwMfrc0NBo0jCOBpDlScAaC1Edby2wA/cg9A54 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1835194"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="1835194"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 05:50:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3165420"
Received: from kwszolek-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.190])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 05:50:53 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915: Add PLL .compare_hw_state() vfunc
In-Reply-To: <20240209183809.16887-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
 <20240209183809.16887-5-ville.syrjala@linux.intel.com>
Date: Wed, 14 Feb 2024 15:50:49 +0200
Message-ID: <87a5o36tom.fsf@intel.com>
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

On Fri, 09 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Chunk up the humenguous dpll_hw_state comparison check into per-platform
> variants, implemented in the dpll_mgr. This is step one in allowing
> each platform (or perhaps even PLL) type to have a custom hw state
> structure instead of having to smash it all into one.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 78 ++++++++-------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 95 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  3 +
>  3 files changed, 141 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1d381fa96c84..66ee6749fdae 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4907,6 +4907,36 @@ pipe_config_mismatch(bool fastset, const struct in=
tel_crtc *crtc,
>  	va_end(args);
>  }
>=20=20
> +static void
> +pipe_config_pll_mismatch(bool fastset,
> +			 const struct intel_crtc *crtc,
> +			 const char *name,
> +			 const struct intel_dpll_hw_state *a,
> +			 const struct intel_dpll_hw_state *b)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +
> +	if (fastset) {
> +		if (!drm_debug_enabled(DRM_UT_KMS))
> +			return;
> +
> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s] fastset requirement not met in %s\n",
> +			    crtc->base.base.id, crtc->base.name, name);
> +		drm_dbg_kms(&i915->drm, "expected:\n");
> +		intel_dpll_dump_hw_state(i915, a);
> +		drm_dbg_kms(&i915->drm, "found:\n");
> +		intel_dpll_dump_hw_state(i915, b);
> +	} else {
> +		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s buffer\n",
> +			crtc->base.base.id, crtc->base.name, name);
> +		drm_err(&i915->drm, "expected:\n");
> +		intel_dpll_dump_hw_state(i915, a);
> +		drm_err(&i915->drm, "found:\n");
> +		intel_dpll_dump_hw_state(i915, b);
> +	}
> +}

As follow-up, would be great to see this move towards drm_printer based
approach, similar to pipe_config_dp_vsc_sdp_mismatch(). Reduces
duplication.

BR,
Jani.

> +
>  static bool fastboot_enabled(struct drm_i915_private *dev_priv)
>  {
>  	/* Enable fastboot by default on Skylake and newer */
> @@ -5016,7 +5046,17 @@ intel_pipe_config_compare(const struct intel_crtc_=
state *current_config,
>  	} \
>  } while (0)
>=20=20
> -#define PIPE_CONF_CHECK_TIMINGS(name) do { \
> +#define PIPE_CONF_CHECK_PLL(name) do { \
> +	if (!intel_dpll_compare_hw_state(dev_priv, &current_config->name, \
> +					 &pipe_config->name)) { \
> +		pipe_config_pll_mismatch(fastset, crtc, __stringify(name), \
> +					 &current_config->name, \
> +					 &pipe_config->name); \
> +		ret =3D false; \
> +	} \
> +} while (0)
> +
> +#define PIPE_CONF_CHECK_TIMINGS(name) do {     \
>  	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
>  	PIPE_CONF_CHECK_I(name.crtc_htotal); \
>  	PIPE_CONF_CHECK_I(name.crtc_hblank_start); \
> @@ -5223,40 +5263,8 @@ intel_pipe_config_compare(const struct intel_crtc_=
state *current_config,
>  		PIPE_CONF_CHECK_P(shared_dpll);
>=20=20
>  	/* FIXME convert everything over the dpll_mgr */
> -	if (dev_priv->display.dpll.mgr || HAS_GMCH(dev_priv)) {
> -		PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.fp1);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.wrpll);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.spll);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.ctrl1);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr1);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr2);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr0);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.div0);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.ebb0);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.ebb4);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.pll0);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.pll1);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.pll2);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.pll3);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.pll6);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.pll8);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.pll9);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.pll10);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.pcsdw12);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_refclkin_ctl);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_coreclkctl1);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_hsclkctl);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div0);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div1);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_lf);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_frac_lock);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_ssc);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_bias);
> -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_tdc_coldst_bias);
> -	}
> +	if (dev_priv->display.dpll.mgr || HAS_GMCH(dev_priv))
> +		PIPE_CONF_CHECK_PLL(dpll_hw_state);
>=20=20
>  	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
>  	PIPE_CONF_CHECK_X(dsi_pll.div);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index c6cc7465b92c..ff480f171f75 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -109,6 +109,8 @@ struct intel_dpll_mgr {
>  	void (*update_ref_clks)(struct drm_i915_private *i915);
>  	void (*dump_hw_state)(struct drm_i915_private *i915,
>  			      const struct intel_dpll_hw_state *hw_state);
> +	bool (*compare_hw_state)(const struct intel_dpll_hw_state *a,
> +				 const struct intel_dpll_hw_state *b);
>  };
>=20=20
>  static void
> @@ -644,6 +646,15 @@ static void ibx_dump_hw_state(struct drm_i915_privat=
e *i915,
>  		    hw_state->fp1);
>  }
>=20=20
> +static bool ibx_compare_hw_state(const struct intel_dpll_hw_state *a,
> +				 const struct intel_dpll_hw_state *b)
> +{
> +	return a->dpll =3D=3D b->dpll &&
> +		a->dpll_md =3D=3D b->dpll_md &&
> +		a->fp0 =3D=3D b->fp0 &&
> +		a->fp1 =3D=3D b->fp1;
> +}
> +
>  static const struct intel_shared_dpll_funcs ibx_pch_dpll_funcs =3D {
>  	.enable =3D ibx_pch_dpll_enable,
>  	.disable =3D ibx_pch_dpll_disable,
> @@ -662,6 +673,7 @@ static const struct intel_dpll_mgr pch_pll_mgr =3D {
>  	.get_dplls =3D ibx_get_dpll,
>  	.put_dplls =3D intel_put_dpll,
>  	.dump_hw_state =3D ibx_dump_hw_state,
> +	.compare_hw_state =3D ibx_compare_hw_state,
>  };
>=20=20
>  static void hsw_ddi_wrpll_enable(struct drm_i915_private *i915,
> @@ -1220,6 +1232,13 @@ static void hsw_dump_hw_state(struct drm_i915_priv=
ate *i915,
>  		    hw_state->wrpll, hw_state->spll);
>  }
>=20=20
> +static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *a,
> +				 const struct intel_dpll_hw_state *b)
> +{
> +	return a->wrpll =3D=3D b->wrpll &&
> +		a->spll =3D=3D b->spll;
> +}
> +
>  static const struct intel_shared_dpll_funcs hsw_ddi_wrpll_funcs =3D {
>  	.enable =3D hsw_ddi_wrpll_enable,
>  	.disable =3D hsw_ddi_wrpll_disable,
> @@ -1278,6 +1297,7 @@ static const struct intel_dpll_mgr hsw_pll_mgr =3D {
>  	.put_dplls =3D intel_put_dpll,
>  	.update_ref_clks =3D hsw_update_dpll_ref_clks,
>  	.dump_hw_state =3D hsw_dump_hw_state,
> +	.compare_hw_state =3D hsw_compare_hw_state,
>  };
>=20=20
>  struct skl_dpll_regs {
> @@ -1929,6 +1949,14 @@ static void skl_dump_hw_state(struct drm_i915_priv=
ate *i915,
>  		      hw_state->cfgcr2);
>  }
>=20=20
> +static bool skl_compare_hw_state(const struct intel_dpll_hw_state *a,
> +				 const struct intel_dpll_hw_state *b)
> +{
> +	return a->ctrl1 =3D=3D b->ctrl1 &&
> +		a->cfgcr1 =3D=3D b->cfgcr1 &&
> +		a->cfgcr2 =3D=3D b->cfgcr2;
> +}
> +
>  static const struct intel_shared_dpll_funcs skl_ddi_pll_funcs =3D {
>  	.enable =3D skl_ddi_pll_enable,
>  	.disable =3D skl_ddi_pll_disable,
> @@ -1959,6 +1987,7 @@ static const struct intel_dpll_mgr skl_pll_mgr =3D {
>  	.put_dplls =3D intel_put_dpll,
>  	.update_ref_clks =3D skl_update_dpll_ref_clks,
>  	.dump_hw_state =3D skl_dump_hw_state,
> +	.compare_hw_state =3D skl_compare_hw_state,
>  };
>=20=20
>  static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
> @@ -2392,6 +2421,21 @@ static void bxt_dump_hw_state(struct drm_i915_priv=
ate *i915,
>  		    hw_state->pcsdw12);
>  }
>=20=20
> +static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *a,
> +				 const struct intel_dpll_hw_state *b)
> +{
> +	return a->ebb0 =3D=3D b->ebb0 &&
> +		a->ebb4 =3D=3D b->ebb4 &&
> +		a->pll0 =3D=3D b->pll0 &&
> +		a->pll1 =3D=3D b->pll1 &&
> +		a->pll2 =3D=3D b->pll2 &&
> +		a->pll3 =3D=3D b->pll3 &&
> +		a->pll6 =3D=3D b->pll6 &&
> +		a->pll8 =3D=3D b->pll8 &&
> +		a->pll10 =3D=3D b->pll10 &&
> +		a->pcsdw12 =3D=3D b->pcsdw12;
> +}
> +
>  static const struct intel_shared_dpll_funcs bxt_ddi_pll_funcs =3D {
>  	.enable =3D bxt_ddi_pll_enable,
>  	.disable =3D bxt_ddi_pll_disable,
> @@ -2413,6 +2457,7 @@ static const struct intel_dpll_mgr bxt_pll_mgr =3D {
>  	.put_dplls =3D intel_put_dpll,
>  	.update_ref_clks =3D bxt_update_dpll_ref_clks,
>  	.dump_hw_state =3D bxt_dump_hw_state,
> +	.compare_hw_state =3D bxt_compare_hw_state,
>  };
>=20=20
>  static void icl_wrpll_get_multipliers(int bestdiv, int *pdiv,
> @@ -4005,6 +4050,25 @@ static void icl_dump_hw_state(struct drm_i915_priv=
ate *i915,
>  		    hw_state->mg_pll_tdc_coldst_bias);
>  }
>=20=20
> +static bool icl_compare_hw_state(const struct intel_dpll_hw_state *a,
> +				 const struct intel_dpll_hw_state *b)
> +{
> +	/* FIXME split combo vs. mg more thoroughly */
> +	return a->cfgcr0 =3D=3D b->cfgcr0 &&
> +		a->cfgcr1 =3D=3D b->cfgcr1 &&
> +		a->div0 =3D=3D b->div0 &&
> +		a->mg_refclkin_ctl =3D=3D b->mg_refclkin_ctl &&
> +		a->mg_clktop2_coreclkctl1 =3D=3D b->mg_clktop2_coreclkctl1 &&
> +		a->mg_clktop2_hsclkctl =3D=3D b->mg_clktop2_hsclkctl &&
> +		a->mg_pll_div0 =3D=3D b->mg_pll_div0 &&
> +		a->mg_pll_div1 =3D=3D b->mg_pll_div1 &&
> +		a->mg_pll_lf =3D=3D b->mg_pll_lf &&
> +		a->mg_pll_frac_lock =3D=3D b->mg_pll_frac_lock &&
> +		a->mg_pll_ssc =3D=3D b->mg_pll_ssc &&
> +		a->mg_pll_bias =3D=3D b->mg_pll_bias &&
> +		a->mg_pll_tdc_coldst_bias =3D=3D b->mg_pll_tdc_coldst_bias;
> +}
> +
>  static const struct intel_shared_dpll_funcs combo_pll_funcs =3D {
>  	.enable =3D combo_pll_enable,
>  	.disable =3D combo_pll_disable,
> @@ -4046,6 +4110,7 @@ static const struct intel_dpll_mgr icl_pll_mgr =3D {
>  	.update_active_dpll =3D icl_update_active_dpll,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
>  	.dump_hw_state =3D icl_dump_hw_state,
> +	.compare_hw_state =3D icl_compare_hw_state,
>  };
>=20=20
>  static const struct dpll_info ehl_plls[] =3D {
> @@ -4063,6 +4128,7 @@ static const struct intel_dpll_mgr ehl_pll_mgr =3D {
>  	.put_dplls =3D icl_put_dplls,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
>  	.dump_hw_state =3D icl_dump_hw_state,
> +	.compare_hw_state =3D icl_compare_hw_state,
>  };
>=20=20
>  static const struct intel_shared_dpll_funcs dkl_pll_funcs =3D {
> @@ -4094,6 +4160,7 @@ static const struct intel_dpll_mgr tgl_pll_mgr =3D {
>  	.update_active_dpll =3D icl_update_active_dpll,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
>  	.dump_hw_state =3D icl_dump_hw_state,
> +	.compare_hw_state =3D icl_compare_hw_state,
>  };
>=20=20
>  static const struct dpll_info rkl_plls[] =3D {
> @@ -4110,6 +4177,7 @@ static const struct intel_dpll_mgr rkl_pll_mgr =3D {
>  	.put_dplls =3D icl_put_dplls,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
>  	.dump_hw_state =3D icl_dump_hw_state,
> +	.compare_hw_state =3D icl_compare_hw_state,
>  };
>=20=20
>  static const struct dpll_info dg1_plls[] =3D {
> @@ -4127,6 +4195,7 @@ static const struct intel_dpll_mgr dg1_pll_mgr =3D {
>  	.put_dplls =3D icl_put_dplls,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
>  	.dump_hw_state =3D icl_dump_hw_state,
> +	.compare_hw_state =3D icl_compare_hw_state,
>  };
>=20=20
>  static const struct dpll_info adls_plls[] =3D {
> @@ -4144,6 +4213,7 @@ static const struct intel_dpll_mgr adls_pll_mgr =3D=
 {
>  	.put_dplls =3D icl_put_dplls,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
>  	.dump_hw_state =3D icl_dump_hw_state,
> +	.compare_hw_state =3D icl_compare_hw_state,
>  };
>=20=20
>  static const struct dpll_info adlp_plls[] =3D {
> @@ -4166,6 +4236,7 @@ static const struct intel_dpll_mgr adlp_pll_mgr =3D=
 {
>  	.update_active_dpll =3D icl_update_active_dpll,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
>  	.dump_hw_state =3D icl_dump_hw_state,
> +	.compare_hw_state =3D icl_compare_hw_state,
>  };
>=20=20
>  /**
> @@ -4462,6 +4533,30 @@ void intel_dpll_dump_hw_state(struct drm_i915_priv=
ate *i915,
>  	}
>  }
>=20=20
> +/**
> + * intel_dpll_compare_hw_state - compare the two states
> + * @i915: i915 drm device
> + * @a: first DPLL hw state
> + * @b: second DPLL hw state
> + *
> + * Compare DPLL hw states @a and @b.
> + *
> + * Returns: true if the states are equal, false if the differ
> + */
> +bool intel_dpll_compare_hw_state(struct drm_i915_private *i915,
> +				 const struct intel_dpll_hw_state *a,
> +				 const struct intel_dpll_hw_state *b)
> +{
> +	if (i915->display.dpll.mgr) {
> +		return i915->display.dpll.mgr->compare_hw_state(a, b);
> +	} else {
> +		/* fallback for platforms that don't use the shared dpll
> +		 * infrastructure
> +		 */
> +		return ibx_compare_hw_state(a, b);
> +	}
> +}
> +
>  static void
>  verify_single_dpll_state(struct drm_i915_private *i915,
>  			 struct intel_shared_dpll *pll,
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.h
> index 616afe861b46..cc0e1386309d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -378,6 +378,9 @@ void intel_dpll_sanitize_state(struct drm_i915_privat=
e *i915);
>=20=20
>  void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
>  			      const struct intel_dpll_hw_state *hw_state);
> +bool intel_dpll_compare_hw_state(struct drm_i915_private *i915,
> +				 const struct intel_dpll_hw_state *a,
> +				 const struct intel_dpll_hw_state *b);
>  enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
>  bool intel_dpll_is_combophy(enum intel_dpll_id id);

--=20
Jani Nikula, Intel
