Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC75387A19
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 15:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F7C6E0CE;
	Tue, 18 May 2021 13:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D79336E0CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 13:37:56 +0000 (UTC)
IronPort-SDR: 4Vz6rAZK0kTsQMEkV4+jWYN69g1jzi26HDe4KP39avlyZBbw7jSLppakyv7ZJQ1qAJRQ2MIO2g
 xlxQT7QQ1skQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="180989966"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="180989966"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 06:37:56 -0700
IronPort-SDR: kEtyynyZ7GF4DnwbJ4CpOFiP0n18wHWbISfzzOmjr+VfFhz5jIZsK5tD806AHtpW/3Uje+9I+A
 P1ZssBEGPIhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="411276210"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 18 May 2021 06:37:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 May 2021 16:37:53 +0300
Date: Tue, 18 May 2021 16:37:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YKPDMfuwoSlV5s6R@intel.com>
References: <20210518132426.7567-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518132426.7567-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/plane: add
 intel_plane_helper_add() helper
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

On Tue, May 18, 2021 at 04:24:26PM +0300, Jani Nikula wrote:
> Add a small helper to keep intel_plane_helper_funcs static.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c          | 2 +-
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 7 ++++++-
>  drivers/gpu/drm/i915/display/intel_atomic_plane.h  | 3 +--
>  drivers/gpu/drm/i915/display/intel_cursor.c        | 2 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c        | 2 +-
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
>  6 files changed, 11 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index 9643c45a2209..b1439ba78f67 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -912,7 +912,7 @@ intel_primary_plane_create(struct drm_i915_private *d=
ev_priv, enum pipe pipe)
>  	zpos =3D 0;
>  	drm_plane_create_zpos_immutable_property(&plane->base, zpos);
>  =

> -	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
> +	intel_plane_helper_add(plane);
>  =

>  	return plane;
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index 36f52a1d7552..47234d898549 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -601,7 +601,12 @@ int intel_atomic_plane_check_clipping(struct intel_p=
lane_state *plane_state,
>  	return 0;
>  }
>  =

> -const struct drm_plane_helper_funcs intel_plane_helper_funcs =3D {
> +static const struct drm_plane_helper_funcs intel_plane_helper_funcs =3D {
>  	.prepare_fb =3D intel_prepare_plane_fb,
>  	.cleanup_fb =3D intel_cleanup_plane_fb,
>  };
> +
> +void intel_plane_helper_add(struct intel_plane *plane)
> +{
> +	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.h
> index dc4d05e75e1c..62e5a2a77fd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -17,8 +17,6 @@ struct intel_crtc_state;
>  struct intel_plane;
>  struct intel_plane_state;
>  =

> -extern const struct drm_plane_helper_funcs intel_plane_helper_funcs;
> -
>  unsigned int intel_adjusted_rate(const struct drm_rect *src,
>  				 const struct drm_rect *dst,
>  				 unsigned int rate);
> @@ -65,5 +63,6 @@ int intel_atomic_plane_check_clipping(struct intel_plan=
e_state *plane_state,
>  				      bool can_position);
>  void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
>  			       struct intel_plane_state *plane_state);
> +void intel_plane_helper_add(struct intel_plane *plane);
>  =

>  #endif /* __INTEL_ATOMIC_PLANE_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index 2ab389b38694..08fa844e1342 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -797,7 +797,7 @@ intel_cursor_plane_create(struct drm_i915_private *de=
v_priv,
>  	if (DISPLAY_VER(dev_priv) >=3D 12)
>  		drm_plane_enable_fb_damage_clips(&cursor->base);
>  =

> -	drm_plane_helper_add(&cursor->base, &intel_plane_helper_funcs);
> +	intel_plane_helper_add(cursor);
>  =

>  	return cursor;
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 4ae9a7455b23..08116f41da26 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -1856,7 +1856,7 @@ intel_sprite_plane_create(struct drm_i915_private *=
dev_priv,
>  	zpos =3D sprite + 1;
>  	drm_plane_create_zpos_immutable_property(&plane->base, zpos);
>  =

> -	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
> +	intel_plane_helper_add(plane);
>  =

>  	return plane;
>  =

> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 59e032f3687a..e9ad050c8a06 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2152,7 +2152,7 @@ skl_universal_plane_create(struct drm_i915_private =
*dev_priv,
>  						BIT(DRM_SCALING_FILTER_DEFAULT) |
>  						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
>  =

> -	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
> +	intel_plane_helper_add(plane);
>  =

>  	return plane;
>  =

> -- =

> 2.20.1
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
