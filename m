Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16446290B32
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 20:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F3386EE4A;
	Fri, 16 Oct 2020 18:16:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38B086EE46
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 18:16:00 +0000 (UTC)
IronPort-SDR: fFS+rcp4yUiB0S+5FDpR2SiGlP+ynOIFErmWWjs8XKqL8Q7GzoTBpaOm/tmZ9zqJFH0goze1RG
 h1pe0VyfXhDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9776"; a="166735715"
X-IronPort-AV: E=Sophos;i="5.77,383,1596524400"; d="scan'208";a="166735715"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2020 11:15:59 -0700
IronPort-SDR: 3S/cyzJ63iwbvUfaO/m9XK2RtfWuihZ4nGqsu6QtHwKT9N/0DEHT/91qMu4AINs1fKxMJctgsH
 Fm/26oZYaSRA==
X-IronPort-AV: E=Sophos;i="5.77,383,1596524400"; d="scan'208";a="531819049"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2020 11:15:59 -0700
Date: Fri, 16 Oct 2020 11:17:33 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201016181733.GA4421@labuser-Z97X-UD5H>
References: <20201008214535.22942-1-manasi.d.navare@intel.com>
 <20201008214535.22942-6-manasi.d.navare@intel.com>
 <20201015130705.GL6112@intel.com>
 <20201015163741.GB28888@labuser-Z97X-UD5H>
 <20201016160620.GP6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201016160620.GP6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v10 06/11] drm/i915: Enable big joiner
 support in enable and disable sequences.
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

On Fri, Oct 16, 2020 at 07:06:20PM +0300, Ville Syrj=E4l=E4 wrote:
> On Thu, Oct 15, 2020 at 09:37:47AM -0700, Navare, Manasi wrote:
> > On Thu, Oct 15, 2020 at 04:07:05PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Thu, Oct 08, 2020 at 02:45:30PM -0700, Manasi Navare wrote:
> > > > @@ -4504,6 +4514,29 @@ void intel_ddi_get_config(struct intel_encod=
er *encoder,
> > > >  	default:
> > > >  		break;
> > > >  	}
> > > > +}
> > > > +
> > > > +void intel_ddi_get_config(struct intel_encoder *encoder,
> > > > +			  struct intel_crtc_state *pipe_config)
> > > > +{
> > > > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > > +	enum transcoder cpu_transcoder =3D pipe_config->cpu_transcoder;
> > > > +
> > > > +	/* XXX: DSI transcoder paranoia */
> > > > +	if (WARN_ON(transcoder_is_dsi(cpu_transcoder)))
> > > > +		return;
> > > > +
> > > > +	intel_ddi_read_func_ctl(encoder, pipe_config);
> > > > +	if (pipe_config->bigjoiner_slave) {
> > > > +		/* read out pipe settings from master */
> > > > +		enum transcoder save =3D pipe_config->cpu_transcoder;
> > > > +
> > > > +		/* Our own transcoder needs to be disabled when reading it in in=
tel_ddi_read_func_ctl() */
> > > > +		WARN_ON(pipe_config->output_types);
> > > > +		pipe_config->cpu_transcoder =3D (enum transcoder)pipe_config->bi=
gjoiner_linked_crtc->pipe;
> > > > +		intel_ddi_read_func_ctl(encoder, pipe_config);
> > > > +		pipe_config->cpu_transcoder =3D save;
> > > > +	}
> > > =

> > > This stuff is rather horrible. Shouldn't both pipes be using the
> > > same transcoder anyway? If so, is this stuff here just because
> > > we've miscalculated cpu_transcoder for the slave?
> > =

> > Well honestly @Maarten wrote this and I believe had several iterations =
of reviews with you.
> > So he can explain better.
> > My understanding so far was that there is no encoder /transcoder for sl=
ave and thats
> > why for bigjoiner_slave we actually read stuff from master
> > So why is this wrong?
> > =

> > > =

> > > >  =

> > > >  	pipe_config->has_audio =3D
> > > >  		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
> > > > @@ -4529,7 +4562,8 @@ void intel_ddi_get_config(struct intel_encode=
r *encoder,
> > > >  		dev_priv->vbt.edp.bpp =3D pipe_config->pipe_bpp;
> > > >  	}
> > > >  =

> > > > -	intel_ddi_clock_get(encoder, pipe_config);
> > > > +	if (!pipe_config->bigjoiner_slave)
> > > > +		intel_ddi_clock_get(encoder, pipe_config);
> > > >  =

> > > >  	if (IS_GEN9_LP(dev_priv))
> > > >  		pipe_config->lane_lat_optim_mask =3D
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers=
/gpu/drm/i915/display/intel_display.c
> > > > index 37b56f4c2401..faf8bf757bed 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -7125,6 +7125,45 @@ static void hsw_set_frame_start_delay(const =
struct intel_crtc_state *crtc_state)
> > > >  	intel_de_write(dev_priv, reg, val);
> > > >  }
> > > >  =

> > > > +static void tgl_ddi_bigjoiner_pre_enable(struct intel_atomic_state=
 *state,
> > > > +					 const struct intel_crtc_state *crtc_state)
> > > > +{
> > > > +	struct intel_crtc *master =3D to_intel_crtc(crtc_state->uapi.crtc=
);
> > > > +	struct intel_crtc_state *master_crtc_state;
> > > > +	struct drm_connector_state *conn_state;
> > > > +	struct drm_connector *conn;
> > > > +	struct intel_encoder *encoder =3D NULL;
> > > > +	int i;
> > > > +
> > > > +	if (crtc_state->bigjoiner_slave)
> > > > +		master =3D crtc_state->bigjoiner_linked_crtc;
> > > > +
> > > > +	master_crtc_state =3D intel_atomic_get_new_crtc_state(state, mast=
er);
> > > > +
> > > > +	for_each_new_connector_in_state(&state->base, conn, conn_state, i=
) {
> > > > +		if (conn_state->crtc !=3D &master->base)
> > > > +			continue;
> > > > +
> > > > +		encoder =3D to_intel_encoder(conn_state->best_encoder);
> > > > +		break;
> > > > +	}
> > > > +
> > > > +	if (!crtc_state->bigjoiner_slave) {
> > > > +		/* need to enable VDSC, which we skipped in pre-enable */
> > > > +		intel_dsc_enable(encoder, crtc_state);
> > > > +	} else {
> > > > +		/*
> > > > +		 * Enable sequence steps 1-7 on bigjoiner master
> > > > +		 */
> > > > +		intel_encoders_pre_pll_enable(state, master);
> > > > +		intel_enable_shared_dpll(master_crtc_state);
> > > > +		intel_encoders_pre_enable(state, master);
> > > > +
> > > > +		/* and DSC on slave */
> > > > +		intel_dsc_enable(NULL, crtc_state);
> > > > +	}
> > > > +}
> > > > +
> > > >  static void hsw_crtc_enable(struct intel_atomic_state *state,
> > > >  			    struct intel_crtc *crtc)
> > > >  {
> > > > @@ -7138,34 +7177,39 @@ static void hsw_crtc_enable(struct intel_at=
omic_state *state,
> > > >  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> > > >  		return;
> > > >  =

> > > > -	intel_encoders_pre_pll_enable(state, crtc);
> > > > -
> > > > -	if (new_crtc_state->shared_dpll)
> > > > -		intel_enable_shared_dpll(new_crtc_state);
> > > > +	if (!new_crtc_state->bigjoiner) {
> > > > +		intel_encoders_pre_pll_enable(state, crtc);
> > > >  =

> > > > -	intel_encoders_pre_enable(state, crtc);
> > > > +		if (new_crtc_state->shared_dpll)
> > > > +			intel_enable_shared_dpll(new_crtc_state);
> > > >  =

> > > > -	if (!transcoder_is_dsi(cpu_transcoder))
> > > > -		intel_set_transcoder_timings(new_crtc_state);
> > > > +		intel_encoders_pre_enable(state, crtc);
> > > > +	} else {
> > > > +		tgl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
> > > > +	}
> > > >  =

> > > >  	intel_set_pipe_src_size(new_crtc_state);
> > > > +	if (INTEL_GEN(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv))
> > > > +		bdw_set_pipemisc(new_crtc_state);
> > > >  =

> > > > -	if (cpu_transcoder !=3D TRANSCODER_EDP &&
> > > > -	    !transcoder_is_dsi(cpu_transcoder))
> > > > -		intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
> > > > -			       new_crtc_state->pixel_multiplier - 1);
> > > > +	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_tr=
anscoder)) {
> > > > +		if (!transcoder_is_dsi(cpu_transcoder))
> > > > +			intel_set_transcoder_timings(new_crtc_state);
> > > >  =

> > > > -	if (new_crtc_state->has_pch_encoder)
> > > > -		intel_cpu_transcoder_set_m_n(new_crtc_state,
> > > > -					     &new_crtc_state->fdi_m_n, NULL);
> > > > +		if (cpu_transcoder !=3D TRANSCODER_EDP &&
> > > > +		    !transcoder_is_dsi(cpu_transcoder))
> > > > +			intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
> > > > +				       new_crtc_state->pixel_multiplier - 1);
> > > > +
> > > > +		if (new_crtc_state->has_pch_encoder)
> > > > +			intel_cpu_transcoder_set_m_n(new_crtc_state,
> > > > +						     &new_crtc_state->fdi_m_n, NULL);
> > > >  =

> > > > -	if (!transcoder_is_dsi(cpu_transcoder)) {
> > > >  		hsw_set_frame_start_delay(new_crtc_state);
> > > > -		hsw_set_pipeconf(new_crtc_state);
> > > >  	}
> > > >  =

> > > > -	if (INTEL_GEN(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv))
> > > > -		bdw_set_pipemisc(new_crtc_state);
> > > > +	if (!transcoder_is_dsi(cpu_transcoder))
> > > > +		hsw_set_pipeconf(new_crtc_state);
> > > >  =

> > > >  	crtc->active =3D true;
> > > >  =

> > > > @@ -7201,6 +7245,11 @@ static void hsw_crtc_enable(struct intel_ato=
mic_state *state,
> > > >  	if (INTEL_GEN(dev_priv) >=3D 11)
> > > >  		icl_pipe_mbus_enable(crtc);
> > > >  =

> > > > +	if (new_crtc_state->bigjoiner_slave) {
> > > > +		trace_intel_pipe_enable(crtc);
> > > > +		intel_crtc_vblank_on(new_crtc_state);
> > > > +	}
> > > > +
> > > >  	intel_encoders_enable(state, crtc);
> > > >  =

> > > >  	if (psl_clkgate_wa) {
> > > > @@ -7495,6 +7544,9 @@ static u64 get_crtc_power_domains(struct inte=
l_crtc_state *crtc_state)
> > > >  	if (crtc_state->shared_dpll)
> > > >  		mask |=3D BIT_ULL(POWER_DOMAIN_DISPLAY_CORE);
> > > >  =

> > > > +	if (crtc_state->dsc.compression_enable)
> > > > +		mask |=3D BIT_ULL(intel_dsc_power_domain(crtc_state));
> > > > +
> > > >  	return mask;
> > > >  }
> > > >  =

> > > > @@ -8113,6 +8165,30 @@ static u32 ilk_pipe_pixel_rate(const struct =
intel_crtc_state *crtc_state)
> > > >  		       pfit_w * pfit_h);
> > > >  }
> > > >  =

> > > > +static void intel_encoder_get_config(struct intel_encoder *encoder,
> > > > +				     struct intel_crtc_state *crtc_state)
> > > > +{
> > > > +	struct drm_display_mode *pipe_mode =3D &crtc_state->hw.pipe_mode;
> > > > +
> > > > +	encoder->get_config(encoder, crtc_state);
> > > > +
> > > > +	*pipe_mode =3D crtc_state->hw.adjusted_mode;
> > > > +	if (crtc_state->bigjoiner) {
> > > > +		/*
> > > > +		 * transcoder is programmed to the full mode,
> > > > +		 * but pipe timings are half of the transcoder mode
> > > > +		 */
> > > > +		pipe_mode->crtc_hdisplay /=3D 2;
> > > > +		pipe_mode->crtc_hblank_start /=3D 2;
> > > > +		pipe_mode->crtc_hblank_end /=3D 2;
> > > > +		pipe_mode->crtc_hsync_start /=3D 2;
> > > > +		pipe_mode->crtc_hsync_end /=3D 2;
> > > > +		pipe_mode->crtc_htotal /=3D 2;
> > > > +		pipe_mode->crtc_hskew /=3D 2;
> > > > +		pipe_mode->crtc_clock /=3D 2;
> > > > +	}
> > > > +}
> > > > +
> > > >  static void intel_crtc_compute_pixel_rate(struct intel_crtc_state =
*crtc_state)
> > > >  {
> > > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.cr=
tc->dev);
> > > > @@ -9027,20 +9103,22 @@ static void intel_get_pipe_src_size(struct =
intel_crtc *crtc,
> > > >  void intel_mode_from_pipe_config(struct drm_display_mode *mode,
> > > >  				 struct intel_crtc_state *pipe_config)
> > > >  {
> > > > -	mode->hdisplay =3D pipe_config->hw.adjusted_mode.crtc_hdisplay;
> > > > -	mode->htotal =3D pipe_config->hw.adjusted_mode.crtc_htotal;
> > > > -	mode->hsync_start =3D pipe_config->hw.adjusted_mode.crtc_hsync_st=
art;
> > > > -	mode->hsync_end =3D pipe_config->hw.adjusted_mode.crtc_hsync_end;
> > > > +	struct drm_display_mode *hw_mode =3D &pipe_config->hw.adjusted_mo=
de;
> > > > +
> > > > +	mode->hdisplay =3D hw_mode->crtc_hdisplay;
> > > > +	mode->htotal =3D hw_mode->crtc_htotal;
> > > > +	mode->hsync_start =3D hw_mode->crtc_hsync_start;
> > > > +	mode->hsync_end =3D hw_mode->crtc_hsync_end;
> > > >  =

> > > > -	mode->vdisplay =3D pipe_config->hw.adjusted_mode.crtc_vdisplay;
> > > > -	mode->vtotal =3D pipe_config->hw.adjusted_mode.crtc_vtotal;
> > > > -	mode->vsync_start =3D pipe_config->hw.adjusted_mode.crtc_vsync_st=
art;
> > > > -	mode->vsync_end =3D pipe_config->hw.adjusted_mode.crtc_vsync_end;
> > > > +	mode->vdisplay =3D hw_mode->crtc_vdisplay;
> > > > +	mode->vtotal =3D hw_mode->crtc_vtotal;
> > > > +	mode->vsync_start =3D hw_mode->crtc_vsync_start;
> > > > +	mode->vsync_end =3D hw_mode->crtc_vsync_end;
> > > >  =

> > > > -	mode->flags =3D pipe_config->hw.adjusted_mode.flags;
> > > > +	mode->flags =3D hw_mode->flags;
> > > >  	mode->type =3D DRM_MODE_TYPE_DRIVER;
> > > >  =

> > > > -	mode->clock =3D pipe_config->hw.adjusted_mode.crtc_clock;
> > > > +	mode->clock =3D hw_mode->crtc_clock;
> > > >  =

> > > >  	drm_mode_set_name(mode);
> > > >  }
> > > > @@ -11207,6 +11285,9 @@ static void hsw_get_ddi_port_state(struct i=
ntel_crtc *crtc,
> > > >  	} else {
> > > >  		tmp =3D intel_de_read(dev_priv,
> > > >  				    TRANS_DDI_FUNC_CTL(cpu_transcoder));
> > > > +		if (!(tmp & TRANS_DDI_FUNC_ENABLE))
> > > > +			return;
> > > > +
> > > >  		if (INTEL_GEN(dev_priv) >=3D 12)
> > > >  			port =3D TGL_TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
> > > >  		else
> > > > @@ -11279,12 +11360,20 @@ static bool hsw_get_pipe_config(struct in=
tel_crtc *crtc,
> > > >  		drm_WARN_ON(&dev_priv->drm, active);
> > > >  		active =3D true;
> > > >  	}
> > > > +	intel_dsc_get_config(pipe_config);
> > > >  =

> > > > -	if (!active)
> > > > -		goto out;
> > > > +	if (!active) {
> > > > +		/* bigjoiner slave doesn't enable transcoder */
> > > > +		if (!pipe_config->bigjoiner_slave)
> > > > +			goto out;
> > > >  =

> > > > -	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
> > > > -	    INTEL_GEN(dev_priv) >=3D 11) {
> > > > +		active =3D true;
> > > > +		pipe_config->pixel_multiplier =3D 1;
> > > > +
> > > > +		/* we cannot read out most state, so don't bother.. */
> > > > +		pipe_config->quirks |=3D PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE;
> > > > +	} else if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
> > > > +		   INTEL_GEN(dev_priv) >=3D 11) {
> > > >  		hsw_get_ddi_port_state(crtc, pipe_config);
> > > >  		intel_get_transcoder_timings(crtc, pipe_config);
> > > >  	}
> > > > @@ -11370,8 +11459,11 @@ static bool hsw_get_pipe_config(struct int=
el_crtc *crtc,
> > > >  		}
> > > >  	}
> > > >  =

> > > > -	if (pipe_config->cpu_transcoder !=3D TRANSCODER_EDP &&
> > > > -	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
> > > > +	if (pipe_config->bigjoiner_slave) {
> > > > +		/* Cannot be read out as a slave, set to 0. */
> > > > +		pipe_config->pixel_multiplier =3D 0;
> > > > +	} else if (pipe_config->cpu_transcoder !=3D TRANSCODER_EDP &&
> > > > +		    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
> > > >  		pipe_config->pixel_multiplier =3D
> > > >  			intel_de_read(dev_priv,
> > > >  				      PIPE_MULT(pipe_config->cpu_transcoder)) + 1;
> > > > @@ -12386,7 +12478,7 @@ intel_encoder_current_mode(struct intel_enc=
oder *encoder)
> > > >  		return NULL;
> > > >  	}
> > > >  =

> > > > -	encoder->get_config(encoder, crtc_state);
> > > > +	intel_encoder_get_config(encoder, crtc_state);
> > > >  =

> > > >  	intel_mode_from_pipe_config(mode, crtc_state);
> > > >  =

> > > > @@ -13385,12 +13477,15 @@ intel_crtc_copy_uapi_to_hw_state(struct i=
ntel_atomic_state *state,
> > > >  	intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc_state);
> > > >  }
> > > >  =

> > > > -static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_sta=
te *crtc_state)
> > > > +static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_sta=
te *crtc_state,
> > > > +					     struct drm_display_mode *user_mode)
> > > >  {
> > > > -	crtc_state->uapi.enable =3D crtc_state->hw.enable;
> > > > -	crtc_state->uapi.active =3D crtc_state->hw.active;
> > > > -	drm_WARN_ON(crtc_state->uapi.crtc->dev,
> > > > -		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, &crtc_state-=
>hw.mode) < 0);
> > > > +	if (!crtc_state->bigjoiner_slave) {
> > > > +		crtc_state->uapi.enable =3D crtc_state->hw.enable;
> > > > +		crtc_state->uapi.active =3D crtc_state->hw.active;
> > > > +		drm_WARN_ON(crtc_state->uapi.crtc->dev,
> > > > +			    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, user_mode) =
< 0);
> > > > +	}
> > > >  =

> > > >  	crtc_state->uapi.adjusted_mode =3D crtc_state->hw.adjusted_mode;
> > > >  =

> > > > @@ -14027,21 +14122,42 @@ intel_pipe_config_compare(const struct in=
tel_crtc_state *current_config,
> > > >  =

> > > >  	PIPE_CONF_CHECK_X(output_types);
> > > >  =

> > > > -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hdisplay);
> > > > -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_htotal);
> > > > -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_start);
> > > > -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_end);
> > > > -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_start);
> > > > -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_end);
> > > > -
> > > > -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vdisplay);
> > > > -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vtotal);
> > > > -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_start);
> > > > -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_end);
> > > > -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_start);
> > > > -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_end);
> > > > -
> > > > -	PIPE_CONF_CHECK_I(pixel_multiplier);
> > > > +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE)) {
> > > > +		/* bigjoiner mode =3D transcoder mode / 2, for calculations */
> > > > +		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hdisplay);
> > > > +		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_htotal);
> > > > +		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vdisplay);
> > > > +		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_vtotal);
> > > > +
> > > > +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hdisplay);
> > > > +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_htotal);
> > > > +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_start);
> > > > +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_end);
> > > > +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_start);
> > > > +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hsync_end);
> > > > +
> > > > +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vdisplay);
> > > > +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vtotal);
> > > > +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_start);
> > > > +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vblank_end);
> > > > +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_start);
> > > > +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_vsync_end);
> > > > +
> > > > +		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> > > > +				      DRM_MODE_FLAG_INTERLACE);
> > > > +
> > > > +		if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
> > > > +			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> > > > +					      DRM_MODE_FLAG_PHSYNC);
> > > > +			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> > > > +					      DRM_MODE_FLAG_NHSYNC);
> > > > +			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> > > > +					      DRM_MODE_FLAG_PVSYNC);
> > > > +			PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> > > > +					      DRM_MODE_FLAG_NVSYNC);
> > > > +		}
> > > > +		PIPE_CONF_CHECK_I(pixel_multiplier);
> > > > +	}
> > > >  	PIPE_CONF_CHECK_I(output_format);
> > > >  	PIPE_CONF_CHECK_BOOL(has_hdmi_sink);
> > > >  	if ((INTEL_GEN(dev_priv) < 8 && !IS_HASWELL(dev_priv)) ||
> > > > @@ -14051,24 +14167,11 @@ intel_pipe_config_compare(const struct in=
tel_crtc_state *current_config,
> > > >  	PIPE_CONF_CHECK_BOOL(hdmi_scrambling);
> > > >  	PIPE_CONF_CHECK_BOOL(hdmi_high_tmds_clock_ratio);
> > > >  	PIPE_CONF_CHECK_BOOL(has_infoframe);
> > > > -	PIPE_CONF_CHECK_BOOL(fec_enable);
> > > > +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE))
> > > > +		PIPE_CONF_CHECK_BOOL(fec_enable);
> > > >  =

> > > >  	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
> > > >  =

> > > > -	PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> > > > -			      DRM_MODE_FLAG_INTERLACE);
> > > > -
> > > > -	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
> > > > -		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> > > > -				      DRM_MODE_FLAG_PHSYNC);
> > > > -		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> > > > -				      DRM_MODE_FLAG_NHSYNC);
> > > > -		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> > > > -				      DRM_MODE_FLAG_PVSYNC);
> > > > -		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> > > > -				      DRM_MODE_FLAG_NVSYNC);
> > > > -	}
> > > > -
> > > >  	PIPE_CONF_CHECK_X(gmch_pfit.control);
> > > >  	/* pfit ratios are autocomputed by the hw on gen4+ */
> > > >  	if (INTEL_GEN(dev_priv) < 4)
> > > > @@ -14094,7 +14197,8 @@ intel_pipe_config_compare(const struct inte=
l_crtc_state *current_config,
> > > >  		}
> > > >  =

> > > >  		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
> > > > -		PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
> > > > +		if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE))
> > > > +			PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
> > > >  =

> > > >  		PIPE_CONF_CHECK_X(gamma_mode);
> > > >  		if (IS_CHERRYVIEW(dev_priv))
> > > > @@ -14115,48 +14219,51 @@ intel_pipe_config_compare(const struct in=
tel_crtc_state *current_config,
> > > >  	PIPE_CONF_CHECK_BOOL(double_wide);
> > > >  =

> > > >  	PIPE_CONF_CHECK_P(shared_dpll);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.fp1);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.wrpll);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.spll);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.ctrl1);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr1);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr2);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr0);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.ebb0);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.ebb4);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.pll0);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.pll1);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.pll2);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.pll3);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.pll6);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.pll8);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.pll9);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.pll10);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.pcsdw12);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_refclkin_ctl);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_coreclkctl1);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_hsclkctl);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div0);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div1);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_lf);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_frac_lock);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_ssc);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_bias);
> > > > -	PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_tdc_coldst_bias);
> > > > -
> > > > -	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
> > > > -	PIPE_CONF_CHECK_X(dsi_pll.div);
> > > > -
> > > > -	if (IS_G4X(dev_priv) || INTEL_GEN(dev_priv) >=3D 5)
> > > > -		PIPE_CONF_CHECK_I(pipe_bpp);
> > > > -
> > > > -	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
> > > > -	PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
> > > > -
> > > > -	PIPE_CONF_CHECK_I(min_voltage_level);
> > > > +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE)) {
> > > =

> > > This looks super sketchy. I don't see why we'd want to skip all this
> > > state checking for bigjoiner.
> > =

> > For big joiner slave we do not enable plls and hence it doesnt make sen=
se
> > to compare the hw state of plls for big joiner slave
> =

> This is skipping far more than just plls. Also I think the state should
> still match whether it has its own pll or not. I kinda think we should
> have a pll for both pipes actually since that would avoid all this
> special case code that will just end up breaking all the time.

Only the adjusted mode and pipe mode and port clock can be taken out of thi=
s condition.
But we cannot have a pll for the slave that contradicts the Bspec modeset e=
nable sequence.

Manasi

> =

> > =

> > Manasi
> > =

> > > =

> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.fp1);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.wrpll);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.spll);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.ctrl1);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr1);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr2);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.cfgcr0);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.ebb0);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.ebb4);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.pll0);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.pll1);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.pll2);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.pll3);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.pll6);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.pll8);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.pll9);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.pll10);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.pcsdw12);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_refclkin_ctl);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_coreclkctl1);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_clktop2_hsclkctl);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div0);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_div1);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_lf);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_frac_lock);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_ssc);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_bias);
> > > > +		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_tdc_coldst_bias);
> > > > +
> > > > +		PIPE_CONF_CHECK_X(dsi_pll.ctrl);
> > > > +		PIPE_CONF_CHECK_X(dsi_pll.div);
> > > > +
> > > > +		if (IS_G4X(dev_priv) || INTEL_GEN(dev_priv) >=3D 5)
> > > > +			PIPE_CONF_CHECK_I(pipe_bpp);
> > > > +
> > > > +		PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
> > > > +		PIPE_CONF_CHECK_CLOCK_FUZZY(hw.pipe_mode.crtc_clock);
> > > > +		PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
> > > > +
> > > > +		PIPE_CONF_CHECK_I(min_voltage_level);
> > > > +	}
> > > >  =

> > > >  	PIPE_CONF_CHECK_X(infoframes.enable);
> > > >  	PIPE_CONF_CHECK_X(infoframes.gcp);
> > > -- =

> > > Ville Syrj=E4l=E4
> > > Intel
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
