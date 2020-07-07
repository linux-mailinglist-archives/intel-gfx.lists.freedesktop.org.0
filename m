Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E8C216310
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 02:40:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79AA989DFD;
	Tue,  7 Jul 2020 00:40:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E15BB89DFD
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 00:40:03 +0000 (UTC)
IronPort-SDR: zVa+ijAhiCoy/bspA30VuZiprWyXMOQIyGWtSVtJvzRL1pn0Dsgjp4FsRj6kanjf3isFSDEQGh
 kInyiDFsQClQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="212494467"
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="212494467"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 17:40:03 -0700
IronPort-SDR: hd4GFVb3xqc6oa7Ii7qsRZcsnJ2vwMHijBdebWIYFu4tfRC6AMFWIxqfJdHyCH/Qe4VhX7uLKE
 y2hng62UmTLg==
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="283214863"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 17:40:02 -0700
Date: Mon, 6 Jul 2020 17:37:19 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200707003719.GA2209461@intel.com>
References: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
 <20200702153723.24327-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702153723.24327-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/fbc: Use the correct plane
 stride
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

On Thu, Jul 02, 2020 at 06:37:20PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Consult the actual plane stride instead of the fb stride. The two
> will disagree when we remap the gtt. The plane stride is what the
> hw will be fed so that's what we should look at for the FBC
> retrictions/cfb allocation.
> =

> Since we no longer require a fence we are going to attempt using
> FBC with remapping, and so we should look at correct stride.
> =

> With 90/270 degree rotation the plane stride is stored in units
> of pixels, so we need to conver it to bytes for the purposes
> of calculating the cfb stride. Not entirely sure if this matches
> the hw behaviour though. Need to reverse engineer that at some
> point...
> =

> We also need to reorder the pixel format check vs. stride check
> to avoid triggering a spurious WARN(stride & 63) with cpp=3D=3D1 and
> plane stride=3D=3D32.
> =

> v2: Try to deal with rotated stride and related WARN
> =

> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Fixes: 691f7ba58d52 ("drm/i915/display/fbc: Make fences a nice-to-have fo=
r GEN9+")

This patch didn't apply cleanly on drm-intel-fixes. If it is critical
for 5.8 please consider to provide a backported version.

Thanks,
Rodrigo.

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 69a0682ddb6a..d30c2a389294 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -695,9 +695,13 @@ static void intel_fbc_update_state_cache(struct inte=
l_crtc *crtc,
>  	cache->plane.pixel_blend_mode =3D plane_state->hw.pixel_blend_mode;
>  =

>  	cache->fb.format =3D fb->format;
> -	cache->fb.stride =3D fb->pitches[0];
>  	cache->fb.modifier =3D fb->modifier;
>  =

> +	/* FIXME is this correct? */
> +	cache->fb.stride =3D plane_state->color_plane[0].stride;
> +	if (drm_rotation_90_or_270(plane_state->hw.rotation))
> +		cache->fb.stride *=3D fb->format->cpp[0];
> +
>  	/* FBC1 compression interval: arbitrary choice of 1 second */
>  	cache->interval =3D drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
>  =

> @@ -797,6 +801,11 @@ static bool intel_fbc_can_activate(struct intel_crtc=
 *crtc)
>  		return false;
>  	}
>  =

> +	if (!pixel_format_is_valid(dev_priv, cache->fb.format->format)) {
> +		fbc->no_fbc_reason =3D "pixel format is invalid";
> +		return false;
> +	}
> +
>  	if (!rotation_is_valid(dev_priv, cache->fb.format->format,
>  			       cache->plane.rotation)) {
>  		fbc->no_fbc_reason =3D "rotation unsupported";
> @@ -813,11 +822,6 @@ static bool intel_fbc_can_activate(struct intel_crtc=
 *crtc)
>  		return false;
>  	}
>  =

> -	if (!pixel_format_is_valid(dev_priv, cache->fb.format->format)) {
> -		fbc->no_fbc_reason =3D "pixel format is invalid";
> -		return false;
> -	}
> -
>  	if (cache->plane.pixel_blend_mode !=3D DRM_MODE_BLEND_PIXEL_NONE &&
>  	    cache->fb.format->has_alpha) {
>  		fbc->no_fbc_reason =3D "per-pixel alpha blending is incompatible with =
FBC";
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
