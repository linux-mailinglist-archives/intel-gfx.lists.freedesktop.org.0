Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD198129BBC
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 00:13:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31A3F89A77;
	Mon, 23 Dec 2019 23:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1474089A77
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 23:13:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 15:13:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="214365983"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga008.fm.intel.com with ESMTP; 23 Dec 2019 15:13:30 -0800
Date: Mon, 23 Dec 2019 15:13:30 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191223231330.GP2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191223173244.30742-1-lucas.demarchi@intel.com>
 <20191223173244.30742-8-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223173244.30742-8-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v3 07/10] drm/i915: prefer 3-letter acronym
 for ironlake
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

On Mon, Dec 23, 2019 at 09:32:41AM -0800, Lucas De Marchi wrote:
> We are currently using a mix of platform name and acronym to name the
> functions. Let's prefer the acronym as it should be clear what platform
> it's about and it's shorter, so it doesn't go over 80 columns in a few
> cases. This converts ironlake to ilk where appropriate.

DP_SCRAMBLING_DISABLE_IRONLAKE could be shortened, but afaics it's never
used anywhere so you might as well just remove it.

It can also be removed from the gma500 driver too.  :-)


Matt

> =

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Acked-by: Jani Nikula <jani.nikula@linux.intel.com>
> Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c      |   8 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 168 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_display.h  |   4 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  34 ++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
>  .../drm/i915/display/intel_fifo_underrun.c    |   6 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c         |   7 +-
>  drivers/gpu/drm/i915/i915_debugfs.c           |   4 +-
>  drivers/gpu/drm/i915/i915_irq.c               |  12 +-
>  drivers/gpu/drm/i915/intel_pm.c               |   4 +-
>  11 files changed, 125 insertions(+), 126 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index b2b1336ecdb6..cbe5978e7fb5 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -247,7 +247,7 @@ static void hsw_post_disable_crt(struct intel_encoder=
 *encoder,
>  =

>  	intel_ddi_disable_transcoder_func(old_crtc_state);
>  =

> -	ironlake_pfit_disable(old_crtc_state);
> +	ilk_pfit_disable(old_crtc_state);
>  =

>  	intel_ddi_disable_pipe_clock(old_crtc_state);
>  =

> @@ -351,7 +351,7 @@ intel_crt_mode_valid(struct drm_connector *connector,
>  =

>  	/* The FDI receiver on LPT only supports 8bpc and only has 2 lanes. */
>  	if (HAS_PCH_LPT(dev_priv) &&
> -	    (ironlake_get_lanes_required(mode->clock, 270000, 24) > 2))
> +	    ilk_get_lanes_required(mode->clock, 270000, 24) > 2)
>  		return MODE_CLOCK_HIGH;
>  =

>  	/* HSW/BDW FDI limited to 4k */
> @@ -427,7 +427,7 @@ static int hsw_crt_compute_config(struct intel_encode=
r *encoder,
>  	return 0;
>  }
>  =

> -static bool intel_ironlake_crt_detect_hotplug(struct drm_connector *conn=
ector)
> +static bool ilk_crt_detect_hotplug(struct drm_connector *connector)
>  {
>  	struct drm_device *dev =3D connector->dev;
>  	struct intel_crt *crt =3D intel_attached_crt(connector);
> @@ -535,7 +535,7 @@ static bool intel_crt_detect_hotplug(struct drm_conne=
ctor *connector)
>  	int i, tries =3D 0;
>  =

>  	if (HAS_PCH_SPLIT(dev_priv))
> -		return intel_ironlake_crt_detect_hotplug(connector);
> +		return ilk_crt_detect_hotplug(connector);
>  =

>  	if (IS_VALLEYVIEW(dev_priv))
>  		return valleyview_crt_detect_hotplug(connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index b52c31721755..62fa73815d8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3898,7 +3898,7 @@ static void intel_ddi_post_disable(struct intel_enc=
oder *encoder,
>  	if (INTEL_GEN(dev_priv) >=3D 9)
>  		skl_scaler_disable(old_crtc_state);
>  	else
> -		ironlake_pfit_disable(old_crtc_state);
> +		ilk_pfit_disable(old_crtc_state);
>  =

>  	/*
>  	 * When called from DP MST code:
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 461691cc2f62..5093fd08f381 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -145,8 +145,8 @@ static const u64 cursor_format_modifiers[] =3D {
>  =

>  static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
>  				struct intel_crtc_state *pipe_config);
> -static void ironlake_pch_clock_get(struct intel_crtc *crtc,
> -				   struct intel_crtc_state *pipe_config);
> +static void ilk_pch_clock_get(struct intel_crtc *crtc,
> +			      struct intel_crtc_state *pipe_config);
>  =

>  static int intel_framebuffer_init(struct intel_framebuffer *ifb,
>  				  struct drm_i915_gem_object *obj,
> @@ -157,7 +157,7 @@ static void intel_cpu_transcoder_set_m_n(const struct=
 intel_crtc_state *crtc_sta
>  					 const struct intel_link_m_n *m_n,
>  					 const struct intel_link_m_n *m2_n2);
>  static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
> -static void ironlake_set_pipeconf(const struct intel_crtc_state *crtc_st=
ate);
> +static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
>  static void hsw_set_pipeconf(const struct intel_crtc_state *crtc_state);
>  static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state);
>  static void vlv_prepare_pll(struct intel_crtc *crtc,
> @@ -165,7 +165,7 @@ static void vlv_prepare_pll(struct intel_crtc *crtc,
>  static void chv_prepare_pll(struct intel_crtc *crtc,
>  			    const struct intel_crtc_state *pipe_config);
>  static void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
> -static void ironlake_pfit_enable(const struct intel_crtc_state *crtc_sta=
te);
> +static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
>  static void intel_modeset_setup_hw_state(struct drm_device *dev,
>  					 struct drm_modeset_acquire_ctx *ctx);
>  static struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc=
 *crtc);
> @@ -402,7 +402,7 @@ static const struct intel_limit pnv_limits_lvds =3D {
>   * We calculate clock using (register_value + 2) for N/M1/M2, so here
>   * the range value for them is (actual_value - 2).
>   */
> -static const struct intel_limit intel_limits_ironlake_dac =3D {
> +static const struct intel_limit ilk_limits_dac =3D {
>  	.dot =3D { .min =3D 25000, .max =3D 350000 },
>  	.vco =3D { .min =3D 1760000, .max =3D 3510000 },
>  	.n =3D { .min =3D 1, .max =3D 5 },
> @@ -415,7 +415,7 @@ static const struct intel_limit intel_limits_ironlake=
_dac =3D {
>  		.p2_slow =3D 10, .p2_fast =3D 5 },
>  };
>  =

> -static const struct intel_limit intel_limits_ironlake_single_lvds =3D {
> +static const struct intel_limit ilk_limits_single_lvds =3D {
>  	.dot =3D { .min =3D 25000, .max =3D 350000 },
>  	.vco =3D { .min =3D 1760000, .max =3D 3510000 },
>  	.n =3D { .min =3D 1, .max =3D 3 },
> @@ -428,7 +428,7 @@ static const struct intel_limit intel_limits_ironlake=
_single_lvds =3D {
>  		.p2_slow =3D 14, .p2_fast =3D 14 },
>  };
>  =

> -static const struct intel_limit intel_limits_ironlake_dual_lvds =3D {
> +static const struct intel_limit ilk_limits_dual_lvds =3D {
>  	.dot =3D { .min =3D 25000, .max =3D 350000 },
>  	.vco =3D { .min =3D 1760000, .max =3D 3510000 },
>  	.n =3D { .min =3D 1, .max =3D 3 },
> @@ -442,7 +442,7 @@ static const struct intel_limit intel_limits_ironlake=
_dual_lvds =3D {
>  };
>  =

>  /* LVDS 100mhz refclk limits. */
> -static const struct intel_limit intel_limits_ironlake_single_lvds_100m =
=3D {
> +static const struct intel_limit ilk_limits_single_lvds_100m =3D {
>  	.dot =3D { .min =3D 25000, .max =3D 350000 },
>  	.vco =3D { .min =3D 1760000, .max =3D 3510000 },
>  	.n =3D { .min =3D 1, .max =3D 2 },
> @@ -455,7 +455,7 @@ static const struct intel_limit intel_limits_ironlake=
_single_lvds_100m =3D {
>  		.p2_slow =3D 14, .p2_fast =3D 14 },
>  };
>  =

> -static const struct intel_limit intel_limits_ironlake_dual_lvds_100m =3D=
 {
> +static const struct intel_limit ilk_limits_dual_lvds_100m =3D {
>  	.dot =3D { .min =3D 25000, .max =3D 350000 },
>  	.vco =3D { .min =3D 1760000, .max =3D 3510000 },
>  	.n =3D { .min =3D 1, .max =3D 3 },
> @@ -1637,7 +1637,7 @@ void vlv_wait_port_ready(struct drm_i915_private *d=
ev_priv,
>  		     I915_READ(dpll_reg) & port_mask, expected_mask);
>  }
>  =

> -static void ironlake_enable_pch_transcoder(const struct intel_crtc_state=
 *crtc_state)
> +static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crt=
c_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -1735,8 +1735,8 @@ static void lpt_enable_pch_transcoder(struct drm_i9=
15_private *dev_priv,
>  		DRM_ERROR("Failed to enable PCH transcoder\n");
>  }
>  =

> -static void ironlake_disable_pch_transcoder(struct drm_i915_private *dev=
_priv,
> -					    enum pipe pipe)
> +static void ilk_disable_pch_transcoder(struct drm_i915_private *dev_priv,
> +				       enum pipe pipe)
>  {
>  	i915_reg_t reg;
>  	u32 val;
> @@ -4869,8 +4869,8 @@ static void intel_fdi_normal_train(struct intel_crt=
c *crtc)
>  }
>  =

>  /* The FDI link training functions for ILK/Ibexpeak. */
> -static void ironlake_fdi_link_train(struct intel_crtc *crtc,
> -				    const struct intel_crtc_state *crtc_state)
> +static void ilk_fdi_link_train(struct intel_crtc *crtc,
> +			       const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> @@ -5222,7 +5222,7 @@ static void ivb_manual_fdi_link_train(struct intel_=
crtc *crtc,
>  	DRM_DEBUG_KMS("FDI train done.\n");
>  }
>  =

> -static void ironlake_fdi_pll_enable(const struct intel_crtc_state *crtc_=
state)
> +static void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(intel_crtc->base.dev);
> @@ -5259,7 +5259,7 @@ static void ironlake_fdi_pll_enable(const struct in=
tel_crtc_state *crtc_state)
>  	}
>  }
>  =

> -static void ironlake_fdi_pll_disable(struct intel_crtc *intel_crtc)
> +static void ilk_fdi_pll_disable(struct intel_crtc *intel_crtc)
>  {
>  	struct drm_device *dev =3D intel_crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> @@ -5289,7 +5289,7 @@ static void ironlake_fdi_pll_disable(struct intel_c=
rtc *intel_crtc)
>  	udelay(100);
>  }
>  =

> -static void ironlake_fdi_disable(struct intel_crtc *crtc)
> +static void ilk_fdi_disable(struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
> @@ -5496,8 +5496,8 @@ int lpt_get_iclkip(struct drm_i915_private *dev_pri=
v)
>  				 desired_divisor << auxdiv);
>  }
>  =

> -static void ironlake_pch_transcoder_set_timings(const struct intel_crtc_=
state *crtc_state,
> -						enum pipe pch_transcoder)
> +static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state=
 *crtc_state,
> +					   enum pipe pch_transcoder)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -5601,8 +5601,8 @@ intel_get_crtc_new_encoder(const struct intel_atomi=
c_state *state,
>   *   - DP transcoding bits
>   *   - transcoder
>   */
> -static void ironlake_pch_enable(const struct intel_atomic_state *state,
> -				const struct intel_crtc_state *crtc_state)
> +static void ilk_pch_enable(const struct intel_atomic_state *state,
> +			   const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_device *dev =3D crtc->base.dev;
> @@ -5650,7 +5650,7 @@ static void ironlake_pch_enable(const struct intel_=
atomic_state *state,
>  =

>  	/* set transcoder timing, panel must allow it */
>  	assert_panel_unlocked(dev_priv, pipe);
> -	ironlake_pch_transcoder_set_timings(crtc_state, pipe);
> +	ilk_pch_transcoder_set_timings(crtc_state, pipe);
>  =

>  	intel_fdi_normal_train(crtc);
>  =

> @@ -5682,7 +5682,7 @@ static void ironlake_pch_enable(const struct intel_=
atomic_state *state,
>  		I915_WRITE(reg, temp);
>  	}
>  =

> -	ironlake_enable_pch_transcoder(crtc_state);
> +	ilk_enable_pch_transcoder(crtc_state);
>  }
>  =

>  static void lpt_pch_enable(const struct intel_atomic_state *state,
> @@ -5697,7 +5697,7 @@ static void lpt_pch_enable(const struct intel_atomi=
c_state *state,
>  	lpt_program_iclkip(crtc_state);
>  =

>  	/* Set transcoder timing. */
> -	ironlake_pch_transcoder_set_timings(crtc_state, PIPE_A);
> +	ilk_pch_transcoder_set_timings(crtc_state, PIPE_A);
>  =

>  	lpt_enable_pch_transcoder(dev_priv, cpu_transcoder);
>  }
> @@ -6047,7 +6047,7 @@ static void skl_pfit_enable(const struct intel_crtc=
_state *crtc_state)
>  	}
>  }
>  =

> -static void ironlake_pfit_enable(const struct intel_crtc_state *crtc_sta=
te)
> +static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -6643,8 +6643,8 @@ static void intel_disable_primary_plane(const struc=
t intel_crtc_state *crtc_stat
>  	plane->disable_plane(plane, crtc_state);
>  }
>  =

> -static void ironlake_crtc_enable(struct intel_atomic_state *state,
> -				 struct intel_crtc *crtc)
> +static void ilk_crtc_enable(struct intel_atomic_state *state,
> +			    struct intel_crtc *crtc)
>  {
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -6680,7 +6680,7 @@ static void ironlake_crtc_enable(struct intel_atomi=
c_state *state,
>  		intel_cpu_transcoder_set_m_n(new_crtc_state,
>  					     &new_crtc_state->fdi_m_n, NULL);
>  =

> -	ironlake_set_pipeconf(new_crtc_state);
> +	ilk_set_pipeconf(new_crtc_state);
>  =

>  	crtc->active =3D true;
>  =

> @@ -6690,13 +6690,13 @@ static void ironlake_crtc_enable(struct intel_ato=
mic_state *state,
>  		/* Note: FDI PLL enabling _must_ be done before we enable the
>  		 * cpu pipes, hence this is separate from all the other fdi/pch
>  		 * enabling. */
> -		ironlake_fdi_pll_enable(new_crtc_state);
> +		ilk_fdi_pll_enable(new_crtc_state);
>  	} else {
>  		assert_fdi_tx_disabled(dev_priv, pipe);
>  		assert_fdi_rx_disabled(dev_priv, pipe);
>  	}
>  =

> -	ironlake_pfit_enable(new_crtc_state);
> +	ilk_pfit_enable(new_crtc_state);
>  =

>  	/*
>  	 * On ILK+ LUT must be loaded before the pipe is running but with
> @@ -6712,7 +6712,7 @@ static void ironlake_crtc_enable(struct intel_atomi=
c_state *state,
>  	intel_enable_pipe(new_crtc_state);
>  =

>  	if (new_crtc_state->has_pch_encoder)
> -		ironlake_pch_enable(state, new_crtc_state);
> +		ilk_pch_enable(state, new_crtc_state);
>  =

>  	intel_crtc_vblank_on(new_crtc_state);
>  =

> @@ -6846,7 +6846,7 @@ static void hsw_crtc_enable(struct intel_atomic_sta=
te *state,
>  	if (INTEL_GEN(dev_priv) >=3D 9)
>  		skl_pfit_enable(new_crtc_state);
>  	else
> -		ironlake_pfit_enable(new_crtc_state);
> +		ilk_pfit_enable(new_crtc_state);
>  =

>  	/*
>  	 * On ILK+ LUT must be loaded before the pipe is running but with
> @@ -6895,7 +6895,7 @@ static void hsw_crtc_enable(struct intel_atomic_sta=
te *state,
>  	}
>  }
>  =

> -void ironlake_pfit_disable(const struct intel_crtc_state *old_crtc_state)
> +void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -6910,8 +6910,8 @@ void ironlake_pfit_disable(const struct intel_crtc_=
state *old_crtc_state)
>  	}
>  }
>  =

> -static void ironlake_crtc_disable(struct intel_atomic_state *state,
> -				  struct intel_crtc *crtc)
> +static void ilk_crtc_disable(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc)
>  {
>  	const struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
> @@ -6932,15 +6932,15 @@ static void ironlake_crtc_disable(struct intel_at=
omic_state *state,
>  =

>  	intel_disable_pipe(old_crtc_state);
>  =

> -	ironlake_pfit_disable(old_crtc_state);
> +	ilk_pfit_disable(old_crtc_state);
>  =

>  	if (old_crtc_state->has_pch_encoder)
> -		ironlake_fdi_disable(crtc);
> +		ilk_fdi_disable(crtc);
>  =

>  	intel_encoders_post_disable(state, crtc);
>  =

>  	if (old_crtc_state->has_pch_encoder) {
> -		ironlake_disable_pch_transcoder(dev_priv, pipe);
> +		ilk_disable_pch_transcoder(dev_priv, pipe);
>  =

>  		if (HAS_PCH_CPT(dev_priv)) {
>  			i915_reg_t reg;
> @@ -6960,7 +6960,7 @@ static void ironlake_crtc_disable(struct intel_atom=
ic_state *state,
>  			I915_WRITE(PCH_DPLL_SEL, temp);
>  		}
>  =

> -		ironlake_fdi_pll_disable(crtc);
> +		ilk_fdi_pll_disable(crtc);
>  	}
>  =

>  	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
> @@ -7505,8 +7505,8 @@ static int pipe_required_fdi_lanes(struct intel_crt=
c_state *crtc_state)
>  	return 0;
>  }
>  =

> -static int ironlake_check_fdi_lanes(struct drm_device *dev, enum pipe pi=
pe,
> -				     struct intel_crtc_state *pipe_config)
> +static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
> +			       struct intel_crtc_state *pipe_config)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct drm_atomic_state *state =3D pipe_config->uapi.state;
> @@ -7578,8 +7578,8 @@ static int ironlake_check_fdi_lanes(struct drm_devi=
ce *dev, enum pipe pipe,
>  }
>  =

>  #define RETRY 1
> -static int ironlake_fdi_compute_config(struct intel_crtc *intel_crtc,
> -				       struct intel_crtc_state *pipe_config)
> +static int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
> +				  struct intel_crtc_state *pipe_config)
>  {
>  	struct drm_device *dev =3D intel_crtc->base.dev;
>  	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjus=
ted_mode;
> @@ -7598,15 +7598,15 @@ static int ironlake_fdi_compute_config(struct int=
el_crtc *intel_crtc,
>  =

>  	fdi_dotclock =3D adjusted_mode->crtc_clock;
>  =

> -	lane =3D ironlake_get_lanes_required(fdi_dotclock, link_bw,
> -					   pipe_config->pipe_bpp);
> +	lane =3D ilk_get_lanes_required(fdi_dotclock, link_bw,
> +				      pipe_config->pipe_bpp);
>  =

>  	pipe_config->fdi_lanes =3D lane;
>  =

>  	intel_link_compute_m_n(pipe_config->pipe_bpp, lane, fdi_dotclock,
>  			       link_bw, &pipe_config->fdi_m_n, false, false);
>  =

> -	ret =3D ironlake_check_fdi_lanes(dev, intel_crtc->pipe, pipe_config);
> +	ret =3D ilk_check_fdi_lanes(dev, intel_crtc->pipe, pipe_config);
>  	if (ret =3D=3D -EDEADLK)
>  		return ret;
>  =

> @@ -7812,7 +7812,7 @@ static int intel_crtc_compute_config(struct intel_c=
rtc *crtc,
>  	intel_crtc_compute_pixel_rate(pipe_config);
>  =

>  	if (pipe_config->has_pch_encoder)
> -		return ironlake_fdi_compute_config(crtc, pipe_config);
> +		return ilk_fdi_compute_config(crtc, pipe_config);
>  =

>  	return 0;
>  }
> @@ -9224,7 +9224,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc =
*crtc,
>  	return ret;
>  }
>  =

> -static void ironlake_init_pch_refclk(struct drm_i915_private *dev_priv)
> +static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_encoder *encoder;
>  	int i;
> @@ -9722,12 +9722,12 @@ static void lpt_init_pch_refclk(struct drm_i915_p=
rivate *dev_priv)
>  void intel_init_pch_refclk(struct drm_i915_private *dev_priv)
>  {
>  	if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv))
> -		ironlake_init_pch_refclk(dev_priv);
> +		ilk_init_pch_refclk(dev_priv);
>  	else if (HAS_PCH_LPT(dev_priv))
>  		lpt_init_pch_refclk(dev_priv);
>  }
>  =

> -static void ironlake_set_pipeconf(const struct intel_crtc_state *crtc_st=
ate)
> +static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -9871,7 +9871,7 @@ int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
>  	}
>  }
>  =

> -int ironlake_get_lanes_required(int target_clock, int link_bw, int bpp)
> +int ilk_get_lanes_required(int target_clock, int link_bw, int bpp)
>  {
>  	/*
>  	 * Account for spread spectrum to avoid
> @@ -9882,14 +9882,14 @@ int ironlake_get_lanes_required(int target_clock,=
 int link_bw, int bpp)
>  	return DIV_ROUND_UP(bps, link_bw * 8);
>  }
>  =

> -static bool ironlake_needs_fb_cb_tune(struct dpll *dpll, int factor)
> +static bool ilk_needs_fb_cb_tune(struct dpll *dpll, int factor)
>  {
>  	return i9xx_dpll_compute_m(dpll) < factor * dpll->n;
>  }
>  =

> -static void ironlake_compute_dpll(struct intel_crtc *crtc,
> -				  struct intel_crtc_state *crtc_state,
> -				  struct dpll *reduced_clock)
> +static void ilk_compute_dpll(struct intel_crtc *crtc,
> +			     struct intel_crtc_state *crtc_state,
> +			     struct dpll *reduced_clock)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	u32 dpll, fp, fp2;
> @@ -9909,7 +9909,7 @@ static void ironlake_compute_dpll(struct intel_crtc=
 *crtc,
>  =

>  	fp =3D i9xx_dpll_compute_fp(&crtc_state->dpll);
>  =

> -	if (ironlake_needs_fb_cb_tune(&crtc_state->dpll, factor))
> +	if (ilk_needs_fb_cb_tune(&crtc_state->dpll, factor))
>  		fp |=3D FP_CB_TUNE;
>  =

>  	if (reduced_clock) {
> @@ -9989,8 +9989,8 @@ static void ironlake_compute_dpll(struct intel_crtc=
 *crtc,
>  	crtc_state->dpll_hw_state.fp1 =3D fp2;
>  }
>  =

> -static int ironlake_crtc_compute_clock(struct intel_crtc *crtc,
> -				       struct intel_crtc_state *crtc_state)
> +static int ilk_crtc_compute_clock(struct intel_crtc *crtc,
> +				  struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct intel_atomic_state *state =3D
> @@ -10014,17 +10014,17 @@ static int ironlake_crtc_compute_clock(struct i=
ntel_crtc *crtc,
>  =

>  		if (intel_is_dual_link_lvds(dev_priv)) {
>  			if (refclk =3D=3D 100000)
> -				limit =3D &intel_limits_ironlake_dual_lvds_100m;
> +				limit =3D &ilk_limits_dual_lvds_100m;
>  			else
> -				limit =3D &intel_limits_ironlake_dual_lvds;
> +				limit =3D &ilk_limits_dual_lvds;
>  		} else {
>  			if (refclk =3D=3D 100000)
> -				limit =3D &intel_limits_ironlake_single_lvds_100m;
> +				limit =3D &ilk_limits_single_lvds_100m;
>  			else
> -				limit =3D &intel_limits_ironlake_single_lvds;
> +				limit =3D &ilk_limits_single_lvds;
>  		}
>  	} else {
> -		limit =3D &intel_limits_ironlake_dac;
> +		limit =3D &ilk_limits_dac;
>  	}
>  =

>  	if (!crtc_state->clock_set &&
> @@ -10034,7 +10034,7 @@ static int ironlake_crtc_compute_clock(struct int=
el_crtc *crtc,
>  		return -EINVAL;
>  	}
>  =

> -	ironlake_compute_dpll(crtc, crtc_state, NULL);
> +	ilk_compute_dpll(crtc, crtc_state, NULL);
>  =

>  	if (!intel_reserve_shared_dplls(state, crtc, NULL)) {
>  		DRM_DEBUG_KMS("failed to find PLL for pipe %c\n",
> @@ -10109,8 +10109,8 @@ void intel_dp_get_m_n(struct intel_crtc *crtc,
>  					     &pipe_config->dp_m2_n2);
>  }
>  =

> -static void ironlake_get_fdi_m_n_config(struct intel_crtc *crtc,
> -					struct intel_crtc_state *pipe_config)
> +static void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
> +				   struct intel_crtc_state *pipe_config)
>  {
>  	intel_cpu_transcoder_get_m_n(crtc, pipe_config->cpu_transcoder,
>  				     &pipe_config->fdi_m_n, NULL);
> @@ -10276,8 +10276,8 @@ skl_get_initial_plane_config(struct intel_crtc *c=
rtc,
>  	kfree(intel_fb);
>  }
>  =

> -static void ironlake_get_pfit_config(struct intel_crtc *crtc,
> -				     struct intel_crtc_state *pipe_config)
> +static void ilk_get_pfit_config(struct intel_crtc *crtc,
> +				struct intel_crtc_state *pipe_config)
>  {
>  	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> @@ -10300,8 +10300,8 @@ static void ironlake_get_pfit_config(struct intel=
_crtc *crtc,
>  	}
>  }
>  =

> -static bool ironlake_get_pipe_config(struct intel_crtc *crtc,
> -				     struct intel_crtc_state *pipe_config)
> +static bool ilk_get_pipe_config(struct intel_crtc *crtc,
> +				struct intel_crtc_state *pipe_config)
>  {
>  	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> @@ -10372,7 +10372,7 @@ static bool ironlake_get_pipe_config(struct intel=
_crtc *crtc,
>  		pipe_config->fdi_lanes =3D ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
>  					  FDI_DP_PORT_WIDTH_SHIFT) + 1;
>  =

> -		ironlake_get_fdi_m_n_config(crtc, pipe_config);
> +		ilk_get_fdi_m_n_config(crtc, pipe_config);
>  =

>  		if (HAS_PCH_IBX(dev_priv)) {
>  			/*
> @@ -10400,7 +10400,7 @@ static bool ironlake_get_pipe_config(struct intel=
_crtc *crtc,
>  			((tmp & PLL_REF_SDVO_HDMI_MULTIPLIER_MASK)
>  			 >> PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT) + 1;
>  =

> -		ironlake_pch_clock_get(crtc, pipe_config);
> +		ilk_pch_clock_get(crtc, pipe_config);
>  	} else {
>  		pipe_config->pixel_multiplier =3D 1;
>  	}
> @@ -10408,7 +10408,7 @@ static bool ironlake_get_pipe_config(struct intel=
_crtc *crtc,
>  	intel_get_pipe_timings(crtc, pipe_config);
>  	intel_get_pipe_src_size(crtc, pipe_config);
>  =

> -	ironlake_get_pfit_config(crtc, pipe_config);
> +	ilk_get_pfit_config(crtc, pipe_config);
>  =

>  	ret =3D true;
>  =

> @@ -10769,7 +10769,7 @@ static void hsw_get_ddi_port_state(struct intel_c=
rtc *crtc,
>  		pipe_config->fdi_lanes =3D ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
>  					  FDI_DP_PORT_WIDTH_SHIFT) + 1;
>  =

> -		ironlake_get_fdi_m_n_config(crtc, pipe_config);
> +		ilk_get_fdi_m_n_config(crtc, pipe_config);
>  	}
>  }
>  =

> @@ -10921,7 +10921,7 @@ static bool hsw_get_pipe_config(struct intel_crtc=
 *crtc,
>  		if (INTEL_GEN(dev_priv) >=3D 9)
>  			skl_get_pfit_config(crtc, pipe_config);
>  		else
> -			ironlake_get_pfit_config(crtc, pipe_config);
> +			ilk_get_pfit_config(crtc, pipe_config);
>  	}
>  =

>  	if (hsw_crtc_supports_ips(crtc)) {
> @@ -11864,8 +11864,8 @@ int intel_dotclock_calculate(int link_freq,
>  	return div_u64(mul_u32_u32(m_n->link_m, link_freq), m_n->link_n);
>  }
>  =

> -static void ironlake_pch_clock_get(struct intel_crtc *crtc,
> -				   struct intel_crtc_state *pipe_config)
> +static void ilk_pch_clock_get(struct intel_crtc *crtc,
> +			      struct intel_crtc_state *pipe_config)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  =

> @@ -14472,9 +14472,9 @@ static void intel_pipe_fastset(const struct intel=
_crtc_state *old_crtc_state,
>  			skl_pfit_enable(new_crtc_state);
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		if (new_crtc_state->pch_pfit.enabled)
> -			ironlake_pfit_enable(new_crtc_state);
> +			ilk_pfit_enable(new_crtc_state);
>  		else if (old_crtc_state->pch_pfit.enabled)
> -			ironlake_pfit_disable(old_crtc_state);
> +			ilk_pfit_disable(old_crtc_state);
>  	}
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 11)
> @@ -16826,13 +16826,13 @@ void intel_init_display_hooks(struct drm_i915_p=
rivate *dev_priv)
>  		dev_priv->display.crtc_enable =3D hsw_crtc_enable;
>  		dev_priv->display.crtc_disable =3D hsw_crtc_disable;
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
> -		dev_priv->display.get_pipe_config =3D ironlake_get_pipe_config;
> +		dev_priv->display.get_pipe_config =3D ilk_get_pipe_config;
>  		dev_priv->display.get_initial_plane_config =3D
>  			i9xx_get_initial_plane_config;
>  		dev_priv->display.crtc_compute_clock =3D
> -			ironlake_crtc_compute_clock;
> -		dev_priv->display.crtc_enable =3D ironlake_crtc_enable;
> -		dev_priv->display.crtc_disable =3D ironlake_crtc_disable;
> +			ilk_crtc_compute_clock;
> +		dev_priv->display.crtc_enable =3D ilk_crtc_enable;
> +		dev_priv->display.crtc_disable =3D ilk_crtc_disable;
>  	} else if (IS_CHERRYVIEW(dev_priv)) {
>  		dev_priv->display.get_pipe_config =3D i9xx_get_pipe_config;
>  		dev_priv->display.get_initial_plane_config =3D
> @@ -16878,7 +16878,7 @@ void intel_init_display_hooks(struct drm_i915_pri=
vate *dev_priv)
>  	}
>  =

>  	if (IS_GEN(dev_priv, 5)) {
> -		dev_priv->display.fdi_link_train =3D ironlake_fdi_link_train;
> +		dev_priv->display.fdi_link_train =3D ilk_fdi_link_train;
>  	} else if (IS_GEN(dev_priv, 6)) {
>  		dev_priv->display.fdi_link_train =3D gen6_fdi_link_train;
>  	} else if (IS_IVYBRIDGE(dev_priv)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 921a584c3284..bc2c5104f755 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -521,7 +521,7 @@ int intel_get_pipe_from_crtc_id_ioctl(struct drm_devi=
ce *dev, void *data,
>  u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
>  void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
>  =

> -int ironlake_get_lanes_required(int target_clock, int link_bw, int bpp);
> +int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
>  void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>  			 struct intel_digital_port *dport,
>  			 unsigned int expected_mask);
> @@ -579,7 +579,7 @@ void intel_crtc_arm_fifo_underrun(struct intel_crtc *=
crtc,
>  u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_center);
>  int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state);
>  void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
> -void ironlake_pfit_disable(const struct intel_crtc_state *old_crtc_state=
);
> +void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
>  u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
>  			const struct intel_plane_state *plane_state);
>  u32 glk_plane_color_ctl_crtc(const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 2f31d226c6eb..991f343579ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2509,7 +2509,7 @@ static void intel_dp_prepare(struct intel_encoder *=
encoder,
>  	 *
>  	 * CPT PCH is quite different, having many bits moved
>  	 * to the TRANS_DP_CTL register instead. That
> -	 * configuration happens (oddly) in ironlake_pch_enable
> +	 * configuration happens (oddly) in ilk_pch_enable
>  	 */
>  =

>  	/* Preserve the BIOS-computed detected bit. This is
> @@ -2653,7 +2653,7 @@ static void edp_wait_backlight_off(struct intel_dp =
*intel_dp)
>   * is locked
>   */
>  =

> -static  u32 ironlake_get_pp_control(struct intel_dp *intel_dp)
> +static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	u32 control;
> @@ -2703,7 +2703,7 @@ static bool edp_panel_vdd_on(struct intel_dp *intel=
_dp)
>  	if (!edp_have_panel_power(intel_dp))
>  		wait_panel_power_cycle(intel_dp);
>  =

> -	pp =3D ironlake_get_pp_control(intel_dp);
> +	pp =3D ilk_get_pp_control(intel_dp);
>  	pp |=3D EDP_FORCE_VDD;
>  =

>  	pp_stat_reg =3D _pp_stat_reg(intel_dp);
> @@ -2768,7 +2768,7 @@ static void edp_panel_vdd_off_sync(struct intel_dp =
*intel_dp)
>  		      intel_dig_port->base.base.base.id,
>  		      intel_dig_port->base.base.name);
>  =

> -	pp =3D ironlake_get_pp_control(intel_dp);
> +	pp =3D ilk_get_pp_control(intel_dp);
>  	pp &=3D ~EDP_FORCE_VDD;
>  =

>  	pp_ctrl_reg =3D _pp_ctrl_reg(intel_dp);
> @@ -2864,7 +2864,7 @@ static void edp_panel_on(struct intel_dp *intel_dp)
>  	wait_panel_power_cycle(intel_dp);
>  =

>  	pp_ctrl_reg =3D _pp_ctrl_reg(intel_dp);
> -	pp =3D ironlake_get_pp_control(intel_dp);
> +	pp =3D ilk_get_pp_control(intel_dp);
>  	if (IS_GEN(dev_priv, 5)) {
>  		/* ILK workaround: disable reset around power sequence */
>  		pp &=3D ~PANEL_POWER_RESET;
> @@ -2919,7 +2919,7 @@ static void edp_panel_off(struct intel_dp *intel_dp)
>  	WARN(!intel_dp->want_panel_vdd, "Need [ENCODER:%d:%s] VDD to turn off p=
anel\n",
>  	     dig_port->base.base.base.id, dig_port->base.base.name);
>  =

> -	pp =3D ironlake_get_pp_control(intel_dp);
> +	pp =3D ilk_get_pp_control(intel_dp);
>  	/* We need to switch off panel power _and_ force vdd, for otherwise some
>  	 * panels get very unhappy and cease to work. */
>  	pp &=3D ~(PANEL_POWER_ON | PANEL_POWER_RESET | EDP_FORCE_VDD |
> @@ -2968,7 +2968,7 @@ static void _intel_edp_backlight_on(struct intel_dp=
 *intel_dp)
>  		i915_reg_t pp_ctrl_reg =3D _pp_ctrl_reg(intel_dp);
>  		u32 pp;
>  =

> -		pp =3D ironlake_get_pp_control(intel_dp);
> +		pp =3D ilk_get_pp_control(intel_dp);
>  		pp |=3D EDP_BLC_ENABLE;
>  =

>  		I915_WRITE(pp_ctrl_reg, pp);
> @@ -3004,7 +3004,7 @@ static void _intel_edp_backlight_off(struct intel_d=
p *intel_dp)
>  		i915_reg_t pp_ctrl_reg =3D _pp_ctrl_reg(intel_dp);
>  		u32 pp;
>  =

> -		pp =3D ironlake_get_pp_control(intel_dp);
> +		pp =3D ilk_get_pp_control(intel_dp);
>  		pp &=3D ~EDP_BLC_ENABLE;
>  =

>  		I915_WRITE(pp_ctrl_reg, pp);
> @@ -3042,7 +3042,7 @@ static void intel_edp_backlight_power(struct intel_=
connector *connector,
>  =

>  	is_enabled =3D false;
>  	with_pps_lock(intel_dp, wakeref)
> -		is_enabled =3D ironlake_get_pp_control(intel_dp) & EDP_BLC_ENABLE;
> +		is_enabled =3D ilk_get_pp_control(intel_dp) & EDP_BLC_ENABLE;
>  	if (is_enabled =3D=3D enable)
>  		return;
>  =

> @@ -3079,8 +3079,8 @@ static void assert_edp_pll(struct drm_i915_private =
*dev_priv, bool state)
>  #define assert_edp_pll_enabled(d) assert_edp_pll((d), true)
>  #define assert_edp_pll_disabled(d) assert_edp_pll((d), false)
>  =

> -static void ironlake_edp_pll_on(struct intel_dp *intel_dp,
> -				const struct intel_crtc_state *pipe_config)
> +static void ilk_edp_pll_on(struct intel_dp *intel_dp,
> +			   const struct intel_crtc_state *pipe_config)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -3119,8 +3119,8 @@ static void ironlake_edp_pll_on(struct intel_dp *in=
tel_dp,
>  	udelay(200);
>  }
>  =

> -static void ironlake_edp_pll_off(struct intel_dp *intel_dp,
> -				 const struct intel_crtc_state *old_crtc_state)
> +static void ilk_edp_pll_off(struct intel_dp *intel_dp,
> +			    const struct intel_crtc_state *old_crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -3410,7 +3410,7 @@ static void g4x_post_disable_dp(struct intel_encode=
r *encoder,
>  =

>  	/* Only ilk+ has port A */
>  	if (port =3D=3D PORT_A)
> -		ironlake_edp_pll_off(intel_dp, old_crtc_state);
> +		ilk_edp_pll_off(intel_dp, old_crtc_state);
>  }
>  =

>  static void vlv_post_disable_dp(struct intel_encoder *encoder,
> @@ -3615,7 +3615,7 @@ static void g4x_pre_enable_dp(struct intel_encoder =
*encoder,
>  =

>  	/* Only ilk+ has port A */
>  	if (port =3D=3D PORT_A)
> -		ironlake_edp_pll_on(intel_dp, pipe_config);
> +		ilk_edp_pll_on(intel_dp, pipe_config);
>  }
>  =

>  static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
> @@ -6693,7 +6693,7 @@ intel_pps_readout_hw_state(struct intel_dp *intel_d=
p, struct edp_power_seq *seq)
>  =

>  	intel_pps_get_registers(intel_dp, &regs);
>  =

> -	pp_ctl =3D ironlake_get_pp_control(intel_dp);
> +	pp_ctl =3D ilk_get_pp_control(intel_dp);
>  =

>  	/* Ensure PPS is unlocked */
>  	if (!HAS_DDI(dev_priv))
> @@ -6863,7 +6863,7 @@ intel_dp_init_panel_power_sequencer_registers(struc=
t intel_dp *intel_dp,
>  	 * soon as the new power sequencer gets initialized.
>  	 */
>  	if (force_disable_vdd) {
> -		u32 pp =3D ironlake_get_pp_control(intel_dp);
> +		u32 pp =3D ilk_get_pp_control(intel_dp);
>  =

>  		WARN(pp & PANEL_POWER_ON, "Panel power already on\n");
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 01b4608ab56c..cbf623154af1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -250,7 +250,7 @@ static void intel_mst_post_disable_dp(struct intel_en=
coder *encoder,
>  	if (INTEL_GEN(dev_priv) >=3D 9)
>  		skl_scaler_disable(old_crtc_state);
>  	else
> -		ironlake_pfit_disable(old_crtc_state);
> +		ilk_pfit_disable(old_crtc_state);
>  =

>  	/*
>  	 * From TGL spec: "If multi-stream slave transcoder: Configure
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers=
/gpu/drm/i915/display/intel_fifo_underrun.c
> index ab61f88d1d33..d6e0d0be842e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -126,8 +126,8 @@ static void i9xx_set_fifo_underrun_reporting(struct d=
rm_device *dev,
>  	}
>  }
>  =

> -static void ironlake_set_fifo_underrun_reporting(struct drm_device *dev,
> -						 enum pipe pipe, bool enable)
> +static void ilk_set_fifo_underrun_reporting(struct drm_device *dev,
> +					    enum pipe pipe, bool enable)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	u32 bit =3D (pipe =3D=3D PIPE_A) ?
> @@ -264,7 +264,7 @@ static bool __intel_set_cpu_fifo_underrun_reporting(s=
truct drm_device *dev,
>  	if (HAS_GMCH(dev_priv))
>  		i9xx_set_fifo_underrun_reporting(dev, pipe, enable, old);
>  	else if (IS_GEN_RANGE(dev_priv, 5, 6))
> -		ironlake_set_fifo_underrun_reporting(dev, pipe, enable);
> +		ilk_set_fifo_underrun_reporting(dev, pipe, enable);
>  	else if (IS_GEN(dev_priv, 7))
>  		ivybridge_set_fifo_underrun_reporting(dev, pipe, enable, old);
>  	else if (INTEL_GEN(dev_priv) >=3D 8)
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915=
/gt/intel_reset.c
> index 1c51296646e0..ea7069e238d0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -251,9 +251,8 @@ static int g4x_do_reset(struct intel_gt *gt,
>  	return ret;
>  }
>  =

> -static int ironlake_do_reset(struct intel_gt *gt,
> -			     intel_engine_mask_t engine_mask,
> -			     unsigned int retry)
> +static int ilk_do_reset(struct intel_gt *gt, intel_engine_mask_t engine_=
mask,
> +			unsigned int retry)
>  {
>  	struct intel_uncore *uncore =3D gt->uncore;
>  	int ret;
> @@ -597,7 +596,7 @@ static reset_func intel_get_gpu_reset(const struct in=
tel_gt *gt)
>  	else if (INTEL_GEN(i915) >=3D 6)
>  		return gen6_reset_engines;
>  	else if (INTEL_GEN(i915) >=3D 5)
> -		return ironlake_do_reset;
> +		return ilk_do_reset;
>  	else if (IS_G4X(i915))
>  		return g4x_do_reset;
>  	else if (IS_G33(i915) || IS_PINEVIEW(i915))
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index d28468eaed57..0407229251bc 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -1001,7 +1001,7 @@ static int i915_frequency_info(struct seq_file *m, =
void *unused)
>  	return ret;
>  }
>  =

> -static int ironlake_drpc_info(struct seq_file *m)
> +static int ilk_drpc_info(struct seq_file *m)
>  {
>  	struct drm_i915_private *i915 =3D node_to_i915(m->private);
>  	struct intel_uncore *uncore =3D &i915->uncore;
> @@ -1209,7 +1209,7 @@ static int i915_drpc_info(struct seq_file *m, void =
*unused)
>  		else if (INTEL_GEN(dev_priv) >=3D 6)
>  			err =3D gen6_drpc_info(m);
>  		else
> -			err =3D ironlake_drpc_info(m);
> +			err =3D ilk_drpc_info(m);
>  	}
>  =

>  	return err;
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 42b79f577500..2d6324d2922a 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2031,7 +2031,7 @@ static void ivb_display_irq_handler(struct drm_i915=
_private *dev_priv,
>   * 4 - Process the interrupt(s) that had bits set in the IIRs.
>   * 5 - Re-enable Master Interrupt Control.
>   */
> -static irqreturn_t ironlake_irq_handler(int irq, void *arg)
> +static irqreturn_t ilk_irq_handler(int irq, void *arg)
>  {
>  	struct drm_i915_private *dev_priv =3D arg;
>  	u32 de_iir, gt_iir, de_ier, sde_ier =3D 0;
> @@ -2742,7 +2742,7 @@ static void vlv_display_irq_postinstall(struct drm_=
i915_private *dev_priv)
>  =

>  /* drm_dma.h hooks
>  */
> -static void ironlake_irq_reset(struct drm_i915_private *dev_priv)
> +static void ilk_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>  =

> @@ -3225,7 +3225,7 @@ static void ibx_irq_postinstall(struct drm_i915_pri=
vate *dev_priv)
>  		spt_hpd_detection_setup(dev_priv);
>  }
>  =

> -static void ironlake_irq_postinstall(struct drm_i915_private *dev_priv)
> +static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>  	u32 display_mask, extra_mask;
> @@ -3980,7 +3980,7 @@ static irq_handler_t intel_irq_handler(struct drm_i=
915_private *dev_priv)
>  		else if (INTEL_GEN(dev_priv) >=3D 8)
>  			return gen8_irq_handler;
>  		else
> -			return ironlake_irq_handler;
> +			return ilk_irq_handler;
>  	}
>  }
>  =

> @@ -4003,7 +4003,7 @@ static void intel_irq_reset(struct drm_i915_private=
 *dev_priv)
>  		else if (INTEL_GEN(dev_priv) >=3D 8)
>  			gen8_irq_reset(dev_priv);
>  		else
> -			ironlake_irq_reset(dev_priv);
> +			ilk_irq_reset(dev_priv);
>  	}
>  }
>  =

> @@ -4026,7 +4026,7 @@ static void intel_irq_postinstall(struct drm_i915_p=
rivate *dev_priv)
>  		else if (INTEL_GEN(dev_priv) >=3D 8)
>  			gen8_irq_postinstall(dev_priv);
>  		else
> -			ironlake_irq_postinstall(dev_priv);
> +			ilk_irq_postinstall(dev_priv);
>  	}
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index eab3b029e98a..6fb6760a1559 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -178,7 +178,7 @@ static void pnv_get_mem_freq(struct drm_i915_private =
*dev_priv)
>  	dev_priv->is_ddr3 =3D (tmp & CSHRDDR3CTL_DDR3) ? 1 : 0;
>  }
>  =

> -static void i915_ironlake_get_mem_freq(struct drm_i915_private *dev_priv)
> +static void ilk_get_mem_freq(struct drm_i915_private *dev_priv)
>  {
>  	u16 ddrpll, csipll;
>  =

> @@ -7182,7 +7182,7 @@ void intel_init_pm(struct drm_i915_private *dev_pri=
v)
>  	if (IS_PINEVIEW(dev_priv))
>  		pnv_get_mem_freq(dev_priv);
>  	else if (IS_GEN(dev_priv, 5))
> -		i915_ironlake_get_mem_freq(dev_priv);
> +		ilk_get_mem_freq(dev_priv);
>  =

>  	if (intel_has_sagv(dev_priv))
>  		skl_setup_sagv_block_time(dev_priv);
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
