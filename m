Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA90435ED0
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 12:15:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F5F16E427;
	Thu, 21 Oct 2021 10:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14D1F6E427
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 10:15:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="315201195"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="315201195"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 03:15:04 -0700
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="484141823"
Received: from ssuryana-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.45.34])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 03:15:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20211020195138.1841242-2-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211020195138.1841242-1-imre.deak@intel.com>
 <20211020195138.1841242-2-imre.deak@intel.com>
Date: Thu, 21 Oct 2021 13:14:59 +0300
Message-ID: <87wnm6n0po.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4 01/11] drm/i915: Add a table with a
 descriptor for all i915 modifiers
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

On Wed, 20 Oct 2021, Imre Deak <imre.deak@intel.com> wrote:
> Add a table describing all the framebuffer modifiers used by i915 at one
> place. This has the benefit of deduplicating the listing of supported
> modifiers for each platform and checking the support of these modifiers
> on a given plane. This also simplifies in a similar way getting some
> attribute for a modifier, for instance checking if the modifier is a
> CCS modifier type.
>
> While at it drop the cursor plane filtering from skl_plane_has_rc_ccs(),
> as the cursor plane is registered with DRM core elsewhere.
>
> v1: Unchanged.
> v2:
> - Keep the plane caps calculation in the plane code and pass an enum
>   with these caps to intel_fb_get_modifiers(). (Ville)
> - Get the modifiers calling intel_fb_get_modifiers() in i9xx_plane.c as
>   well.
> v3:
> - s/.id/.modifier/ (Ville)
> - Keep modifier_desc vs. plane_cap filter conditions consistent. (Ville)
> - Drop redundant cursor plane check from skl_plane_has_rc_ccs(). (Ville)
> - Use from, until display version fields in modifier_desc instead of a ma=
sk. (Jani)
> - Unexport struct intel_modifier_desc, separate its decl and init. (Jani)
> - Remove enum pipe, plane_id forward decls from intel_fb.h, which are
>   not needed after v2.
> v4:
> - Reuse IS_DISPLAY_VER() instead of open-coding it. (Jani)
> - Preserve the current modifier order exposed to user space. (Ville)
>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> (v3)
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |  30 +--
>  drivers/gpu/drm/i915/display/intel_cursor.c   |  19 +-
>  .../drm/i915/display/intel_display_types.h    |   1 -
>  drivers/gpu/drm/i915/display/intel_fb.c       | 152 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fb.h       |  13 ++
>  drivers/gpu/drm/i915/display/intel_sprite.c   |  35 +---
>  drivers/gpu/drm/i915/display/skl_scaler.c     |   1 +
>  .../drm/i915/display/skl_universal_plane.c    | 178 +++++-------------
>  8 files changed, 245 insertions(+), 184 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index b1439ba78f67b..a939accff7ee2 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -60,22 +60,11 @@ static const u32 vlv_primary_formats[] =3D {
>  	DRM_FORMAT_XBGR16161616F,
>  };
>=20=20
> -static const u64 i9xx_format_modifiers[] =3D {
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
>  static bool i8xx_plane_format_mod_supported(struct drm_plane *_plane,
>  					    u32 format, u64 modifier)
>  {
> -	switch (modifier) {
> -	case DRM_FORMAT_MOD_LINEAR:
> -	case I915_FORMAT_MOD_X_TILED:
> -		break;
> -	default:
> +	if (!intel_fb_plane_supports_modifier(to_intel_plane(_plane), modifier))
>  		return false;
> -	}
>=20=20
>  	switch (format) {
>  	case DRM_FORMAT_C8:
> @@ -92,13 +81,8 @@ static bool i8xx_plane_format_mod_supported(struct drm=
_plane *_plane,
>  static bool i965_plane_format_mod_supported(struct drm_plane *_plane,
>  					    u32 format, u64 modifier)
>  {
> -	switch (modifier) {
> -	case DRM_FORMAT_MOD_LINEAR:
> -	case I915_FORMAT_MOD_X_TILED:
> -		break;
> -	default:
> +	if (!intel_fb_plane_supports_modifier(to_intel_plane(_plane), modifier))
>  		return false;
> -	}
>=20=20
>  	switch (format) {
>  	case DRM_FORMAT_C8:
> @@ -768,6 +752,7 @@ intel_primary_plane_create(struct drm_i915_private *d=
ev_priv, enum pipe pipe)
>  	struct intel_plane *plane;
>  	const struct drm_plane_funcs *plane_funcs;
>  	unsigned int supported_rotations;
> +	const u64 *modifiers;
>  	const u32 *formats;
>  	int num_formats;
>  	int ret, zpos;
> @@ -875,21 +860,26 @@ intel_primary_plane_create(struct drm_i915_private =
*dev_priv, enum pipe pipe)
>  		plane->disable_flip_done =3D ilk_primary_disable_flip_done;
>  	}
>=20=20
> +	modifiers =3D intel_fb_plane_get_modifiers(dev_priv, PLANE_HAS_TILING);
> +
>  	if (DISPLAY_VER(dev_priv) >=3D 5 || IS_G4X(dev_priv))
>  		ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
>  					       0, plane_funcs,
>  					       formats, num_formats,
> -					       i9xx_format_modifiers,
> +					       modifiers,
>  					       DRM_PLANE_TYPE_PRIMARY,
>  					       "primary %c", pipe_name(pipe));
>  	else
>  		ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
>  					       0, plane_funcs,
>  					       formats, num_formats,
> -					       i9xx_format_modifiers,
> +					       modifiers,
>  					       DRM_PLANE_TYPE_PRIMARY,
>  					       "plane %c",
>  					       plane_name(plane->i9xx_plane));
> +
> +	kfree(modifiers);
> +
>  	if (ret)
>  		goto fail;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index 11842f2126130..6b08d8bca5cd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -28,11 +28,6 @@ static const u32 intel_cursor_formats[] =3D {
>  	DRM_FORMAT_ARGB8888,
>  };
>=20=20
> -static const u64 cursor_format_modifiers[] =3D {
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
>  static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *dev_priv =3D
> @@ -605,8 +600,10 @@ static bool i9xx_cursor_get_hw_state(struct intel_pl=
ane *plane,
>  static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
>  					      u32 format, u64 modifier)
>  {
> -	return modifier =3D=3D DRM_FORMAT_MOD_LINEAR &&
> -		format =3D=3D DRM_FORMAT_ARGB8888;
> +	if (!intel_fb_plane_supports_modifier(to_intel_plane(_plane), modifier))
> +		return false;
> +
> +	return format =3D=3D DRM_FORMAT_ARGB8888;
>  }
>=20=20
>  static int
> @@ -754,6 +751,7 @@ intel_cursor_plane_create(struct drm_i915_private *de=
v_priv,
>  {
>  	struct intel_plane *cursor;
>  	int ret, zpos;
> +	u64 *modifiers;
>=20=20
>  	cursor =3D intel_plane_alloc();
>  	if (IS_ERR(cursor))
> @@ -784,13 +782,18 @@ intel_cursor_plane_create(struct drm_i915_private *=
dev_priv,
>  	if (IS_I845G(dev_priv) || IS_I865G(dev_priv) || HAS_CUR_FBC(dev_priv))
>  		cursor->cursor.size =3D ~0;
>=20=20
> +	modifiers =3D intel_fb_plane_get_modifiers(dev_priv, PLANE_HAS_NO_CAPS);
> +
>  	ret =3D drm_universal_plane_init(&dev_priv->drm, &cursor->base,
>  				       0, &intel_cursor_plane_funcs,
>  				       intel_cursor_formats,
>  				       ARRAY_SIZE(intel_cursor_formats),
> -				       cursor_format_modifiers,
> +				       modifiers,
>  				       DRM_PLANE_TYPE_CURSOR,
>  				       "cursor %c", pipe_name(pipe));
> +
> +	kfree(modifiers);
> +
>  	if (ret)
>  		goto fail;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 1e42bf901263c..a4930a56bfa82 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1336,7 +1336,6 @@ struct intel_plane {
>  	enum plane_id id;
>  	enum pipe pipe;
>  	bool has_fbc;
> -	bool has_ccs;
>  	bool need_async_flip_disable_wa;
>  	u32 frontbuffer_bit;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index fa1f375e696bf..cf4748daf2acf 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -13,6 +13,158 @@
>=20=20
>  #define check_array_bounds(i915, a, i) drm_WARN_ON(&(i915)->drm, (i) >=
=3D ARRAY_SIZE(a))
>=20=20
> +struct intel_modifier_desc {
> +	u64 modifier;
> +	struct {
> +		u8 from;
> +		u8 until;
> +	} display_ver;
> +#define DISPLAY_VER_ALL		{ 0, -1 }
> +
> +	u8 is_linear:1;
> +
> +	struct {
> +#define INTEL_CCS_RC		BIT(0)
> +#define INTEL_CCS_RC_CC		BIT(1)
> +#define INTEL_CCS_MC		BIT(2)
> +
> +#define INTEL_CCS_ANY		(INTEL_CCS_RC | INTEL_CCS_RC_CC | INTEL_CCS_MC)
> +		u8 type:3;
> +	} ccs;
> +};
> +
> +static const struct intel_modifier_desc intel_modifiers[] =3D {
> +	{
> +		.modifier =3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
> +		.display_ver =3D { 12, 13 },
> +
> +		.ccs.type =3D INTEL_CCS_MC,
> +	},
> +	{

Argh, I meant to comment that "}, {" on one line is customary for stuff
like this to reduce the vertical space.

If you need to do another spin for other reasons, please include this
change, otherwise it can be a follow-up.

BR,
Jani.

> +		.modifier =3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> +		.display_ver =3D { 12, 13 },
> +
> +		.ccs.type =3D INTEL_CCS_RC,
> +	},
> +	{
> +		.modifier =3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
> +		.display_ver =3D { 12, 13 },
> +
> +		.ccs.type =3D INTEL_CCS_RC_CC,
> +	},
> +	{
> +		.modifier =3D I915_FORMAT_MOD_Yf_TILED_CCS,
> +		.display_ver =3D { 9, 11 },
> +
> +		.ccs.type =3D INTEL_CCS_RC,
> +	},
> +	{
> +		.modifier =3D I915_FORMAT_MOD_Y_TILED_CCS,
> +		.display_ver =3D { 9, 11 },
> +
> +		.ccs.type =3D INTEL_CCS_RC,
> +	},
> +	{
> +		.modifier =3D I915_FORMAT_MOD_Yf_TILED,
> +		.display_ver =3D { 9, 11 },
> +	},
> +	{
> +		.modifier =3D I915_FORMAT_MOD_Y_TILED,
> +		.display_ver =3D { 9, 13 },
> +	},
> +	{
> +		.modifier =3D I915_FORMAT_MOD_X_TILED,
> +		.display_ver =3D DISPLAY_VER_ALL,
> +	},
> +	{
> +		.modifier =3D DRM_FORMAT_MOD_LINEAR,
> +		.display_ver =3D DISPLAY_VER_ALL,
> +
> +		.is_linear =3D true,
> +	},
> +};
> +
> +static bool is_ccs_type_modifier(const struct intel_modifier_desc *md, u=
8 ccs_type)
> +{
> +	return md->ccs.type & ccs_type;
> +}
> +
> +static bool plane_has_modifier(struct drm_i915_private *i915,
> +			       enum intel_plane_caps plane_caps,
> +			       const struct intel_modifier_desc *md)
> +{
> +	if (!IS_DISPLAY_VER(i915, md->display_ver.from, md->display_ver.until))
> +		return false;
> +
> +	if (!md->is_linear &&
> +	    !(plane_caps & PLANE_HAS_TILING))
> +		return false;
> +
> +	if (is_ccs_type_modifier(md, INTEL_CCS_RC | INTEL_CCS_RC_CC) &&
> +	    !(plane_caps & PLANE_HAS_CCS_RC))
> +		return false;
> +
> +	if (is_ccs_type_modifier(md, INTEL_CCS_MC) &&
> +	    !(plane_caps & PLANE_HAS_CCS_MC))
> +		return false;
> +
> +	return true;
> +}
> +
> +/**
> + * intel_fb_plane_get_modifiers: Get the modifiers for the given platfor=
m and plane capabilities
> + * @i915: i915 device instance
> + * @plane_caps: capabilities for the plane the modifiers are queried for
> + *
> + * Returns:
> + * Returns the list of modifiers allowed by the @i915 platform and @plan=
e_caps.
> + * The caller must free the returned buffer.
> + */
> +u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
> +				  enum intel_plane_caps plane_caps)
> +{
> +	u64 *list, *p;
> +	int count =3D 1;		/* +1 for invalid modifier terminator */
> +	int i;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(intel_modifiers); i++) {
> +		if (plane_has_modifier(i915, plane_caps, &intel_modifiers[i]))
> +			count++;
> +	}
> +
> +	list =3D kmalloc_array(count, sizeof(*list), GFP_KERNEL);
> +	if (drm_WARN_ON(&i915->drm, !list))
> +		return NULL;
> +
> +	p =3D list;
> +	for (i =3D 0; i < ARRAY_SIZE(intel_modifiers); i++) {
> +		if (plane_has_modifier(i915, plane_caps, &intel_modifiers[i]))
> +			*p++ =3D intel_modifiers[i].modifier;
> +	}
> +	*p++ =3D DRM_FORMAT_MOD_INVALID;
> +
> +	return list;
> +}
> +
> +/**
> + * intel_fb_plane_supports_modifier: Determine if a modifier is supporte=
d by the given plane
> + * @plane: Plane to check the modifier support for
> + * @modifier: The modifier to check the support for
> + *
> + * Returns:
> + * %true if the @modifier is supported on @plane.
> + */
> +bool intel_fb_plane_supports_modifier(struct intel_plane *plane, u64 mod=
ifier)
> +{
> +	int i;
> +
> +	for (i =3D 0; i < plane->base.modifier_count; i++)
> +		if (plane->base.modifiers[i] =3D=3D modifier)
> +			return true;
> +
> +	return false;
> +}
> +
>  bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
>  {
>  	if (!is_ccs_modifier(fb->modifier))
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index 1cbdd84502bdd..0f77e81e69d29 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -6,6 +6,7 @@
>  #ifndef __INTEL_FB_H__
>  #define __INTEL_FB_H__
>=20=20
> +#include <linux/bits.h>
>  #include <linux/types.h>
>=20=20
>  struct drm_device;
> @@ -16,13 +17,25 @@ struct drm_i915_private;
>  struct drm_mode_fb_cmd2;
>  struct intel_fb_view;
>  struct intel_framebuffer;
> +struct intel_plane;
>  struct intel_plane_state;
>=20=20
> +enum intel_plane_caps {
> +	PLANE_HAS_NO_CAPS =3D 0,
> +	PLANE_HAS_TILING =3D BIT(0),
> +	PLANE_HAS_CCS_RC =3D BIT(1),
> +	PLANE_HAS_CCS_MC =3D BIT(2),
> +};
> +
>  bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
>  bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
>  bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
>  bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_=
plane);
>=20=20
> +u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
> +				  enum intel_plane_caps plane_caps);
> +bool intel_fb_plane_supports_modifier(struct intel_plane *plane, u64 mod=
ifier);
> +
>  bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane=
);
>=20=20
>  int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane);
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 08116f41da26a..2f4f47ab9da03 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -45,6 +45,7 @@
>  #include "intel_atomic_plane.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_fb.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_sprite.h"
>  #include "i9xx_plane.h"
> @@ -1575,12 +1576,6 @@ static const u32 g4x_plane_formats[] =3D {
>  	DRM_FORMAT_VYUY,
>  };
>=20=20
> -static const u64 i9xx_plane_format_modifiers[] =3D {
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
>  static const u32 snb_plane_formats[] =3D {
>  	DRM_FORMAT_XRGB8888,
>  	DRM_FORMAT_XBGR8888,
> @@ -1629,13 +1624,8 @@ static const u32 chv_pipe_b_sprite_formats[] =3D {
>  static bool g4x_sprite_format_mod_supported(struct drm_plane *_plane,
>  					    u32 format, u64 modifier)
>  {
> -	switch (modifier) {
> -	case DRM_FORMAT_MOD_LINEAR:
> -	case I915_FORMAT_MOD_X_TILED:
> -		break;
> -	default:
> +	if (!intel_fb_plane_supports_modifier(to_intel_plane(_plane), modifier))
>  		return false;
> -	}
>=20=20
>  	switch (format) {
>  	case DRM_FORMAT_XRGB8888:
> @@ -1655,13 +1645,8 @@ static bool g4x_sprite_format_mod_supported(struct=
 drm_plane *_plane,
>  static bool snb_sprite_format_mod_supported(struct drm_plane *_plane,
>  					    u32 format, u64 modifier)
>  {
> -	switch (modifier) {
> -	case DRM_FORMAT_MOD_LINEAR:
> -	case I915_FORMAT_MOD_X_TILED:
> -		break;
> -	default:
> +	if (!intel_fb_plane_supports_modifier(to_intel_plane(_plane), modifier))
>  		return false;
> -	}
>=20=20
>  	switch (format) {
>  	case DRM_FORMAT_XRGB8888:
> @@ -1686,13 +1671,8 @@ static bool snb_sprite_format_mod_supported(struct=
 drm_plane *_plane,
>  static bool vlv_sprite_format_mod_supported(struct drm_plane *_plane,
>  					    u32 format, u64 modifier)
>  {
> -	switch (modifier) {
> -	case DRM_FORMAT_MOD_LINEAR:
> -	case I915_FORMAT_MOD_X_TILED:
> -		break;
> -	default:
> +	if (!intel_fb_plane_supports_modifier(to_intel_plane(_plane), modifier))
>  		return false;
> -	}
>=20=20
>  	switch (format) {
>  	case DRM_FORMAT_C8:
> @@ -1776,7 +1756,6 @@ intel_sprite_plane_create(struct drm_i915_private *=
dev_priv,
>  			formats =3D vlv_plane_formats;
>  			num_formats =3D ARRAY_SIZE(vlv_plane_formats);
>  		}
> -		modifiers =3D i9xx_plane_format_modifiers;
>=20=20
>  		plane_funcs =3D &vlv_sprite_funcs;
>  	} else if (DISPLAY_VER(dev_priv) >=3D 7) {
> @@ -1795,7 +1774,6 @@ intel_sprite_plane_create(struct drm_i915_private *=
dev_priv,
>=20=20
>  		formats =3D snb_plane_formats;
>  		num_formats =3D ARRAY_SIZE(snb_plane_formats);
> -		modifiers =3D i9xx_plane_format_modifiers;
>=20=20
>  		plane_funcs =3D &snb_sprite_funcs;
>  	} else {
> @@ -1806,7 +1784,6 @@ intel_sprite_plane_create(struct drm_i915_private *=
dev_priv,
>  		plane->max_stride =3D g4x_sprite_max_stride;
>  		plane->min_cdclk =3D g4x_sprite_min_cdclk;
>=20=20
> -		modifiers =3D i9xx_plane_format_modifiers;
>  		if (IS_SANDYBRIDGE(dev_priv)) {
>  			formats =3D snb_plane_formats;
>  			num_formats =3D ARRAY_SIZE(snb_plane_formats);
> @@ -1833,11 +1810,15 @@ intel_sprite_plane_create(struct drm_i915_private=
 *dev_priv,
>  	plane->id =3D PLANE_SPRITE0 + sprite;
>  	plane->frontbuffer_bit =3D INTEL_FRONTBUFFER(pipe, plane->id);
>=20=20
> +	modifiers =3D intel_fb_plane_get_modifiers(dev_priv, PLANE_HAS_TILING);
> +
>  	ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
>  				       0, plane_funcs,
>  				       formats, num_formats, modifiers,
>  				       DRM_PLANE_TYPE_OVERLAY,
>  				       "sprite %c", sprite_name(pipe, sprite));
> +	kfree(modifiers);
> +
>  	if (ret)
>  		goto fail;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index 37eabeff8197f..c2e94118566b6 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -4,6 +4,7 @@
>   */
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_fb.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 7444b88829ea7..7ee2114e420b7 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -163,50 +163,6 @@ static const u32 icl_hdr_plane_formats[] =3D {
>  	DRM_FORMAT_XVYU16161616,
>  };
>=20=20
> -static const u64 skl_plane_format_modifiers_noccs[] =3D {
> -	I915_FORMAT_MOD_Yf_TILED,
> -	I915_FORMAT_MOD_Y_TILED,
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
> -static const u64 skl_plane_format_modifiers_ccs[] =3D {
> -	I915_FORMAT_MOD_Yf_TILED_CCS,
> -	I915_FORMAT_MOD_Y_TILED_CCS,
> -	I915_FORMAT_MOD_Yf_TILED,
> -	I915_FORMAT_MOD_Y_TILED,
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
> -static const u64 gen12_plane_format_modifiers_mc_ccs[] =3D {
> -	I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
> -	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> -	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
> -	I915_FORMAT_MOD_Y_TILED,
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
> -static const u64 gen12_plane_format_modifiers_rc_ccs[] =3D {
> -	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> -	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
> -	I915_FORMAT_MOD_Y_TILED,
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
> -static const u64 adlp_step_a_plane_format_modifiers[] =3D {
> -	I915_FORMAT_MOD_Y_TILED,
> -	I915_FORMAT_MOD_X_TILED,
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
>  int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
>  {
>  	switch (format) {
> @@ -1882,42 +1838,13 @@ static const u32 *icl_get_plane_formats(struct dr=
m_i915_private *dev_priv,
>  	}
>  }
>=20=20
> -static bool skl_plane_has_ccs(struct drm_i915_private *dev_priv,
> -			      enum pipe pipe, enum plane_id plane_id)
> -{
> -	if (plane_id =3D=3D PLANE_CURSOR)
> -		return false;
> -
> -	if (DISPLAY_VER(dev_priv) >=3D 11)
> -		return true;
> -
> -	if (IS_GEMINILAKE(dev_priv))
> -		return pipe !=3D PIPE_C;
> -
> -	return pipe !=3D PIPE_C &&
> -		(plane_id =3D=3D PLANE_PRIMARY ||
> -		 plane_id =3D=3D PLANE_SPRITE0);
> -}
> -
>  static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
>  					   u32 format, u64 modifier)
>  {
>  	struct intel_plane *plane =3D to_intel_plane(_plane);
>=20=20
> -	switch (modifier) {
> -	case DRM_FORMAT_MOD_LINEAR:
> -	case I915_FORMAT_MOD_X_TILED:
> -	case I915_FORMAT_MOD_Y_TILED:
> -	case I915_FORMAT_MOD_Yf_TILED:
> -		break;
> -	case I915_FORMAT_MOD_Y_TILED_CCS:
> -	case I915_FORMAT_MOD_Yf_TILED_CCS:
> -		if (!plane->has_ccs)
> -			return false;
> -		break;
> -	default:
> +	if (!intel_fb_plane_supports_modifier(plane, modifier))
>  		return false;
> -	}
>=20=20
>  	switch (format) {
>  	case DRM_FORMAT_XRGB8888:
> @@ -1965,45 +1892,13 @@ static bool skl_plane_format_mod_supported(struct=
 drm_plane *_plane,
>  	}
>  }
>=20=20
> -static bool gen12_plane_supports_mc_ccs(struct drm_i915_private *dev_pri=
v,
> -					enum plane_id plane_id)
> -{
> -	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
> -	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
> -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_D0))
> -		return false;
> -
> -	/* Wa_22011186057 */
> -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> -		return false;
> -
> -	return plane_id < PLANE_SPRITE4;
> -}
> -
>  static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>  					     u32 format, u64 modifier)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(_plane->dev);
>  	struct intel_plane *plane =3D to_intel_plane(_plane);
>=20=20
> -	switch (modifier) {
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> -		if (!gen12_plane_supports_mc_ccs(dev_priv, plane->id))
> -			return false;
> -		fallthrough;
> -	case DRM_FORMAT_MOD_LINEAR:
> -	case I915_FORMAT_MOD_X_TILED:
> -	case I915_FORMAT_MOD_Y_TILED:
> -		break;
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> -		/* Wa_22011186057 */
> -		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> -			return false;
> -		break;
> -	default:
> +	if (!intel_fb_plane_supports_modifier(plane, modifier))
>  		return false;
> -	}
>=20=20
>  	switch (format) {
>  	case DRM_FORMAT_XRGB8888:
> @@ -2051,18 +1946,6 @@ static bool gen12_plane_format_mod_supported(struc=
t drm_plane *_plane,
>  	}
>  }
>=20=20
> -static const u64 *gen12_get_plane_modifiers(struct drm_i915_private *dev=
_priv,
> -					    enum plane_id plane_id)
> -{
> -	/* Wa_22011186057 */
> -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> -		return adlp_step_a_plane_format_modifiers;
> -	else if (gen12_plane_supports_mc_ccs(dev_priv, plane_id))
> -		return gen12_plane_format_modifiers_mc_ccs;
> -	else
> -		return gen12_plane_format_modifiers_rc_ccs;
> -}
> -
>  static const struct drm_plane_funcs skl_plane_funcs =3D {
>  	.update_plane =3D drm_atomic_helper_update_plane,
>  	.disable_plane =3D drm_atomic_helper_disable_plane,
> @@ -2103,6 +1986,39 @@ skl_plane_disable_flip_done(struct intel_plane *pl=
ane)
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20=20
> +static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> +				 enum pipe pipe, enum plane_id plane_id)
> +{
> +	/* Wa_22011186057 */
> +	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> +		return false;
> +
> +	if (DISPLAY_VER(i915) >=3D 11)
> +		return true;
> +
> +	if (IS_GEMINILAKE(i915))
> +		return pipe !=3D PIPE_C;
> +
> +	return pipe !=3D PIPE_C &&
> +		(plane_id =3D=3D PLANE_PRIMARY ||
> +		 plane_id =3D=3D PLANE_SPRITE0);
> +}
> +
> +static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
> +				   enum plane_id plane_id)
> +{
> +	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
> +	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> +	    IS_TGL_DISPLAY_STEP(i915, STEP_A0, STEP_D0))
> +		return false;
> +
> +	/* Wa_22011186057 */
> +	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> +		return false;
> +
> +	return plane_id < PLANE_SPRITE4;
> +}
> +
>  struct intel_plane *
>  skl_universal_plane_create(struct drm_i915_private *dev_priv,
>  			   enum pipe pipe, enum plane_id plane_id)
> @@ -2110,6 +2026,7 @@ skl_universal_plane_create(struct drm_i915_private =
*dev_priv,
>  	const struct drm_plane_funcs *plane_funcs;
>  	struct intel_plane *plane;
>  	enum drm_plane_type plane_type;
> +	enum intel_plane_caps plane_caps;
>  	unsigned int supported_rotations;
>  	unsigned int supported_csc;
>  	const u64 *modifiers;
> @@ -2171,29 +2088,34 @@ skl_universal_plane_create(struct drm_i915_privat=
e *dev_priv,
>  		formats =3D skl_get_plane_formats(dev_priv, pipe,
>  						plane_id, &num_formats);
>=20=20
> -	plane->has_ccs =3D skl_plane_has_ccs(dev_priv, pipe, plane_id);
> -	if (DISPLAY_VER(dev_priv) >=3D 12) {
> -		modifiers =3D gen12_get_plane_modifiers(dev_priv, plane_id);
> +	if (DISPLAY_VER(dev_priv) >=3D 12)
>  		plane_funcs =3D &gen12_plane_funcs;
> -	} else {
> -		if (plane->has_ccs)
> -			modifiers =3D skl_plane_format_modifiers_ccs;
> -		else
> -			modifiers =3D skl_plane_format_modifiers_noccs;
> +	else
>  		plane_funcs =3D &skl_plane_funcs;
> -	}
>=20=20
>  	if (plane_id =3D=3D PLANE_PRIMARY)
>  		plane_type =3D DRM_PLANE_TYPE_PRIMARY;
>  	else
>  		plane_type =3D DRM_PLANE_TYPE_OVERLAY;
>=20=20
> +	plane_caps =3D PLANE_HAS_TILING;
> +	if (skl_plane_has_rc_ccs(dev_priv, pipe, plane_id))
> +		plane_caps |=3D PLANE_HAS_CCS_RC;
> +
> +	if (gen12_plane_has_mc_ccs(dev_priv, plane_id))
> +		plane_caps |=3D PLANE_HAS_CCS_MC;
> +
> +	modifiers =3D intel_fb_plane_get_modifiers(dev_priv, plane_caps);
> +
>  	ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
>  				       0, plane_funcs,
>  				       formats, num_formats, modifiers,
>  				       plane_type,
>  				       "plane %d%c", plane_id + 1,
>  				       pipe_name(pipe));
> +
> +	kfree(modifiers);
> +
>  	if (ret)
>  		goto fail;

--=20
Jani Nikula, Intel Open Source Graphics Center
