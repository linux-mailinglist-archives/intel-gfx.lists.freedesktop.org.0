Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EF349CC58
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 15:31:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F077C10E322;
	Wed, 26 Jan 2022 14:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25CE110E322
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 14:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643207466; x=1674743466;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=HN5flZqTkKDjBEwXsBt6e6jY0sDun+QURxRMyT+h1vI=;
 b=DSTH/tn/fXz4+t6wiUoEodIUeCK5xxT483D/Zv3BWNdZuNysJ2vmoFYi
 wz9oLxtZqTti715F4o6ZkuTtO7ojubNLzdhAdg1KG79s0aqbUQx/gyjqk
 J6N05VYyYixE0kEOZddywD+E7WbG+IdFrTAETIFF6ZnpATHri3AAnVZoH
 xZZ9VsRzqFam9tA/4srC0L4B/TlXqQZsXlIpkkuLt3deUJpwdXnPnOfDA
 I5jhSS4A8NIJUxI0USrrw6kVmiuE5TMpcdBjUGNzd+djV1yoH8CI+cjIA
 37UitTu3gRIuZlpb6o76Ty3j+vub+0zbETPMFl6qlTSG8Q8HRFD3dhRyN Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="271011748"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="271011748"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 06:31:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="477495497"
Received: from nbasu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.16.197])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 06:31:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211112193813.8224-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
 <20211112193813.8224-5-ville.syrjala@linux.intel.com>
Date: Wed, 26 Jan 2022 16:31:00 +0200
Message-ID: <87lez2zhzv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915: Clean up PIPECONF bit defines
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

On Fri, 12 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use REG_BIT() & co. for PIPECONF bits, and adjust the
> naming of various bits to be more consistent.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   4 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  60 +++++-----
>  .../gpu/drm/i915/display/intel_pch_display.c  |   7 +-
>  drivers/gpu/drm/i915/gvt/display.c            |   4 +-
>  drivers/gpu/drm/i915/gvt/handlers.c           |   4 +-
>  drivers/gpu/drm/i915/i915_reg.h               | 108 +++++++++---------
>  6 files changed, 89 insertions(+), 98 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index c05fb861f10c..0f6587bef106 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1048,7 +1048,7 @@ static void gen11_dsi_enable_transcoder(struct inte=
l_encoder *encoder)
>=20=20
>  		/* wait for transcoder to be enabled */
>  		if (intel_de_wait_for_set(dev_priv, PIPECONF(dsi_trans),
> -					  I965_PIPECONF_ACTIVE, 10))
> +					  PIPECONF_STATE_ENABLE, 10))
>  			drm_err(&dev_priv->drm,
>  				"DSI transcoder not enabled\n");
>  	}
> @@ -1317,7 +1317,7 @@ static void gen11_dsi_disable_transcoder(struct int=
el_encoder *encoder)
>=20=20
>  		/* wait for transcoder to be disabled */
>  		if (intel_de_wait_for_clear(dev_priv, PIPECONF(dsi_trans),
> -					    I965_PIPECONF_ACTIVE, 50))
> +					    PIPECONF_STATE_ENABLE, 50))
>  			drm_err(&dev_priv->drm,
>  				"DSI trancoder not disabled\n");
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e293241450b1..4e29032b29d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -386,13 +386,11 @@ intel_wait_for_pipe_off(const struct intel_crtc_sta=
te *old_crtc_state)
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 4) {
>  		enum transcoder cpu_transcoder =3D old_crtc_state->cpu_transcoder;
> -		i915_reg_t reg =3D PIPECONF(cpu_transcoder);
>=20=20
>  		/* Wait for the Pipe State to go off */
> -		if (intel_de_wait_for_clear(dev_priv, reg,
> -					    I965_PIPECONF_ACTIVE, 100))
> -			drm_WARN(&dev_priv->drm, 1,
> -				 "pipe_off wait timed out\n");
> +		if (intel_de_wait_for_clear(dev_priv, PIPECONF(cpu_transcoder),
> +					    PIPECONF_STATE_ENABLE, 100))
> +			drm_WARN(&dev_priv->drm, 1, "pipe_off wait timed out\n");
>  	} else {
>  		intel_wait_for_pipe_scanline_stopped(crtc);
>  	}
> @@ -3338,13 +3336,13 @@ static void i9xx_set_pipeconf(const struct intel_=
crtc_state *crtc_state)
>=20=20
>  		switch (crtc_state->pipe_bpp) {
>  		case 18:
> -			pipeconf |=3D PIPECONF_6BPC;
> +			pipeconf |=3D PIPECONF_BPC_6;
>  			break;
>  		case 24:
> -			pipeconf |=3D PIPECONF_8BPC;
> +			pipeconf |=3D PIPECONF_BPC_8;
>  			break;
>  		case 30:
> -			pipeconf |=3D PIPECONF_10BPC;
> +			pipeconf |=3D PIPECONF_BPC_10;
>  			break;
>  		default:
>  			/* Case prevented by intel_choose_pipe_bpp_dither. */
> @@ -3359,7 +3357,7 @@ static void i9xx_set_pipeconf(const struct intel_cr=
tc_state *crtc_state)
>  		else
>  			pipeconf |=3D PIPECONF_INTERLACE_W_SYNC_SHIFT;
>  	} else {
> -		pipeconf |=3D PIPECONF_PROGRESSIVE;
> +		pipeconf |=3D PIPECONF_INTERLACE_PROGRESSIVE;
>  	}
>=20=20
>  	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> @@ -3537,16 +3535,17 @@ static bool i9xx_get_pipe_config(struct intel_crt=
c *crtc,
>  	if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
>  	    IS_CHERRYVIEW(dev_priv)) {
>  		switch (tmp & PIPECONF_BPC_MASK) {
> -		case PIPECONF_6BPC:
> +		case PIPECONF_BPC_6:
>  			pipe_config->pipe_bpp =3D 18;
>  			break;
> -		case PIPECONF_8BPC:
> +		case PIPECONF_BPC_8:
>  			pipe_config->pipe_bpp =3D 24;
>  			break;
> -		case PIPECONF_10BPC:
> +		case PIPECONF_BPC_10:
>  			pipe_config->pipe_bpp =3D 30;
>  			break;
>  		default:
> +			MISSING_CASE(tmp);
>  			break;
>  		}
>  	}
> @@ -3555,8 +3554,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc =
*crtc,
>  	    (tmp & PIPECONF_COLOR_RANGE_SELECT))
>  		pipe_config->limited_color_range =3D true;
>=20=20
> -	pipe_config->gamma_mode =3D (tmp & PIPECONF_GAMMA_MODE_MASK_I9XX) >>
> -		PIPECONF_GAMMA_MODE_SHIFT;
> +	pipe_config->gamma_mode =3D REG_FIELD_GET(PIPECONF_GAMMA_MODE_MASK_I9XX=
, tmp);
>=20=20
>  	if (IS_CHERRYVIEW(dev_priv))
>  		pipe_config->cgm_mode =3D intel_de_read(dev_priv,
> @@ -3643,16 +3641,16 @@ static void ilk_set_pipeconf(const struct intel_c=
rtc_state *crtc_state)
>=20=20
>  	switch (crtc_state->pipe_bpp) {
>  	case 18:
> -		val |=3D PIPECONF_6BPC;
> +		val |=3D PIPECONF_BPC_6;
>  		break;
>  	case 24:
> -		val |=3D PIPECONF_8BPC;
> +		val |=3D PIPECONF_BPC_8;
>  		break;
>  	case 30:
> -		val |=3D PIPECONF_10BPC;
> +		val |=3D PIPECONF_BPC_10;
>  		break;
>  	case 36:
> -		val |=3D PIPECONF_12BPC;
> +		val |=3D PIPECONF_BPC_12;
>  		break;
>  	default:
>  		/* Case prevented by intel_choose_pipe_bpp_dither. */
> @@ -3660,12 +3658,12 @@ static void ilk_set_pipeconf(const struct intel_c=
rtc_state *crtc_state)
>  	}
>=20=20
>  	if (crtc_state->dither)
> -		val |=3D (PIPECONF_DITHER_EN | PIPECONF_DITHER_TYPE_SP);
> +		val |=3D PIPECONF_DITHER_EN | PIPECONF_DITHER_TYPE_SP;
>=20=20
>  	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> -		val |=3D PIPECONF_INTERLACED_ILK;
> +		val |=3D PIPECONF_INTERLACE_IF_ID_ILK;
>  	else
> -		val |=3D PIPECONF_PROGRESSIVE;
> +		val |=3D PIPECONF_INTERLACE_PF_PD_ILK;
>=20=20
>  	/*
>  	 * This would end up with an odd purple hue over
> @@ -3697,12 +3695,12 @@ static void hsw_set_transconf(const struct intel_=
crtc_state *crtc_state)
>  	u32 val =3D 0;
>=20=20
>  	if (IS_HASWELL(dev_priv) && crtc_state->dither)
> -		val |=3D (PIPECONF_DITHER_EN | PIPECONF_DITHER_TYPE_SP);
> +		val |=3D PIPECONF_DITHER_EN | PIPECONF_DITHER_TYPE_SP;
>=20=20
>  	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> -		val |=3D PIPECONF_INTERLACED_ILK;
> +		val |=3D PIPECONF_INTERLACE_IF_ID_ILK;
>  	else
> -		val |=3D PIPECONF_PROGRESSIVE;
> +		val |=3D PIPECONF_INTERLACE_PF_PD_ILK;
>=20=20
>  	if (IS_HASWELL(dev_priv) &&
>  	    crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB)
> @@ -3996,16 +3994,16 @@ static bool ilk_get_pipe_config(struct intel_crtc=
 *crtc,
>  		goto out;
>=20=20
>  	switch (tmp & PIPECONF_BPC_MASK) {
> -	case PIPECONF_6BPC:
> +	case PIPECONF_BPC_6:
>  		pipe_config->pipe_bpp =3D 18;
>  		break;
> -	case PIPECONF_8BPC:
> +	case PIPECONF_BPC_8:
>  		pipe_config->pipe_bpp =3D 24;
>  		break;
> -	case PIPECONF_10BPC:
> +	case PIPECONF_BPC_10:
>  		pipe_config->pipe_bpp =3D 30;
>  		break;
> -	case PIPECONF_12BPC:
> +	case PIPECONF_BPC_12:
>  		pipe_config->pipe_bpp =3D 36;
>  		break;
>  	default:
> @@ -4025,8 +4023,7 @@ static bool ilk_get_pipe_config(struct intel_crtc *=
crtc,
>  		break;
>  	}
>=20=20
> -	pipe_config->gamma_mode =3D (tmp & PIPECONF_GAMMA_MODE_MASK_ILK) >>
> -		PIPECONF_GAMMA_MODE_SHIFT;
> +	pipe_config->gamma_mode =3D REG_FIELD_GET(PIPECONF_GAMMA_MODE_MASK_ILK,=
 tmp);
>=20=20
>  	pipe_config->csc_mode =3D intel_de_read(dev_priv,
>  					      PIPE_CSC_MODE(crtc->pipe));
> @@ -9990,8 +9987,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_=
priv, enum pipe pipe)
>  		udelay(150); /* wait for warmup */
>  	}
>=20=20
> -	intel_de_write(dev_priv, PIPECONF(pipe),
> -		       PIPECONF_ENABLE | PIPECONF_PROGRESSIVE);
> +	intel_de_write(dev_priv, PIPECONF(pipe), PIPECONF_ENABLE);
>  	intel_de_posting_read(dev_priv, PIPECONF(pipe));
>=20=20
>  	intel_wait_for_pipe_scanline_moving(crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/g=
pu/drm/i915/display/intel_pch_display.c
> index a55c4bfacd0d..81ab761251ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -157,13 +157,13 @@ static void ilk_enable_pch_transcoder(const struct =
intel_crtc_state *crtc_state)
>  		 */
>  		val &=3D ~PIPECONF_BPC_MASK;
>  		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> -			val |=3D PIPECONF_8BPC;
> +			val |=3D PIPECONF_BPC_8;
>  		else
>  			val |=3D pipeconf_val & PIPECONF_BPC_MASK;
>  	}
>=20=20
>  	val &=3D ~TRANS_INTERLACE_MASK;
> -	if ((pipeconf_val & PIPECONF_INTERLACE_MASK) =3D=3D PIPECONF_INTERLACED=
_ILK) {
> +	if ((pipeconf_val & PIPECONF_INTERLACE_MASK_ILK) =3D=3D PIPECONF_INTERL=
ACE_IF_ID_ILK) {
>  		if (HAS_PCH_IBX(dev_priv) &&
>  		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
>  			val |=3D TRANS_LEGACY_INTERLACED_ILK;
> @@ -422,8 +422,7 @@ static void lpt_enable_pch_transcoder(struct drm_i915=
_private *dev_priv,
>  	val =3D TRANS_ENABLE;
>  	pipeconf_val =3D intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
>=20=20
> -	if ((pipeconf_val & PIPECONF_INTERLACE_MASK_HSW) =3D=3D
> -	    PIPECONF_INTERLACED_ILK)
> +	if ((pipeconf_val & PIPECONF_INTERLACE_MASK_HSW) =3D=3D PIPECONF_INTERL=
ACE_IF_ID_ILK)
>  		val |=3D TRANS_INTERLACED;
>  	else
>  		val |=3D TRANS_PROGRESSIVE;
> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gv=
t/display.c
> index 034c060f89d4..b3f47b9944d6 100644
> --- a/drivers/gpu/drm/i915/gvt/display.c
> +++ b/drivers/gpu/drm/i915/gvt/display.c
> @@ -184,7 +184,7 @@ static void emulate_monitor_status_change(struct inte=
l_vgpu *vgpu)
>=20=20
>  		for_each_pipe(dev_priv, pipe) {
>  			vgpu_vreg_t(vgpu, PIPECONF(pipe)) &=3D
> -				~(PIPECONF_ENABLE | I965_PIPECONF_ACTIVE);
> +				~(PIPECONF_ENABLE | PIPECONF_STATE_ENABLE);
>  			vgpu_vreg_t(vgpu, DSPCNTR(pipe)) &=3D ~DISPLAY_PLANE_ENABLE;
>  			vgpu_vreg_t(vgpu, SPRCTL(pipe)) &=3D ~SPRITE_ENABLE;
>  			vgpu_vreg_t(vgpu, CURCNTR(pipe)) &=3D ~MCURSOR_MODE;
> @@ -245,7 +245,7 @@ static void emulate_monitor_status_change(struct inte=
l_vgpu *vgpu)
>  		 *   setup_virtual_dp_monitor.
>  		 */
>  		vgpu_vreg_t(vgpu, PIPECONF(PIPE_A)) |=3D PIPECONF_ENABLE;
> -		vgpu_vreg_t(vgpu, PIPECONF(PIPE_A)) |=3D I965_PIPECONF_ACTIVE;
> +		vgpu_vreg_t(vgpu, PIPECONF(PIPE_A)) |=3D PIPECONF_STATE_ENABLE;
>=20=20
>  		/*
>  		 * Golden M/N are calculated based on:
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/g=
vt/handlers.c
> index cde0a477fb49..a224158303b6 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -701,11 +701,11 @@ static int pipeconf_mmio_write(struct intel_vgpu *v=
gpu, unsigned int offset,
>  	data =3D vgpu_vreg(vgpu, offset);
>=20=20
>  	if (data & PIPECONF_ENABLE) {
> -		vgpu_vreg(vgpu, offset) |=3D I965_PIPECONF_ACTIVE;
> +		vgpu_vreg(vgpu, offset) |=3D PIPECONF_STATE_ENABLE;
>  		vgpu_update_refresh_rate(vgpu);
>  		vgpu_update_vblank_emulation(vgpu, true);
>  	} else {
> -		vgpu_vreg(vgpu, offset) &=3D ~I965_PIPECONF_ACTIVE;
> +		vgpu_vreg(vgpu, offset) &=3D ~PIPECONF_STATE_ENABLE;
>  		vgpu_update_vblank_emulation(vgpu, false);
>  	}
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 8b227dabb10c..d2d5b2fa2a4a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6168,62 +6168,58 @@ enum {
>  #define   PIPEDSL_CURR_FIELD	REG_BIT(31) /* ctg+ */
>  #define   PIPEDSL_LINE_MASK	REG_GENMASK(19, 0)
>  #define _PIPEACONF		0x70008
> -#define   PIPECONF_ENABLE	(1 << 31)
> -#define   PIPECONF_DISABLE	0
> -#define   PIPECONF_DOUBLE_WIDE	(1 << 30)
> -#define   I965_PIPECONF_ACTIVE	(1 << 30)
> -#define   PIPECONF_DSI_PLL_LOCKED	(1 << 29) /* vlv & pipe A only */
> -#define   PIPECONF_FRAME_START_DELAY_MASK	(3 << 27) /* pre-hsw */
> -#define   PIPECONF_FRAME_START_DELAY(x)		((x) << 27) /* pre-hsw: 0-3 */
> -#define   PIPECONF_SINGLE_WIDE	0
> -#define   PIPECONF_PIPE_UNLOCKED 0
> -#define   PIPECONF_PIPE_LOCKED	(1 << 25)
> -#define   PIPECONF_FORCE_BORDER	(1 << 25)
> -#define   PIPECONF_GAMMA_MODE_MASK_I9XX	(1 << 24) /* gmch */
> -#define   PIPECONF_GAMMA_MODE_MASK_ILK	(3 << 24) /* ilk-ivb */
> -#define   PIPECONF_GAMMA_MODE_8BIT	(0 << 24) /* gmch,ilk-ivb */
> -#define   PIPECONF_GAMMA_MODE_10BIT	(1 << 24) /* gmch,ilk-ivb */
> -#define   PIPECONF_GAMMA_MODE_12BIT	(2 << 24) /* ilk-ivb */
> -#define   PIPECONF_GAMMA_MODE_SPLIT	(3 << 24) /* ivb */
> -#define   PIPECONF_GAMMA_MODE(x)	((x) << 24) /* pass in GAMMA_MODE_MODE_=
* */
> -#define   PIPECONF_GAMMA_MODE_SHIFT	24
> -#define   PIPECONF_INTERLACE_MASK	(7 << 21)
> -#define   PIPECONF_INTERLACE_MASK_HSW	(3 << 21)
> -/* Note that pre-gen3 does not support interlaced display directly. Panel
> - * fitting must be disabled on pre-ilk for interlaced. */
> -#define   PIPECONF_PROGRESSIVE			(0 << 21)
> -#define   PIPECONF_INTERLACE_W_SYNC_SHIFT_PANEL	(4 << 21) /* gen4 only */
> -#define   PIPECONF_INTERLACE_W_SYNC_SHIFT	(5 << 21) /* gen4 only */
> -#define   PIPECONF_INTERLACE_W_FIELD_INDICATION	(6 << 21)
> -#define   PIPECONF_INTERLACE_FIELD_0_ONLY	(7 << 21) /* gen3 only */
> -/* Ironlake and later have a complete new set of values for interlaced. =
PFIT
> - * means panel fitter required, PF means progressive fetch, DBL means po=
wer
> - * saving pixel doubling. */
> -#define   PIPECONF_PFIT_PF_INTERLACED_ILK	(1 << 21)
> -#define   PIPECONF_INTERLACED_ILK		(3 << 21)
> -#define   PIPECONF_INTERLACED_DBL_ILK		(4 << 21) /* ilk/snb only */
> -#define   PIPECONF_PFIT_PF_INTERLACED_DBL_ILK	(5 << 21) /* ilk/snb only =
*/
> -#define   PIPECONF_INTERLACE_MODE_MASK		(7 << 21)
> -#define   PIPECONF_EDP_RR_MODE_SWITCH		(1 << 20)
> -#define   PIPECONF_CXSR_DOWNCLOCK	(1 << 16)
> -#define   PIPECONF_EDP_RR_MODE_SWITCH_VLV	(1 << 14)
> -#define   PIPECONF_COLOR_RANGE_SELECT	(1 << 13)
> -#define   PIPECONF_OUTPUT_COLORSPACE_MASK	(3 << 11) /* ilk-ivb */
> -#define   PIPECONF_OUTPUT_COLORSPACE_RGB	(0 << 11) /* ilk-ivb */
> -#define   PIPECONF_OUTPUT_COLORSPACE_YUV601	(1 << 11) /* ilk-ivb */
> -#define   PIPECONF_OUTPUT_COLORSPACE_YUV709	(2 << 11) /* ilk-ivb */
> -#define   PIPECONF_OUTPUT_COLORSPACE_YUV_HSW	(1 << 11) /* hsw only */
> -#define   PIPECONF_BPC_MASK	(0x7 << 5)
> -#define   PIPECONF_8BPC		(0 << 5)
> -#define   PIPECONF_10BPC	(1 << 5)
> -#define   PIPECONF_6BPC		(2 << 5)
> -#define   PIPECONF_12BPC	(3 << 5)
> -#define   PIPECONF_DITHER_EN	(1 << 4)
> -#define   PIPECONF_DITHER_TYPE_MASK (0x0000000c)
> -#define   PIPECONF_DITHER_TYPE_SP (0 << 2)
> -#define   PIPECONF_DITHER_TYPE_ST1 (1 << 2)
> -#define   PIPECONF_DITHER_TYPE_ST2 (2 << 2)
> -#define   PIPECONF_DITHER_TYPE_TEMP (3 << 2)
> +#define   PIPECONF_ENABLE			REG_BIT(31)
> +#define   PIPECONF_DOUBLE_WIDE			REG_BIT(30) /* pre-i965 */
> +#define   PIPECONF_STATE_ENABLE			REG_BIT(30) /* i965+ */
> +#define   PIPECONF_DSI_PLL_LOCKED		REG_BIT(29) /* vlv & pipe A only */
> +#define   PIPECONF_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27) /* pre-hsw=
 */
> +#define   PIPECONF_FRAME_START_DELAY(x)		REG_FIELD_PREP(PIPECONF_FRAME_S=
TART_DELAY_MASK, (x)) /* pre-hsw: 0-3 */
> +#define   PIPECONF_PIPE_LOCKED			REG_BIT(25)
> +#define   PIPECONF_FORCE_BORDER			REG_BIT(25)
> +#define   PIPECONF_GAMMA_MODE_MASK_I9XX		REG_BIT(24) /* gmch */
> +#define   PIPECONF_GAMMA_MODE_MASK_ILK		REG_GENMASK(25, 24) /* ilk-ivb */
> +#define   PIPECONF_GAMMA_MODE_8BIT		REG_FIELD_PREP(PIPECONF_GAMMA_MODE_M=
ASK, 0)
> +#define   PIPECONF_GAMMA_MODE_10BIT		REG_FIELD_PREP(PIPECONF_GAMMA_MODE_=
MASK, 1)
> +#define   PIPECONF_GAMMA_MODE_12BIT		REG_FIELD_PREP(PIPECONF_GAMMA_MODE_=
MASK_ILK, 2) /* ilk-ivb */
> +#define   PIPECONF_GAMMA_MODE_SPLIT		REG_FIELD_PREP(PIPECONF_GAMMA_MODE_=
MASK_ILK, 3) /* ivb */
> +#define   PIPECONF_GAMMA_MODE(x)		REG_FIELD_PREP(PIPECONF_GAMMA_MODE_MAS=
K_ILK, (x)) /* pass in GAMMA_MODE_MODE_* */
> +#define   PIPECONF_INTERLACE_MASK		REG_GENMASK(23, 21) /* gen3+ */
> +#define   PIPECONF_INTERLACE_PROGRESSIVE	REG_FIELD_PREP(PIPECONF_INTERLA=
CE_MASK, 0)
> +#define   PIPECONF_INTERLACE_W_SYNC_SHIFT_PANEL	REG_FIELD_PREP(PIPECONF_=
INTERLACE_MASK, 4) /* gen4 only */
> +#define   PIPECONF_INTERLACE_W_SYNC_SHIFT	REG_FIELD_PREP(PIPECONF_INTERL=
ACE_MASK, 5) /* gen4 only */
> +#define   PIPECONF_INTERLACE_W_FIELD_INDICATION	REG_FIELD_PREP(PIPECONF_=
INTERLACE_MASK, 6)
> +#define   PIPECONF_INTERLACE_FIELD_0_ONLY	REG_FIELD_PREP(PIPECONF_INTERL=
ACE_MASK, 7) /* gen3 only */
> +/*
> + * ilk+: PF/D=3Dprogressive fetch/display, IF/D=3Dinterlaced fetch/displ=
ay,
> + * DBL=3Dpower saving pixel doubling, PF-ID* requires panel fitter
> + */
> +#define   PIPECONF_INTERLACE_MASK_ILK		REG_GENMASK(23, 21) /* ilk+ */
> +#define   PIPECONF_INTERLACE_MASK_HSW		REG_GENMASK(22, 21) /* hsw+ */
> +#define   PIPECONF_INTERLACE_PF_PD_ILK		REG_FIELD_PREP(PIPECONF_INTERLAC=
E_MASK_ILK, 0)
> +#define   PIPECONF_INTERLACE_PF_ID_ILK		REG_FIELD_PREP(PIPECONF_INTERLAC=
E_MASK_ILK, 1)
> +#define   PIPECONF_INTERLACE_IF_ID_ILK		REG_FIELD_PREP(PIPECONF_INTERLAC=
E_MASK_ILK, 3)
> +#define   PIPECONF_INTERLACE_IF_ID_DBL_ILK	REG_FIELD_PREP(PIPECONF_INTER=
LACE_MASK_ILK, 4) /* ilk/snb only */
> +#define   PIPECONF_INTERLACE_PF_ID_DBL_ILK	REG_FIELD_PREP(PIPECONF_INTER=
LACE_MASK_ILK, 5) /* ilk/snb only */
> +#define   PIPECONF_EDP_RR_MODE_SWITCH		REG_BIT(20)
> +#define   PIPECONF_CXSR_DOWNCLOCK		REG_BIT(16)
> +#define   PIPECONF_EDP_RR_MODE_SWITCH_VLV	REG_BIT(14)
> +#define   PIPECONF_COLOR_RANGE_SELECT		REG_BIT(13)
> +#define   PIPECONF_OUTPUT_COLORSPACE_MASK	REG_GENMASK(12, 11) /* ilk-ivb=
 */
> +#define   PIPECONF_OUTPUT_COLORSPACE_RGB	REG_FIELD_PREP(PIPECONF_OUTPUT_=
COLORSPACE_MASK, 0) /* ilk-ivb */
> +#define   PIPECONF_OUTPUT_COLORSPACE_YUV601	REG_FIELD_PREP(PIPECONF_OUTP=
UT_COLORSPACE_MASK, 1) /* ilk-ivb */
> +#define   PIPECONF_OUTPUT_COLORSPACE_YUV709	REG_FIELD_PREP(PIPECONF_OUTP=
UT_COLORSPACE_MASK, 2) /* ilk-ivb */
> +#define   PIPECONF_OUTPUT_COLORSPACE_YUV_HSW	REG_BIT(11) /* hsw only */
> +#define   PIPECONF_BPC_MASK			REG_GENMASK(7, 5) /* ctg-ivb */
> +#define   PIPECONF_BPC_8			REG_FIELD_PREP(PIPECONF_BPC_MASK, 0)
> +#define   PIPECONF_BPC_10			REG_FIELD_PREP(PIPECONF_BPC_MASK, 1)
> +#define   PIPECONF_BPC_6			REG_FIELD_PREP(PIPECONF_BPC_MASK, 2)
> +#define   PIPECONF_BPC_12			REG_FIELD_PREP(PIPECONF_BPC_MASK, 3)
> +#define   PIPECONF_DITHER_EN			REG_BIT(4)
> +#define   PIPECONF_DITHER_TYPE_MASK		REG_GENMASK(3, 2)
> +#define   PIPECONF_DITHER_TYPE_SP		REG_FIELD_PREP(PIPECONF_DITHER_TYPE_M=
ASK, 0)
> +#define   PIPECONF_DITHER_TYPE_ST1		REG_FIELD_PREP(PIPECONF_DITHER_TYPE_=
MASK, 1)
> +#define   PIPECONF_DITHER_TYPE_ST2		REG_FIELD_PREP(PIPECONF_DITHER_TYPE_=
MASK, 2)
> +#define   PIPECONF_DITHER_TYPE_TEMP		REG_FIELD_PREP(PIPECONF_DITHER_TYPE=
_MASK, 3)
>  #define _PIPEASTAT		0x70024
>  #define   PIPE_FIFO_UNDERRUN_STATUS		(1UL << 31)
>  #define   SPRITE1_FLIP_DONE_INT_EN_VLV		(1UL << 30)

--=20
Jani Nikula, Intel Open Source Graphics Center
