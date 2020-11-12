Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC302B0E68
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 20:43:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA9EC6E329;
	Thu, 12 Nov 2020 19:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34FA96E329
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 19:43:18 +0000 (UTC)
IronPort-SDR: bRkBKt/LeE1WzSdlsjSFHnea51+P3PCo1Ib2dP8Rk5mGxyM4sljlsX9VTadwl1u/uCUksDRXdU
 6ziXL4RURL8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="166861547"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="166861547"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:42:59 -0800
IronPort-SDR: g+LYVb4CnTd9ModlQ4SdrGIJGp7fZjnrKkSkCUxTpwjMPxM6dAtTyJ7nTwS7/cGKuhcUSt2q+2
 Y8Jjl2hiXO0Q==
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="474396032"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:42:59 -0800
Date: Thu, 12 Nov 2020 11:45:21 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201112194521.GA15399@labuser-Z97X-UD5H>
References: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
 <20201112191718.16683-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201112191718.16683-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Move encoder->get_config to a
 new function
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

On Thu, Nov 12, 2020 at 09:17:13PM +0200, Ville Syrjala wrote:
> From: Manasi Navare <manasi.d.navare@intel.com>
> =

> No functional changes, create a separate intel_encoder_get_config()
> function that calls encoder->get_config hook.
> This is needed so that later we can add beigjoienr related
> readout here.

bigjoiner misspelled

Other than that

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi
> =

> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> [vsyrjala: Move the code around for the future]
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 9566a8d1f470..110d08f2a5c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8141,6 +8141,12 @@ static void intel_crtc_compute_pixel_rate(struct i=
ntel_crtc_state *crtc_state)
>  			ilk_pipe_pixel_rate(crtc_state);
>  }
>  =

> +static void intel_encoder_get_config(struct intel_encoder *encoder,
> +				     struct intel_crtc_state *crtc_state)
> +{
> +	encoder->get_config(encoder, crtc_state);
> +}
> +
>  static int intel_crtc_compute_config(struct intel_crtc *crtc,
>  				     struct intel_crtc_state *pipe_config)
>  {
> @@ -12403,7 +12409,7 @@ intel_encoder_current_mode(struct intel_encoder *=
encoder)
>  		return NULL;
>  	}
>  =

> -	encoder->get_config(encoder, crtc_state);
> +	intel_encoder_get_config(encoder, crtc_state);
>  =

>  	intel_mode_from_pipe_config(mode, crtc_state);
>  =

> @@ -14448,7 +14454,7 @@ verify_crtc_state(struct intel_crtc *crtc,
>  				pipe_name(pipe));
>  =

>  		if (active)
> -			encoder->get_config(encoder, pipe_config);
> +			intel_encoder_get_config(encoder, pipe_config);
>  	}
>  =

>  	intel_crtc_compute_pixel_rate(pipe_config);
> @@ -18761,7 +18767,7 @@ static void intel_modeset_readout_hw_state(struct=
 drm_device *dev)
>  			crtc_state =3D to_intel_crtc_state(crtc->base.state);
>  =

>  			encoder->base.crtc =3D &crtc->base;
> -			encoder->get_config(encoder, crtc_state);
> +			intel_encoder_get_config(encoder, crtc_state);
>  			if (encoder->sync_state)
>  				encoder->sync_state(encoder, crtc_state);
>  		} else {
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
