Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C752A2FF857
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 00:01:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCFA56E973;
	Thu, 21 Jan 2021 23:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 230586E973
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 23:01:10 +0000 (UTC)
IronPort-SDR: UU6PCMt5PsWnhOrNIfk5ejhVG3rJFC9vSFNgfC1zazO3J4PrFb6TMyKIpGVvZ0PlwwlOHY3WR2
 1Z+a2JNRtyMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="175849637"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="175849637"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 15:01:08 -0800
IronPort-SDR: 55NkkvniOYOxvkkOdFaOgwMIaBWdPK4it1fFqmm2OV19n1q33P7FPBjDcdbrhzQbpzWTMQIazO
 56lIk+mtHCnQ==
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="356690869"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 15:01:04 -0800
Date: Thu, 21 Jan 2021 15:05:32 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210121230532.GE26641@labuser-Z97X-UD5H>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
 <20210113220935.4151-18-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113220935.4151-18-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 17/18] drm/i915: Fix vblank timestamps
 with VRR
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 13, 2021 at 02:09:34PM -0800, Manasi Navare wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> To get sensible vblank timestamping behaviour we need to feed
> the vmax based timings to the vblank code, otherwise it'll chop
> off the scanline counter when it exceeds the minumum vtotal.
> =

> Additionally with VRR we have three cases to consider when we
> generate the vblank timestamp:
> 1) we are in vertical active
>   -> nothing special needs to be done, just return the current
>      scanout position and the core will calculate the timestamp
>      corresponding to the past time when the current vertical
>      active started
> 2) we are in vertical blank and no push has been sent
>   -> the hardware will keep extending the vblank presumably
>      to its maximum length, so we make the timestmap match the
>      expected time when the max length vblank will end. Since
>      the timings used for this are now based on vmax nothing
>      special actually needs to be done
> 3) we are in vblank and a push has been sent so the vblank is
>    about to terminate
>   -> presumably we want the timestmap to accurately reflect
>      when the vblank will terminate, so we use the sampled
>      frame timestamp vs. current timestamp to guesstimate
>      how far along the vblank exit we are, and then we
>      adjust the reported scanout position accordingly so
>      that the core will see that the vblank is close to
>      ending.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c    | 17 ++++++++++++-----
>  .../gpu/drm/i915/display/intel_display_types.h  |  4 ++++
>  drivers/gpu/drm/i915/display/intel_vrr.c        |  4 ++++
>  drivers/gpu/drm/i915/i915_irq.c                 | 15 ++++++++++++++-
>  4 files changed, 34 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 4ed279f034be..d989baa44c37 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13835,10 +13835,17 @@ intel_crtc_update_active_timings(const struct i=
ntel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	const struct drm_display_mode *adjusted_mode =3D
> -		&crtc_state->hw.adjusted_mode;
> +	struct drm_display_mode adjusted_mode =3D
> +		crtc_state->hw.adjusted_mode;
> +
> +	if (crtc_state->vrr.enable) {
> +		adjusted_mode.crtc_vtotal =3D crtc_state->vrr.vmax;
> +		adjusted_mode.crtc_vblank_end =3D crtc_state->vrr.vmax;
> +		adjusted_mode.crtc_vblank_start =3D intel_vrr_vmin_vblank_start(crtc_s=
tate);
> +		crtc->vmax_vblank_start =3D intel_vrr_vmax_vblank_start(crtc_state);
> +	}
>  =

> -	drm_calc_timestamping_constants(&crtc->base, adjusted_mode);
> +	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
>  =

>  	crtc->mode_flags =3D crtc_state->mode_flags;
>  =

> @@ -13872,8 +13879,8 @@ intel_crtc_update_active_timings(const struct int=
el_crtc_state *crtc_state)
>  	if (IS_GEN(dev_priv, 2)) {
>  		int vtotal;
>  =

> -		vtotal =3D adjusted_mode->crtc_vtotal;
> -		if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
> +		vtotal =3D adjusted_mode.crtc_vtotal;
> +		if (adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
>  			vtotal /=3D 2;
>  =

>  		crtc->scanline_offset =3D vtotal - 1;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index aa0842028414..3fee613617f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -679,6 +679,8 @@ struct intel_crtc_scaler_state {
>  #define I915_MODE_FLAG_DSI_USE_TE1 (1<<4)
>  /* Flag to indicate mipi dsi periodic command mode where we do not get T=
E */
>  #define I915_MODE_FLAG_DSI_PERIODIC_CMD_MODE (1<<5)
> +/* Do tricks to make vblank timestamps sane with VRR? */
> +#define I915_MODE_FLAG_VRR (1<<6)
>  =

>  struct intel_wm_level {
>  	bool enable;
> @@ -1186,6 +1188,8 @@ struct intel_crtc {
>  	/* I915_MODE_FLAG_* */
>  	u8 mode_flags;
>  =

> +	u16 vmax_vblank_start;
> +
>  	struct intel_display_power_domain_set enabled_power_domains;
>  	struct intel_overlay *overlay;
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i=
915/display/intel_vrr.c
> index 9a18c36e4a9a..a494d3ecb1b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -134,6 +134,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crt=
c_state,
>  	 */
>  	crtc_state->vrr.pipeline_full =3D
>  		min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay - 4 - 1);
> +
> +	crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
>  }
>  =

>  void intel_vrr_enable(struct intel_encoder *encoder,
> @@ -202,4 +204,6 @@ void intel_vrr_get_config(struct intel_crtc *crtc,
>  		crtc_state->vrr.flipline =3D intel_de_read(dev_priv, TRANS_VRR_FLIPLIN=
E(cpu_transcoder)) + 1;
>  	crtc_state->vrr.vmax =3D intel_de_read(dev_priv, TRANS_VRR_VMAX(cpu_tra=
nscoder)) + 1;
>  	crtc_state->vrr.vmin =3D intel_de_read(dev_priv, TRANS_VRR_VMIN(cpu_tra=
nscoder)) + 1;
> +
> +	crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 8505ceca87d5..e81afcb2f43e 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -893,7 +893,20 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc=
 *_crtc,
>  	if (stime)
>  		*stime =3D ktime_get();
>  =

> -	if (use_scanline_counter) {
> +	if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
> +		int scanlines =3D intel_crtc_scanlines_since_frame_timestamp(crtc);
> +
> +		position =3D __intel_get_crtc_scanline(crtc);
> +
> +		/*
> +		 * Already exiting vblank? If so, shift our position
> +		 * so it looks like we're already apporaching the full
> +		 * vblank end. This should make the generated timestamp
> +		 * more or less match when the active portion will start.
> +		 */
> +		if (position >=3D vbl_start && scanlines < position)
> +			position =3D min(crtc->vmax_vblank_start + scanlines, vtotal - 1);
> +	} if (use_scanline_counter) {
>  		/* No obvious pixelcount register. Only query vertical
>  		 * scanout position from Display scan line register.
>  		 */
> -- =

> 2.19.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
