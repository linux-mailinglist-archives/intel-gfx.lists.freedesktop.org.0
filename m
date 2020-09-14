Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C484A26952C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 20:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 871C56E536;
	Mon, 14 Sep 2020 18:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 824376E06B
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 18:48:18 +0000 (UTC)
IronPort-SDR: Kbx3rC5NZ3ti3v5/djLQbE3tRdwxHGIgPVhZQYjO+PXAdnYXZVj909+sRe2inKUawnNG2VFL82
 +IJbeESpeiJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="156578295"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="156578295"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 11:48:11 -0700
IronPort-SDR: IXsH5mWqIavg7CAW639eP2KZnae5BuDeM0Jxfa0HE7U4QlnvftRaNUW31AdaFEiQ9bunqNV0Pd
 LfVVfspttwVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="306282956"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 14 Sep 2020 11:48:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Sep 2020 21:48:08 +0300
Date: Mon, 14 Sep 2020 21:48:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <20200914184808.GV6112@intel.com>
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
 <20200715224222.7557-3-manasi.d.navare@intel.com>
 <20200903175440.GX6112@intel.com>
 <20200914184536.GA28760@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914184536.GA28760@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v6 03/11] drm/i915: Add hw.pipe_mode to
 allow bigjoiner pipe/transcoder split
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

On Mon, Sep 14, 2020 at 11:45:37AM -0700, Navare, Manasi wrote:
> On Thu, Sep 03, 2020 at 08:54:40PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Wed, Jul 15, 2020 at 03:42:14PM -0700, Manasi Navare wrote:
> > > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > =

> > > v4:
> > > * Manual rebase (Manasi)
> > > v3:
> > > * Change state to crtc_state, fix rebase err  (Manasi)
> > > v2:
> > > * Manual Rebase (Manasi)
> > > =

> > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c  | 61 ++++++++-------
> > >  .../drm/i915/display/intel_display_types.h    | 11 ++-
> > >  drivers/gpu/drm/i915/intel_pm.c               | 76 +++++++++--------=
--
> > >  3 files changed, 79 insertions(+), 69 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 8652a7c6bf11..78cbfefbfa62 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -152,7 +152,7 @@ static void ilk_pch_clock_get(struct intel_crtc *=
crtc,
> > >  static int intel_framebuffer_init(struct intel_framebuffer *ifb,
> > >  				  struct drm_i915_gem_object *obj,
> > >  				  struct drm_mode_fb_cmd2 *mode_cmd);
> > > -static void intel_set_pipe_timings(const struct intel_crtc_state *cr=
tc_state);
> > > +static void intel_set_transcoder_timings(const struct intel_crtc_sta=
te *crtc_state);
> > =

> > These renames make it hard to see what changed. Should be split out.
> =

> So just have the renaming in separate patch?

Yeah.

> =

> Manasi
> > =

> > >  static void intel_set_pipe_src_size(const struct intel_crtc_state *c=
rtc_state);
> > >  static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_sta=
te *crtc_state,
> > >  					 const struct intel_link_m_n *m_n,
> > > @@ -6110,18 +6110,16 @@ skl_update_scaler(struct intel_crtc_state *cr=
tc_state, bool force_detach,
> > >  =

> > >  static int skl_update_scaler_crtc(struct intel_crtc_state *crtc_stat=
e)
> > >  {
> > > -	const struct drm_display_mode *adjusted_mode =3D
> > > -		&crtc_state->hw.adjusted_mode;
> > > +	const struct drm_display_mode *pipe_mode =3D &crtc_state->hw.pipe_m=
ode;
> > >  	int width, height;
> > >  =

> > >  	if (crtc_state->pch_pfit.enabled) {
> > >  		width =3D drm_rect_width(&crtc_state->pch_pfit.dst);
> > >  		height =3D drm_rect_height(&crtc_state->pch_pfit.dst);
> > >  	} else {
> > > -		width =3D adjusted_mode->crtc_hdisplay;
> > > -		height =3D adjusted_mode->crtc_vdisplay;
> > > +		width =3D pipe_mode->crtc_hdisplay;
> > > +		height =3D pipe_mode->crtc_vdisplay;
> > >  	}
> > > -
> > >  	return skl_update_scaler(crtc_state, !crtc_state->hw.active,
> > >  				 SKL_CRTC_INDEX,
> > >  				 &crtc_state->scaler_state.scaler_id,
> > > @@ -6901,7 +6899,7 @@ static void ilk_crtc_enable(struct intel_atomic=
_state *state,
> > >  	if (intel_crtc_has_dp_encoder(new_crtc_state))
> > >  		intel_dp_set_m_n(new_crtc_state, M1_N1);
> > >  =

> > > -	intel_set_pipe_timings(new_crtc_state);
> > > +	intel_set_transcoder_timings(new_crtc_state);
> > >  	intel_set_pipe_src_size(new_crtc_state);
> > >  =

> > >  	if (new_crtc_state->has_pch_encoder)
> > > @@ -7046,7 +7044,7 @@ static void hsw_crtc_enable(struct intel_atomic=
_state *state,
> > >  	intel_encoders_pre_enable(state, crtc);
> > >  =

> > >  	if (!transcoder_is_dsi(cpu_transcoder))
> > > -		intel_set_pipe_timings(new_crtc_state);
> > > +		intel_set_transcoder_timings(new_crtc_state);
> > >  =

> > >  	intel_set_pipe_src_size(new_crtc_state);
> > >  =

> > > @@ -7429,7 +7427,7 @@ static void valleyview_crtc_enable(struct intel=
_atomic_state *state,
> > >  	if (intel_crtc_has_dp_encoder(new_crtc_state))
> > >  		intel_dp_set_m_n(new_crtc_state, M1_N1);
> > >  =

> > > -	intel_set_pipe_timings(new_crtc_state);
> > > +	intel_set_transcoder_timings(new_crtc_state);
> > >  	intel_set_pipe_src_size(new_crtc_state);
> > >  =

> > >  	if (IS_CHERRYVIEW(dev_priv) && pipe =3D=3D PIPE_B) {
> > > @@ -7497,7 +7495,7 @@ static void i9xx_crtc_enable(struct intel_atomi=
c_state *state,
> > >  	if (intel_crtc_has_dp_encoder(new_crtc_state))
> > >  		intel_dp_set_m_n(new_crtc_state, M1_N1);
> > >  =

> > > -	intel_set_pipe_timings(new_crtc_state);
> > > +	intel_set_transcoder_timings(new_crtc_state);
> > >  	intel_set_pipe_src_size(new_crtc_state);
> > >  =

> > >  	i9xx_set_pipeconf(new_crtc_state);
> > > @@ -7971,7 +7969,7 @@ static bool intel_crtc_supports_double_wide(con=
st struct intel_crtc *crtc)
> > >  =

> > >  static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_s=
tate)
> > >  {
> > > -	u32 pixel_rate =3D crtc_state->hw.adjusted_mode.crtc_clock;
> > > +	u32 pixel_rate =3D crtc_state->hw.pipe_mode.crtc_clock;
> > >  	unsigned int pipe_w, pipe_h, pfit_w, pfit_h;
> > >  =

> > >  	/*
> > > @@ -8008,7 +8006,7 @@ static void intel_crtc_compute_pixel_rate(struc=
t intel_crtc_state *crtc_state)
> > >  	if (HAS_GMCH(dev_priv))
> > >  		/* FIXME calculate proper pipe pixel rate for GMCH pfit */
> > >  		crtc_state->pixel_rate =3D
> > > -			crtc_state->hw.adjusted_mode.crtc_clock;
> > > +			crtc_state->hw.pipe_mode.crtc_clock;
> > >  	else
> > >  		crtc_state->pixel_rate =3D
> > >  			ilk_pipe_pixel_rate(crtc_state);
> > > @@ -8018,7 +8016,7 @@ static int intel_crtc_compute_config(struct int=
el_crtc *crtc,
> > >  				     struct intel_crtc_state *pipe_config)
> > >  {
> > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > -	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.a=
djusted_mode;
> > > +	const struct drm_display_mode *pipe_mode =3D &pipe_config->hw.pipe_=
mode;
> > >  	int clock_limit =3D dev_priv->max_dotclk_freq;
> > >  =

> > >  	if (INTEL_GEN(dev_priv) < 4) {
> > > @@ -8029,16 +8027,16 @@ static int intel_crtc_compute_config(struct i=
ntel_crtc *crtc,
> > >  		 * is > 90% of the (display) core speed.
> > >  		 */
> > >  		if (intel_crtc_supports_double_wide(crtc) &&
> > > -		    adjusted_mode->crtc_clock > clock_limit) {
> > > +		    pipe_mode->crtc_clock > clock_limit) {
> > >  			clock_limit =3D dev_priv->max_dotclk_freq;
> > >  			pipe_config->double_wide =3D true;
> > >  		}
> > >  	}
> > >  =

> > > -	if (adjusted_mode->crtc_clock > clock_limit) {
> > > +	if (pipe_mode->crtc_clock > clock_limit) {
> > >  		drm_dbg_kms(&dev_priv->drm,
> > >  			    "requested pixel clock (%d kHz) too high (max: %d kHz, double=
 wide: %s)\n",
> > > -			    adjusted_mode->crtc_clock, clock_limit,
> > > +			    pipe_mode->crtc_clock, clock_limit,
> > >  			    yesno(pipe_config->double_wide));
> > >  		return -EINVAL;
> > >  	}
> > > @@ -8081,7 +8079,7 @@ static int intel_crtc_compute_config(struct int=
el_crtc *crtc,
> > >  	 * WaPruneModeWithIncorrectHsyncOffset:ctg,elk,ilk,snb,ivb,vlv,hsw.
> > >  	 */
> > >  	if ((INTEL_GEN(dev_priv) > 4 || IS_G4X(dev_priv)) &&
> > > -		adjusted_mode->crtc_hsync_start =3D=3D adjusted_mode->crtc_hdispla=
y)
> > > +		pipe_mode->crtc_hsync_start =3D=3D pipe_mode->crtc_hdisplay)
> > >  		return -EINVAL;
> > >  =

> > >  	intel_crtc_compute_pixel_rate(pipe_config);
> > > @@ -8751,7 +8749,7 @@ static void i8xx_compute_dpll(struct intel_crtc=
 *crtc,
> > >  	crtc_state->dpll_hw_state.dpll =3D dpll;
> > >  }
> > >  =

> > > -static void intel_set_pipe_timings(const struct intel_crtc_state *cr=
tc_state)
> > > +static void intel_set_transcoder_timings(const struct intel_crtc_sta=
te *crtc_state)
> > >  {
> > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > @@ -8837,8 +8835,8 @@ static bool intel_pipe_is_interlaced(const stru=
ct intel_crtc_state *crtc_state)
> > >  		return intel_de_read(dev_priv, PIPECONF(cpu_transcoder)) & PIPECON=
F_INTERLACE_MASK;
> > >  }
> > >  =

> > > -static void intel_get_pipe_timings(struct intel_crtc *crtc,
> > > -				   struct intel_crtc_state *pipe_config)
> > > +static void intel_get_transcoder_timings(struct intel_crtc *crtc,
> > > +					 struct intel_crtc_state *pipe_config)
> > >  {
> > >  	struct drm_device *dev =3D crtc->base.dev;
> > >  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > > @@ -9458,7 +9456,7 @@ static bool i9xx_get_pipe_config(struct intel_c=
rtc *crtc,
> > >  	if (INTEL_GEN(dev_priv) < 4)
> > >  		pipe_config->double_wide =3D tmp & PIPECONF_DOUBLE_WIDE;
> > >  =

> > > -	intel_get_pipe_timings(crtc, pipe_config);
> > > +	intel_get_transcoder_timings(crtc, pipe_config);
> > >  	intel_get_pipe_src_size(crtc, pipe_config);
> > >  =

> > >  	i9xx_get_pfit_config(pipe_config);
> > > @@ -10739,7 +10737,7 @@ static bool ilk_get_pipe_config(struct intel_=
crtc *crtc,
> > >  		pipe_config->pixel_multiplier =3D 1;
> > >  	}
> > >  =

> > > -	intel_get_pipe_timings(crtc, pipe_config);
> > > +	intel_get_transcoder_timings(crtc, pipe_config);
> > >  	intel_get_pipe_src_size(crtc, pipe_config);
> > >  =

> > >  	ilk_get_pfit_config(pipe_config);
> > > @@ -11147,7 +11145,7 @@ static bool hsw_get_pipe_config(struct intel_=
crtc *crtc,
> > >  	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
> > >  	    INTEL_GEN(dev_priv) >=3D 11) {
> > >  		hsw_get_ddi_port_state(crtc, pipe_config);
> > > -		intel_get_pipe_timings(crtc, pipe_config);
> > > +		intel_get_transcoder_timings(crtc, pipe_config);
> > >  	}
> > >  =

> > >  	intel_get_pipe_src_size(crtc, pipe_config);
> > > @@ -12593,15 +12591,15 @@ static bool c8_planes_changed(const struct =
intel_crtc_state *new_crtc_state)
> > >  =

> > >  static u16 hsw_linetime_wm(const struct intel_crtc_state *crtc_state)
> > >  {
> > > -	const struct drm_display_mode *adjusted_mode =3D
> > > -		&crtc_state->hw.adjusted_mode;
> > > +	const struct drm_display_mode *pipe_mode =3D
> > > +		&crtc_state->hw.pipe_mode;
> > >  	int linetime_wm;
> > >  =

> > >  	if (!crtc_state->hw.enable)
> > >  		return 0;
> > >  =

> > > -	linetime_wm =3D DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal * 1000=
 * 8,
> > > -					adjusted_mode->crtc_clock);
> > > +	linetime_wm =3D DIV_ROUND_CLOSEST(pipe_mode->crtc_htotal * 1000 * 8,
> > > +					pipe_mode->crtc_clock);
> > >  =

> > >  	return min(linetime_wm, 0x1ff);
> > >  }
> > > @@ -13218,7 +13216,7 @@ intel_crtc_copy_uapi_to_hw_state(struct intel=
_crtc_state *crtc_state)
> > >  {
> > >  	crtc_state->hw.enable =3D crtc_state->uapi.enable;
> > >  	crtc_state->hw.active =3D crtc_state->uapi.active;
> > > -	crtc_state->hw.adjusted_mode =3D crtc_state->uapi.adjusted_mode;
> > > +	crtc_state->hw.pipe_mode =3D crtc_state->hw.adjusted_mode =3D crtc_=
state->uapi.adjusted_mode;
> > >  	intel_crtc_copy_uapi_to_hw_state_nomodeset(crtc_state);
> > >  }
> > >  =

> > > @@ -13325,7 +13323,7 @@ intel_modeset_pipe_config(struct intel_crtc_s=
tate *pipe_config)
> > >  	 * computation to clearly distinguish it from the adjusted mode, wh=
ich
> > >  	 * can be changed by the connectors in the below retry loop.
> > >  	 */
> > > -	drm_mode_get_hv_timing(&pipe_config->hw.adjusted_mode,
> > > +	drm_mode_get_hv_timing(&pipe_config->hw.pipe_mode,
> > >  			       &pipe_config->pipe_src_w,
> > >  			       &pipe_config->pipe_src_h);
> > >  =

> > > @@ -13424,6 +13422,8 @@ intel_modeset_pipe_config(struct intel_crtc_s=
tate *pipe_config)
> > >  	 * drm_atomic_helper_update_legacy_modeset_state() happy
> > >  	 */
> > >  	pipe_config->uapi.adjusted_mode =3D pipe_config->hw.adjusted_mode;
> > > +	/* without bigjoiner, pipe_mode =3D=3D adjusted_mode */
> > > +	pipe_config->hw.pipe_mode =3D pipe_config->hw.adjusted_mode;
> > >  =

> > >  	return 0;
> > >  }
> > > @@ -18478,6 +18478,9 @@ static void intel_modeset_readout_hw_state(st=
ruct drm_device *dev)
> > >  			 */
> > >  			crtc_state->inherited =3D true;
> > >  =

> > > +			/* initialize pipe_mode */
> > > +			crtc_state->hw.pipe_mode =3D crtc_state->hw.adjusted_mode;
> > > +
> > >  			mode =3D crtc_state->hw.adjusted_mode;
> > >  			mode.hdisplay =3D crtc_state->pipe_src_w;
> > >  			mode.vdisplay =3D crtc_state->pipe_src_h;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/dri=
vers/gpu/drm/i915/display/intel_display_types.h
> > > index f1e29d9a75d0..c52c8f42df68 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -799,15 +799,22 @@ struct intel_crtc_state {
> > >  	 * The following members are used to verify the hardware state:
> > >  	 * - enable
> > >  	 * - active
> > > -	 * - mode / adjusted_mode
> > > +	 * - adjusted_mode
> > >  	 * - color property blobs.
> > >  	 *
> > >  	 * During initial hw readout, they need to be copied to uapi.
> > > +	 *
> > > +	 * Bigjoiner will allow a transcoder mode that spans 2 pipes;
> > > +	 * Use the pipe_mode for calculations like watermarks, pipe
> > > +	 * scaler, and bandwidth.
> > > +	 *
> > > +	 * Use adjusted_mode for things that need to know the full
> > > +	 * mode on the transcoder, which spans all pipes.
> > >  	 */
> > >  	struct {
> > >  		bool active, enable;
> > >  		struct drm_property_blob *degamma_lut, *gamma_lut, *ctm;
> > > -		struct drm_display_mode adjusted_mode;
> > > +		struct drm_display_mode pipe_mode, adjusted_mode;
> > >  	} hw;
> > >  =

> > >  	/**
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/i=
ntel_pm.c
> > > index cfabbe0481ab..d1263ebd3811 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -905,12 +905,12 @@ static void pnv_update_wm(struct intel_crtc *un=
used_crtc)
> > >  =

> > >  	crtc =3D single_enabled_crtc(dev_priv);
> > >  	if (crtc) {
> > > -		const struct drm_display_mode *adjusted_mode =3D
> > > -			&crtc->config->hw.adjusted_mode;
> > > +		const struct drm_display_mode *pipe_mode =3D
> > > +			&crtc->config->hw.pipe_mode;
> > >  		const struct drm_framebuffer *fb =3D
> > >  			crtc->base.primary->state->fb;
> > >  		int cpp =3D fb->format->cpp[0];
> > > -		int clock =3D adjusted_mode->crtc_clock;
> > > +		int clock =3D pipe_mode->crtc_clock;
> > >  =

> > >  		/* Display SR */
> > >  		wm =3D intel_calculate_wm(clock, &pnv_display_wm,
> > > @@ -1141,8 +1141,8 @@ static u16 g4x_compute_wm(const struct intel_cr=
tc_state *crtc_state,
> > >  {
> > >  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plan=
e);
> > >  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> > > -	const struct drm_display_mode *adjusted_mode =3D
> > > -		&crtc_state->hw.adjusted_mode;
> > > +	const struct drm_display_mode *pipe_mode =3D
> > > +		&crtc_state->hw.pipe_mode;
> > >  	unsigned int latency =3D dev_priv->wm.pri_latency[level] * 10;
> > >  	unsigned int clock, htotal, cpp, width, wm;
> > >  =

> > > @@ -1169,8 +1169,8 @@ static u16 g4x_compute_wm(const struct intel_cr=
tc_state *crtc_state,
> > >  	    level !=3D G4X_WM_LEVEL_NORMAL)
> > >  		cpp =3D max(cpp, 4u);
> > >  =

> > > -	clock =3D adjusted_mode->crtc_clock;
> > > -	htotal =3D adjusted_mode->crtc_htotal;
> > > +	clock =3D pipe_mode->crtc_clock;
> > > +	htotal =3D pipe_mode->crtc_htotal;
> > >  =

> > >  	width =3D drm_rect_width(&plane_state->uapi.dst);
> > >  =

> > > @@ -1666,8 +1666,8 @@ static u16 vlv_compute_wm_level(const struct in=
tel_crtc_state *crtc_state,
> > >  {
> > >  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plan=
e);
> > >  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> > > -	const struct drm_display_mode *adjusted_mode =3D
> > > -		&crtc_state->hw.adjusted_mode;
> > > +	const struct drm_display_mode *pipe_mode =3D
> > > +		&crtc_state->hw.pipe_mode;
> > >  	unsigned int clock, htotal, cpp, width, wm;
> > >  =

> > >  	if (dev_priv->wm.pri_latency[level] =3D=3D 0)
> > > @@ -1677,8 +1677,8 @@ static u16 vlv_compute_wm_level(const struct in=
tel_crtc_state *crtc_state,
> > >  		return 0;
> > >  =

> > >  	cpp =3D plane_state->hw.fb->format->cpp[0];
> > > -	clock =3D adjusted_mode->crtc_clock;
> > > -	htotal =3D adjusted_mode->crtc_htotal;
> > > +	clock =3D pipe_mode->crtc_clock;
> > > +	htotal =3D pipe_mode->crtc_htotal;
> > >  	width =3D crtc_state->pipe_src_w;
> > >  =

> > >  	if (plane->id =3D=3D PLANE_CURSOR) {
> > > @@ -2267,12 +2267,12 @@ static void i965_update_wm(struct intel_crtc =
*unused_crtc)
> > >  	if (crtc) {
> > >  		/* self-refresh has much higher latency */
> > >  		static const int sr_latency_ns =3D 12000;
> > > -		const struct drm_display_mode *adjusted_mode =3D
> > > -			&crtc->config->hw.adjusted_mode;
> > > +		const struct drm_display_mode *pipe_mode =3D
> > > +			&crtc->config->hw.pipe_mode;
> > >  		const struct drm_framebuffer *fb =3D
> > >  			crtc->base.primary->state->fb;
> > > -		int clock =3D adjusted_mode->crtc_clock;
> > > -		int htotal =3D adjusted_mode->crtc_htotal;
> > > +		int clock =3D pipe_mode->crtc_clock;
> > > +		int htotal =3D pipe_mode->crtc_htotal;
> > >  		int hdisplay =3D crtc->config->pipe_src_w;
> > >  		int cpp =3D fb->format->cpp[0];
> > >  		int entries;
> > > @@ -2351,8 +2351,8 @@ static void i9xx_update_wm(struct intel_crtc *u=
nused_crtc)
> > >  	fifo_size =3D dev_priv->display.get_fifo_size(dev_priv, PLANE_A);
> > >  	crtc =3D intel_get_crtc_for_plane(dev_priv, PLANE_A);
> > >  	if (intel_crtc_active(crtc)) {
> > > -		const struct drm_display_mode *adjusted_mode =3D
> > > -			&crtc->config->hw.adjusted_mode;
> > > +		const struct drm_display_mode *pipe_mode =3D
> > > +			&crtc->config->hw.pipe_mode;
> > >  		const struct drm_framebuffer *fb =3D
> > >  			crtc->base.primary->state->fb;
> > >  		int cpp;
> > > @@ -2362,7 +2362,7 @@ static void i9xx_update_wm(struct intel_crtc *u=
nused_crtc)
> > >  		else
> > >  			cpp =3D fb->format->cpp[0];
> > >  =

> > > -		planea_wm =3D intel_calculate_wm(adjusted_mode->crtc_clock,
> > > +		planea_wm =3D intel_calculate_wm(pipe_mode->crtc_clock,
> > >  					       wm_info, fifo_size, cpp,
> > >  					       pessimal_latency_ns);
> > >  		enabled =3D crtc;
> > > @@ -2378,8 +2378,8 @@ static void i9xx_update_wm(struct intel_crtc *u=
nused_crtc)
> > >  	fifo_size =3D dev_priv->display.get_fifo_size(dev_priv, PLANE_B);
> > >  	crtc =3D intel_get_crtc_for_plane(dev_priv, PLANE_B);
> > >  	if (intel_crtc_active(crtc)) {
> > > -		const struct drm_display_mode *adjusted_mode =3D
> > > -			&crtc->config->hw.adjusted_mode;
> > > +		const struct drm_display_mode *pipe_mode =3D
> > > +			&crtc->config->hw.pipe_mode;
> > >  		const struct drm_framebuffer *fb =3D
> > >  			crtc->base.primary->state->fb;
> > >  		int cpp;
> > > @@ -2389,7 +2389,7 @@ static void i9xx_update_wm(struct intel_crtc *u=
nused_crtc)
> > >  		else
> > >  			cpp =3D fb->format->cpp[0];
> > >  =

> > > -		planeb_wm =3D intel_calculate_wm(adjusted_mode->crtc_clock,
> > > +		planeb_wm =3D intel_calculate_wm(pipe_mode->crtc_clock,
> > >  					       wm_info, fifo_size, cpp,
> > >  					       pessimal_latency_ns);
> > >  		if (enabled =3D=3D NULL)
> > > @@ -2427,12 +2427,12 @@ static void i9xx_update_wm(struct intel_crtc =
*unused_crtc)
> > >  	if (HAS_FW_BLC(dev_priv) && enabled) {
> > >  		/* self-refresh has much higher latency */
> > >  		static const int sr_latency_ns =3D 6000;
> > > -		const struct drm_display_mode *adjusted_mode =3D
> > > -			&enabled->config->hw.adjusted_mode;
> > > +		const struct drm_display_mode *pipe_mode =3D
> > > +			&enabled->config->hw.pipe_mode;
> > >  		const struct drm_framebuffer *fb =3D
> > >  			enabled->base.primary->state->fb;
> > > -		int clock =3D adjusted_mode->crtc_clock;
> > > -		int htotal =3D adjusted_mode->crtc_htotal;
> > > +		int clock =3D pipe_mode->crtc_clock;
> > > +		int htotal =3D pipe_mode->crtc_htotal;
> > >  		int hdisplay =3D enabled->config->pipe_src_w;
> > >  		int cpp;
> > >  		int entries;
> > > @@ -2480,7 +2480,7 @@ static void i845_update_wm(struct intel_crtc *u=
nused_crtc)
> > >  {
> > >  	struct drm_i915_private *dev_priv =3D to_i915(unused_crtc->base.dev=
);
> > >  	struct intel_crtc *crtc;
> > > -	const struct drm_display_mode *adjusted_mode;
> > > +	const struct drm_display_mode *pipe_mode;
> > >  	u32 fwater_lo;
> > >  	int planea_wm;
> > >  =

> > > @@ -2488,8 +2488,8 @@ static void i845_update_wm(struct intel_crtc *u=
nused_crtc)
> > >  	if (crtc =3D=3D NULL)
> > >  		return;
> > >  =

> > > -	adjusted_mode =3D &crtc->config->hw.adjusted_mode;
> > > -	planea_wm =3D intel_calculate_wm(adjusted_mode->crtc_clock,
> > > +	pipe_mode =3D &crtc->config->hw.pipe_mode;
> > > +	planea_wm =3D intel_calculate_wm(pipe_mode->crtc_clock,
> > >  				       &i845_wm_info,
> > >  				       dev_priv->display.get_fifo_size(dev_priv, PLANE_A),
> > >  				       4, pessimal_latency_ns);
> > > @@ -2579,7 +2579,7 @@ static u32 ilk_compute_pri_wm(const struct inte=
l_crtc_state *crtc_state,
> > >  		return method1;
> > >  =

> > >  	method2 =3D ilk_wm_method2(crtc_state->pixel_rate,
> > > -				 crtc_state->hw.adjusted_mode.crtc_htotal,
> > > +				 crtc_state->hw.pipe_mode.crtc_htotal,
> > >  				 drm_rect_width(&plane_state->uapi.dst),
> > >  				 cpp, mem_value);
> > >  =

> > > @@ -2607,7 +2607,7 @@ static u32 ilk_compute_spr_wm(const struct inte=
l_crtc_state *crtc_state,
> > >  =

> > >  	method1 =3D ilk_wm_method1(crtc_state->pixel_rate, cpp, mem_value);
> > >  	method2 =3D ilk_wm_method2(crtc_state->pixel_rate,
> > > -				 crtc_state->hw.adjusted_mode.crtc_htotal,
> > > +				 crtc_state->hw.pipe_mode.crtc_htotal,
> > >  				 drm_rect_width(&plane_state->uapi.dst),
> > >  				 cpp, mem_value);
> > >  	return min(method1, method2);
> > > @@ -2632,7 +2632,7 @@ static u32 ilk_compute_cur_wm(const struct inte=
l_crtc_state *crtc_state,
> > >  	cpp =3D plane_state->hw.fb->format->cpp[0];
> > >  =

> > >  	return ilk_wm_method2(crtc_state->pixel_rate,
> > > -			      crtc_state->hw.adjusted_mode.crtc_htotal,
> > > +			      crtc_state->hw.pipe_mode.crtc_htotal,
> > >  			      drm_rect_width(&plane_state->uapi.dst),
> > >  			      cpp, mem_value);
> > >  }
> > > @@ -3889,7 +3889,7 @@ static bool skl_crtc_can_enable_sagv(const stru=
ct intel_crtc_state *crtc_state)
> > >  	if (!crtc_state->hw.active)
> > >  		return true;
> > >  =

> > > -	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> > > +	if (crtc_state->hw.pipe_mode.flags & DRM_MODE_FLAG_INTERLACE)
> > >  		return false;
> > >  =

> > >  	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, cr=
tc_state) {
> > > @@ -4180,8 +4180,8 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i=
915_private *dev_priv,
> > >  	 */
> > >  	total_slice_mask =3D dbuf_slice_mask;
> > >  	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
> > > -		const struct drm_display_mode *adjusted_mode =3D
> > > -			&crtc_state->hw.adjusted_mode;
> > > +		const struct drm_display_mode *pipe_mode =3D
> > > +			&crtc_state->hw.pipe_mode;
> > >  		enum pipe pipe =3D crtc->pipe;
> > >  		int hdisplay, vdisplay;
> > >  		u32 pipe_dbuf_slice_mask;
> > > @@ -4211,7 +4211,7 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i=
915_private *dev_priv,
> > >  		if (dbuf_slice_mask !=3D pipe_dbuf_slice_mask)
> > >  			continue;
> > >  =

> > > -		drm_mode_get_hv_timing(adjusted_mode, &hdisplay, &vdisplay);
> > > +		drm_mode_get_hv_timing(pipe_mode, &hdisplay, &vdisplay);
> > >  =

> > >  		total_width_in_range +=3D hdisplay;
> > >  =

> > > @@ -5099,7 +5099,7 @@ intel_get_linetime_us(const struct intel_crtc_s=
tate *crtc_state)
> > >  	if (drm_WARN_ON(&dev_priv->drm, pixel_rate =3D=3D 0))
> > >  		return u32_to_fixed16(0);
> > >  =

> > > -	crtc_htotal =3D crtc_state->hw.adjusted_mode.crtc_htotal;
> > > +	crtc_htotal =3D crtc_state->hw.pipe_mode.crtc_htotal;
> > >  	linetime_us =3D div_fixed16(crtc_htotal * 1000, pixel_rate);
> > >  =

> > >  	return linetime_us;
> > > @@ -5288,14 +5288,14 @@ static void skl_compute_plane_wm(const struct=
 intel_crtc_state *crtc_state,
> > >  	method1 =3D skl_wm_method1(dev_priv, wp->plane_pixel_rate,
> > >  				 wp->cpp, latency, wp->dbuf_block_size);
> > >  	method2 =3D skl_wm_method2(wp->plane_pixel_rate,
> > > -				 crtc_state->hw.adjusted_mode.crtc_htotal,
> > > +				 crtc_state->hw.pipe_mode.crtc_htotal,
> > >  				 latency,
> > >  				 wp->plane_blocks_per_line);
> > >  =

> > >  	if (wp->y_tiled) {
> > >  		selected_result =3D max_fixed16(method2, wp->y_tile_minimum);
> > >  	} else {
> > > -		if ((wp->cpp * crtc_state->hw.adjusted_mode.crtc_htotal /
> > > +		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
> > >  		     wp->dbuf_block_size < 1) &&
> > >  		     (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)) {
> > >  			selected_result =3D method2;
> > > -- =

> > > 2.19.1
> > > =

> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
