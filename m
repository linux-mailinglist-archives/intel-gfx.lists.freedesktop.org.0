Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8647D2DC00C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 13:16:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D471589C09;
	Wed, 16 Dec 2020 12:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9085F89C09
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 12:16:08 +0000 (UTC)
IronPort-SDR: D1SnWsg0c5G9k+IRyV7Vzr0nhaMu5EA+VqNtmTKYP60Kop9GVNhKjPqicI55DlCwVEZrLXBMRR
 Heylnb7Cllmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="174280494"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="174280494"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 04:16:08 -0800
IronPort-SDR: 2JC79GBPS7FD4lI+lLjLw3BxM3IEP1XskVNgOq5lwenXWRBUX6oCiaAiMwil4b0X8VtCX2Tbe8
 fCpbI264lnwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="451946850"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 16 Dec 2020 04:16:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Dec 2020 14:16:04 +0200
Date: Wed, 16 Dec 2020 14:16:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <X9n6hCzikvQvnZ25@intel.com>
References: <cover.1608117676.git.jani.nikula@intel.com>
 <80bdfd91b04f301db0e2c64752b1e10665bba7d8.1608117676.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <80bdfd91b04f301db0e2c64752b1e10665bba7d8.1608117676.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 11/11] drm/i915: split fb scalable checks
 into g4x and skl versions
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
Cc: Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 16, 2020 at 01:29:18PM +0200, Jani Nikula wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> This just cleans these up a bit.
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_gen9_plane.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_sprite.c     | 7 +++----
>  2 files changed, 5 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_gen9_plane.c b/drivers/gp=
u/drm/i915/display/intel_gen9_plane.c
> index 8549b262f095..c695ee990a82 100644
> --- a/drivers/gpu/drm/i915/display/intel_gen9_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_gen9_plane.c
> @@ -2139,7 +2139,7 @@ static int skl_check_plane_surface(struct intel_pla=
ne_state *plane_state)
>  	return 0;
>  }
>  =

> -static bool intel_fb_scalable(const struct drm_framebuffer *fb)
> +static bool skl_fb_scalable(const struct drm_framebuffer *fb)
>  {
>  	if (!fb)
>  		return false;
> @@ -2172,7 +2172,7 @@ static int skl_plane_check(struct intel_crtc_state =
*crtc_state,
>  		return ret;
>  =

>  	/* use scaler when colorkey is not required */
> -	if (!plane_state->ckey.flags && intel_fb_scalable(fb)) {
> +	if (!plane_state->ckey.flags && skl_fb_scalable(fb)) {
>  		min_scale =3D 1;
>  		max_scale =3D skl_plane_max_scale(dev_priv, fb);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index cc3bec42d04c..4cb6339d12be 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -1282,19 +1282,18 @@ g4x_plane_get_hw_state(struct intel_plane *plane,
>  	return ret;
>  }
>  =

> -static bool intel_fb_scalable(const struct drm_framebuffer *fb)
> +static bool g4x_fb_scalable(const struct drm_framebuffer *fb)
>  {
>  	if (!fb)
>  		return false;
>  =

>  	switch (fb->format->format) {
>  	case DRM_FORMAT_C8:
> -		return false;
>  	case DRM_FORMAT_XRGB16161616F:
>  	case DRM_FORMAT_ARGB16161616F:
>  	case DRM_FORMAT_XBGR16161616F:
>  	case DRM_FORMAT_ABGR16161616F:
> -		return INTEL_GEN(to_i915(fb->dev)) >=3D 11;
> +		return false;

We could drop a bunch of the formats here since they're not
supported by the g4x+ sprites anyway. But that could be a followup.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  	default:
>  		return true;
>  	}
> @@ -1371,7 +1370,7 @@ g4x_sprite_check(struct intel_crtc_state *crtc_stat=
e,
>  	int max_scale =3D DRM_PLANE_HELPER_NO_SCALING;
>  	int ret;
>  =

> -	if (intel_fb_scalable(plane_state->hw.fb)) {
> +	if (g4x_fb_scalable(plane_state->hw.fb)) {
>  		if (INTEL_GEN(dev_priv) < 7) {
>  			min_scale =3D 1;
>  			max_scale =3D 16 << 16;
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
