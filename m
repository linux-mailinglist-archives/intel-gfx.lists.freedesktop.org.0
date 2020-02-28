Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FB01738E1
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 14:50:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC39B6F403;
	Fri, 28 Feb 2020 13:50:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAAF96F403
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 13:50:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 05:50:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,496,1574150400"; d="scan'208";a="232536487"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 28 Feb 2020 05:50:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Feb 2020 15:50:14 +0200
Date: Fri, 28 Feb 2020 15:50:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200228135014.GD13686@intel.com>
References: <20200224124004.26712-5-anshuman.gupta@intel.com>
 <20200226163517.31234-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226163517.31234-1-anshuman.gupta@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 4/7] drm/i915: Fix wrongly populated
 plane possible_crtcs bit mask
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 26, 2020 at 10:05:17PM +0530, Anshuman Gupta wrote:
> As a disabled pipe in pipe_mask is not having a valid intel crtc,
> driver wrongly populates the possible_crtcs mask while initializing
> the plane for a CRTC. Fixing up the plane possible_crtcs mask.
> =

> changes since RFC:
> - Simplify the possible_crtcs initialization. [Ville]
> v2:
> - Removed the unnecessary stack garbage possible_crtcs to
>   drm_universal_plane_init. [Ville]
> v3:
> - Combine the intel_crtc assignment and declaration. [Ville]
> v4:
> - Fix possible_crtcs abused bits from
>   intel_{primary,curosr,sprite}_plane_create(). [Ville]
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

Thanks. Pushed to dinq.

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 25 +++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_sprite.c  | 10 ++------
>  2 files changed, 18 insertions(+), 17 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index aacbdc47fcea..071fda408116 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16329,7 +16329,6 @@ intel_primary_plane_create(struct drm_i915_privat=
e *dev_priv, enum pipe pipe)
>  	struct intel_plane *plane;
>  	const struct drm_plane_funcs *plane_funcs;
>  	unsigned int supported_rotations;
> -	unsigned int possible_crtcs;
>  	const u32 *formats;
>  	int num_formats;
>  	int ret, zpos;
> @@ -16410,18 +16409,16 @@ intel_primary_plane_create(struct drm_i915_priv=
ate *dev_priv, enum pipe pipe)
>  	plane->get_hw_state =3D i9xx_plane_get_hw_state;
>  	plane->check_plane =3D i9xx_plane_check;
>  =

> -	possible_crtcs =3D BIT(pipe);
> -
>  	if (INTEL_GEN(dev_priv) >=3D 5 || IS_G4X(dev_priv))
>  		ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
> -					       possible_crtcs, plane_funcs,
> +					       0, plane_funcs,
>  					       formats, num_formats,
>  					       i9xx_format_modifiers,
>  					       DRM_PLANE_TYPE_PRIMARY,
>  					       "primary %c", pipe_name(pipe));
>  	else
>  		ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
> -					       possible_crtcs, plane_funcs,
> +					       0, plane_funcs,
>  					       formats, num_formats,
>  					       i9xx_format_modifiers,
>  					       DRM_PLANE_TYPE_PRIMARY,
> @@ -16463,7 +16460,6 @@ static struct intel_plane *
>  intel_cursor_plane_create(struct drm_i915_private *dev_priv,
>  			  enum pipe pipe)
>  {
> -	unsigned int possible_crtcs;
>  	struct intel_plane *cursor;
>  	int ret, zpos;
>  =

> @@ -16496,10 +16492,8 @@ intel_cursor_plane_create(struct drm_i915_privat=
e *dev_priv,
>  	if (IS_I845G(dev_priv) || IS_I865G(dev_priv) || HAS_CUR_FBC(dev_priv))
>  		cursor->cursor.size =3D ~0;
>  =

> -	possible_crtcs =3D BIT(pipe);
> -
>  	ret =3D drm_universal_plane_init(&dev_priv->drm, &cursor->base,
> -				       possible_crtcs, &intel_cursor_plane_funcs,
> +				       0, &intel_cursor_plane_funcs,
>  				       intel_cursor_formats,
>  				       ARRAY_SIZE(intel_cursor_formats),
>  				       cursor_format_modifiers,
> @@ -16628,6 +16622,18 @@ static void intel_crtc_free(struct intel_crtc *c=
rtc)
>  	kfree(crtc);
>  }
>  =

> +static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev=
_priv)
> +{
> +	struct intel_plane *plane;
> +
> +	for_each_intel_plane(&dev_priv->drm, plane) {
> +		struct intel_crtc *crtc =3D intel_get_crtc_for_pipe(dev_priv,
> +								  plane->pipe);
> +
> +		plane->base.possible_crtcs =3D drm_crtc_mask(&crtc->base);
> +	}
> +}
> +
>  static int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe =
pipe)
>  {
>  	struct intel_plane *primary, *cursor;
> @@ -17843,6 +17849,7 @@ int intel_modeset_init(struct drm_i915_private *i=
915)
>  		}
>  	}
>  =

> +	intel_plane_possible_crtcs_init(i915);
>  	intel_shared_dpll_init(dev);
>  	intel_update_fdi_pll_freq(i915);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 7abeefe8dce5..53bb65666587 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -3011,7 +3011,6 @@ skl_universal_plane_create(struct drm_i915_private =
*dev_priv,
>  	struct intel_plane *plane;
>  	enum drm_plane_type plane_type;
>  	unsigned int supported_rotations;
> -	unsigned int possible_crtcs;
>  	const u64 *modifiers;
>  	const u32 *formats;
>  	int num_formats;
> @@ -3066,10 +3065,8 @@ skl_universal_plane_create(struct drm_i915_private=
 *dev_priv,
>  	else
>  		plane_type =3D DRM_PLANE_TYPE_OVERLAY;
>  =

> -	possible_crtcs =3D BIT(pipe);
> -
>  	ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
> -				       possible_crtcs, plane_funcs,
> +				       0, plane_funcs,
>  				       formats, num_formats, modifiers,
>  				       plane_type,
>  				       "plane %d%c", plane_id + 1,
> @@ -3120,7 +3117,6 @@ intel_sprite_plane_create(struct drm_i915_private *=
dev_priv,
>  {
>  	struct intel_plane *plane;
>  	const struct drm_plane_funcs *plane_funcs;
> -	unsigned long possible_crtcs;
>  	unsigned int supported_rotations;
>  	const u64 *modifiers;
>  	const u32 *formats;
> @@ -3205,10 +3201,8 @@ intel_sprite_plane_create(struct drm_i915_private =
*dev_priv,
>  	plane->id =3D PLANE_SPRITE0 + sprite;
>  	plane->frontbuffer_bit =3D INTEL_FRONTBUFFER(pipe, plane->id);
>  =

> -	possible_crtcs =3D BIT(pipe);
> -
>  	ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
> -				       possible_crtcs, plane_funcs,
> +				       0, plane_funcs,
>  				       formats, num_formats, modifiers,
>  				       DRM_PLANE_TYPE_OVERLAY,
>  				       "sprite %c", sprite_name(pipe, sprite));
> -- =

> 2.24.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
