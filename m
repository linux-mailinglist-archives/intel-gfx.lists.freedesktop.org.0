Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7503025FA8E
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Sep 2020 14:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA4E189590;
	Mon,  7 Sep 2020 12:35:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1FE489590
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Sep 2020 12:35:26 +0000 (UTC)
IronPort-SDR: Gz4IRgyr/NGSapUOxHWE37x0G6xpx1L1xPP0N+vRGcy25SHw/CtRSVbHN0XOoFYbKol/AmkPoz
 kyHxIZ3fbybA==
X-IronPort-AV: E=McAfee;i="6000,8403,9736"; a="242811409"
X-IronPort-AV: E=Sophos;i="5.76,401,1592895600"; d="scan'208";a="242811409"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2020 05:35:26 -0700
IronPort-SDR: xKEJD8aumC3AyucaosOEjLebTmHl8xTS2QTS62NRQOrHqYtt+K9vxve0KAfOLw5b3N+OY+4PJJ
 xS4k72bm7bxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,401,1592895600"; d="scan'208";a="303724229"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 07 Sep 2020 05:35:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Sep 2020 15:35:23 +0300
Date: Mon, 7 Sep 2020 15:35:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <20200907123523.GG6112@intel.com>
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
 <20200715224222.7557-2-manasi.d.navare@intel.com>
 <20200903174944.GW6112@intel.com>
 <20200903180432.GA22804@labuser-Z97X-UD5H>
 <20200903184044.GZ6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200903184044.GZ6112@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v6 02/11] drm/i915: Remove hw.mode
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

On Thu, Sep 03, 2020 at 09:40:44PM +0300, Ville Syrj=E4l=E4 wrote:
> On Thu, Sep 03, 2020 at 11:04:33AM -0700, Navare, Manasi wrote:
> > On Thu, Sep 03, 2020 at 08:49:44PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Wed, Jul 15, 2020 at 03:42:13PM -0700, Manasi Navare wrote:
> > > > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > =

> > > > The members in hw.mode can be used from adjusted_mode as well,
> > > > use that when available.
> > > > =

> > > > Some places that use hw.mode can be converted to use adjusted_mode
> > > > as well.
> > > > =

> > > > v2:
> > > > * Manual rebase (Manasi)
> > > > * remove the use of pipe_mode defined in patch 3 (Manasi)
> > > > =

> > > > v3:
> > > > * Rebase on drm-tip (Manasi)
> > > =

> > > Previous review was apparently ignored. Or is there a better version
> > > somewhere? If not, this still looks very wrong.
> > =

> > This was the latest rev that Maarten had in his local tree which he sai=
d should address all the review comments.
> > What in particular looks wrong or what review comments were unaddressed=
 here?
> =

> The dvo/sdvo changes.

I recommend just dropping this patch entirely. It doesn't seem to have
anything to do with the bigjoiner anyway.

> =

> > =

> > @Maarten any feedback on Ville's unaddressed comments?
> > =

> > Manasi
> > =

> > > =

> > > > =

> > > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++-----=
----
> > > >  .../drm/i915/display/intel_display_types.h    |  2 +-
> > > >  drivers/gpu/drm/i915/display/intel_dvo.c      |  2 +-
> > > >  drivers/gpu/drm/i915/display/intel_sdvo.c     | 16 ++++------
> > > >  4 files changed, 23 insertions(+), 26 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers=
/gpu/drm/i915/display/intel_display.c
> > > > index 729ec6e0d43a..8652a7c6bf11 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -8892,9 +8892,6 @@ static void intel_get_pipe_src_size(struct in=
tel_crtc *crtc,
> > > >  	tmp =3D intel_de_read(dev_priv, PIPESRC(crtc->pipe));
> > > >  	pipe_config->pipe_src_h =3D (tmp & 0xffff) + 1;
> > > >  	pipe_config->pipe_src_w =3D ((tmp >> 16) & 0xffff) + 1;
> > > > -
> > > > -	pipe_config->hw.mode.vdisplay =3D pipe_config->pipe_src_h;
> > > > -	pipe_config->hw.mode.hdisplay =3D pipe_config->pipe_src_w;
> > > >  }
> > > >  =

> > > >  void intel_mode_from_pipe_config(struct drm_display_mode *mode,
> > > > @@ -13079,7 +13076,7 @@ static void intel_dump_pipe_config(const st=
ruct intel_crtc_state *pipe_config,
> > > >  		intel_dump_dp_vsc_sdp(dev_priv, &pipe_config->infoframes.vsc);
> > > >  =

> > > >  	drm_dbg_kms(&dev_priv->drm, "requested mode:\n");
> > > > -	drm_mode_debug_printmodeline(&pipe_config->hw.mode);
> > > > +	drm_mode_debug_printmodeline(&pipe_config->uapi.mode);
> > > >  	drm_dbg_kms(&dev_priv->drm, "adjusted mode:\n");
> > > >  	drm_mode_debug_printmodeline(&pipe_config->hw.adjusted_mode);
> > > >  	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.adjusted_mode);
> > > > @@ -13221,17 +13218,17 @@ intel_crtc_copy_uapi_to_hw_state(struct i=
ntel_crtc_state *crtc_state)
> > > >  {
> > > >  	crtc_state->hw.enable =3D crtc_state->uapi.enable;
> > > >  	crtc_state->hw.active =3D crtc_state->uapi.active;
> > > > -	crtc_state->hw.mode =3D crtc_state->uapi.mode;
> > > >  	crtc_state->hw.adjusted_mode =3D crtc_state->uapi.adjusted_mode;
> > > >  	intel_crtc_copy_uapi_to_hw_state_nomodeset(crtc_state);
> > > >  }
> > > >  =

> > > > -static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_sta=
te *crtc_state)
> > > > +static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_sta=
te *crtc_state,
> > > > +					     struct drm_display_mode *user_mode)
> > > >  {
> > > >  	crtc_state->uapi.enable =3D crtc_state->hw.enable;
> > > >  	crtc_state->uapi.active =3D crtc_state->hw.active;
> > > >  	drm_WARN_ON(crtc_state->uapi.crtc->dev,
> > > > -		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, &crtc_state-=
>hw.mode) < 0);
> > > > +		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, user_mode) <=
 0);
> > > >  =

> > > >  	crtc_state->uapi.adjusted_mode =3D crtc_state->hw.adjusted_mode;
> > > >  =

> > > > @@ -13277,6 +13274,10 @@ intel_crtc_prepare_cleared_state(struct in=
tel_crtc_state *crtc_state)
> > > >  	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
> > > >  	kfree(saved_state);
> > > >  =

> > > > +	/* Clear I915_MODE_FLAG_INHERITED */
> > > > +	crtc_state->uapi.mode.private_flags =3D 0;
> > > > +	crtc_state->uapi.adjusted_mode.private_flags =3D 0;
> > > > +
> > > >  	intel_crtc_copy_uapi_to_hw_state(crtc_state);
> > > >  =

> > > >  	return 0;
> > > > @@ -13324,7 +13325,7 @@ intel_modeset_pipe_config(struct intel_crtc=
_state *pipe_config)
> > > >  	 * computation to clearly distinguish it from the adjusted mode, =
which
> > > >  	 * can be changed by the connectors in the below retry loop.
> > > >  	 */
> > > > -	drm_mode_get_hv_timing(&pipe_config->hw.mode,
> > > > +	drm_mode_get_hv_timing(&pipe_config->hw.adjusted_mode,
> > > >  			       &pipe_config->pipe_src_w,
> > > >  			       &pipe_config->pipe_src_h);
> > > >  =

> > > > @@ -18461,15 +18462,11 @@ static void intel_modeset_readout_hw_stat=
e(struct drm_device *dev)
> > > >  		int min_cdclk =3D 0;
> > > >  =

> > > >  		if (crtc_state->hw.active) {
> > > > -			struct drm_display_mode *mode =3D &crtc_state->hw.mode;
> > > > +			struct drm_display_mode mode;
> > > >  =

> > > >  			intel_mode_from_pipe_config(&crtc_state->hw.adjusted_mode,
> > > >  						    crtc_state);
> > > >  =

> > > > -			*mode =3D crtc_state->hw.adjusted_mode;
> > > > -			mode->hdisplay =3D crtc_state->pipe_src_w;
> > > > -			mode->vdisplay =3D crtc_state->pipe_src_h;
> > > > -
> > > >  			/*
> > > >  			 * The initial mode needs to be set in order to keep
> > > >  			 * the atomic core happy. It wants a valid mode if the
> > > > @@ -18481,11 +18478,15 @@ static void intel_modeset_readout_hw_stat=
e(struct drm_device *dev)
> > > >  			 */
> > > >  			crtc_state->inherited =3D true;
> > > >  =

> > > > +			mode =3D crtc_state->hw.adjusted_mode;
> > > > +			mode.hdisplay =3D crtc_state->pipe_src_w;
> > > > +			mode.vdisplay =3D crtc_state->pipe_src_h;
> > > > +
> > > >  			intel_crtc_compute_pixel_rate(crtc_state);
> > > >  =

> > > >  			intel_crtc_update_active_timings(crtc_state);
> > > >  =

> > > > -			intel_crtc_copy_hw_to_uapi_state(crtc_state);
> > > > +			intel_crtc_copy_hw_to_uapi_state(crtc_state, &mode);
> > > >  		}
> > > >  =

> > > >  		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/d=
rivers/gpu/drm/i915/display/intel_display_types.h
> > > > index e8f809161c75..f1e29d9a75d0 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > @@ -807,7 +807,7 @@ struct intel_crtc_state {
> > > >  	struct {
> > > >  		bool active, enable;
> > > >  		struct drm_property_blob *degamma_lut, *gamma_lut, *ctm;
> > > > -		struct drm_display_mode mode, adjusted_mode;
> > > > +		struct drm_display_mode adjusted_mode;
> > > >  	} hw;
> > > >  =

> > > >  	/**
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu=
/drm/i915/display/intel_dvo.c
> > > > index 307ed8ae9a19..0b9bf1fec0f4 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> > > > @@ -209,7 +209,7 @@ static void intel_enable_dvo(struct intel_atomi=
c_state *state,
> > > >  	u32 temp =3D intel_de_read(dev_priv, dvo_reg);
> > > >  =

> > > >  	intel_dvo->dev.dev_ops->mode_set(&intel_dvo->dev,
> > > > -					 &pipe_config->hw.mode,
> > > > +					 &pipe_config->hw.adjusted_mode,
> > > >  					 &pipe_config->hw.adjusted_mode);
> > > >  =

> > > >  	intel_de_write(dev_priv, dvo_reg, temp | DVO_ENABLE);
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gp=
u/drm/i915/display/intel_sdvo.c
> > > > index 2da4388e1540..8b78ae0c39a0 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > > > @@ -1223,7 +1223,6 @@ intel_sdvo_set_output_timings_from_mode(struc=
t intel_sdvo *intel_sdvo,
> > > >  static bool
> > > >  intel_sdvo_get_preferred_input_mode(struct intel_sdvo *intel_sdvo,
> > > >  				    struct intel_sdvo_connector *intel_sdvo_connector,
> > > > -				    const struct drm_display_mode *mode,
> > > >  				    struct drm_display_mode *adjusted_mode)
> > > >  {
> > > >  	struct intel_sdvo_dtd input_dtd;
> > > > @@ -1234,9 +1233,9 @@ intel_sdvo_get_preferred_input_mode(struct in=
tel_sdvo *intel_sdvo,
> > > >  =

> > > >  	if (!intel_sdvo_create_preferred_input_timing(intel_sdvo,
> > > >  						      intel_sdvo_connector,
> > > > -						      mode->clock / 10,
> > > > -						      mode->hdisplay,
> > > > -						      mode->vdisplay))
> > > > +						      adjusted_mode->clock / 10,
> > > > +						      adjusted_mode->hdisplay,
> > > > +						      adjusted_mode->vdisplay))
> > > >  		return false;
> > > >  =

> > > >  	if (!intel_sdvo_get_preferred_input_timing(intel_sdvo,
> > > > @@ -1308,7 +1307,6 @@ static int intel_sdvo_compute_config(struct i=
ntel_encoder *encoder,
> > > >  	struct intel_sdvo_connector *intel_sdvo_connector =3D
> > > >  		to_intel_sdvo_connector(conn_state->connector);
> > > >  	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjus=
ted_mode;
> > > > -	struct drm_display_mode *mode =3D &pipe_config->hw.mode;
> > > >  =

> > > >  	DRM_DEBUG_KMS("forcing bpc to 8 for SDVO\n");
> > > >  	pipe_config->pipe_bpp =3D 8*3;
> > > > @@ -1324,12 +1322,12 @@ static int intel_sdvo_compute_config(struct=
 intel_encoder *encoder,
> > > >  	 * the sequence to do it. Oh well.
> > > >  	 */
> > > >  	if (IS_TV(intel_sdvo_connector)) {
> > > > -		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo, mode))
> > > > +		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo,
> > > > +							     adjusted_mode))
> > > >  			return -EINVAL;
> > > >  =

> > > >  		(void) intel_sdvo_get_preferred_input_mode(intel_sdvo,
> > > >  							   intel_sdvo_connector,
> > > > -							   mode,
> > > >  							   adjusted_mode);
> > > >  		pipe_config->sdvo_tv_clock =3D true;
> > > >  	} else if (IS_LVDS(intel_sdvo_connector)) {
> > > > @@ -1339,7 +1337,6 @@ static int intel_sdvo_compute_config(struct i=
ntel_encoder *encoder,
> > > >  =

> > > >  		(void) intel_sdvo_get_preferred_input_mode(intel_sdvo,
> > > >  							   intel_sdvo_connector,
> > > > -							   mode,
> > > >  							   adjusted_mode);
> > > >  	}
> > > >  =

> > > > @@ -1458,7 +1455,6 @@ static void intel_sdvo_pre_enable(struct inte=
l_atomic_state *state,
> > > >  		to_intel_sdvo_connector_state(conn_state);
> > > >  	const struct intel_sdvo_connector *intel_sdvo_connector =3D
> > > >  		to_intel_sdvo_connector(conn_state->connector);
> > > > -	const struct drm_display_mode *mode =3D &crtc_state->hw.mode;
> > > >  	struct intel_sdvo *intel_sdvo =3D to_sdvo(intel_encoder);
> > > >  	u32 sdvox;
> > > >  	struct intel_sdvo_in_out_map in_out;
> > > > @@ -1491,7 +1487,7 @@ static void intel_sdvo_pre_enable(struct inte=
l_atomic_state *state,
> > > >  		intel_sdvo_get_dtd_from_mode(&output_dtd,
> > > >  					     intel_sdvo_connector->base.panel.fixed_mode);
> > > >  	else
> > > > -		intel_sdvo_get_dtd_from_mode(&output_dtd, mode);
> > > > +		intel_sdvo_get_dtd_from_mode(&output_dtd, adjusted_mode);
> > > >  	if (!intel_sdvo_set_output_timing(intel_sdvo, &output_dtd))
> > > >  		drm_info(&dev_priv->drm,
> > > >  			 "Setting output timings on %s failed\n",
> > > > -- =

> > > > 2.19.1
> > > > =

> > > > _______________________________________________
> > > > Intel-gfx mailing list
> > > > Intel-gfx@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > > =

> > > -- =

> > > Ville Syrj=E4l=E4
> > > Intel
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
