Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D398B43B89D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 19:52:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 590676E43A;
	Tue, 26 Oct 2021 17:52:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B5816E43A
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 17:52:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="216885376"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="216885376"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 10:52:17 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="497464811"
Received: from flaboura-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.214.127])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 10:52:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20211026161517.2694067-4-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211026161517.2694067-1-imre.deak@intel.com>
 <20211026161517.2694067-4-imre.deak@intel.com>
Date: Tue, 26 Oct 2021 20:52:12 +0300
Message-ID: <87y26fishf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/fb: Fold modifier CCS
 type/tiling attribute to plane caps
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 26 Oct 2021, Imre Deak <imre.deak@intel.com> wrote:
> By using the modifier plane capability flags to encode the modifiers'
> CCS type and tiling attributes, it becomes simpler to the check for
> any of these capabilities when providing the list of supported
> modifiers.
>
> This also allows distinguishing modifiers on future platforms where
> platforms with the same display version support different modifiers. An
> example is DG2 and ADLP, both being D13, where DG2 supports only F and X
> tiling, while ADLP supports only Y and X tiling. With the
> PLANE_HAS_TILING_* plane caps added in this patch we can provide the
> correct modifiers for each platform.
>
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_fb.c       | 80 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_fb.h       | 11 ++-
>  drivers/gpu/drm/i915/display/intel_sprite.c   |  2 +-
>  .../drm/i915/display/skl_universal_plane.c    |  7 +-
>  5 files changed, 53 insertions(+), 49 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index a939accff7ee2..fdb857df8b0be 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -860,7 +860,7 @@ intel_primary_plane_create(struct drm_i915_private *d=
ev_priv, enum pipe pipe)
>  		plane->disable_flip_done =3D ilk_primary_disable_flip_done;
>  	}
>=20=20
> -	modifiers =3D intel_fb_plane_get_modifiers(dev_priv, PLANE_HAS_TILING);
> +	modifiers =3D intel_fb_plane_get_modifiers(dev_priv, PLANE_HAS_TILING_X=
);
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 5 || IS_G4X(dev_priv))
>  		ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 6b68f69940f0b..6339669d86df5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -120,29 +120,25 @@ struct intel_modifier_desc {
>  	.formats =3D format_list, \
>  	.format_count =3D ARRAY_SIZE(format_list)
>=20=20
> -	u8 tiling;
> -	u8 is_linear:1;
> +	u8 plane_caps;
>=20=20
>  	struct {
> -#define INTEL_CCS_RC		BIT(0)
> -#define INTEL_CCS_RC_CC		BIT(1)
> -#define INTEL_CCS_MC		BIT(2)
> -
> -#define INTEL_CCS_ANY		(INTEL_CCS_RC | INTEL_CCS_RC_CC | INTEL_CCS_MC)
> -		u8 type:3;
>  		u8 cc_planes:3;
>  		u8 packed_aux_planes:4;
>  		u8 planar_aux_planes:4;
>  	} ccs;
>  };
>=20=20
> +#define PLANE_HAS_CCS_ANY	(PLANE_HAS_CCS_RC | PLANE_HAS_CCS_RC_CC | PLAN=
E_HAS_CCS_MC)
> +#define PLANE_HAS_TILING_ANY	(PLANE_HAS_TILING_X | PLANE_HAS_TILING_Y | =
PLANE_HAS_TILING_Yf)

_MASK seems like the customary suffix for things that are masks.

> +#define PLANE_HAS_TILING_NONE	0
> +
>  static const struct intel_modifier_desc intel_modifiers[] =3D {
>  	{
>  		.modifier =3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
>  		.display_ver =3D { 12, 13 },
> -		.tiling =3D I915_TILING_Y,
> +		.plane_caps =3D PLANE_HAS_TILING_Y | PLANE_HAS_CCS_MC,
>=20=20
> -		.ccs.type =3D INTEL_CCS_MC,
>  		.ccs.packed_aux_planes =3D BIT(1),
>  		.ccs.planar_aux_planes =3D BIT(2) | BIT(3),
>=20=20
> @@ -150,18 +146,16 @@ static const struct intel_modifier_desc intel_modif=
iers[] =3D {
>  	}, {
>  		.modifier =3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
>  		.display_ver =3D { 12, 13 },
> -		.tiling =3D I915_TILING_Y,
> +		.plane_caps =3D PLANE_HAS_TILING_Y | PLANE_HAS_CCS_RC,
>=20=20
> -		.ccs.type =3D INTEL_CCS_RC,
>  		.ccs.packed_aux_planes =3D BIT(1),
>=20=20
>  		FORMAT_OVERRIDE(gen12_ccs_formats),
>  	}, {
>  		.modifier =3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
>  		.display_ver =3D { 12, 13 },
> -		.tiling =3D I915_TILING_Y,
> +		.plane_caps =3D PLANE_HAS_TILING_Y | PLANE_HAS_CCS_RC_CC,
>=20=20
> -		.ccs.type =3D INTEL_CCS_RC_CC,
>  		.ccs.cc_planes =3D BIT(2),
>  		.ccs.packed_aux_planes =3D BIT(1),
>=20=20
> @@ -169,39 +163,34 @@ static const struct intel_modifier_desc intel_modif=
iers[] =3D {
>  	}, {
>  		.modifier =3D I915_FORMAT_MOD_Yf_TILED_CCS,
>  		.display_ver =3D { 9, 11 },
> -		.tiling =3D I915_TILING_NONE,
> +		.plane_caps =3D PLANE_HAS_TILING_Yf | PLANE_HAS_CCS_RC,
>=20=20
> -		.ccs.type =3D INTEL_CCS_RC,
>  		.ccs.packed_aux_planes =3D BIT(1),
>=20=20
>  		FORMAT_OVERRIDE(skl_ccs_formats),
>  	}, {
>  		.modifier =3D I915_FORMAT_MOD_Y_TILED_CCS,
>  		.display_ver =3D { 9, 11 },
> -		.tiling =3D I915_TILING_Y,
> +		.plane_caps =3D PLANE_HAS_TILING_Y | PLANE_HAS_CCS_RC,
>=20=20
> -		.ccs.type =3D INTEL_CCS_RC,
>  		.ccs.packed_aux_planes =3D BIT(1),
>=20=20
>  		FORMAT_OVERRIDE(skl_ccs_formats),
>  	}, {
>  		.modifier =3D I915_FORMAT_MOD_Yf_TILED,
>  		.display_ver =3D { 9, 11 },
> -		.tiling =3D I915_TILING_NONE,
> +		.plane_caps =3D PLANE_HAS_TILING_Yf,
>  	}, {
>  		.modifier =3D I915_FORMAT_MOD_Y_TILED,
>  		.display_ver =3D { 9, 13 },
> -		.tiling =3D I915_TILING_Y,
> +		.plane_caps =3D PLANE_HAS_TILING_Y,
>  	}, {
>  		.modifier =3D I915_FORMAT_MOD_X_TILED,
>  		.display_ver =3D DISPLAY_VER_ALL,
> -		.tiling =3D I915_TILING_X,
> +		.plane_caps =3D PLANE_HAS_TILING_X,
>  	}, {
>  		.modifier =3D DRM_FORMAT_MOD_LINEAR,
>  		.display_ver =3D DISPLAY_VER_ALL,
> -		.tiling =3D I915_TILING_NONE,
> -
> -		.is_linear =3D true,
>  	},
>  };
>=20=20
> @@ -259,9 +248,14 @@ intel_fb_get_format_info(const struct drm_mode_fb_cm=
d2 *cmd)
>  	return lookup_format_info(md->formats, md->format_count, cmd->pixel_for=
mat);
>  }
>=20=20
> -static bool is_ccs_type_modifier(const struct intel_modifier_desc *md, u=
8 ccs_type)
> +static bool plane_caps_contain_any(u8 caps, u8 mask)
>  {
> -	return md->ccs.type & ccs_type;
> +	return caps & mask;
> +}
> +
> +static bool plane_caps_contain_all(u8 caps, u8 mask)
> +{
> +	return (caps & mask) =3D=3D mask;
>  }
>=20=20
>  /**
> @@ -274,7 +268,7 @@ static bool is_ccs_type_modifier(const struct intel_m=
odifier_desc *md, u8 ccs_ty
>   */
>  bool intel_fb_is_ccs_modifier(u64 modifier)
>  {
> -	return is_ccs_type_modifier(lookup_modifier(modifier), INTEL_CCS_ANY);
> +	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps, PL=
ANE_HAS_CCS_ANY);
>  }
>=20=20
>  /**
> @@ -286,7 +280,7 @@ bool intel_fb_is_ccs_modifier(u64 modifier)
>   */
>  bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier)
>  {
> -	return is_ccs_type_modifier(lookup_modifier(modifier), INTEL_CCS_RC_CC);
> +	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps, PL=
ANE_HAS_CCS_RC_CC);
>  }
>=20=20
>  /**
> @@ -298,7 +292,7 @@ bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier)
>   */
>  bool intel_fb_is_mc_ccs_modifier(u64 modifier)
>  {
> -	return is_ccs_type_modifier(lookup_modifier(modifier), INTEL_CCS_MC);
> +	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps, PL=
ANE_HAS_CCS_MC);
>  }
>=20=20
>  static bool check_modifier_display_ver_range(const struct intel_modifier=
_desc *md,
> @@ -315,16 +309,7 @@ static bool plane_has_modifier(struct drm_i915_priva=
te *i915,
>  	if (!IS_DISPLAY_VER(i915, md->display_ver.from, md->display_ver.until))
>  		return false;
>=20=20
> -	if (!md->is_linear &&
> -	    !(plane_caps & PLANE_HAS_TILING))
> -		return false;
> -
> -	if (is_ccs_type_modifier(md, INTEL_CCS_RC | INTEL_CCS_RC_CC) &&
> -	    !(plane_caps & PLANE_HAS_CCS_RC))
> -		return false;
> -
> -	if (is_ccs_type_modifier(md, INTEL_CCS_MC) &&
> -	    !(plane_caps & PLANE_HAS_CCS_MC))
> +	if (!plane_caps_contain_all(plane_caps, md->plane_caps))
>  		return false;
>=20=20
>  	return true;
> @@ -392,7 +377,7 @@ static bool format_is_yuv_semiplanar(const struct int=
el_modifier_desc *md,
>  	if (!info->is_yuv)
>  		return false;
>=20=20
> -	if (is_ccs_type_modifier(md, INTEL_CCS_ANY))
> +	if (plane_caps_contain_any(md->plane_caps, PLANE_HAS_CCS_ANY))
>  		yuv_planes =3D 4;
>  	else
>  		yuv_planes =3D 2;
> @@ -672,7 +657,20 @@ intel_fb_align_height(const struct drm_framebuffer *=
fb,
>=20=20
>  static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
>  {
> -	return lookup_modifier(fb_modifier)->tiling;
> +	u8 tiling_caps =3D lookup_modifier(fb_modifier)->plane_caps & PLANE_HAS=
_TILING_ANY;
> +
> +	switch (tiling_caps) {
> +	case PLANE_HAS_TILING_Y:
> +		return I915_TILING_Y;
> +	case PLANE_HAS_TILING_X:
> +		return I915_TILING_X;
> +	case PLANE_HAS_TILING_Yf:
> +	case PLANE_HAS_TILING_NONE:
> +		return I915_TILING_NONE;
> +	default:
> +		MISSING_CASE(tiling_caps);
> +		return I915_TILING_NONE;
> +	}
>  }
>=20=20
>  unsigned int intel_cursor_alignment(const struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index 19f46144474d8..0bd285f6a69f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -21,10 +21,13 @@ struct intel_plane;
>  struct intel_plane_state;
>=20=20
>  enum intel_plane_caps {
> -	PLANE_HAS_NO_CAPS =3D 0,
> -	PLANE_HAS_TILING =3D BIT(0),
> -	PLANE_HAS_CCS_RC =3D BIT(1),
> -	PLANE_HAS_CCS_MC =3D BIT(2),
> +	PLANE_HAS_NO_CAPS	=3D 0,
> +	PLANE_HAS_CCS_RC	=3D BIT(0),
> +	PLANE_HAS_CCS_RC_CC	=3D BIT(1),
> +	PLANE_HAS_CCS_MC	=3D BIT(2),
> +	PLANE_HAS_TILING_X	=3D BIT(3),
> +	PLANE_HAS_TILING_Y	=3D BIT(4),
> +	PLANE_HAS_TILING_Yf	=3D BIT(5),
>  };

AFAICT there are no intel_plane_caps references anywhere after this, and
it no longer looks like an enum, so perhaps it just shouldn't be an enum
anymore? Just make them macros?

BR,
Jani.


>=20=20
>  bool intel_fb_is_ccs_modifier(u64 modifier);
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 2f4f47ab9da03..8aa6c2f5e77d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -1810,7 +1810,7 @@ intel_sprite_plane_create(struct drm_i915_private *=
dev_priv,
>  	plane->id =3D PLANE_SPRITE0 + sprite;
>  	plane->frontbuffer_bit =3D INTEL_FRONTBUFFER(pipe, plane->id);
>=20=20
> -	modifiers =3D intel_fb_plane_get_modifiers(dev_priv, PLANE_HAS_TILING);
> +	modifiers =3D intel_fb_plane_get_modifiers(dev_priv, PLANE_HAS_TILING_X=
);
>=20=20
>  	ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
>  				       0, plane_funcs,
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 317108e009bba..45f0225ec59dd 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2095,9 +2095,12 @@ skl_universal_plane_create(struct drm_i915_private=
 *dev_priv,
>  	else
>  		plane_type =3D DRM_PLANE_TYPE_OVERLAY;
>=20=20
> -	plane_caps =3D PLANE_HAS_TILING;
> +	plane_caps =3D PLANE_HAS_TILING_X | PLANE_HAS_TILING_Y;
> +	if (IS_DISPLAY_VER(dev_priv, 9, 11))
> +		plane_caps |=3D PLANE_HAS_TILING_Yf;
> +
>  	if (skl_plane_has_rc_ccs(dev_priv, pipe, plane_id))
> -		plane_caps |=3D PLANE_HAS_CCS_RC;
> +		plane_caps |=3D PLANE_HAS_CCS_RC | PLANE_HAS_CCS_RC_CC;
>=20=20
>  	if (gen12_plane_has_mc_ccs(dev_priv, plane_id))
>  		plane_caps |=3D PLANE_HAS_CCS_MC;

--=20
Jani Nikula, Intel Open Source Graphics Center
