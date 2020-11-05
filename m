Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C78A32A81F0
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 16:15:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29C296E167;
	Thu,  5 Nov 2020 15:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0071C6E167
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 15:15:05 +0000 (UTC)
IronPort-SDR: 4q8SsJaQq1nIzjq8N8UEOCCgzyqCesTTm8fz+RnXSt7NyIlY9tvvrMBfcYQOpCGN9h7R6zF3xm
 BptAlGTtbCkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="187305538"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="187305538"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 07:15:04 -0800
IronPort-SDR: zdErPjPRAum1jPqqe8t8YBwEj+gSiHp3QQ0DBTlKxKVu8OyPDOECpTdmAg9vr2PM8bYwQ9LAFc
 T7iJt3833fLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="306866378"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 05 Nov 2020 07:15:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Nov 2020 17:15:02 +0200
Date: Thu, 5 Nov 2020 17:15:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20201105151502.GV6112@intel.com>
References: <20201102211906.4893-1-manasi.d.navare@intel.com>
 <20201102211906.4893-2-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201102211906.4893-2-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v5 2/6] drm/i915: Move encoder->get_config
 to a new function
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

On Mon, Nov 02, 2020 at 01:19:02PM -0800, Manasi Navare wrote:
> No functional changes, create a separate intel_encoder_get_config()
> function that calls encoder->get_config hook.
> This is needed so that later we can add beigjoienr related
> readout here.
> =

> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index cddbda5303ff..e9fbcfe1649e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8222,6 +8222,12 @@ static u32 ilk_pipe_pixel_rate(const struct intel_=
crtc_state *crtc_state)
>  		       pfit_w * pfit_h);
>  }
>  =

> +static void intel_encoder_get_config(struct intel_encoder *encoder,
> +				     struct intel_crtc_state *crtc_state)
> +{
> +	encoder->get_config(encoder, crtc_state);
> +}
> +
>  static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_=
state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> @@ -12475,7 +12481,7 @@ intel_encoder_current_mode(struct intel_encoder *=
encoder)
>  		return NULL;
>  	}
>  =

> -	encoder->get_config(encoder, crtc_state);
> +	intel_encoder_get_config(encoder, crtc_state);
>  =

>  	intel_mode_from_pipe_config(mode, crtc_state);
>  =

> @@ -14520,7 +14526,7 @@ verify_crtc_state(struct intel_crtc *crtc,
>  				pipe_name(pipe));
>  =

>  		if (active)
> -			encoder->get_config(encoder, pipe_config);
> +			intel_encoder_get_config(encoder, pipe_config);
>  	}
>  =

>  	intel_crtc_compute_pixel_rate(pipe_config);
> @@ -18835,7 +18841,7 @@ static void intel_modeset_readout_hw_state(struct=
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

> 2.19.1
> =

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
