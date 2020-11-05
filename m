Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5282A82E6
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 17:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF5D66EB54;
	Thu,  5 Nov 2020 16:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B8DE6EB54
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 16:00:58 +0000 (UTC)
IronPort-SDR: uBPPBsbdW8rwu2Eto/qmVVu0hexvCx8QzpvfJ2ijhRiB5QmOMbCSuWs4jJ2X9Vgjn7aIr46pVu
 Jr1iLlC2W9ww==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="187313955"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="187313955"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 08:00:56 -0800
IronPort-SDR: BxhOQHjXodnvOxjrjoBCNrN+C+z3RJByu/colmPXXPnWS8upBlSlGkK5Y8BKDFzaDm2moA/h/M
 ghXUYUPH3jEQ==
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="326069240"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 08:00:53 -0800
Date: Thu, 5 Nov 2020 08:03:01 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201105160256.GA10754@labuser-Z97X-UD5H>
References: <20201102211906.4893-3-manasi.d.navare@intel.com>
 <20201102230400.17404-1-manasi.d.navare@intel.com>
 <20201105151304.GT6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201105151304.GT6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v6 3/6] drm/i915: Add hw.pipe_mode to allow
 bigjoiner pipe/transcoder split
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

On Thu, Nov 05, 2020 at 05:13:04PM +0200, Ville Syrj=E4l=E4 wrote:
> On Mon, Nov 02, 2020 at 03:04:00PM -0800, Manasi Navare wrote:
> > From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > =

> > With bigjoiner, there will be 2 pipes driving 2 halves of 1 transcoder,
> > because of this, we need a pipe_mode for various calculations, including
> > for example watermarks, plane clipping, etc.
> > =

> > v9:
> > * pipe_mode in state dump nd state check (Ville)
> > v8:
> > * Add pipe_mode in readout in verify_crtc_state (Ville)
> > v7:
> > * Remove redundant comment (Ville)
> > * Just keep mode instead of pipe_mode (Ville)
> > v6:
> > * renaming in separate function, only pipe_mode here (Ville)
> > * Add description (Maarten)
> > v5:
> > * Rebase (Manasi)
> > v4:
> > * Manual rebase (Manasi)
> > v3:
> > * Change state to crtc_state, fix rebase err  (Manasi)
> > v2:
> > * Manual Rebase (Manasi)
> > =

> > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > Reviewed-by: Animesh Manna <animesh.manna@intel.com>
> > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 51 ++++++++-----
> >  .../drm/i915/display/intel_display_types.h    | 11 ++-
> >  drivers/gpu/drm/i915/intel_pm.c               | 76 +++++++++----------
> >  3 files changed, 81 insertions(+), 57 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index e9fbcfe1649e..c045ef0ac801 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6167,18 +6167,16 @@ skl_update_scaler(struct intel_crtc_state *crtc=
_state, bool force_detach,
> >  =

> >  static int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
> >  {
> > -	const struct drm_display_mode *adjusted_mode =3D
> > -		&crtc_state->hw.adjusted_mode;
> > +	const struct drm_display_mode *pipe_mode =3D &crtc_state->hw.pipe_mod=
e;
> >  	int width, height;
> >  =

> >  	if (crtc_state->pch_pfit.enabled) {
> >  		width =3D drm_rect_width(&crtc_state->pch_pfit.dst);
> >  		height =3D drm_rect_height(&crtc_state->pch_pfit.dst);
> >  	} else {
> > -		width =3D adjusted_mode->crtc_hdisplay;
> > -		height =3D adjusted_mode->crtc_vdisplay;
> > +		width =3D pipe_mode->crtc_hdisplay;
> > +		height =3D pipe_mode->crtc_vdisplay;
> >  	}
> > -
> >  	return skl_update_scaler(crtc_state, !crtc_state->hw.active,
> >  				 SKL_CRTC_INDEX,
> >  				 &crtc_state->scaler_state.scaler_id,
> > @@ -8192,7 +8190,7 @@ static bool intel_crtc_supports_double_wide(const=
 struct intel_crtc *crtc)
> >  =

> >  static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_sta=
te)
> >  {
> > -	u32 pixel_rate =3D crtc_state->hw.adjusted_mode.crtc_clock;
> > +	u32 pixel_rate =3D crtc_state->hw.pipe_mode.crtc_clock;
> >  	unsigned int pipe_w, pipe_h, pfit_w, pfit_h;
> >  =

> >  	/*
> > @@ -8225,7 +8223,11 @@ static u32 ilk_pipe_pixel_rate(const struct inte=
l_crtc_state *crtc_state)
> >  static void intel_encoder_get_config(struct intel_encoder *encoder,
> >  				     struct intel_crtc_state *crtc_state)
> >  {
> > +	struct drm_display_mode *pipe_mode =3D &crtc_state->hw.pipe_mode;
> > +
> >  	encoder->get_config(encoder, crtc_state);
> > +
> > +	*pipe_mode =3D crtc_state->hw.adjusted_mode;
> >  }
> >  =

> >  static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crt=
c_state)
> > @@ -8235,7 +8237,7 @@ static void intel_crtc_compute_pixel_rate(struct =
intel_crtc_state *crtc_state)
> >  	if (HAS_GMCH(dev_priv))
> >  		/* FIXME calculate proper pipe pixel rate for GMCH pfit */
> >  		crtc_state->pixel_rate =3D
> > -			crtc_state->hw.adjusted_mode.crtc_clock;
> > +			crtc_state->hw.pipe_mode.crtc_clock;
> >  	else
> >  		crtc_state->pixel_rate =3D
> >  			ilk_pipe_pixel_rate(crtc_state);
> > @@ -8245,9 +8247,11 @@ static int intel_crtc_compute_config(struct inte=
l_crtc *crtc,
> >  				     struct intel_crtc_state *pipe_config)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > -	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adj=
usted_mode;
> > +	struct drm_display_mode *pipe_mode =3D &pipe_config->hw.pipe_mode;
> >  	int clock_limit =3D dev_priv->max_dotclk_freq;
> >  =

> > +	*pipe_mode =3D pipe_config->hw.adjusted_mode;
> =

> That will now overwrite whatever the encoder computed in
> .compute_config(). Wasn't that where we wanted to do it for actual
> bigjoiner, or was that going to be somewhere else?

We compute the pipe mode for bigjoiner in this function:

static int intel_crtc_compute_config(struct intel_crtc *crtc,
                                     struct intel_crtc_state *pipe_config)
{
        struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
        struct drm_display_mode *pipe_mode =3D &pipe_config->hw.pipe_mode;
        int clock_limit =3D dev_priv->max_dotclk_freq;

        *pipe_mode =3D pipe_config->hw.adjusted_mode;

        /* Adjust pipe_mode for bigjoiner, with half the horizontal mode */
        if (pipe_config->bigjoiner) {
                pipe_mode->crtc_clock /=3D 2;
                pipe_mode->crtc_hdisplay /=3D 2;
                pipe_mode->crtc_hblank_start /=3D 2;
                pipe_mode->crtc_hblank_end /=3D 2;
                pipe_mode->crtc_hsync_start /=3D 2;
                pipe_mode->crtc_hsync_end /=3D 2;
                pipe_mode->crtc_htotal /=3D 2;
                pipe_mode->crtc_hskew /=3D 2;
                pipe_config->pipe_src_w /=3D 2;
        }

So thats why in this patch we just add *pipe_mode =3D pipe_config->hw.adjus=
ted_mode; the actual big joiner stuff gets added
in the core big joiner patch : https://patchwork.freedesktop.org/patch/3984=
57/?series=3D83379&rev=3D1


> =

> An alternative would be to do this before .compute_config() +
> also in intel_fixed_panel_mode() for eDP/etc.
> =

> > +
> >  	if (INTEL_GEN(dev_priv) < 4) {
> >  		clock_limit =3D dev_priv->max_cdclk_freq * 9 / 10;
> >  =

> > @@ -8256,16 +8260,16 @@ static int intel_crtc_compute_config(struct int=
el_crtc *crtc,
> >  		 * is > 90% of the (display) core speed.
> >  		 */
> >  		if (intel_crtc_supports_double_wide(crtc) &&
> > -		    adjusted_mode->crtc_clock > clock_limit) {
> > +		    pipe_mode->crtc_clock > clock_limit) {
> >  			clock_limit =3D dev_priv->max_dotclk_freq;
> >  			pipe_config->double_wide =3D true;
> >  		}
> >  	}
> >  =

> > -	if (adjusted_mode->crtc_clock > clock_limit) {
> > +	if (pipe_mode->crtc_clock > clock_limit) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "requested pixel clock (%d kHz) too high (max: %d kHz, double w=
ide: %s)\n",
> > -			    adjusted_mode->crtc_clock, clock_limit,
> > +			    pipe_mode->crtc_clock, clock_limit,
> >  			    yesno(pipe_config->double_wide));
> >  		return -EINVAL;
> >  	}
> > @@ -8308,7 +8312,7 @@ static int intel_crtc_compute_config(struct intel=
_crtc *crtc,
> >  	 * WaPruneModeWithIncorrectHsyncOffset:ctg,elk,ilk,snb,ivb,vlv,hsw.
> >  	 */
> >  	if ((INTEL_GEN(dev_priv) > 4 || IS_G4X(dev_priv)) &&
> > -		adjusted_mode->crtc_hsync_start =3D=3D adjusted_mode->crtc_hdisplay)
> > +	    pipe_mode->crtc_hsync_start =3D=3D pipe_mode->crtc_hdisplay)
> >  		return -EINVAL;
> >  =

> >  	intel_crtc_compute_pixel_rate(pipe_config);
> > @@ -12827,15 +12831,15 @@ static bool c8_planes_changed(const struct in=
tel_crtc_state *new_crtc_state)
> >  =

> >  static u16 hsw_linetime_wm(const struct intel_crtc_state *crtc_state)
> >  {
> > -	const struct drm_display_mode *adjusted_mode =3D
> > -		&crtc_state->hw.adjusted_mode;
> > +	const struct drm_display_mode *pipe_mode =3D
> > +		&crtc_state->hw.pipe_mode;
> >  	int linetime_wm;
> >  =

> >  	if (!crtc_state->hw.enable)
> >  		return 0;
> >  =

> > -	linetime_wm =3D DIV_ROUND_CLOSEST(adjusted_mode->crtc_htotal * 1000 *=
 8,
> > -					adjusted_mode->crtc_clock);
> > +	linetime_wm =3D DIV_ROUND_CLOSEST(pipe_mode->crtc_htotal * 1000 * 8,
> > +					pipe_mode->crtc_clock);
> >  =

> >  	return min(linetime_wm, 0x1ff);
> >  }
> > @@ -13322,7 +13326,10 @@ static void intel_dump_pipe_config(const struc=
t intel_crtc_state *pipe_config,
> >  	drm_mode_debug_printmodeline(&pipe_config->hw.mode);
> >  	drm_dbg_kms(&dev_priv->drm, "adjusted mode:\n");
> >  	drm_mode_debug_printmodeline(&pipe_config->hw.adjusted_mode);
> > +	drm_dbg_kms(&dev_priv->drm, "pipe mode:\n");
> > +	drm_mode_debug_printmodeline(&pipe_config->hw.pipe_mode);
> >  	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.adjusted_mode);
> > +	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.pipe_mode);
> >  	drm_dbg_kms(&dev_priv->drm,
> >  		    "port clock: %d, pipe src size: %dx%d, pixel rate %d\n",
> >  		    pipe_config->port_clock,
> > @@ -13465,8 +13472,9 @@ intel_crtc_copy_uapi_to_hw_state(struct intel_c=
rtc_state *crtc_state)
> >  	crtc_state->hw.enable =3D crtc_state->uapi.enable;
> >  	crtc_state->hw.active =3D crtc_state->uapi.active;
> >  	crtc_state->hw.mode =3D crtc_state->uapi.mode;
> > -	crtc_state->hw.adjusted_mode =3D crtc_state->uapi.adjusted_mode;
> > +	crtc_state->hw.pipe_mode =3D crtc_state->hw.adjusted_mode =3D crtc_st=
ate->uapi.adjusted_mode;
> >  	crtc_state->hw.scaling_filter =3D crtc_state->uapi.scaling_filter;
> > +
> >  	intel_crtc_copy_uapi_to_hw_state_nomodeset(crtc_state);
> >  }
> >  =

> > @@ -13663,6 +13671,9 @@ intel_modeset_pipe_config(struct intel_crtc_sta=
te *pipe_config)
> >  		    "hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
> >  		    base_bpp, pipe_config->pipe_bpp, pipe_config->dither);
> >  =

> > +	/* without bigjoiner, pipe_mode =3D=3D adjusted_mode */
> > +	pipe_config->hw.pipe_mode =3D pipe_config->hw.adjusted_mode;
> > +
> >  	return 0;
> >  }
> >  =

> > @@ -14071,6 +14082,10 @@ intel_pipe_config_compare(const struct intel_c=
rtc_state *current_config,
> >  =

> >  	PIPE_CONF_CHECK_X(output_types);
> >  =

> > +	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hdisplay);
> > +	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hdisplay);
> > +	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hdisplay);
> > +	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hdisplay);
> >  	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hdisplay);
> >  	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_htotal);
> >  	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_hblank_start);
> > @@ -18920,6 +18935,8 @@ static void intel_modeset_readout_hw_state(stru=
ct drm_device *dev)
> >  			 */
> >  			crtc_state->inherited =3D true;
> >  =

> > +			crtc_state->hw.pipe_mode =3D crtc_state->hw.adjusted_mode;
> > +
> =

> Isn't this redundant now?

Why is this redundant? I think we need this because then intel_crtc_compute=
_pixel_rate() call actually uses pipe_mode
for getting pixel rate.

Manasi


> =

> >  			intel_crtc_compute_pixel_rate(crtc_state);
> >  =

> >  			intel_crtc_update_active_timings(crtc_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index f6f0626649e0..b526afee595c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -817,15 +817,22 @@ struct intel_crtc_state {
> >  	 * The following members are used to verify the hardware state:
> >  	 * - enable
> >  	 * - active
> > -	 * - mode / adjusted_mode
> > +	 * - mode/adjusted_mode
> >  	 * - color property blobs.
> >  	 *
> >  	 * During initial hw readout, they need to be copied to uapi.
> > +	 *
> > +	 * Bigjoiner will allow a transcoder mode that spans 2 pipes;
> > +	 * Use the pipe_mode for calculations like watermarks, pipe
> > +	 * scaler, and bandwidth.
> > +	 *
> > +	 * Use adjusted_mode for things that need to know the full
> > +	 * mode on the transcoder, which spans all pipes.
> >  	 */
> >  	struct {
> >  		bool active, enable;
> >  		struct drm_property_blob *degamma_lut, *gamma_lut, *ctm;
> > -		struct drm_display_mode mode, adjusted_mode;
> > +		struct drm_display_mode mode, pipe_mode, adjusted_mode;
> >  		enum drm_scaling_filter scaling_filter;
> >  	} hw;
> >  =

> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/int=
el_pm.c
> > index f54375b11964..9898c257d3e0 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -899,12 +899,12 @@ static void pnv_update_wm(struct intel_crtc *unus=
ed_crtc)
> >  =

> >  	crtc =3D single_enabled_crtc(dev_priv);
> >  	if (crtc) {
> > -		const struct drm_display_mode *adjusted_mode =3D
> > -			&crtc->config->hw.adjusted_mode;
> > +		const struct drm_display_mode *pipe_mode =3D
> > +			&crtc->config->hw.pipe_mode;
> >  		const struct drm_framebuffer *fb =3D
> >  			crtc->base.primary->state->fb;
> >  		int cpp =3D fb->format->cpp[0];
> > -		int clock =3D adjusted_mode->crtc_clock;
> > +		int clock =3D pipe_mode->crtc_clock;
> >  =

> >  		/* Display SR */
> >  		wm =3D intel_calculate_wm(clock, &pnv_display_wm,
> > @@ -1135,8 +1135,8 @@ static u16 g4x_compute_wm(const struct intel_crtc=
_state *crtc_state,
> >  {
> >  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> >  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> > -	const struct drm_display_mode *adjusted_mode =3D
> > -		&crtc_state->hw.adjusted_mode;
> > +	const struct drm_display_mode *pipe_mode =3D
> > +		&crtc_state->hw.pipe_mode;
> >  	unsigned int latency =3D dev_priv->wm.pri_latency[level] * 10;
> >  	unsigned int clock, htotal, cpp, width, wm;
> >  =

> > @@ -1163,8 +1163,8 @@ static u16 g4x_compute_wm(const struct intel_crtc=
_state *crtc_state,
> >  	    level !=3D G4X_WM_LEVEL_NORMAL)
> >  		cpp =3D max(cpp, 4u);
> >  =

> > -	clock =3D adjusted_mode->crtc_clock;
> > -	htotal =3D adjusted_mode->crtc_htotal;
> > +	clock =3D pipe_mode->crtc_clock;
> > +	htotal =3D pipe_mode->crtc_htotal;
> >  =

> >  	width =3D drm_rect_width(&plane_state->uapi.dst);
> >  =

> > @@ -1660,8 +1660,8 @@ static u16 vlv_compute_wm_level(const struct inte=
l_crtc_state *crtc_state,
> >  {
> >  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> >  	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> > -	const struct drm_display_mode *adjusted_mode =3D
> > -		&crtc_state->hw.adjusted_mode;
> > +	const struct drm_display_mode *pipe_mode =3D
> > +		&crtc_state->hw.pipe_mode;
> >  	unsigned int clock, htotal, cpp, width, wm;
> >  =

> >  	if (dev_priv->wm.pri_latency[level] =3D=3D 0)
> > @@ -1671,8 +1671,8 @@ static u16 vlv_compute_wm_level(const struct inte=
l_crtc_state *crtc_state,
> >  		return 0;
> >  =

> >  	cpp =3D plane_state->hw.fb->format->cpp[0];
> > -	clock =3D adjusted_mode->crtc_clock;
> > -	htotal =3D adjusted_mode->crtc_htotal;
> > +	clock =3D pipe_mode->crtc_clock;
> > +	htotal =3D pipe_mode->crtc_htotal;
> >  	width =3D crtc_state->pipe_src_w;
> >  =

> >  	if (plane->id =3D=3D PLANE_CURSOR) {
> > @@ -2261,12 +2261,12 @@ static void i965_update_wm(struct intel_crtc *u=
nused_crtc)
> >  	if (crtc) {
> >  		/* self-refresh has much higher latency */
> >  		static const int sr_latency_ns =3D 12000;
> > -		const struct drm_display_mode *adjusted_mode =3D
> > -			&crtc->config->hw.adjusted_mode;
> > +		const struct drm_display_mode *pipe_mode =3D
> > +			&crtc->config->hw.pipe_mode;
> >  		const struct drm_framebuffer *fb =3D
> >  			crtc->base.primary->state->fb;
> > -		int clock =3D adjusted_mode->crtc_clock;
> > -		int htotal =3D adjusted_mode->crtc_htotal;
> > +		int clock =3D pipe_mode->crtc_clock;
> > +		int htotal =3D pipe_mode->crtc_htotal;
> >  		int hdisplay =3D crtc->config->pipe_src_w;
> >  		int cpp =3D fb->format->cpp[0];
> >  		int entries;
> > @@ -2345,8 +2345,8 @@ static void i9xx_update_wm(struct intel_crtc *unu=
sed_crtc)
> >  	fifo_size =3D dev_priv->display.get_fifo_size(dev_priv, PLANE_A);
> >  	crtc =3D intel_get_crtc_for_plane(dev_priv, PLANE_A);
> >  	if (intel_crtc_active(crtc)) {
> > -		const struct drm_display_mode *adjusted_mode =3D
> > -			&crtc->config->hw.adjusted_mode;
> > +		const struct drm_display_mode *pipe_mode =3D
> > +			&crtc->config->hw.pipe_mode;
> >  		const struct drm_framebuffer *fb =3D
> >  			crtc->base.primary->state->fb;
> >  		int cpp;
> > @@ -2356,7 +2356,7 @@ static void i9xx_update_wm(struct intel_crtc *unu=
sed_crtc)
> >  		else
> >  			cpp =3D fb->format->cpp[0];
> >  =

> > -		planea_wm =3D intel_calculate_wm(adjusted_mode->crtc_clock,
> > +		planea_wm =3D intel_calculate_wm(pipe_mode->crtc_clock,
> >  					       wm_info, fifo_size, cpp,
> >  					       pessimal_latency_ns);
> >  		enabled =3D crtc;
> > @@ -2372,8 +2372,8 @@ static void i9xx_update_wm(struct intel_crtc *unu=
sed_crtc)
> >  	fifo_size =3D dev_priv->display.get_fifo_size(dev_priv, PLANE_B);
> >  	crtc =3D intel_get_crtc_for_plane(dev_priv, PLANE_B);
> >  	if (intel_crtc_active(crtc)) {
> > -		const struct drm_display_mode *adjusted_mode =3D
> > -			&crtc->config->hw.adjusted_mode;
> > +		const struct drm_display_mode *pipe_mode =3D
> > +			&crtc->config->hw.pipe_mode;
> >  		const struct drm_framebuffer *fb =3D
> >  			crtc->base.primary->state->fb;
> >  		int cpp;
> > @@ -2383,7 +2383,7 @@ static void i9xx_update_wm(struct intel_crtc *unu=
sed_crtc)
> >  		else
> >  			cpp =3D fb->format->cpp[0];
> >  =

> > -		planeb_wm =3D intel_calculate_wm(adjusted_mode->crtc_clock,
> > +		planeb_wm =3D intel_calculate_wm(pipe_mode->crtc_clock,
> >  					       wm_info, fifo_size, cpp,
> >  					       pessimal_latency_ns);
> >  		if (enabled =3D=3D NULL)
> > @@ -2421,12 +2421,12 @@ static void i9xx_update_wm(struct intel_crtc *u=
nused_crtc)
> >  	if (HAS_FW_BLC(dev_priv) && enabled) {
> >  		/* self-refresh has much higher latency */
> >  		static const int sr_latency_ns =3D 6000;
> > -		const struct drm_display_mode *adjusted_mode =3D
> > -			&enabled->config->hw.adjusted_mode;
> > +		const struct drm_display_mode *pipe_mode =3D
> > +			&enabled->config->hw.pipe_mode;
> >  		const struct drm_framebuffer *fb =3D
> >  			enabled->base.primary->state->fb;
> > -		int clock =3D adjusted_mode->crtc_clock;
> > -		int htotal =3D adjusted_mode->crtc_htotal;
> > +		int clock =3D pipe_mode->crtc_clock;
> > +		int htotal =3D pipe_mode->crtc_htotal;
> >  		int hdisplay =3D enabled->config->pipe_src_w;
> >  		int cpp;
> >  		int entries;
> > @@ -2474,7 +2474,7 @@ static void i845_update_wm(struct intel_crtc *unu=
sed_crtc)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(unused_crtc->base.dev);
> >  	struct intel_crtc *crtc;
> > -	const struct drm_display_mode *adjusted_mode;
> > +	const struct drm_display_mode *pipe_mode;
> >  	u32 fwater_lo;
> >  	int planea_wm;
> >  =

> > @@ -2482,8 +2482,8 @@ static void i845_update_wm(struct intel_crtc *unu=
sed_crtc)
> >  	if (crtc =3D=3D NULL)
> >  		return;
> >  =

> > -	adjusted_mode =3D &crtc->config->hw.adjusted_mode;
> > -	planea_wm =3D intel_calculate_wm(adjusted_mode->crtc_clock,
> > +	pipe_mode =3D &crtc->config->hw.pipe_mode;
> > +	planea_wm =3D intel_calculate_wm(pipe_mode->crtc_clock,
> >  				       &i845_wm_info,
> >  				       dev_priv->display.get_fifo_size(dev_priv, PLANE_A),
> >  				       4, pessimal_latency_ns);
> > @@ -2573,7 +2573,7 @@ static u32 ilk_compute_pri_wm(const struct intel_=
crtc_state *crtc_state,
> >  		return method1;
> >  =

> >  	method2 =3D ilk_wm_method2(crtc_state->pixel_rate,
> > -				 crtc_state->hw.adjusted_mode.crtc_htotal,
> > +				 crtc_state->hw.pipe_mode.crtc_htotal,
> >  				 drm_rect_width(&plane_state->uapi.dst),
> >  				 cpp, mem_value);
> >  =

> > @@ -2601,7 +2601,7 @@ static u32 ilk_compute_spr_wm(const struct intel_=
crtc_state *crtc_state,
> >  =

> >  	method1 =3D ilk_wm_method1(crtc_state->pixel_rate, cpp, mem_value);
> >  	method2 =3D ilk_wm_method2(crtc_state->pixel_rate,
> > -				 crtc_state->hw.adjusted_mode.crtc_htotal,
> > +				 crtc_state->hw.pipe_mode.crtc_htotal,
> >  				 drm_rect_width(&plane_state->uapi.dst),
> >  				 cpp, mem_value);
> >  	return min(method1, method2);
> > @@ -2626,7 +2626,7 @@ static u32 ilk_compute_cur_wm(const struct intel_=
crtc_state *crtc_state,
> >  	cpp =3D plane_state->hw.fb->format->cpp[0];
> >  =

> >  	return ilk_wm_method2(crtc_state->pixel_rate,
> > -			      crtc_state->hw.adjusted_mode.crtc_htotal,
> > +			      crtc_state->hw.pipe_mode.crtc_htotal,
> >  			      drm_rect_width(&plane_state->uapi.dst),
> >  			      cpp, mem_value);
> >  }
> > @@ -3883,7 +3883,7 @@ static bool skl_crtc_can_enable_sagv(const struct=
 intel_crtc_state *crtc_state)
> >  	if (!crtc_state->hw.active)
> >  		return true;
> >  =

> > -	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> > +	if (crtc_state->hw.pipe_mode.flags & DRM_MODE_FLAG_INTERLACE)
> >  		return false;
> >  =

> >  	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc=
_state) {
> > @@ -4174,8 +4174,8 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i91=
5_private *dev_priv,
> >  	 */
> >  	total_slice_mask =3D dbuf_slice_mask;
> >  	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
> > -		const struct drm_display_mode *adjusted_mode =3D
> > -			&crtc_state->hw.adjusted_mode;
> > +		const struct drm_display_mode *pipe_mode =3D
> > +			&crtc_state->hw.pipe_mode;
> >  		enum pipe pipe =3D crtc->pipe;
> >  		int hdisplay, vdisplay;
> >  		u32 pipe_dbuf_slice_mask;
> > @@ -4205,7 +4205,7 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i91=
5_private *dev_priv,
> >  		if (dbuf_slice_mask !=3D pipe_dbuf_slice_mask)
> >  			continue;
> >  =

> > -		drm_mode_get_hv_timing(adjusted_mode, &hdisplay, &vdisplay);
> > +		drm_mode_get_hv_timing(pipe_mode, &hdisplay, &vdisplay);
> >  =

> >  		total_width_in_range +=3D hdisplay;
> >  =

> > @@ -5093,7 +5093,7 @@ intel_get_linetime_us(const struct intel_crtc_sta=
te *crtc_state)
> >  	if (drm_WARN_ON(&dev_priv->drm, pixel_rate =3D=3D 0))
> >  		return u32_to_fixed16(0);
> >  =

> > -	crtc_htotal =3D crtc_state->hw.adjusted_mode.crtc_htotal;
> > +	crtc_htotal =3D crtc_state->hw.pipe_mode.crtc_htotal;
> >  	linetime_us =3D div_fixed16(crtc_htotal * 1000, pixel_rate);
> >  =

> >  	return linetime_us;
> > @@ -5282,14 +5282,14 @@ static void skl_compute_plane_wm(const struct i=
ntel_crtc_state *crtc_state,
> >  	method1 =3D skl_wm_method1(dev_priv, wp->plane_pixel_rate,
> >  				 wp->cpp, latency, wp->dbuf_block_size);
> >  	method2 =3D skl_wm_method2(wp->plane_pixel_rate,
> > -				 crtc_state->hw.adjusted_mode.crtc_htotal,
> > +				 crtc_state->hw.pipe_mode.crtc_htotal,
> >  				 latency,
> >  				 wp->plane_blocks_per_line);
> >  =

> >  	if (wp->y_tiled) {
> >  		selected_result =3D max_fixed16(method2, wp->y_tile_minimum);
> >  	} else {
> > -		if ((wp->cpp * crtc_state->hw.adjusted_mode.crtc_htotal /
> > +		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
> >  		     wp->dbuf_block_size < 1) &&
> >  		     (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)) {
> >  			selected_result =3D method2;
> > -- =

> > 2.19.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
