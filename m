Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAF486D386
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 20:43:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9AA610E4F1;
	Thu, 29 Feb 2024 19:43:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eJzbo0w3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8786710E59E
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 19:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709235828; x=1740771828;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=CmNfzfK1Vtpp6ctPpBqeY25nMIrg3rnuxLBlwCeX/P8=;
 b=eJzbo0w3MWveBIlSVytLhR5P5IhB6D81f1a+12g6ZG+15jh/wh/h07d/
 Eb4mA3vt6eqORtzmiA0SsEDbfkx7gjLlRqYJoFqY6f2scUlUPqkyCehQG
 AZj8qbj0U/olPRstKTdPPRRSJWQQKTIiq+mEMSPb7Lo8/wuIgyyBEioOD
 737Go0P3KOvKOZXNkmBlFYOKZpdPPLermGzO4yuiOobfQ2khDkgUUK53x
 7MDtGpaC2TYC31JbYFyIyYJP6bAOxL9KtfOLdq/1prOOuc87Ys6xREDWk
 E6VTQugBtmJLmiTBp/PwM5lbJqkyo1OdgeU2uRyIKn5WK9lbkM0S2KT/h w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="3910043"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="3910043"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 11:43:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="12620239"
Received: from srailean-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.49.228])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 11:43:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 06/12] drm/i915: Convert intel_dpll_dump_hw_state()
 to drm_printer
In-Reply-To: <20240229184049.31165-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240215164055.30585-7-ville.syrjala@linux.intel.com>
 <20240229184049.31165-1-ville.syrjala@linux.intel.com>
Date: Thu, 29 Feb 2024 21:43:41 +0200
Message-ID: <874jdr6ope.fsf@intel.com>
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

On Thu, 29 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Utilize drm_printer in pipe_config_pll_mismatch() to avoid
> a bit of code duplication.
>
> To achieve this we need to plumb the printer all way to the
> dpll_mgr .dump_hw_state() functions. Those are also used by
> intel_crtc_state_dump() which needs to be adjusted as well.
>
> v2: Convert a few misplaecd drm_dbg_kms() calls (Rodrigo)
>     Drop the redundant drm_debug_enabled() check here
>     instead of later (Jani)
>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

At a fairly quick glance,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



> ---
>  .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  28 +++--
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 105 ++++++++----------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   2 +
>  4 files changed, 66 insertions(+), 74 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drive=
rs/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 4bcf446c75f4..59d2b3d39951 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -205,9 +205,12 @@ void intel_crtc_state_dump(const struct intel_crtc_s=
tate *pipe_config,
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	const struct intel_plane_state *plane_state;
>  	struct intel_plane *plane;
> +	struct drm_printer p;
>  	char buf[64];
>  	int i;
>=20=20
> +	p =3D drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
> +
>  	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] enable: %s [%s]\n",
>  		    crtc->base.base.id, crtc->base.name,
>  		    str_yes_no(pipe_config->hw.enable), context);
> @@ -356,7 +359,7 @@ void intel_crtc_state_dump(const struct intel_crtc_st=
ate *pipe_config,
>  		    pipe_config->ips_enabled, pipe_config->double_wide,
>  		    pipe_config->has_drrs);
>=20=20
> -	intel_dpll_dump_hw_state(i915, &pipe_config->dpll_hw_state);
> +	intel_dpll_dump_hw_state(i915, &p, &pipe_config->dpll_hw_state);
>=20=20
>  	if (IS_CHERRYVIEW(i915))
>  		drm_dbg_kms(&i915->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e5010049d52e..962b640e7c74 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4927,26 +4927,24 @@ pipe_config_pll_mismatch(bool fastset,
>  			 const struct intel_dpll_hw_state *b)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct drm_printer p;
>=20=20
>  	if (fastset) {
> -		if (!drm_debug_enabled(DRM_UT_KMS))
> -			return;
> +		p =3D drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
>=20=20
> -		drm_dbg_kms(&i915->drm,
> -			    "[CRTC:%d:%s] fastset requirement not met in %s\n",
> -			    crtc->base.base.id, crtc->base.name, name);
> -		drm_dbg_kms(&i915->drm, "expected:\n");
> -		intel_dpll_dump_hw_state(i915, a);
> -		drm_dbg_kms(&i915->drm, "found:\n");
> -		intel_dpll_dump_hw_state(i915, b);
> +		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s\n",
> +			   crtc->base.base.id, crtc->base.name, name);
>  	} else {
> -		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s buffer\n",
> -			crtc->base.base.id, crtc->base.name, name);
> -		drm_err(&i915->drm, "expected:\n");
> -		intel_dpll_dump_hw_state(i915, a);
> -		drm_err(&i915->drm, "found:\n");
> -		intel_dpll_dump_hw_state(i915, b);
> +		p =3D drm_err_printer(&i915->drm, NULL);
> +
> +		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s\n",
> +			   crtc->base.base.id, crtc->base.name, name);
>  	}
> +
> +	drm_printf(&p, "expected:\n");
> +	intel_dpll_dump_hw_state(i915, &p, a);
> +	drm_printf(&p, "found:\n");
> +	intel_dpll_dump_hw_state(i915, &p, b);
>  }
>=20=20
>  bool
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index ff480f171f75..9542e62186e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -107,7 +107,7 @@ struct intel_dpll_mgr {
>  				   struct intel_crtc *crtc,
>  				   struct intel_encoder *encoder);
>  	void (*update_ref_clks)(struct drm_i915_private *i915);
> -	void (*dump_hw_state)(struct drm_i915_private *i915,
> +	void (*dump_hw_state)(struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state);
>  	bool (*compare_hw_state)(const struct intel_dpll_hw_state *a,
>  				 const struct intel_dpll_hw_state *b);
> @@ -634,16 +634,15 @@ static int ibx_get_dpll(struct intel_atomic_state *=
state,
>  	return 0;
>  }
>=20=20
> -static void ibx_dump_hw_state(struct drm_i915_private *i915,
> +static void ibx_dump_hw_state(struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state)
>  {
> -	drm_dbg_kms(&i915->drm,
> -		    "dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
> -		    "fp0: 0x%x, fp1: 0x%x\n",
> -		    hw_state->dpll,
> -		    hw_state->dpll_md,
> -		    hw_state->fp0,
> -		    hw_state->fp1);
> +	drm_printf(p, "dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
> +		   "fp0: 0x%x, fp1: 0x%x\n",
> +		   hw_state->dpll,
> +		   hw_state->dpll_md,
> +		   hw_state->fp0,
> +		   hw_state->fp1);
>  }
>=20=20
>  static bool ibx_compare_hw_state(const struct intel_dpll_hw_state *a,
> @@ -1225,11 +1224,11 @@ static void hsw_update_dpll_ref_clks(struct drm_i=
915_private *i915)
>  		i915->display.dpll.ref_clks.nssc =3D 135000;
>  }
>=20=20
> -static void hsw_dump_hw_state(struct drm_i915_private *i915,
> +static void hsw_dump_hw_state(struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state)
>  {
> -	drm_dbg_kms(&i915->drm, "dpll_hw_state: wrpll: 0x%x spll: 0x%x\n",
> -		    hw_state->wrpll, hw_state->spll);
> +	drm_printf(p, "dpll_hw_state: wrpll: 0x%x spll: 0x%x\n",
> +		   hw_state->wrpll, hw_state->spll);
>  }
>=20=20
>  static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *a,
> @@ -1939,14 +1938,11 @@ static void skl_update_dpll_ref_clks(struct drm_i=
915_private *i915)
>  	i915->display.dpll.ref_clks.nssc =3D i915->display.cdclk.hw.ref;
>  }
>=20=20
> -static void skl_dump_hw_state(struct drm_i915_private *i915,
> +static void skl_dump_hw_state(struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state)
>  {
> -	drm_dbg_kms(&i915->drm, "dpll_hw_state: "
> -		      "ctrl1: 0x%x, cfgcr1: 0x%x, cfgcr2: 0x%x\n",
> -		      hw_state->ctrl1,
> -		      hw_state->cfgcr1,
> -		      hw_state->cfgcr2);
> +	drm_printf(p, "dpll_hw_state: ctrl1: 0x%x, cfgcr1: 0x%x, cfgcr2: 0x%x\n=
",
> +		   hw_state->ctrl1, hw_state->cfgcr1, hw_state->cfgcr2);
>  }
>=20=20
>  static bool skl_compare_hw_state(const struct intel_dpll_hw_state *a,
> @@ -2402,23 +2398,16 @@ static void bxt_update_dpll_ref_clks(struct drm_i=
915_private *i915)
>  	/* DSI non-SSC ref 19.2MHz */
>  }
>=20=20
> -static void bxt_dump_hw_state(struct drm_i915_private *i915,
> +static void bxt_dump_hw_state(struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state)
>  {
> -	drm_dbg_kms(&i915->drm, "dpll_hw_state: ebb0: 0x%x, ebb4: 0x%x,"
> -		    "pll0: 0x%x, pll1: 0x%x, pll2: 0x%x, pll3: 0x%x, "
> -		    "pll6: 0x%x, pll8: 0x%x, pll9: 0x%x, pll10: 0x%x, pcsdw12: 0x%x\n",
> -		    hw_state->ebb0,
> -		    hw_state->ebb4,
> -		    hw_state->pll0,
> -		    hw_state->pll1,
> -		    hw_state->pll2,
> -		    hw_state->pll3,
> -		    hw_state->pll6,
> -		    hw_state->pll8,
> -		    hw_state->pll9,
> -		    hw_state->pll10,
> -		    hw_state->pcsdw12);
> +	drm_printf(p, "dpll_hw_state: ebb0: 0x%x, ebb4: 0x%x,"
> +		   "pll0: 0x%x, pll1: 0x%x, pll2: 0x%x, pll3: 0x%x, "
> +		   "pll6: 0x%x, pll8: 0x%x, pll9: 0x%x, pll10: 0x%x, pcsdw12: 0x%x\n",
> +		   hw_state->ebb0, hw_state->ebb4,
> +		   hw_state->pll0, hw_state->pll1, hw_state->pll2, hw_state->pll3,
> +		   hw_state->pll6, hw_state->pll8, hw_state->pll9, hw_state->pll10,
> +		   hw_state->pcsdw12);
>  }
>=20=20
>  static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *a,
> @@ -4026,28 +4015,26 @@ static void icl_update_dpll_ref_clks(struct drm_i=
915_private *i915)
>  	i915->display.dpll.ref_clks.nssc =3D i915->display.cdclk.hw.ref;
>  }
>=20=20
> -static void icl_dump_hw_state(struct drm_i915_private *i915,
> +static void icl_dump_hw_state(struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state)
>  {
> -	drm_dbg_kms(&i915->drm,
> -		    "dpll_hw_state: cfgcr0: 0x%x, cfgcr1: 0x%x, div0: 0x%x, "
> -		    "mg_refclkin_ctl: 0x%x, hg_clktop2_coreclkctl1: 0x%x, "
> -		    "mg_clktop2_hsclkctl: 0x%x, mg_pll_div0: 0x%x, "
> -		    "mg_pll_div2: 0x%x, mg_pll_lf: 0x%x, "
> -		    "mg_pll_frac_lock: 0x%x, mg_pll_ssc: 0x%x, "
> -		    "mg_pll_bias: 0x%x, mg_pll_tdc_coldst_bias: 0x%x\n",
> -		    hw_state->cfgcr0, hw_state->cfgcr1,
> -		    hw_state->div0,
> -		    hw_state->mg_refclkin_ctl,
> -		    hw_state->mg_clktop2_coreclkctl1,
> -		    hw_state->mg_clktop2_hsclkctl,
> -		    hw_state->mg_pll_div0,
> -		    hw_state->mg_pll_div1,
> -		    hw_state->mg_pll_lf,
> -		    hw_state->mg_pll_frac_lock,
> -		    hw_state->mg_pll_ssc,
> -		    hw_state->mg_pll_bias,
> -		    hw_state->mg_pll_tdc_coldst_bias);
> +	drm_printf(p, "dpll_hw_state: cfgcr0: 0x%x, cfgcr1: 0x%x, div0: 0x%x, "
> +		   "mg_refclkin_ctl: 0x%x, hg_clktop2_coreclkctl1: 0x%x, "
> +		   "mg_clktop2_hsclkctl: 0x%x, mg_pll_div0: 0x%x, "
> +		   "mg_pll_div2: 0x%x, mg_pll_lf: 0x%x, "
> +		   "mg_pll_frac_lock: 0x%x, mg_pll_ssc: 0x%x, "
> +		   "mg_pll_bias: 0x%x, mg_pll_tdc_coldst_bias: 0x%x\n",
> +		   hw_state->cfgcr0, hw_state->cfgcr1, hw_state->div0,
> +		   hw_state->mg_refclkin_ctl,
> +		   hw_state->mg_clktop2_coreclkctl1,
> +		   hw_state->mg_clktop2_hsclkctl,
> +		   hw_state->mg_pll_div0,
> +		   hw_state->mg_pll_div1,
> +		   hw_state->mg_pll_lf,
> +		   hw_state->mg_pll_frac_lock,
> +		   hw_state->mg_pll_ssc,
> +		   hw_state->mg_pll_bias,
> +		   hw_state->mg_pll_tdc_coldst_bias);
>  }
>=20=20
>  static bool icl_compare_hw_state(const struct intel_dpll_hw_state *a,
> @@ -4514,22 +4501,24 @@ void intel_dpll_sanitize_state(struct drm_i915_pr=
ivate *i915)
>  }
>=20=20
>  /**
> - * intel_dpll_dump_hw_state - write hw_state to dmesg
> + * intel_dpll_dump_hw_state - dump hw_state
>   * @i915: i915 drm device
> - * @hw_state: hw state to be written to the log
> + * @p: where to print the state to
> + * @hw_state: hw state to be dumped
>   *
> - * Write the relevant values in @hw_state to dmesg using drm_dbg_kms.
> + * Dumo out the relevant values in @hw_state.
>   */
>  void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
> +			      struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state)
>  {
>  	if (i915->display.dpll.mgr) {
> -		i915->display.dpll.mgr->dump_hw_state(i915, hw_state);
> +		i915->display.dpll.mgr->dump_hw_state(p, hw_state);
>  	} else {
>  		/* fallback for platforms that don't use the shared dpll
>  		 * infrastructure
>  		 */
> -		ibx_dump_hw_state(i915, hw_state);
> +		ibx_dump_hw_state(p, hw_state);
>  	}
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.h
> index cc0e1386309d..d4d97e40440a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -36,6 +36,7 @@
>=20=20
>  enum tc_port;
>  struct drm_i915_private;
> +struct drm_printer;
>  struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
> @@ -377,6 +378,7 @@ void intel_dpll_readout_hw_state(struct drm_i915_priv=
ate *i915);
>  void intel_dpll_sanitize_state(struct drm_i915_private *i915);
>=20=20
>  void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
> +			      struct drm_printer *p,
>  			      const struct intel_dpll_hw_state *hw_state);
>  bool intel_dpll_compare_hw_state(struct drm_i915_private *i915,
>  				 const struct intel_dpll_hw_state *a,

--=20
Jani Nikula, Intel
