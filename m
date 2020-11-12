Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC222B0E73
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 20:47:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C47F6E40A;
	Thu, 12 Nov 2020 19:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2AA96E40A
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 19:47:20 +0000 (UTC)
IronPort-SDR: YD5lIzMDtThiZfU7PP7J2pBOSa7YUPKlm+52T/8gVTB+Ss30pVV3RBBTlPbjZ7zYas2QWdG+li
 +ebcevSOgGjw==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="169585753"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="169585753"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:47:20 -0800
IronPort-SDR: jlaXtPtCWL7o18KRmwq4C874SQXT9QsnlYV7p3lXF/R35U7PRcpQZb9jUuMzxKO5hBgLdIYgK/
 9LdCvJMhLeVg==
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="532298239"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:47:20 -0800
Date: Thu, 12 Nov 2020 11:49:42 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201112194942.GE15399@labuser-Z97X-UD5H>
References: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
 <20201112191718.16683-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201112191718.16683-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Introduce
 intel_crtc_readout_derived_state()
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

On Thu, Nov 12, 2020 at 09:17:17PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Collect up a bunch of derived state "readout" into
> a common helper, which we can call from both
> intel_encoder_get_config() and intel_crtc_get_pipe_config().
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Makes sense

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 34 +++++++++++---------
>  1 file changed, 18 insertions(+), 16 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index ebf621ff7ef6..07b8d945c41f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8162,10 +8162,26 @@ static void intel_crtc_compute_pixel_rate(struct =
intel_crtc_state *crtc_state)
>  			ilk_pipe_pixel_rate(crtc_state);
>  }
>  =

> +static void intel_crtc_readout_derived_state(struct intel_crtc_state *cr=
tc_state)
> +{
> +	struct drm_display_mode *mode =3D &crtc_state->hw.mode;
> +	struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjusted_mod=
e;
> +
> +	intel_mode_from_crtc_timings(adjusted_mode, adjusted_mode);
> +
> +	intel_crtc_compute_pixel_rate(crtc_state);
> +
> +	drm_mode_copy(mode, adjusted_mode);
> +	mode->hdisplay =3D crtc_state->pipe_src_w;
> +	mode->vdisplay =3D crtc_state->pipe_src_h;
> +}
> +
>  static void intel_encoder_get_config(struct intel_encoder *encoder,
>  				     struct intel_crtc_state *crtc_state)
>  {
>  	encoder->get_config(encoder, crtc_state);
> +
> +	intel_crtc_readout_derived_state(crtc_state);
>  }
>  =

>  static int intel_crtc_compute_config(struct intel_crtc *crtc,
> @@ -9046,9 +9062,6 @@ static void intel_get_pipe_src_size(struct intel_cr=
tc *crtc,
>  	tmp =3D intel_de_read(dev_priv, PIPESRC(crtc->pipe));
>  	pipe_config->pipe_src_h =3D (tmp & 0xffff) + 1;
>  	pipe_config->pipe_src_w =3D ((tmp >> 16) & 0xffff) + 1;
> -
> -	pipe_config->hw.mode.vdisplay =3D pipe_config->pipe_src_h;
> -	pipe_config->hw.mode.hdisplay =3D pipe_config->pipe_src_w;
>  }
>  =

>  static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
> @@ -11417,6 +11430,8 @@ static bool intel_crtc_get_pipe_config(struct int=
el_crtc_state *crtc_state)
>  =

>  	crtc_state->hw.active =3D true;
>  =

> +	intel_crtc_readout_derived_state(crtc_state);
> +
>  	return true;
>  }
>  =

> @@ -14469,8 +14484,6 @@ verify_crtc_state(struct intel_crtc *crtc,
>  			intel_encoder_get_config(encoder, pipe_config);
>  	}
>  =

> -	intel_crtc_compute_pixel_rate(pipe_config);
> -
>  	if (!new_crtc_state->hw.active)
>  		return;
>  =

> @@ -18839,15 +18852,6 @@ static void intel_modeset_readout_hw_state(struc=
t drm_device *dev)
>  		int min_cdclk =3D 0;
>  =

>  		if (crtc_state->hw.active) {
> -			struct drm_display_mode *mode =3D &crtc_state->hw.mode;
> -
> -			intel_mode_from_crtc_timings(&crtc_state->hw.adjusted_mode,
> -						     &crtc_state->hw.adjusted_mode);
> -
> -			*mode =3D crtc_state->hw.adjusted_mode;
> -			mode->hdisplay =3D crtc_state->pipe_src_w;
> -			mode->vdisplay =3D crtc_state->pipe_src_h;
> -
>  			/*
>  			 * The initial mode needs to be set in order to keep
>  			 * the atomic core happy. It wants a valid mode if the
> @@ -18859,8 +18863,6 @@ static void intel_modeset_readout_hw_state(struct=
 drm_device *dev)
>  			 */
>  			crtc_state->inherited =3D true;
>  =

> -			intel_crtc_compute_pixel_rate(crtc_state);
> -
>  			intel_crtc_update_active_timings(crtc_state);
>  =

>  			intel_crtc_copy_hw_to_uapi_state(crtc_state);
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
