Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 078004CD310
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 12:09:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16FB010EDC6;
	Fri,  4 Mar 2022 11:09:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BF8210EDC6
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 11:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646392139; x=1677928139;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=8CLk/yUdAG7LDJO+2ETHyIcFKGleghPtpKRjY4npRy0=;
 b=QVAO+urajbXGXxcqNK4SZK7pS4lx51cf3Loc890VTu+hxya4IEyj7o0z
 TTV0nxCbzgBizxCSTHg+FaenX3aA7dbXhm2ZloNTDQA8W2NAGh1vrq4RC
 bj8ACP6AOZvBwIFa6R3eHdP0L3sYjXUxJNwINZo+jnRNZwLg2vlrJji/b
 aPkm3bf5TlM6g2G7Ozf/ravzB9JMb13gWWn7h0AyZP1jkCyzXCyo5ocCF
 RL7Ea1O7emXevcaDgpYibmJjyKOQGnK5H/TesRFqgZjmNzP4VZdLtzbGI
 1HRntVKEoJCKALkaK1LP/AZr7wziZPpuIaFX0vJqL40MrgB9qBuy9W4Z+ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="234562239"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="234562239"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:08:58 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="552185778"
Received: from pruilobx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.174])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 03:08:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220221110356.5532-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220221110356.5532-1-ville.syrjala@linux.intel.com>
Date: Fri, 04 Mar 2022 13:08:55 +0200
Message-ID: <87bkym3rg8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Move framestart_delay to
 crtc_state
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

On Mon, 21 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We need to make framestart_delay dynamic for DRRS on PCH
> ports. To that end move it into the crtc state. As a bonus
> we get state check+dump for it. Will also allow us to get
> rid of the somewhat questionable framestart_delay sanitation
> code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

On the series,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 40 ++++++++++++++-----
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  .../gpu/drm/i915/display/intel_pch_display.c  | 15 +++----
>  drivers/gpu/drm/i915/display/intel_vrr.c      |  4 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  2 -
>  5 files changed, 42 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e2ca70696c05..7e80530b9b00 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1865,7 +1865,7 @@ static void hsw_set_frame_start_delay(const struct =
intel_crtc_state *crtc_state)
>=20=20
>  	val =3D intel_de_read(dev_priv, reg);
>  	val &=3D ~HSW_FRAME_START_DELAY_MASK;
> -	val |=3D HSW_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
> +	val |=3D HSW_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
>  	intel_de_write(dev_priv, reg, val);
>  }
>=20=20
> @@ -3208,7 +3208,7 @@ static void i9xx_set_pipeconf(const struct intel_cr=
tc_state *crtc_state)
>=20=20
>  	pipeconf |=3D PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
>=20=20
> -	pipeconf |=3D PIPECONF_FRAME_START_DELAY(dev_priv->framestart_delay - 1=
);
> +	pipeconf |=3D PIPECONF_FRAME_START_DELAY(crtc_state->framestart_delay -=
 1);
>=20=20
>  	intel_de_write(dev_priv, PIPECONF(crtc->pipe), pipeconf);
>  	intel_de_posting_read(dev_priv, PIPECONF(crtc->pipe));
> @@ -3398,6 +3398,8 @@ static bool i9xx_get_pipe_config(struct intel_crtc =
*crtc,
>=20=20
>  	pipe_config->gamma_mode =3D REG_FIELD_GET(PIPECONF_GAMMA_MODE_MASK_I9XX=
, tmp);
>=20=20
> +	pipe_config->framestart_delay =3D REG_FIELD_GET(PIPECONF_FRAME_START_DE=
LAY_MASK, tmp) + 1;
> +
>  	if (IS_CHERRYVIEW(dev_priv))
>  		pipe_config->cgm_mode =3D intel_de_read(dev_priv,
>  						      CGM_PIPE_MODE(crtc->pipe));
> @@ -3523,7 +3525,7 @@ static void ilk_set_pipeconf(const struct intel_crt=
c_state *crtc_state)
>=20=20
>  	val |=3D PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
>=20=20
> -	val |=3D PIPECONF_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
> +	val |=3D PIPECONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
>=20=20
>  	intel_de_write(dev_priv, PIPECONF(pipe), val);
>  	intel_de_posting_read(dev_priv, PIPECONF(pipe));
> @@ -3831,6 +3833,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *=
crtc,
>=20=20
>  	pipe_config->gamma_mode =3D REG_FIELD_GET(PIPECONF_GAMMA_MODE_MASK_ILK,=
 tmp);
>=20=20
> +	pipe_config->framestart_delay =3D REG_FIELD_GET(PIPECONF_FRAME_START_DE=
LAY_MASK, tmp) + 1;
> +
>  	pipe_config->csc_mode =3D intel_de_read(dev_priv,
>  					      PIPE_CSC_MODE(crtc->pipe));
>=20=20
> @@ -4266,6 +4270,15 @@ static bool hsw_get_pipe_config(struct intel_crtc =
*crtc,
>  		pipe_config->pixel_multiplier =3D 1;
>  	}
>=20=20
> +	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
> +		tmp =3D intel_de_read(dev_priv, CHICKEN_TRANS(pipe_config->cpu_transco=
der));
> +
> +		pipe_config->framestart_delay =3D REG_FIELD_GET(HSW_FRAME_START_DELAY_=
MASK, tmp) + 1;
> +	} else {
> +		/* no idea if this is correct */
> +		pipe_config->framestart_delay =3D 1;
> +	}
> +
>  out:
>  	intel_display_power_put_all_in_set(dev_priv, &power_domain_set);
>=20=20
> @@ -5303,6 +5316,9 @@ static void intel_dump_pipe_config(const struct int=
el_crtc_state *pipe_config,
>  				      &pipe_config->dp_m2_n2);
>  	}
>=20=20
> +	drm_dbg_kms(&dev_priv->drm, "framestart delay: %d\n",
> +		    pipe_config->framestart_delay);
> +
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
>  		    pipe_config->has_audio, pipe_config->has_infoframe,
> @@ -5654,6 +5670,8 @@ intel_modeset_pipe_config(struct intel_atomic_state=
 *state,
>  	pipe_config->cpu_transcoder =3D
>  		(enum transcoder) to_intel_crtc(crtc)->pipe;
>=20=20
> +	pipe_config->framestart_delay =3D 1;
> +
>  	/*
>  	 * Sanitize sync polarity flags based on requested ones. If neither
>  	 * positive or negative polarity is requested, treat this as meaning
> @@ -6191,6 +6209,8 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>=20=20
>  	PIPE_CONF_CHECK_X(output_types);
>=20=20
> +	PIPE_CONF_CHECK_I(framestart_delay);
> +
>  	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hdisplay);
>  	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_htotal);
>  	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hblank_start);
> @@ -9499,8 +9519,6 @@ int intel_modeset_init_noirq(struct drm_i915_privat=
e *i915)
>  	i915->flip_wq =3D alloc_workqueue("i915_flip", WQ_HIGHPRI |
>  					WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
>=20=20
> -	i915->framestart_delay =3D 1; /* 1-4 */
> -
>  	i915->window2_delay =3D 0; /* No DSB so no window2 delay */
>=20=20
>  	intel_mode_config_init(i915);
> @@ -9804,12 +9822,14 @@ static bool has_pch_trancoder(struct drm_i915_pri=
vate *dev_priv,
>  		(HAS_PCH_LPT_H(dev_priv) && pch_transcoder =3D=3D PIPE_A);
>  }
>=20=20
> -static void intel_sanitize_frame_start_delay(const struct intel_crtc_sta=
te *crtc_state)
> +static void intel_sanitize_frame_start_delay(struct intel_crtc_state *cr=
tc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20=20
> +	crtc_state->framestart_delay =3D 1;
> +
>  	if (DISPLAY_VER(dev_priv) >=3D 9 ||
>  	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv)) {
>  		i915_reg_t reg =3D CHICKEN_TRANS(cpu_transcoder);
> @@ -9820,7 +9840,7 @@ static void intel_sanitize_frame_start_delay(const =
struct intel_crtc_state *crtc
>=20=20
>  		val =3D intel_de_read(dev_priv, reg);
>  		val &=3D ~HSW_FRAME_START_DELAY_MASK;
> -		val |=3D HSW_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
> +		val |=3D HSW_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
>  		intel_de_write(dev_priv, reg, val);
>  	} else {
>  		i915_reg_t reg =3D PIPECONF(cpu_transcoder);
> @@ -9828,7 +9848,7 @@ static void intel_sanitize_frame_start_delay(const =
struct intel_crtc_state *crtc
>=20=20
>  		val =3D intel_de_read(dev_priv, reg);
>  		val &=3D ~PIPECONF_FRAME_START_DELAY_MASK;
> -		val |=3D PIPECONF_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
> +		val |=3D PIPECONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
>  		intel_de_write(dev_priv, reg, val);
>  	}
>=20=20
> @@ -9841,7 +9861,7 @@ static void intel_sanitize_frame_start_delay(const =
struct intel_crtc_state *crtc
>=20=20
>  		val =3D intel_de_read(dev_priv, reg);
>  		val &=3D ~TRANS_FRAME_START_DELAY_MASK;
> -		val |=3D TRANS_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
> +		val |=3D TRANS_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
>  		intel_de_write(dev_priv, reg, val);
>  	} else {
>  		enum pipe pch_transcoder =3D intel_crtc_pch_transcoder(crtc);
> @@ -9850,7 +9870,7 @@ static void intel_sanitize_frame_start_delay(const =
struct intel_crtc_state *crtc
>=20=20
>  		val =3D intel_de_read(dev_priv, reg);
>  		val &=3D ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
> -		val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->framestart_delay -=
 1);
> +		val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(crtc_state->framestart_delay=
 - 1);
>  		intel_de_write(dev_priv, reg, val);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index b50d0e6efe21..8e50f03f8c92 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1154,6 +1154,8 @@ struct intel_crtc_state {
>  	/* bitmask of planes that will be updated during the commit */
>  	u8 update_planes;
>=20=20
> +	u8 framestart_delay; /* 1-4 */
> +
>  	struct {
>  		u32 enable;
>  		u32 gcp;
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/g=
pu/drm/i915/display/intel_pch_display.c
> index 9192769e3337..00232dab217d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -181,7 +181,7 @@ static void ilk_enable_pch_transcoder(const struct in=
tel_crtc_state *crtc_state)
>  		val |=3D TRANS_CHICKEN2_TIMING_OVERRIDE;
>  		/* Configure frame start delay to match the CPU */
>  		val &=3D ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
> -		val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->framestart_delay -=
 1);
> +		val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(crtc_state->framestart_delay=
 - 1);
>  		intel_de_write(dev_priv, reg, val);
>  	}
>=20=20
> @@ -192,7 +192,7 @@ static void ilk_enable_pch_transcoder(const struct in=
tel_crtc_state *crtc_state)
>  	if (HAS_PCH_IBX(dev_priv)) {
>  		/* Configure frame start delay to match the CPU */
>  		val &=3D ~TRANS_FRAME_START_DELAY_MASK;
> -		val |=3D TRANS_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
> +		val |=3D TRANS_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
>=20=20
>  		/*
>  		 * Make the BPC in transcoder be consistent with
> @@ -466,9 +466,11 @@ void ilk_pch_get_config(struct intel_crtc_state *crt=
c_state)
>  	ilk_pch_clock_get(crtc_state);
>  }
>=20=20
> -static void lpt_enable_pch_transcoder(struct drm_i915_private *dev_priv,
> -				      enum transcoder cpu_transcoder)
> +static void lpt_enable_pch_transcoder(const struct intel_crtc_state *crt=
c_state)
>  {
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	u32 val, pipeconf_val;
>=20=20
>  	/* FDI must be feeding us bits for PCH ports */
> @@ -480,7 +482,7 @@ static void lpt_enable_pch_transcoder(struct drm_i915=
_private *dev_priv,
>  	val |=3D TRANS_CHICKEN2_TIMING_OVERRIDE;
>  	/* Configure frame start delay to match the CPU */
>  	val &=3D ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
> -	val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->framestart_delay - =
1);
> +	val |=3D TRANS_CHICKEN2_FRAME_START_DELAY(crtc_state->framestart_delay =
- 1);
>  	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
>=20=20
>  	val =3D TRANS_ENABLE;
> @@ -521,7 +523,6 @@ void lpt_pch_enable(struct intel_atomic_state *state,
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20=20
>  	assert_pch_transcoder_disabled(dev_priv, PIPE_A);
>=20=20
> @@ -530,7 +531,7 @@ void lpt_pch_enable(struct intel_atomic_state *state,
>  	/* Set transcoder timing. */
>  	ilk_pch_transcoder_set_timings(crtc_state, PIPE_A);
>=20=20
> -	lpt_enable_pch_transcoder(dev_priv, cpu_transcoder);
> +	lpt_enable_pch_transcoder(crtc_state);
>  }
>=20=20
>  void lpt_pch_disable(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i=
915/display/intel_vrr.c
> index 139e8936edc5..396f2f994fa0 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -69,9 +69,9 @@ static int intel_vrr_vblank_exit_length(const struct in=
tel_crtc_state *crtc_stat
>=20=20
>  	/* The hw imposes the extra scanline before frame start */
>  	if (DISPLAY_VER(i915) >=3D 13)
> -		return crtc_state->vrr.guardband + i915->framestart_delay + 1;
> +		return crtc_state->vrr.guardband + crtc_state->framestart_delay + 1;
>  	else
> -		return crtc_state->vrr.pipeline_full + i915->framestart_delay + 1;
> +		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + =
1;
>  }
>=20=20
>  int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_stat=
e)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 1c2f4ae4ebf9..f5c249f93dad 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -825,8 +825,6 @@ struct drm_i915_private {
>  		struct file *mmap_singleton;
>  	} gem;
>=20=20
> -	u8 framestart_delay;
> -
>  	/* Window2 specifies time required to program DSB (Window2) in number o=
f scan lines */
>  	u8 window2_delay;

--=20
Jani Nikula, Intel Open Source Graphics Center
