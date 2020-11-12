Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C55C2B0E72
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 20:46:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63B6D6E409;
	Thu, 12 Nov 2020 19:46:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C2E16E409
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 19:46:43 +0000 (UTC)
IronPort-SDR: cLEMLyXM34T86TF5HnFPnvFIPaqzUqWavvpA7MUoWMP+FALVtpGXP53l7ZUGRelpCcd2byw2Iw
 Vbu0vJvhDmjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="255079889"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="255079889"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:46:39 -0800
IronPort-SDR: cjV/9M7j2PGsb6fbkvrs+r19D2Yo9xgW5EuwIWsFoHNZOY0vGD+kxknvya14GdzJW2jKPbP3Ny
 D4XD3ienPU1g==
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="328612197"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:46:38 -0800
Date: Thu, 12 Nov 2020 11:49:00 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201112194900.GD15399@labuser-Z97X-UD5H>
References: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
 <20201112191718.16683-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201112191718.16683-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915:
 s/intel_mode_from_pipe_config/intel_mode_from_crtc_timings/
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

On Thu, Nov 12, 2020 at 09:17:16PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Generalize intel_mode_from_pipe_config() to work on any two
> arbitrary modes. Also relocate the code for the future, and
> make it static since it's not needed elsewhere.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 48 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_display.h |  2 -
>  2 files changed, 24 insertions(+), 26 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 889642bef192..ebf621ff7ef6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8128,6 +8128,27 @@ static u32 ilk_pipe_pixel_rate(const struct intel_=
crtc_state *crtc_state)
>  		       pfit_w * pfit_h);
>  }
>  =

> +static void intel_mode_from_crtc_timings(struct drm_display_mode *mode,
> +					 const struct drm_display_mode *timings)
> +{
> +	mode->hdisplay =3D timings->crtc_hdisplay;
> +	mode->htotal =3D timings->crtc_htotal;
> +	mode->hsync_start =3D timings->crtc_hsync_start;
> +	mode->hsync_end =3D timings->crtc_hsync_end;
> +
> +	mode->vdisplay =3D timings->crtc_vdisplay;
> +	mode->vtotal =3D timings->crtc_vtotal;
> +	mode->vsync_start =3D timings->crtc_vsync_start;
> +	mode->vsync_end =3D timings->crtc_vsync_end;
> +
> +	mode->flags =3D timings->flags;
> +	mode->type =3D DRM_MODE_TYPE_DRIVER;
> +
> +	mode->clock =3D timings->crtc_clock;
> +
> +	drm_mode_set_name(mode);
> +}
> +
>  static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_=
state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> @@ -9030,27 +9051,6 @@ static void intel_get_pipe_src_size(struct intel_c=
rtc *crtc,
>  	pipe_config->hw.mode.hdisplay =3D pipe_config->pipe_src_w;
>  }
>  =

> -void intel_mode_from_pipe_config(struct drm_display_mode *mode,
> -				 struct intel_crtc_state *pipe_config)
> -{
> -	mode->hdisplay =3D pipe_config->hw.adjusted_mode.crtc_hdisplay;
> -	mode->htotal =3D pipe_config->hw.adjusted_mode.crtc_htotal;
> -	mode->hsync_start =3D pipe_config->hw.adjusted_mode.crtc_hsync_start;
> -	mode->hsync_end =3D pipe_config->hw.adjusted_mode.crtc_hsync_end;
> -
> -	mode->vdisplay =3D pipe_config->hw.adjusted_mode.crtc_vdisplay;
> -	mode->vtotal =3D pipe_config->hw.adjusted_mode.crtc_vtotal;
> -	mode->vsync_start =3D pipe_config->hw.adjusted_mode.crtc_vsync_start;
> -	mode->vsync_end =3D pipe_config->hw.adjusted_mode.crtc_vsync_end;
> -
> -	mode->flags =3D pipe_config->hw.adjusted_mode.flags;
> -	mode->type =3D DRM_MODE_TYPE_DRIVER;
> -
> -	mode->clock =3D pipe_config->hw.adjusted_mode.crtc_clock;
> -
> -	drm_mode_set_name(mode);
> -}
> -
>  static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -12424,7 +12424,7 @@ intel_encoder_current_mode(struct intel_encoder *=
encoder)
>  =

>  	intel_encoder_get_config(encoder, crtc_state);
>  =

> -	intel_mode_from_pipe_config(mode, crtc_state);
> +	intel_mode_from_crtc_timings(mode, &crtc_state->hw.adjusted_mode);
>  =

>  	kfree(crtc_state);
>  =

> @@ -18841,8 +18841,8 @@ static void intel_modeset_readout_hw_state(struct=
 drm_device *dev)
>  		if (crtc_state->hw.active) {
>  			struct drm_display_mode *mode =3D &crtc_state->hw.mode;
>  =

> -			intel_mode_from_pipe_config(&crtc_state->hw.adjusted_mode,
> -						    crtc_state);
> +			intel_mode_from_crtc_timings(&crtc_state->hw.adjusted_mode,
> +						     &crtc_state->hw.adjusted_mode);
>  =

>  			*mode =3D crtc_state->hw.adjusted_mode;
>  			mode->hdisplay =3D crtc_state->pipe_src_w;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index a988f9518ece..6be14e8571aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -609,8 +609,6 @@ enum intel_display_power_domain
>  intel_aux_power_domain(struct intel_digital_port *dig_port);
>  enum intel_display_power_domain
>  intel_legacy_aux_to_power_domain(enum aux_ch aux_ch);
> -void intel_mode_from_pipe_config(struct drm_display_mode *mode,
> -				 struct intel_crtc_state *pipe_config);
>  void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
>  				  struct intel_crtc_state *crtc_state);
>  =

> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
