Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0BB2849CB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 11:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4C126E43A;
	Tue,  6 Oct 2020 09:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF5D26E43A
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 09:55:49 +0000 (UTC)
IronPort-SDR: c6Yjh9GEiwYgzU1AZuKtLXfc8mjJJuKDy5FqkGYMLGqbIXiunhj0DhzsG5KwvoSJKtDOozDtej
 qLyj+XZeec0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161040108"
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="161040108"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:55:48 -0700
IronPort-SDR: Ctl2eDHaC+Fr6Dx6aArOmBOA8RL5qrQ+/g5FiKTvN80pgq6tksSq9zL93LM5nravz+B6DaMhBc
 CNkt6g+SOUqg==
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="460723056"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:55:46 -0700
Date: Tue, 6 Oct 2020 12:55:43 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201006095543.GA1494421@ideak-desk.fi.intel.com>
References: <20201003010708.1272753-1-imre.deak@intel.com>
 <20201005215311.1475666-1-imre.deak@intel.com>
 <87d01vk7vh.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d01vk7vh.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/i915: Move the initial fastset
 commit check to encoder hooks
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 06, 2020 at 12:42:58PM +0300, Jani Nikula wrote:
> On Tue, 06 Oct 2020, Imre Deak <imre.deak@intel.com> wrote:
> > Move the checks to decide whether a fastset is possible during the
> > initial commit to an encoder hook. This check is really encoder specific
> > and the next patch will also require this adding a DP encoder specific
> > check.
> >
> > v2: Fix negated condition in gen11_dsi_initial_fastset_check().
> > v3: Make sure to call the hook for all encoders on the crtc. (Ville)
> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c        | 14 ++++++++++
> >  drivers/gpu/drm/i915/display/intel_ddi.c      | 10 +++++++
> >  drivers/gpu/drm/i915/display/intel_display.c  | 27 ++++++++-----------
> >  .../drm/i915/display/intel_display_types.h    |  8 ++++++
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 22 +++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dp.h       |  3 +++
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 10 +++++++
> >  7 files changed, 78 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i=
915/display/icl_dsi.c
> > index fe946a2e2082..4400e83f783f 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1668,6 +1668,19 @@ static bool gen11_dsi_get_hw_state(struct intel_=
encoder *encoder,
> >  	return ret;
> >  }
> >  =

> > +static bool gen11_dsi_initial_fastset_check(struct intel_encoder *enco=
der,
> > +					    struct intel_crtc_state *crtc_state)
> > +{
> > +	if (crtc_state->dsc.compression_enable) {
> > +		drm_dbg_kms(encoder->base.dev, "Forcing full modeset due to DSC bein=
g enabled\n");
> > +		crtc_state->uapi.mode_changed =3D true;
> =

> Just musing... if it's a *check*, why do we pass in a non-const
> crtc_state and modify it here?
> =

> Would it not be cleaner to pass in const crtc_state and set
> crtc_state->uapi.mode_changed in the caller based on the return value?

The encoder can update the *_changed flags in crtc_state depending on
what is preventing a fastset.

> =

> BR,
> Jani.
> =

> =

> > +
> > +		return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> >  static void gen11_dsi_encoder_destroy(struct drm_encoder *encoder)
> >  {
> >  	intel_encoder_destroy(encoder);
> > @@ -1923,6 +1936,7 @@ void icl_dsi_init(struct drm_i915_private *dev_pr=
iv)
> >  	encoder->update_pipe =3D intel_panel_update_backlight;
> >  	encoder->compute_config =3D gen11_dsi_compute_config;
> >  	encoder->get_hw_state =3D gen11_dsi_get_hw_state;
> > +	encoder->initial_fastset_check =3D gen11_dsi_initial_fastset_check;
> >  	encoder->type =3D INTEL_OUTPUT_DSI;
> >  	encoder->cloneable =3D 0;
> >  	encoder->pipe_mask =3D ~0;
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm=
/i915/display/intel_ddi.c
> > index b4c520348b3b..4e54c55ec99f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4564,6 +4564,15 @@ void intel_ddi_get_config(struct intel_encoder *=
encoder,
> >  	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
> >  }
> >  =

> > +static bool intel_ddi_initial_fastset_check(struct intel_encoder *enco=
der,
> > +					    struct intel_crtc_state *crtc_state)
> > +{
> > +	if (intel_crtc_has_dp_encoder(crtc_state))
> > +		return intel_dp_initial_fastset_check(encoder, crtc_state);
> > +
> > +	return true;
> > +}
> > +
> >  static enum intel_output_type
> >  intel_ddi_compute_output_type(struct intel_encoder *encoder,
> >  			      struct intel_crtc_state *crtc_state,
> > @@ -5173,6 +5182,7 @@ void intel_ddi_init(struct drm_i915_private *dev_=
priv, enum port port)
> >  	encoder->update_pipe =3D intel_ddi_update_pipe;
> >  	encoder->get_hw_state =3D intel_ddi_get_hw_state;
> >  	encoder->get_config =3D intel_ddi_get_config;
> > +	encoder->initial_fastset_check =3D intel_ddi_initial_fastset_check;
> >  	encoder->suspend =3D intel_dp_encoder_suspend;
> >  	encoder->get_power_domains =3D intel_ddi_get_power_domains;
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 753f202ef6a0..755b83d47f9c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -17951,6 +17951,8 @@ static int intel_initial_commit(struct drm_devi=
ce *dev)
> >  		}
> >  =

> >  		if (crtc_state->hw.active) {
> > +			struct intel_encoder *encoder;
> > +
> >  			/*
> >  			 * We've not yet detected sink capabilities
> >  			 * (audio,infoframes,etc.) and thus we don't want to
> > @@ -17972,22 +17974,15 @@ static int intel_initial_commit(struct drm_de=
vice *dev)
> >  			 */
> >  			crtc_state->uapi.color_mgmt_changed =3D true;
> >  =

> > -			/*
> > -			 * FIXME hack to force full modeset when DSC is being
> > -			 * used.
> > -			 *
> > -			 * As long as we do not have full state readout and
> > -			 * config comparison of crtc_state->dsc, we have no way
> > -			 * to ensure reliable fastset. Remove once we have
> > -			 * readout for DSC.
> > -			 */
> > -			if (crtc_state->dsc.compression_enable) {
> > -				ret =3D drm_atomic_add_affected_connectors(state,
> > -									 &crtc->base);
> > -				if (ret)
> > -					goto out;
> > -				crtc_state->uapi.mode_changed =3D true;
> > -				drm_dbg_kms(dev, "Force full modeset for DSC\n");
> > +			for_each_intel_encoder_mask(dev, encoder,
> > +						    crtc_state->uapi.encoder_mask) {
> > +				if (encoder->initial_fastset_check &&
> > +				    !encoder->initial_fastset_check(encoder, crtc_state)) {
> > +					ret =3D drm_atomic_add_affected_connectors(state,
> > +										 &crtc->base);
> > +					if (ret)
> > +						goto out;
> > +				}
> >  			}
> >  		}
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index d5dc18cb8c39..5297b2f08ff9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -187,6 +187,14 @@ struct intel_encoder {
> >  	 * be set correctly before calling this function. */
> >  	void (*get_config)(struct intel_encoder *,
> >  			   struct intel_crtc_state *pipe_config);
> > +
> > +	/*
> > +	 * Optional hook, returning true if this encoder allows a fastset
> > +	 * during the initial commit, false otherwise.
> > +	 */
> > +	bool (*initial_fastset_check)(struct intel_encoder *encoder,
> > +				      struct intel_crtc_state *crtc_state);
> > +
> >  	/*
> >  	 * Acquires the power domains needed for an active encoder during
> >  	 * hardware state readout.
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index 7429597b57be..d33a3d9fdc3a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3703,6 +3703,27 @@ static void intel_dp_get_config(struct intel_enc=
oder *encoder,
> >  	}
> >  }
> >  =

> > +bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
> > +				    struct intel_crtc_state *crtc_state)
> > +{
> > +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> > +
> > +	/*
> > +	 * FIXME hack to force full modeset when DSC is being used.
> > +	 *
> > +	 * As long as we do not have full state readout and config comparison
> > +	 * of crtc_state->dsc, we have no way to ensure reliable fastset.
> > +	 * Remove once we have readout for DSC.
> > +	 */
> > +	if (crtc_state->dsc.compression_enable) {
> > +		drm_dbg_kms(&i915->drm, "Forcing full modeset due to DSC being enabl=
ed\n");
> > +		crtc_state->uapi.mode_changed =3D true;
> > +		return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> >  static void intel_disable_dp(struct intel_atomic_state *state,
> >  			     struct intel_encoder *encoder,
> >  			     const struct intel_crtc_state *old_crtc_state,
> > @@ -8057,6 +8078,7 @@ bool intel_dp_init(struct drm_i915_private *dev_p=
riv,
> >  	intel_encoder->compute_config =3D intel_dp_compute_config;
> >  	intel_encoder->get_hw_state =3D intel_dp_get_hw_state;
> >  	intel_encoder->get_config =3D intel_dp_get_config;
> > +	intel_encoder->initial_fastset_check =3D intel_dp_initial_fastset_che=
ck;
> >  	intel_encoder->update_pipe =3D intel_panel_update_backlight;
> >  	intel_encoder->suspend =3D intel_dp_encoder_suspend;
> >  	if (IS_CHERRYVIEW(dev_priv)) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/=
i915/display/intel_dp.h
> > index 66854aab9887..977585aea3c8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -141,4 +141,7 @@ void intel_ddi_update_pipe(struct intel_atomic_stat=
e *state,
> >  int intel_dp_init_hdcp(struct intel_digital_port *dig_port,
> >  		       struct intel_connector *intel_connector);
> >  =

> > +bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
> > +				    struct intel_crtc_state *crtc_state);
> > +
> >  #endif /* __INTEL_DP_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/=
drm/i915/display/intel_dp_mst.c
> > index 82f38c386dbd..e948aacbd4ab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -591,6 +591,15 @@ static void intel_dp_mst_enc_get_config(struct int=
el_encoder *encoder,
> >  	intel_ddi_get_config(&dig_port->base, pipe_config);
> >  }
> >  =

> > +static bool intel_dp_mst_initial_fastset_check(struct intel_encoder *e=
ncoder,
> > +					       struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(encoder);
> > +	struct intel_digital_port *dig_port =3D intel_mst->primary;
> > +
> > +	return intel_dp_initial_fastset_check(&dig_port->base, crtc_state);
> > +}
> > +
> >  static int intel_dp_mst_get_ddc_modes(struct drm_connector *connector)
> >  {
> >  	struct intel_connector *intel_connector =3D to_intel_connector(connec=
tor);
> > @@ -897,6 +906,7 @@ intel_dp_create_fake_mst_encoder(struct intel_digit=
al_port *dig_port, enum pipe
> >  	intel_encoder->enable =3D intel_mst_enable_dp;
> >  	intel_encoder->get_hw_state =3D intel_dp_mst_enc_get_hw_state;
> >  	intel_encoder->get_config =3D intel_dp_mst_enc_get_config;
> > +	intel_encoder->initial_fastset_check =3D intel_dp_mst_initial_fastset=
_check;
> >  =

> >  	return intel_mst;
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
