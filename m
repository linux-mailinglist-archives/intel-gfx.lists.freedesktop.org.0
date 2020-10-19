Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1623292B50
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 18:20:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AEE06EA0F;
	Mon, 19 Oct 2020 16:20:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0EF96EA0F
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 16:20:55 +0000 (UTC)
IronPort-SDR: g5fdJ3fcsv5AvF6DJVRP1OWbhngc+0IlRmG330I+U9UwENxyu//fSln7WgAm+yAgwWaiSRzYtl
 WW2GRzIIEDrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="154847707"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="154847707"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 09:20:34 -0700
IronPort-SDR: pQ9MobLzD9lUJrvNYfIgHsEY7p39QdwOQc/CxQ4484vMNpgAtgceAgPzWiuXzBKPs1/KJ7XmWn
 A/m9uECmq9xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="320328738"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 19 Oct 2020 09:20:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 19 Oct 2020 19:20:31 +0300
Date: Mon, 19 Oct 2020 19:20:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20201019162031.GT6112@intel.com>
References: <20201008214535.22942-1-manasi.d.navare@intel.com>
 <20201008214535.22942-9-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008214535.22942-9-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v10 09/11] drm/i915: Add bigjoiner aware
 plane clipping checks
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

On Thu, Oct 08, 2020 at 02:45:33PM -0700, Manasi Navare wrote:
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> =

> We need to look at hw.fb for the framebuffer, and add the translation
> for the slave_plane_state. With these changes we set the correct
> rectangle on the bigjoiner slave, and don't set incorrect
> src/dst/visibility on the slave plane.
> =

> v2:
> * Manual rebase (Manasi)
> =

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 60 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_atomic_plane.h |  4 ++
>  drivers/gpu/drm/i915/display/intel_display.c  | 19 +++---
>  drivers/gpu/drm/i915/display/intel_sprite.c   | 21 +++----
>  4 files changed, 80 insertions(+), 24 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index a8f1fd85a6c0..09cb3adc36da 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -267,6 +267,9 @@ void intel_plane_copy_uapi_to_hw_state(const struct i=
ntel_crtc_state *crtc_state
>  	plane_state->hw.rotation =3D from_plane_state->uapi.rotation;
>  	plane_state->hw.color_encoding =3D from_plane_state->uapi.color_encodin=
g;
>  	plane_state->hw.color_range =3D from_plane_state->uapi.color_range;
> +
> +	plane_state->uapi.src =3D drm_plane_state_src(&from_plane_state->uapi);
> +	plane_state->uapi.dst =3D drm_plane_state_dest(&from_plane_state->uapi);
>  }
>  =

>  void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
> @@ -519,6 +522,63 @@ void i9xx_update_planes_on_crtc(struct intel_atomic_=
state *state,
>  	}
>  }
>  =

> +int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_st=
ate,
> +				      struct intel_crtc_state *crtc_state,
> +				      int min_scale, int max_scale,
> +				      bool can_position)
> +{
> +	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	struct drm_rect *src =3D &plane_state->uapi.src;
> +	struct drm_rect *dst =3D &plane_state->uapi.dst;
> +	unsigned int rotation =3D plane_state->uapi.rotation;

hw.rotation

The rest seems consistent.

> +	struct drm_rect clip =3D {};
> +	int hscale, vscale;
> +
> +	if (!fb) {
> +		plane_state->uapi.visible =3D false;
> +		return 0;
> +	}
> +
> +	drm_rect_rotate(src, fb->width << 16, fb->height << 16, rotation);
> +
> +	/* Check scaling */
> +	hscale =3D drm_rect_calc_hscale(src, dst, min_scale, max_scale);
> +	vscale =3D drm_rect_calc_vscale(src, dst, min_scale, max_scale);
> +	if (hscale < 0 || vscale < 0) {
> +		DRM_DEBUG_KMS("Invalid scaling of plane\n");
> +		drm_rect_debug_print("src: ", src, true);
> +		drm_rect_debug_print("dst: ", dst, false);
> +		return -ERANGE;
> +	}
> +
> +	if (crtc_state->hw.enable) {
> +		clip.x2 =3D crtc_state->pipe_src_w;
> +		clip.y2 =3D crtc_state->pipe_src_h;
> +	}
> +
> +	/* right side of the image is on the slave crtc, adjust dst to match */
> +	if (crtc_state->bigjoiner_slave)
> +		drm_rect_translate(dst, -crtc_state->pipe_src_w, 0);
> +
> +	/*
> +	 * FIXME: This might need further adjustment for seamless scaling
> +	 * with phase information, for the 2p2 and 2p1 scenarios.
> +	 */
> +	plane_state->uapi.visible =3D drm_rect_clip_scaled(src, dst, &clip);
> +
> +	drm_rect_rotate_inv(src, fb->width << 16, fb->height << 16, rotation);
> +
> +	if (!can_position && plane_state->uapi.visible &&
> +	    !drm_rect_equals(dst, &clip)) {
> +		DRM_DEBUG_KMS("Plane must cover entire CRTC\n");
> +		drm_rect_debug_print("dst: ", dst, false);
> +		drm_rect_debug_print("clip: ", &clip, false);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  const struct drm_plane_helper_funcs intel_plane_helper_funcs =3D {
>  	.prepare_fb =3D intel_prepare_plane_fb,
>  	.cleanup_fb =3D intel_cleanup_plane_fb,
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.h
> index c2a1e7c86e6c..d0a599d00ecd 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -53,6 +53,10 @@ int intel_plane_atomic_calc_changes(const struct intel=
_crtc_state *old_crtc_stat
>  int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
>  			       struct intel_plane *plane,
>  			       bool *need_cdclk_calc);
> +int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_st=
ate,
> +				      struct intel_crtc_state *crtc_state,
> +				      int min_scale, int max_scale,
> +				      bool can_position);
>  void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
>  			       struct intel_plane_state *plane_state);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index d5a6f07bb674..357cc2bce300 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4409,12 +4409,10 @@ i9xx_plane_check(struct intel_crtc_state *crtc_st=
ate,
>  	if (ret)
>  		return ret;
>  =

> -	ret =3D drm_atomic_helper_check_plane_state(&plane_state->uapi,
> -						  &crtc_state->uapi,
> -						  DRM_PLANE_HELPER_NO_SCALING,
> -						  DRM_PLANE_HELPER_NO_SCALING,
> -						  i9xx_plane_has_windowing(plane),
> -						  true);
> +	ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						i9xx_plane_has_windowing(plane));
>  	if (ret)
>  		return ret;
>  =

> @@ -11611,11 +11609,10 @@ static int intel_check_cursor(struct intel_crtc=
_state *crtc_state,
>  		return -EINVAL;
>  	}
>  =

> -	ret =3D drm_atomic_helper_check_plane_state(&plane_state->uapi,
> -						  &crtc_state->uapi,
> -						  DRM_PLANE_HELPER_NO_SCALING,
> -						  DRM_PLANE_HELPER_NO_SCALING,
> -						  true, true);
> +	ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						true);
>  	if (ret)
>  		return ret;
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 2da11ab6343c..9e235210adc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -2047,10 +2047,8 @@ g4x_sprite_check(struct intel_crtc_state *crtc_sta=
te,
>  		}
>  	}
>  =

> -	ret =3D drm_atomic_helper_check_plane_state(&plane_state->uapi,
> -						  &crtc_state->uapi,
> -						  min_scale, max_scale,
> -						  true, true);
> +	ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state,
> +						min_scale, max_scale, true);
>  	if (ret)
>  		return ret;
>  =

> @@ -2105,11 +2103,10 @@ vlv_sprite_check(struct intel_crtc_state *crtc_st=
ate,
>  	if (ret)
>  		return ret;
>  =

> -	ret =3D drm_atomic_helper_check_plane_state(&plane_state->uapi,
> -						  &crtc_state->uapi,
> -						  DRM_PLANE_HELPER_NO_SCALING,
> -						  DRM_PLANE_HELPER_NO_SCALING,
> -						  true, true);
> +	ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						DRM_PLANE_HELPER_NO_SCALING,
> +						true);
>  	if (ret)
>  		return ret;
>  =

> @@ -2316,10 +2313,8 @@ static int skl_plane_check(struct intel_crtc_state=
 *crtc_state,
>  		max_scale =3D skl_plane_max_scale(dev_priv, fb);
>  	}
>  =

> -	ret =3D drm_atomic_helper_check_plane_state(&plane_state->uapi,
> -						  &crtc_state->uapi,
> -						  min_scale, max_scale,
> -						  true, true);
> +	ret =3D intel_atomic_plane_check_clipping(plane_state, crtc_state,
> +						min_scale, max_scale, true);
>  	if (ret)
>  		return ret;
>  =

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
