Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F96D129BAD
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 00:00:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C78089270;
	Mon, 23 Dec 2019 23:00:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E7898925F
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 23:00:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 15:00:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="299795380"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga001.jf.intel.com with ESMTP; 23 Dec 2019 15:00:10 -0800
Date: Mon, 23 Dec 2019 15:00:10 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191223230010.GL2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191223173244.30742-1-lucas.demarchi@intel.com>
 <20191223173244.30742-4-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223173244.30742-4-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v3 03/10] drm/i915: prefer 3-letter acronym
 for haswell
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

On Mon, Dec 23, 2019 at 09:32:37AM -0800, Lucas De Marchi wrote:
> We are currently using a mix of platform name and acronym to name the
> functions. Let's prefer the acronym as it should be clear what platform
> it's about and it's shorter, so it doesn't go over 80 columns in a few
> cases. This converts haswell to hsw where appropriate.
> =

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Acked-by: Jani Nikula <jani.nikula@linux.intel.com>
> Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  4 +-
>  drivers/gpu/drm/i915/display/intel_display.c | 57 ++++++++++----------
>  drivers/gpu/drm/i915/intel_device_info.c     |  4 +-
>  3 files changed, 32 insertions(+), 33 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index c9ba7d7f3787..d687c9503025 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3458,14 +3458,14 @@ static void tgl_ddi_pre_enable_dp(struct intel_en=
coder *encoder,
>  	 * (DFLEXDPSP.DPX4TXLATC)
>  	 *
>  	 * This was done before tgl_ddi_pre_enable_dp by
> -	 * haswell_crtc_enable()->intel_encoders_pre_pll_enable().
> +	 * hsw_crtc_enable()->intel_encoders_pre_pll_enable().
>  	 */
>  =

>  	/*
>  	 * 4. Enable the port PLL.
>  	 *
>  	 * The PLL enabling itself was already done before this function by
> -	 * haswell_crtc_enable()->intel_enable_shared_dpll().  We need only
> +	 * hsw_crtc_enable()->intel_enable_shared_dpll().  We need only
>  	 * configure the PLL to port mapping here.
>  	 */
>  	intel_ddi_clk_select(encoder, crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 5d43024f35aa..14726a293171 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -158,7 +158,7 @@ static void intel_cpu_transcoder_set_m_n(const struct=
 intel_crtc_state *crtc_sta
>  					 const struct intel_link_m_n *m2_n2);
>  static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
>  static void ironlake_set_pipeconf(const struct intel_crtc_state *crtc_st=
ate);
> -static void haswell_set_pipeconf(const struct intel_crtc_state *crtc_sta=
te);
> +static void hsw_set_pipeconf(const struct intel_crtc_state *crtc_state);
>  static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state);
>  static void vlv_prepare_pll(struct intel_crtc *crtc,
>  			    const struct intel_crtc_state *pipe_config);
> @@ -6787,8 +6787,8 @@ static void hsw_set_frame_start_delay(const struct =
intel_crtc_state *crtc_state)
>  	I915_WRITE(reg, val);
>  }
>  =

> -static void haswell_crtc_enable(struct intel_atomic_state *state,
> -				struct intel_crtc *crtc)
> +static void hsw_crtc_enable(struct intel_atomic_state *state,
> +			    struct intel_crtc *crtc)
>  {
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -6829,7 +6829,7 @@ static void haswell_crtc_enable(struct intel_atomic=
_state *state,
>  =

>  	if (!transcoder_is_dsi(cpu_transcoder)) {
>  		hsw_set_frame_start_delay(new_crtc_state);
> -		haswell_set_pipeconf(new_crtc_state);
> +		hsw_set_pipeconf(new_crtc_state);
>  	}
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv))
> @@ -6967,8 +6967,8 @@ static void ironlake_crtc_disable(struct intel_atom=
ic_state *state,
>  	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, true);
>  }
>  =

> -static void haswell_crtc_disable(struct intel_atomic_state *state,
> -				 struct intel_crtc *crtc)
> +static void hsw_crtc_disable(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc)
>  {
>  	/*
>  	 * FIXME collapse everything to one hook.
> @@ -9783,7 +9783,7 @@ static void ironlake_set_pipeconf(const struct inte=
l_crtc_state *crtc_state)
>  	POSTING_READ(PIPECONF(pipe));
>  }
>  =

> -static void haswell_set_pipeconf(const struct intel_crtc_state *crtc_sta=
te)
> +static void hsw_set_pipeconf(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -10417,8 +10417,9 @@ static bool ironlake_get_pipe_config(struct intel=
_crtc *crtc,
>  =

>  	return ret;
>  }
> -static int haswell_crtc_compute_clock(struct intel_crtc *crtc,
> -				      struct intel_crtc_state *crtc_state)
> +
> +static int hsw_crtc_compute_clock(struct intel_crtc *crtc,
> +				  struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct intel_atomic_state *state =3D
> @@ -10532,9 +10533,8 @@ static void skylake_get_ddi_pll(struct drm_i915_p=
rivate *dev_priv,
>  	pipe_config->shared_dpll =3D intel_get_shared_dpll_by_id(dev_priv, id);
>  }
>  =

> -static void haswell_get_ddi_pll(struct drm_i915_private *dev_priv,
> -				enum port port,
> -				struct intel_crtc_state *pipe_config)
> +static void hsw_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> +			    struct intel_crtc_state *pipe_config)
>  {
>  	enum intel_dpll_id id;
>  	u32 ddi_pll_sel =3D I915_READ(PORT_CLK_SEL(port));
> @@ -10722,8 +10722,8 @@ static bool bxt_get_dsi_transcoder_state(struct i=
ntel_crtc *crtc,
>  	return transcoder_is_dsi(pipe_config->cpu_transcoder);
>  }
>  =

> -static void haswell_get_ddi_port_state(struct intel_crtc *crtc,
> -				       struct intel_crtc_state *pipe_config)
> +static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
> +				   struct intel_crtc_state *pipe_config)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder =3D pipe_config->cpu_transcoder;
> @@ -10751,7 +10751,7 @@ static void haswell_get_ddi_port_state(struct int=
el_crtc *crtc,
>  	else if (IS_GEN9_LP(dev_priv))
>  		bxt_get_ddi_pll(dev_priv, port, pipe_config);
>  	else
> -		haswell_get_ddi_pll(dev_priv, port, pipe_config);
> +		hsw_get_ddi_pll(dev_priv, port, pipe_config);
>  =

>  	pll =3D pipe_config->shared_dpll;
>  	if (pll) {
> @@ -10829,8 +10829,8 @@ static void icelake_get_trans_port_sync_config(st=
ruct intel_crtc_state *crtc_sta
>  		crtc_state->sync_mode_slaves_mask);
>  }
>  =

> -static bool haswell_get_pipe_config(struct intel_crtc *crtc,
> -				    struct intel_crtc_state *pipe_config)
> +static bool hsw_get_pipe_config(struct intel_crtc *crtc,
> +				struct intel_crtc_state *pipe_config)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	intel_wakeref_t wakerefs[POWER_DOMAIN_NUM], wf;
> @@ -10865,7 +10865,7 @@ static bool haswell_get_pipe_config(struct intel_=
crtc *crtc,
>  =

>  	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
>  	    INTEL_GEN(dev_priv) >=3D 11) {
> -		haswell_get_ddi_port_state(crtc, pipe_config);
> +		hsw_get_ddi_port_state(crtc, pipe_config);
>  		intel_get_pipe_timings(crtc, pipe_config);
>  	}
>  =

> @@ -14048,7 +14048,7 @@ static void intel_modeset_clear_plls(struct intel=
_atomic_state *state)
>   * multiple pipes, and planes are enabled after the pipe, we need to wai=
t at
>   * least 2 vblanks on the first pipe before enabling planes on the secon=
d pipe.
>   */
> -static int haswell_mode_set_planes_workaround(struct intel_atomic_state =
*state)
> +static int hsw_mode_set_planes_workaround(struct intel_atomic_state *sta=
te)
>  {
>  	struct intel_crtc_state *crtc_state;
>  	struct intel_crtc *crtc;
> @@ -14143,7 +14143,7 @@ static int intel_modeset_checks(struct intel_atom=
ic_state *state)
>  	intel_modeset_clear_plls(state);
>  =

>  	if (IS_HASWELL(dev_priv))
> -		return haswell_mode_set_planes_workaround(state);
> +		return hsw_mode_set_planes_workaround(state);
>  =

>  	return 0;
>  }
> @@ -16814,21 +16814,20 @@ void intel_init_display_hooks(struct drm_i915_p=
rivate *dev_priv)
>  	intel_init_cdclk_hooks(dev_priv);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 9) {
> -		dev_priv->display.get_pipe_config =3D haswell_get_pipe_config;
> +		dev_priv->display.get_pipe_config =3D hsw_get_pipe_config;
>  		dev_priv->display.get_initial_plane_config =3D
>  			skylake_get_initial_plane_config;
> -		dev_priv->display.crtc_compute_clock =3D
> -			haswell_crtc_compute_clock;
> -		dev_priv->display.crtc_enable =3D haswell_crtc_enable;
> -		dev_priv->display.crtc_disable =3D haswell_crtc_disable;
> +		dev_priv->display.crtc_compute_clock =3D hsw_crtc_compute_clock;
> +		dev_priv->display.crtc_enable =3D hsw_crtc_enable;
> +		dev_priv->display.crtc_disable =3D hsw_crtc_disable;
>  	} else if (HAS_DDI(dev_priv)) {
> -		dev_priv->display.get_pipe_config =3D haswell_get_pipe_config;
> +		dev_priv->display.get_pipe_config =3D hsw_get_pipe_config;
>  		dev_priv->display.get_initial_plane_config =3D
>  			i9xx_get_initial_plane_config;
>  		dev_priv->display.crtc_compute_clock =3D
> -			haswell_crtc_compute_clock;
> -		dev_priv->display.crtc_enable =3D haswell_crtc_enable;
> -		dev_priv->display.crtc_disable =3D haswell_crtc_disable;
> +			hsw_crtc_compute_clock;
> +		dev_priv->display.crtc_enable =3D hsw_crtc_enable;
> +		dev_priv->display.crtc_disable =3D hsw_crtc_disable;
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		dev_priv->display.get_pipe_config =3D ironlake_get_pipe_config;
>  		dev_priv->display.get_initial_plane_config =3D
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index 1acb5db77431..ca7a42e1d769 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -600,7 +600,7 @@ static void broadwell_sseu_info_init(struct drm_i915_=
private *dev_priv)
>  	sseu->has_eu_pg =3D 0;
>  }
>  =

> -static void haswell_sseu_info_init(struct drm_i915_private *dev_priv)
> +static void hsw_sseu_info_init(struct drm_i915_private *dev_priv)
>  {
>  	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
>  	u32 fuse1;
> @@ -1021,7 +1021,7 @@ void intel_device_info_runtime_init(struct drm_i915=
_private *dev_priv)
>  =

>  	/* Initialize slice/subslice/EU info */
>  	if (IS_HASWELL(dev_priv))
> -		haswell_sseu_info_init(dev_priv);
> +		hsw_sseu_info_init(dev_priv);
>  	else if (IS_CHERRYVIEW(dev_priv))
>  		cherryview_sseu_info_init(dev_priv);
>  	else if (IS_BROADWELL(dev_priv))
> -- =

> 2.24.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
