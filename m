Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 975C5855789
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 00:53:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C335310E02E;
	Wed, 14 Feb 2024 23:53:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QgHNjWEI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAD5B10E02E
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 23:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707954808; x=1739490808;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+xDxB3bCVL7j0iJjdwkJIajMjCRsnJUmwdYoANIqUYU=;
 b=QgHNjWEIqcg+Dlw0vE0pj1S/rKVVPCF8mNHgMTHS0hyw01pA7kwdVGBA
 8imVgqhy0rZkaJHBiNBVUuY+25qkgY1RbwblgFKxjbMF5iRQkn8HcWM36
 4MqlHTSABlDDO8WPUdxhzBENfJY/O83S6k2zfyKpcmtC0ZSBfwmFUrQhH
 RGX8IHrn4Zxg6/zP1sfReZLf55Oc3OHXIoc7pizMTIV0hMU/TChgNxZKH
 kBhQ44x6aSU1qj/f7BcFDDGcorIMF1D4D4kpT9gPezI1A2u/Tt19HgB6q
 OZAZE0xXRRPuZiOZk+VILnFa/yYRHWIQXokRER2k618MiCJFHUTz4tAYs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="12742853"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="12742853"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 15:53:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="826369917"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="826369917"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 14 Feb 2024 15:53:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Feb 2024 01:53:23 +0200
Date: Thu, 15 Feb 2024 01:53:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 4/5] drm/i915: Add PLL .compare_hw_state() vfunc
Message-ID: <Zc1Sc_p-b7CwXXFo@intel.com>
References: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
 <20240209183809.16887-5-ville.syrjala@linux.intel.com>
 <MW4PR11MB70542DA9A497457B68C485A7EF4F2@MW4PR11MB7054.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <MW4PR11MB70542DA9A497457B68C485A7EF4F2@MW4PR11MB7054.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
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

On Tue, Feb 13, 2024 at 04:15:00PM +0000, Kahola, Mika wrote:
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville Syrjala
> > Sent: Friday, February 9, 2024 8:38 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 4/5] drm/i915: Add PLL .compare_hw_state() vfunc
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Chunk up the humenguous dpll_hw_state comparison check into per-platform variants, implemented in the dpll_mgr. This is step
> > one in allowing each platform (or perhaps even PLL) type to have a custom hw state structure instead of having to smash it all into
> > one.
> > 
> 
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>

Thanks. Pushed the lot.

> 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 78 ++++++++-------  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 95
> > +++++++++++++++++++  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  3 +
> >  3 files changed, 141 insertions(+), 35 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 1d381fa96c84..66ee6749fdae 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4907,6 +4907,36 @@ pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
> >  	va_end(args);
> >  }
> > 
> > +static void
> > +pipe_config_pll_mismatch(bool fastset,
> > +			 const struct intel_crtc *crtc,
> > +			 const char *name,
> > +			 const struct intel_dpll_hw_state *a,
> > +			 const struct intel_dpll_hw_state *b) {
> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > +
> > +	if (fastset) {
> > +		if (!drm_debug_enabled(DRM_UT_KMS))
> > +			return;
> > +
> > +		drm_dbg_kms(&i915->drm,
> > +			    "[CRTC:%d:%s] fastset requirement not met in %s\n",
> > +			    crtc->base.base.id, crtc->base.name, name);
> > +		drm_dbg_kms(&i915->drm, "expected:\n");
> > +		intel_dpll_dump_hw_state(i915, a);
> > +		drm_dbg_kms(&i915->drm, "found:\n");
> > +		intel_dpll_dump_hw_state(i915, b);
> > +	} else {
> > +		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s buffer\n",
> > +			crtc->base.base.id, crtc->base.name, name);
> > +		drm_err(&i915->drm, "expected:\n");
> > +		intel_dpll_dump_hw_state(i915, a);
> > +		drm_err(&i915->drm, "found:\n");
> > +		intel_dpll_dump_hw_state(i915, b);
> > +	}
> > +}
> > +
> >  static bool fastboot_enabled(struct drm_i915_private *dev_priv)  {
> >  	/* Enable fastboot by default on Skylake and newer */ @@ -5016,7 +5046,17 @@ intel_pipe_config_compare(const
> > struct intel_crtc_state *current_config,
> >  	} \
> >  } while (0)
> > 
> > -#define PIPE_CONF_CHECK_TIMINGS(name) do { \
> > +#define PIPE_CONF_CHECK_PLL(name) do { \
> > +	if (!intel_dpll_compare_hw_state(dev_priv, &current_config->name, \
> > +					 &pipe_config->name)) { \
> > +		pipe_config_pll_mismatch(fastset, crtc, __stringify(name), \
> > +					 &current_config->name, \
> > +					 &pipe_config->name); \
> > +		ret = false; \
> > +	} \
> > +} while (0)
> > +
> > +#define PIPE_CONF_CHECK_TIMINGS(name) do {     \
> >  	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
> >  	PIPE_CONF_CHECK_I(name.crtc_htotal); \
> >  	PIPE_CONF_CHECK_I(name.crtc_hblank_start); \ @@ -5223,40 +5263,8 @@ intel_pipe_config_compare(const struct
> > intel_crtc_state *current_config,
> >  		PIPE_CONF_CHECK_P(shared_dpll);
> > 
> >  	/* FIXME convert everything over the dpll_mgr */
> > -	if (dev_priv->display.dpll.mgr || HAS_GMCH(dev_priv)) {
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.fp1);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.wrpll);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.spll);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.ctrl1);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr1);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr2);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr0);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.div0);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.ebb0);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.ebb4);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.pll0);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.pll1);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.pll2);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.pll3);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.pll6);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.pll8);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.pll9);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.pll10);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.pcsdw12);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_refclkin_ctl);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_coreclkctl1);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_hsclkctl);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div0);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div1);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_lf);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_frac_lock);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_ssc);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_bias);
> > -		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_tdc_coldst_bias);
> > -	}
> > +	if (dev_priv->display.dpll.mgr || HAS_GMCH(dev_priv))
> > +		PIPE_CONF_CHECK_PLL(dpll_hw_state);
> > 
> >  	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
> >  	PIPE_CONF_CHECK_X(dsi_pll.div);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index c6cc7465b92c..ff480f171f75 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -109,6 +109,8 @@ struct intel_dpll_mgr {
> >  	void (*update_ref_clks)(struct drm_i915_private *i915);
> >  	void (*dump_hw_state)(struct drm_i915_private *i915,
> >  			      const struct intel_dpll_hw_state *hw_state);
> > +	bool (*compare_hw_state)(const struct intel_dpll_hw_state *a,
> > +				 const struct intel_dpll_hw_state *b);
> >  };
> > 
> >  static void
> > @@ -644,6 +646,15 @@ static void ibx_dump_hw_state(struct drm_i915_private *i915,
> >  		    hw_state->fp1);
> >  }
> > 
> > +static bool ibx_compare_hw_state(const struct intel_dpll_hw_state *a,
> > +				 const struct intel_dpll_hw_state *b) {
> > +	return a->dpll == b->dpll &&
> > +		a->dpll_md == b->dpll_md &&
> > +		a->fp0 == b->fp0 &&
> > +		a->fp1 == b->fp1;
> > +}
> > +
> >  static const struct intel_shared_dpll_funcs ibx_pch_dpll_funcs = {
> >  	.enable = ibx_pch_dpll_enable,
> >  	.disable = ibx_pch_dpll_disable,
> > @@ -662,6 +673,7 @@ static const struct intel_dpll_mgr pch_pll_mgr = {
> >  	.get_dplls = ibx_get_dpll,
> >  	.put_dplls = intel_put_dpll,
> >  	.dump_hw_state = ibx_dump_hw_state,
> > +	.compare_hw_state = ibx_compare_hw_state,
> >  };
> > 
> >  static void hsw_ddi_wrpll_enable(struct drm_i915_private *i915, @@ -1220,6 +1232,13 @@ static void
> > hsw_dump_hw_state(struct drm_i915_private *i915,
> >  		    hw_state->wrpll, hw_state->spll);  }
> > 
> > +static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *a,
> > +				 const struct intel_dpll_hw_state *b) {
> > +	return a->wrpll == b->wrpll &&
> > +		a->spll == b->spll;
> > +}
> > +
> >  static const struct intel_shared_dpll_funcs hsw_ddi_wrpll_funcs = {
> >  	.enable = hsw_ddi_wrpll_enable,
> >  	.disable = hsw_ddi_wrpll_disable,
> > @@ -1278,6 +1297,7 @@ static const struct intel_dpll_mgr hsw_pll_mgr = {
> >  	.put_dplls = intel_put_dpll,
> >  	.update_ref_clks = hsw_update_dpll_ref_clks,
> >  	.dump_hw_state = hsw_dump_hw_state,
> > +	.compare_hw_state = hsw_compare_hw_state,
> >  };
> > 
> >  struct skl_dpll_regs {
> > @@ -1929,6 +1949,14 @@ static void skl_dump_hw_state(struct drm_i915_private *i915,
> >  		      hw_state->cfgcr2);
> >  }
> > 
> > +static bool skl_compare_hw_state(const struct intel_dpll_hw_state *a,
> > +				 const struct intel_dpll_hw_state *b) {
> > +	return a->ctrl1 == b->ctrl1 &&
> > +		a->cfgcr1 == b->cfgcr1 &&
> > +		a->cfgcr2 == b->cfgcr2;
> > +}
> > +
> >  static const struct intel_shared_dpll_funcs skl_ddi_pll_funcs = {
> >  	.enable = skl_ddi_pll_enable,
> >  	.disable = skl_ddi_pll_disable,
> > @@ -1959,6 +1987,7 @@ static const struct intel_dpll_mgr skl_pll_mgr = {
> >  	.put_dplls = intel_put_dpll,
> >  	.update_ref_clks = skl_update_dpll_ref_clks,
> >  	.dump_hw_state = skl_dump_hw_state,
> > +	.compare_hw_state = skl_compare_hw_state,
> >  };
> > 
> >  static void bxt_ddi_pll_enable(struct drm_i915_private *i915, @@ -2392,6 +2421,21 @@ static void bxt_dump_hw_state(struct
> > drm_i915_private *i915,
> >  		    hw_state->pcsdw12);
> >  }
> > 
> > +static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *a,
> > +				 const struct intel_dpll_hw_state *b) {
> > +	return a->ebb0 == b->ebb0 &&
> > +		a->ebb4 == b->ebb4 &&
> > +		a->pll0 == b->pll0 &&
> > +		a->pll1 == b->pll1 &&
> > +		a->pll2 == b->pll2 &&
> > +		a->pll3 == b->pll3 &&
> > +		a->pll6 == b->pll6 &&
> > +		a->pll8 == b->pll8 &&
> > +		a->pll10 == b->pll10 &&
> > +		a->pcsdw12 == b->pcsdw12;
> > +}
> > +
> >  static const struct intel_shared_dpll_funcs bxt_ddi_pll_funcs = {
> >  	.enable = bxt_ddi_pll_enable,
> >  	.disable = bxt_ddi_pll_disable,
> > @@ -2413,6 +2457,7 @@ static const struct intel_dpll_mgr bxt_pll_mgr = {
> >  	.put_dplls = intel_put_dpll,
> >  	.update_ref_clks = bxt_update_dpll_ref_clks,
> >  	.dump_hw_state = bxt_dump_hw_state,
> > +	.compare_hw_state = bxt_compare_hw_state,
> >  };
> > 
> >  static void icl_wrpll_get_multipliers(int bestdiv, int *pdiv, @@ -4005,6 +4050,25 @@ static void icl_dump_hw_state(struct
> > drm_i915_private *i915,
> >  		    hw_state->mg_pll_tdc_coldst_bias);
> >  }
> > 
> > +static bool icl_compare_hw_state(const struct intel_dpll_hw_state *a,
> > +				 const struct intel_dpll_hw_state *b) {
> > +	/* FIXME split combo vs. mg more thoroughly */
> > +	return a->cfgcr0 == b->cfgcr0 &&
> > +		a->cfgcr1 == b->cfgcr1 &&
> > +		a->div0 == b->div0 &&
> > +		a->mg_refclkin_ctl == b->mg_refclkin_ctl &&
> > +		a->mg_clktop2_coreclkctl1 == b->mg_clktop2_coreclkctl1 &&
> > +		a->mg_clktop2_hsclkctl == b->mg_clktop2_hsclkctl &&
> > +		a->mg_pll_div0 == b->mg_pll_div0 &&
> > +		a->mg_pll_div1 == b->mg_pll_div1 &&
> > +		a->mg_pll_lf == b->mg_pll_lf &&
> > +		a->mg_pll_frac_lock == b->mg_pll_frac_lock &&
> > +		a->mg_pll_ssc == b->mg_pll_ssc &&
> > +		a->mg_pll_bias == b->mg_pll_bias &&
> > +		a->mg_pll_tdc_coldst_bias == b->mg_pll_tdc_coldst_bias; }
> > +
> >  static const struct intel_shared_dpll_funcs combo_pll_funcs = {
> >  	.enable = combo_pll_enable,
> >  	.disable = combo_pll_disable,
> > @@ -4046,6 +4110,7 @@ static const struct intel_dpll_mgr icl_pll_mgr = {
> >  	.update_active_dpll = icl_update_active_dpll,
> >  	.update_ref_clks = icl_update_dpll_ref_clks,
> >  	.dump_hw_state = icl_dump_hw_state,
> > +	.compare_hw_state = icl_compare_hw_state,
> >  };
> > 
> >  static const struct dpll_info ehl_plls[] = { @@ -4063,6 +4128,7 @@ static const struct intel_dpll_mgr ehl_pll_mgr = {
> >  	.put_dplls = icl_put_dplls,
> >  	.update_ref_clks = icl_update_dpll_ref_clks,
> >  	.dump_hw_state = icl_dump_hw_state,
> > +	.compare_hw_state = icl_compare_hw_state,
> >  };
> > 
> >  static const struct intel_shared_dpll_funcs dkl_pll_funcs = { @@ -4094,6 +4160,7 @@ static const struct intel_dpll_mgr
> > tgl_pll_mgr = {
> >  	.update_active_dpll = icl_update_active_dpll,
> >  	.update_ref_clks = icl_update_dpll_ref_clks,
> >  	.dump_hw_state = icl_dump_hw_state,
> > +	.compare_hw_state = icl_compare_hw_state,
> >  };
> > 
> >  static const struct dpll_info rkl_plls[] = { @@ -4110,6 +4177,7 @@ static const struct intel_dpll_mgr rkl_pll_mgr = {
> >  	.put_dplls = icl_put_dplls,
> >  	.update_ref_clks = icl_update_dpll_ref_clks,
> >  	.dump_hw_state = icl_dump_hw_state,
> > +	.compare_hw_state = icl_compare_hw_state,
> >  };
> > 
> >  static const struct dpll_info dg1_plls[] = { @@ -4127,6 +4195,7 @@ static const struct intel_dpll_mgr dg1_pll_mgr = {
> >  	.put_dplls = icl_put_dplls,
> >  	.update_ref_clks = icl_update_dpll_ref_clks,
> >  	.dump_hw_state = icl_dump_hw_state,
> > +	.compare_hw_state = icl_compare_hw_state,
> >  };
> > 
> >  static const struct dpll_info adls_plls[] = { @@ -4144,6 +4213,7 @@ static const struct intel_dpll_mgr adls_pll_mgr = {
> >  	.put_dplls = icl_put_dplls,
> >  	.update_ref_clks = icl_update_dpll_ref_clks,
> >  	.dump_hw_state = icl_dump_hw_state,
> > +	.compare_hw_state = icl_compare_hw_state,
> >  };
> > 
> >  static const struct dpll_info adlp_plls[] = { @@ -4166,6 +4236,7 @@ static const struct intel_dpll_mgr adlp_pll_mgr = {
> >  	.update_active_dpll = icl_update_active_dpll,
> >  	.update_ref_clks = icl_update_dpll_ref_clks,
> >  	.dump_hw_state = icl_dump_hw_state,
> > +	.compare_hw_state = icl_compare_hw_state,
> >  };
> > 
> >  /**
> > @@ -4462,6 +4533,30 @@ void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
> >  	}
> >  }
> > 
> > +/**
> > + * intel_dpll_compare_hw_state - compare the two states
> > + * @i915: i915 drm device
> > + * @a: first DPLL hw state
> > + * @b: second DPLL hw state
> > + *
> > + * Compare DPLL hw states @a and @b.
> > + *
> > + * Returns: true if the states are equal, false if the differ  */ bool
> > +intel_dpll_compare_hw_state(struct drm_i915_private *i915,
> > +				 const struct intel_dpll_hw_state *a,
> > +				 const struct intel_dpll_hw_state *b) {
> > +	if (i915->display.dpll.mgr) {
> > +		return i915->display.dpll.mgr->compare_hw_state(a, b);
> > +	} else {
> > +		/* fallback for platforms that don't use the shared dpll
> > +		 * infrastructure
> > +		 */
> > +		return ibx_compare_hw_state(a, b);
> > +	}
> > +}
> > +
> >  static void
> >  verify_single_dpll_state(struct drm_i915_private *i915,
> >  			 struct intel_shared_dpll *pll,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > index 616afe861b46..cc0e1386309d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -378,6 +378,9 @@ void intel_dpll_sanitize_state(struct drm_i915_private *i915);
> > 
> >  void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
> >  			      const struct intel_dpll_hw_state *hw_state);
> > +bool intel_dpll_compare_hw_state(struct drm_i915_private *i915,
> > +				 const struct intel_dpll_hw_state *a,
> > +				 const struct intel_dpll_hw_state *b);
> >  enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);  bool intel_dpll_is_combophy(enum intel_dpll_id id);
> > 
> > --
> > 2.43.0
> 

-- 
Ville Syrjälä
Intel
