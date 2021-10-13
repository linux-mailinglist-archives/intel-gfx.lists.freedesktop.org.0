Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3341C42CC74
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 23:01:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 624176EB20;
	Wed, 13 Oct 2021 21:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDD426EB1E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 21:01:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="313737320"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="313737320"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 14:01:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="442444352"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 14:01:44 -0700
Date: Thu, 14 Oct 2021 00:01:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211013210141.GA19061@ideak-desk.fi.intel.com>
References: <20211007203517.3364336-2-imre.deak@intel.com>
 <20211008001915.3508011-1-imre.deak@intel.com>
 <YWc+MpZO3L/Rj1sL@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YWc+MpZO3L/Rj1sL@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 01/11] drm/i915: Add a table with a
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

On Wed, Oct 13, 2021 at 11:14:42PM +0300, Ville Syrjälä wrote:
> On Fri, Oct 08, 2021 at 03:19:08AM +0300, Imre Deak wrote:
> > Add a table describing all the framebuffer modifiers used by i915 at one
> > place. This has the benefit of deduplicating the listing of supported
> > modifiers for each platform and checking the support of these modifiers
> > on a given plane. This also simplifies in a similar way getting some
> > attribute for a modifier, for instance checking if the modifier is a
> > CCS modifier type.
> > 
> > v2:
> > - Keep the plane caps calculation in the plane code and pass an enum
> >   with these caps to intel_fb_get_modifiers(). (Ville)
> > - Get the modifiers calling intel_fb_get_modifiers() in i9xx_plane.c as
> >   well.
> > 
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/i9xx_plane.c     |  30 +--
> >  drivers/gpu/drm/i915/display/intel_cursor.c   |  19 +-
> >  .../drm/i915/display/intel_display_types.h    |   1 -
> >  drivers/gpu/drm/i915/display/intel_fb.c       | 143 ++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_fb.h       |  16 ++
> >  drivers/gpu/drm/i915/display/intel_sprite.c   |  35 +---
> >  drivers/gpu/drm/i915/display/skl_scaler.c     |   1 +
> >  .../drm/i915/display/skl_universal_plane.c    | 181 +++++-------------
> >  drivers/gpu/drm/i915/i915_drv.h               |   3 +
> >  9 files changed, 245 insertions(+), 184 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > index b1439ba78f67b..a939accff7ee2 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > @@ -60,22 +60,11 @@ static const u32 vlv_primary_formats[] = {
> >  	DRM_FORMAT_XBGR16161616F,
> >  };
> >  
> > -static const u64 i9xx_format_modifiers[] = {
> > -	I915_FORMAT_MOD_X_TILED,
> > -	DRM_FORMAT_MOD_LINEAR,
> > -	DRM_FORMAT_MOD_INVALID
> > -};
> > -
> >  static bool i8xx_plane_format_mod_supported(struct drm_plane *_plane,
> >  					    u32 format, u64 modifier)
> >  {
> > -	switch (modifier) {
> > -	case DRM_FORMAT_MOD_LINEAR:
> > -	case I915_FORMAT_MOD_X_TILED:
> > -		break;
> > -	default:
> > +	if (!intel_fb_plane_supports_modifier(to_intel_plane(_plane), modifier))
> >  		return false;
> > -	}
> >  
> >  	switch (format) {
> >  	case DRM_FORMAT_C8:
> > @@ -92,13 +81,8 @@ static bool i8xx_plane_format_mod_supported(struct drm_plane *_plane,
> >  static bool i965_plane_format_mod_supported(struct drm_plane *_plane,
> >  					    u32 format, u64 modifier)
> >  {
> > -	switch (modifier) {
> > -	case DRM_FORMAT_MOD_LINEAR:
> > -	case I915_FORMAT_MOD_X_TILED:
> > -		break;
> > -	default:
> > +	if (!intel_fb_plane_supports_modifier(to_intel_plane(_plane), modifier))
> >  		return false;
> > -	}
> >  
> >  	switch (format) {
> >  	case DRM_FORMAT_C8:
> > @@ -768,6 +752,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
> >  	struct intel_plane *plane;
> >  	const struct drm_plane_funcs *plane_funcs;
> >  	unsigned int supported_rotations;
> > +	const u64 *modifiers;
> >  	const u32 *formats;
> >  	int num_formats;
> >  	int ret, zpos;
> > @@ -875,21 +860,26 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
> >  		plane->disable_flip_done = ilk_primary_disable_flip_done;
> >  	}
> >  
> > +	modifiers = intel_fb_plane_get_modifiers(dev_priv, PLANE_HAS_TILING);
> > +
> >  	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
> >  		ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
> >  					       0, plane_funcs,
> >  					       formats, num_formats,
> > -					       i9xx_format_modifiers,
> > +					       modifiers,
> >  					       DRM_PLANE_TYPE_PRIMARY,
> >  					       "primary %c", pipe_name(pipe));
> >  	else
> >  		ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
> >  					       0, plane_funcs,
> >  					       formats, num_formats,
> > -					       i9xx_format_modifiers,
> > +					       modifiers,
> >  					       DRM_PLANE_TYPE_PRIMARY,
> >  					       "plane %c",
> >  					       plane_name(plane->i9xx_plane));
> > +
> > +	kfree(modifiers);
> > +
> >  	if (ret)
> >  		goto fail;
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> > index f6dcb5aa63f64..1f764c6d59583 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -28,11 +28,6 @@ static const u32 intel_cursor_formats[] = {
> >  	DRM_FORMAT_ARGB8888,
> >  };
> >  
> > -static const u64 cursor_format_modifiers[] = {
> > -	DRM_FORMAT_MOD_LINEAR,
> > -	DRM_FORMAT_MOD_INVALID
> > -};
> > -
> >  static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
> >  {
> >  	struct drm_i915_private *dev_priv =
> > @@ -605,8 +600,10 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
> >  static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
> >  					      u32 format, u64 modifier)
> >  {
> > -	return modifier == DRM_FORMAT_MOD_LINEAR &&
> > -		format == DRM_FORMAT_ARGB8888;
> > +	if (!intel_fb_plane_supports_modifier(to_intel_plane(_plane), modifier))
> > +		return false;
> > +
> > +	return format == DRM_FORMAT_ARGB8888;
> >  }
> >  
> >  static int
> > @@ -754,6 +751,7 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
> >  {
> >  	struct intel_plane *cursor;
> >  	int ret, zpos;
> > +	u64 *modifiers;
> >  
> >  	cursor = intel_plane_alloc();
> >  	if (IS_ERR(cursor))
> > @@ -784,13 +782,18 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
> >  	if (IS_I845G(dev_priv) || IS_I865G(dev_priv) || HAS_CUR_FBC(dev_priv))
> >  		cursor->cursor.size = ~0;
> >  
> > +	modifiers = intel_fb_plane_get_modifiers(dev_priv, PLANE_HAS_NO_CAPS);
> > +
> >  	ret = drm_universal_plane_init(&dev_priv->drm, &cursor->base,
> >  				       0, &intel_cursor_plane_funcs,
> >  				       intel_cursor_formats,
> >  				       ARRAY_SIZE(intel_cursor_formats),
> > -				       cursor_format_modifiers,
> > +				       modifiers,
> >  				       DRM_PLANE_TYPE_CURSOR,
> >  				       "cursor %c", pipe_name(pipe));
> > +
> > +	kfree(modifiers);
> > +
> >  	if (ret)
> >  		goto fail;
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 21ce8bccc645a..bb53b01f07aee 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1336,7 +1336,6 @@ struct intel_plane {
> >  	enum plane_id id;
> >  	enum pipe pipe;
> >  	bool has_fbc;
> > -	bool has_ccs;
> >  	bool need_async_flip_disable_wa;
> >  	u32 frontbuffer_bit;
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> > index fa1f375e696bf..11a4c3e81cead 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -13,6 +13,149 @@
> >  
> >  #define check_array_bounds(i915, a, i) drm_WARN_ON(&(i915)->drm, (i) >= ARRAY_SIZE(a))
> >  
> > +const struct intel_modifier_desc {
> > +	u64 id;
> 
> s/id/modifier/ ?

Ok.

> > +	u64 display_versions;
> > +	u8 is_linear:1;
> > +
> > +	struct {
> > +#define INTEL_CCS_RC		BIT(0)
> > +#define INTEL_CCS_RC_CC		BIT(1)
> > +#define INTEL_CCS_MC		BIT(2)
> > +
> > +#define INTEL_CCS_ANY		(INTEL_CCS_RC | INTEL_CCS_RC_CC | INTEL_CCS_MC)
> > +		u8 type:3;
> > +	} ccs;
> > +} intel_modifiers[] = {
> > +	{
> > +		.id = DRM_FORMAT_MOD_LINEAR,
> > +		.display_versions = DISPLAY_VER_MASK_ALL,
> > +		.is_linear = true,
> > +	},
> > +	{
> > +		.id = I915_FORMAT_MOD_X_TILED,
> > +		.display_versions = DISPLAY_VER_MASK_ALL,
> > +	},
> > +	{
> > +		.id = I915_FORMAT_MOD_Y_TILED,
> > +		.display_versions = DISPLAY_VER_MASK(9, 13),
> > +	},
> > +	{
> > +		.id = I915_FORMAT_MOD_Yf_TILED,
> > +		.display_versions = DISPLAY_VER_MASK(9, 11),
> > +	},
> > +	{
> > +		.id = I915_FORMAT_MOD_Y_TILED_CCS,
> > +		.display_versions = DISPLAY_VER_MASK(9, 11),
> > +
> > +		.ccs.type = INTEL_CCS_RC,
> > +	},
> > +	{
> > +		.id = I915_FORMAT_MOD_Yf_TILED_CCS,
> > +		.display_versions = DISPLAY_VER_MASK(9, 11),
> > +
> > +		.ccs.type = INTEL_CCS_RC,
> > +	},
> > +	{
> > +		.id = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> > +		.display_versions = DISPLAY_VER_MASK(12, 13),
> > +
> > +		.ccs.type = INTEL_CCS_RC,
> > +	},
> > +	{
> > +		.id = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
> > +		.display_versions = DISPLAY_VER_MASK(12, 13),
> > +
> > +		.ccs.type = INTEL_CCS_RC_CC,
> > +	},
> > +	{
> > +		.id = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
> > +		.display_versions = DISPLAY_VER_MASK(12, 13),
> > +
> > +		.ccs.type = INTEL_CCS_MC,
> > +	},
> > +};
> > +
> > +static bool is_ccs_type_modifier(const struct intel_modifier_desc *md, u8 ccs_type)
> > +{
> > +	return md->ccs.type & ccs_type;
> > +}
> > +
> > +static bool plane_has_modifier(struct drm_i915_private *i915,
> > +			       enum intel_plane_caps plane_caps,
> > +			       const struct intel_modifier_desc *md)
> > +{
> > +	if (!(DISPLAY_VER_BIT(DISPLAY_VER(i915)) & md->display_versions))
> > +		return false;
> 
> I guess I'd typically have the bitmask vs. the bit we're checking
> the other way around. Feels a bit RPN :P

Yes, will fix it.

> > +
> > +	if (!(plane_caps & PLANE_HAS_TILING) && !md->is_linear)
> > +		return false;
> 
> This has the plane_caps part on the left of && ...
> 
> > +
> > +	if (is_ccs_type_modifier(md, INTEL_CCS_RC | INTEL_CCS_RC_CC) &&
> > +	    !(plane_caps & PLANE_HAS_CCS_RC))
> > +		return false;
> > +
> > +	if (is_ccs_type_modifier(md, INTEL_CCS_MC) &&
> > +	    !(plane_caps & PLANE_HAS_CCS_MC))
> > +		return false;
> 
> ...these have it on the right.
> 
> My poor brain would like things to be consistent ;a

Yep, makes sense, will make the conditions more uniform.

> 
> > +
> > +	return true;
> > +}
> > +
> > +/**
> > + * intel_fb_plane_get_modifiers: Get the modifiers supported by the given pipe and plane
> > + * @i915: i915 device instance
> > + * @plane_caps: capabilities for the plane the modifiers are queried for
> > + *
> > + * Returns:
> > + * Returns the list of modifiers as allowed by @plane_caps.
> > + * The caller must free the returned buffer.
> > + */
> > +u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
> > +				  enum intel_plane_caps plane_caps)
> > +{
> > +	u64 *list, *p;
> > +	int count = 1;		/* +1 for invalid modifier terminator */
> > +	int i;
> > +
> > +	for (i = 0; i < ARRAY_SIZE(intel_modifiers); i++) {
> > +		if (plane_has_modifier(i915, plane_caps, &intel_modifiers[i]))
> > +			count++;
> > +	}
> > +
> > +	list = kmalloc_array(count, sizeof(*list), GFP_KERNEL);
> > +	if (drm_WARN_ON(&i915->drm, !list))
> > +		return NULL;
> > +
> > +	p = list;
> > +	for (i = 0; i < ARRAY_SIZE(intel_modifiers); i++) {
> > +		if (plane_has_modifier(i915, plane_caps, &intel_modifiers[i]))
> > +			*p++ = intel_modifiers[i].id;
> > +	}
> > +	*p++ = DRM_FORMAT_MOD_INVALID;
> > +
> > +	return list;
> > +}
> > +
> > +/**
> > + * intel_fb_plane_supports_modifier: Determine if a modifier is supported by the given plane
> > + * @plane: Plane to check the modifier support for
> > + * @modifier: The modifier to check the support for
> > + *
> > + * Returns:
> > + * %true if the @modifier is supported on @plane.
> > + */
> > +bool intel_fb_plane_supports_modifier(struct intel_plane *plane, u64 modifier)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < plane->base.modifier_count; i++)
> > +		if (plane->base.modifiers[i] == modifier)
> > +			return true;
> > +
> > +	return false;
> > +}
> > +
> >  bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
> >  {
> >  	if (!is_ccs_modifier(fb->modifier))
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> > index 1cbdd84502bdd..5bff88ccb9372 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> > @@ -6,8 +6,12 @@
> >  #ifndef __INTEL_FB_H__
> >  #define __INTEL_FB_H__
> >  
> > +#include <linux/bits.h>
> >  #include <linux/types.h>
> >  
> > +enum pipe;
> > +enum plane_id;
> > +
> >  struct drm_device;
> >  struct drm_file;
> >  struct drm_framebuffer;
> > @@ -16,13 +20,25 @@ struct drm_i915_private;
> >  struct drm_mode_fb_cmd2;
> >  struct intel_fb_view;
> >  struct intel_framebuffer;
> > +struct intel_plane;
> >  struct intel_plane_state;
> >  
> > +enum intel_plane_caps {
> > +	PLANE_HAS_NO_CAPS = 0,
> > +	PLANE_HAS_TILING = BIT(0),
> > +	PLANE_HAS_CCS_RC = BIT(1),
> > +	PLANE_HAS_CCS_MC = BIT(2),
> > +};
> > +
> >  bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
> >  bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
> >  bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
> >  bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane);
> >  
> > +u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
> > +				  enum intel_plane_caps plane_caps);
> > +bool intel_fb_plane_supports_modifier(struct intel_plane *plane, u64 modifier);
> > +
> >  bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane);
> >  
> >  int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane);
> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> > index 08116f41da26a..2f4f47ab9da03 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -45,6 +45,7 @@
> >  #include "intel_atomic_plane.h"
> >  #include "intel_de.h"
> >  #include "intel_display_types.h"
> > +#include "intel_fb.h"
> >  #include "intel_frontbuffer.h"
> >  #include "intel_sprite.h"
> >  #include "i9xx_plane.h"
> > @@ -1575,12 +1576,6 @@ static const u32 g4x_plane_formats[] = {
> >  	DRM_FORMAT_VYUY,
> >  };
> >  
> > -static const u64 i9xx_plane_format_modifiers[] = {
> > -	I915_FORMAT_MOD_X_TILED,
> > -	DRM_FORMAT_MOD_LINEAR,
> > -	DRM_FORMAT_MOD_INVALID
> > -};
> > -
> >  static const u32 snb_plane_formats[] = {
> >  	DRM_FORMAT_XRGB8888,
> >  	DRM_FORMAT_XBGR8888,
> > @@ -1629,13 +1624,8 @@ static const u32 chv_pipe_b_sprite_formats[] = {
> >  static bool g4x_sprite_format_mod_supported(struct drm_plane *_plane,
> >  					    u32 format, u64 modifier)
> >  {
> > -	switch (modifier) {
> > -	case DRM_FORMAT_MOD_LINEAR:
> > -	case I915_FORMAT_MOD_X_TILED:
> > -		break;
> > -	default:
> > +	if (!intel_fb_plane_supports_modifier(to_intel_plane(_plane), modifier))
> >  		return false;
> > -	}
> >  
> >  	switch (format) {
> >  	case DRM_FORMAT_XRGB8888:
> > @@ -1655,13 +1645,8 @@ static bool g4x_sprite_format_mod_supported(struct drm_plane *_plane,
> >  static bool snb_sprite_format_mod_supported(struct drm_plane *_plane,
> >  					    u32 format, u64 modifier)
> >  {
> > -	switch (modifier) {
> > -	case DRM_FORMAT_MOD_LINEAR:
> > -	case I915_FORMAT_MOD_X_TILED:
> > -		break;
> > -	default:
> > +	if (!intel_fb_plane_supports_modifier(to_intel_plane(_plane), modifier))
> >  		return false;
> > -	}
> >  
> >  	switch (format) {
> >  	case DRM_FORMAT_XRGB8888:
> > @@ -1686,13 +1671,8 @@ static bool snb_sprite_format_mod_supported(struct drm_plane *_plane,
> >  static bool vlv_sprite_format_mod_supported(struct drm_plane *_plane,
> >  					    u32 format, u64 modifier)
> >  {
> > -	switch (modifier) {
> > -	case DRM_FORMAT_MOD_LINEAR:
> > -	case I915_FORMAT_MOD_X_TILED:
> > -		break;
> > -	default:
> > +	if (!intel_fb_plane_supports_modifier(to_intel_plane(_plane), modifier))
> >  		return false;
> > -	}
> >  
> >  	switch (format) {
> >  	case DRM_FORMAT_C8:
> > @@ -1776,7 +1756,6 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
> >  			formats = vlv_plane_formats;
> >  			num_formats = ARRAY_SIZE(vlv_plane_formats);
> >  		}
> > -		modifiers = i9xx_plane_format_modifiers;
> >  
> >  		plane_funcs = &vlv_sprite_funcs;
> >  	} else if (DISPLAY_VER(dev_priv) >= 7) {
> > @@ -1795,7 +1774,6 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
> >  
> >  		formats = snb_plane_formats;
> >  		num_formats = ARRAY_SIZE(snb_plane_formats);
> > -		modifiers = i9xx_plane_format_modifiers;
> >  
> >  		plane_funcs = &snb_sprite_funcs;
> >  	} else {
> > @@ -1806,7 +1784,6 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
> >  		plane->max_stride = g4x_sprite_max_stride;
> >  		plane->min_cdclk = g4x_sprite_min_cdclk;
> >  
> > -		modifiers = i9xx_plane_format_modifiers;
> >  		if (IS_SANDYBRIDGE(dev_priv)) {
> >  			formats = snb_plane_formats;
> >  			num_formats = ARRAY_SIZE(snb_plane_formats);
> > @@ -1833,11 +1810,15 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
> >  	plane->id = PLANE_SPRITE0 + sprite;
> >  	plane->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, plane->id);
> >  
> > +	modifiers = intel_fb_plane_get_modifiers(dev_priv, PLANE_HAS_TILING);
> > +
> >  	ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
> >  				       0, plane_funcs,
> >  				       formats, num_formats, modifiers,
> >  				       DRM_PLANE_TYPE_OVERLAY,
> >  				       "sprite %c", sprite_name(pipe, sprite));
> > +	kfree(modifiers);
> > +
> >  	if (ret)
> >  		goto fail;
> >  
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index 37eabeff8197f..c2e94118566b6 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -4,6 +4,7 @@
> >   */
> >  #include "intel_de.h"
> >  #include "intel_display_types.h"
> > +#include "intel_fb.h"
> >  #include "skl_scaler.h"
> >  #include "skl_universal_plane.h"
> >  
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index a0e53a3b267aa..908eb87d9cf8f 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -163,50 +163,6 @@ static const u32 icl_hdr_plane_formats[] = {
> >  	DRM_FORMAT_XVYU16161616,
> >  };
> >  
> > -static const u64 skl_plane_format_modifiers_noccs[] = {
> > -	I915_FORMAT_MOD_Yf_TILED,
> > -	I915_FORMAT_MOD_Y_TILED,
> > -	I915_FORMAT_MOD_X_TILED,
> > -	DRM_FORMAT_MOD_LINEAR,
> > -	DRM_FORMAT_MOD_INVALID
> > -};
> > -
> > -static const u64 skl_plane_format_modifiers_ccs[] = {
> > -	I915_FORMAT_MOD_Yf_TILED_CCS,
> > -	I915_FORMAT_MOD_Y_TILED_CCS,
> > -	I915_FORMAT_MOD_Yf_TILED,
> > -	I915_FORMAT_MOD_Y_TILED,
> > -	I915_FORMAT_MOD_X_TILED,
> > -	DRM_FORMAT_MOD_LINEAR,
> > -	DRM_FORMAT_MOD_INVALID
> > -};
> > -
> > -static const u64 gen12_plane_format_modifiers_mc_ccs[] = {
> > -	I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
> > -	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> > -	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
> > -	I915_FORMAT_MOD_Y_TILED,
> > -	I915_FORMAT_MOD_X_TILED,
> > -	DRM_FORMAT_MOD_LINEAR,
> > -	DRM_FORMAT_MOD_INVALID
> > -};
> > -
> > -static const u64 gen12_plane_format_modifiers_rc_ccs[] = {
> > -	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> > -	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
> > -	I915_FORMAT_MOD_Y_TILED,
> > -	I915_FORMAT_MOD_X_TILED,
> > -	DRM_FORMAT_MOD_LINEAR,
> > -	DRM_FORMAT_MOD_INVALID
> > -};
> > -
> > -static const u64 adlp_step_a_plane_format_modifiers[] = {
> > -	I915_FORMAT_MOD_Y_TILED,
> > -	I915_FORMAT_MOD_X_TILED,
> > -	DRM_FORMAT_MOD_LINEAR,
> > -	DRM_FORMAT_MOD_INVALID
> > -};
> > -
> >  int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
> >  {
> >  	switch (format) {
> > @@ -1870,42 +1826,13 @@ static const u32 *icl_get_plane_formats(struct drm_i915_private *dev_priv,
> >  	}
> >  }
> >  
> > -static bool skl_plane_has_ccs(struct drm_i915_private *dev_priv,
> > -			      enum pipe pipe, enum plane_id plane_id)
> > -{
> > -	if (plane_id == PLANE_CURSOR)
> > -		return false;
> > -
> > -	if (DISPLAY_VER(dev_priv) >= 11)
> > -		return true;
> > -
> > -	if (IS_GEMINILAKE(dev_priv))
> > -		return pipe != PIPE_C;
> > -
> > -	return pipe != PIPE_C &&
> > -		(plane_id == PLANE_PRIMARY ||
> > -		 plane_id == PLANE_SPRITE0);
> > -}
> > -
> >  static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
> >  					   u32 format, u64 modifier)
> >  {
> >  	struct intel_plane *plane = to_intel_plane(_plane);
> >  
> > -	switch (modifier) {
> > -	case DRM_FORMAT_MOD_LINEAR:
> > -	case I915_FORMAT_MOD_X_TILED:
> > -	case I915_FORMAT_MOD_Y_TILED:
> > -	case I915_FORMAT_MOD_Yf_TILED:
> > -		break;
> > -	case I915_FORMAT_MOD_Y_TILED_CCS:
> > -	case I915_FORMAT_MOD_Yf_TILED_CCS:
> > -		if (!plane->has_ccs)
> > -			return false;
> > -		break;
> > -	default:
> > +	if (!intel_fb_plane_supports_modifier(plane, modifier))
> >  		return false;
> > -	}
> >  
> >  	switch (format) {
> >  	case DRM_FORMAT_XRGB8888:
> > @@ -1953,45 +1880,13 @@ static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
> >  	}
> >  }
> >  
> > -static bool gen12_plane_supports_mc_ccs(struct drm_i915_private *dev_priv,
> > -					enum plane_id plane_id)
> > -{
> > -	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
> > -	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
> > -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_D0))
> > -		return false;
> > -
> > -	/* Wa_22011186057 */
> > -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > -		return false;
> > -
> > -	return plane_id < PLANE_SPRITE4;
> > -}
> > -
> >  static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
> >  					     u32 format, u64 modifier)
> >  {
> > -	struct drm_i915_private *dev_priv = to_i915(_plane->dev);
> >  	struct intel_plane *plane = to_intel_plane(_plane);
> >  
> > -	switch (modifier) {
> > -	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> > -		if (!gen12_plane_supports_mc_ccs(dev_priv, plane->id))
> > -			return false;
> > -		fallthrough;
> > -	case DRM_FORMAT_MOD_LINEAR:
> > -	case I915_FORMAT_MOD_X_TILED:
> > -	case I915_FORMAT_MOD_Y_TILED:
> > -		break;
> > -	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> > -	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> > -		/* Wa_22011186057 */
> > -		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > -			return false;
> > -		break;
> > -	default:
> > +	if (!intel_fb_plane_supports_modifier(plane, modifier))
> >  		return false;
> > -	}
> >  
> >  	switch (format) {
> >  	case DRM_FORMAT_XRGB8888:
> > @@ -2039,18 +1934,6 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
> >  	}
> >  }
> >  
> > -static const u64 *gen12_get_plane_modifiers(struct drm_i915_private *dev_priv,
> > -					    enum plane_id plane_id)
> > -{
> > -	/* Wa_22011186057 */
> > -	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > -		return adlp_step_a_plane_format_modifiers;
> > -	else if (gen12_plane_supports_mc_ccs(dev_priv, plane_id))
> > -		return gen12_plane_format_modifiers_mc_ccs;
> > -	else
> > -		return gen12_plane_format_modifiers_rc_ccs;
> > -}
> > -
> >  static const struct drm_plane_funcs skl_plane_funcs = {
> >  	.update_plane = drm_atomic_helper_update_plane,
> >  	.disable_plane = drm_atomic_helper_disable_plane,
> > @@ -2091,6 +1974,42 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
> >  	spin_unlock_irq(&i915->irq_lock);
> >  }
> >  
> > +static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> > +				 enum pipe pipe, enum plane_id plane_id)
> > +{
> > +	if (plane_id == PLANE_CURSOR)
> > +		return false;
> > +
> 
> No cursors here anyway.

Right, it's a copy/paste, but realize now that the cursor plane is
registered separately. Will drop this.

> 
> > +	/* Wa_22011186057 */
> > +	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> > +		return false;
> > +
> > +	if (DISPLAY_VER(i915) >= 11)
> > +		return true;
> > +
> > +	if (IS_GEMINILAKE(i915))
> > +		return pipe != PIPE_C;
> > +
> > +	return pipe != PIPE_C &&
> > +		(plane_id == PLANE_PRIMARY ||
> > +		 plane_id == PLANE_SPRITE0);
> > +}
> 
> A bit tempted to say we should chop this up into more
> platform specific variants. But that can be left for later I guess.

You mean clarifying that last check is for SKL/BXT? Would a code comment
be ok?

> > +
> > +static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
> > +				   enum plane_id plane_id)
> > +{
> > +	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
> > +	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> > +	    IS_TGL_DISPLAY_STEP(i915, STEP_A0, STEP_D0))
> > +		return false;
> > +
> > +	/* Wa_22011186057 */
> > +	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> > +		return false;
> > +
> > +	return plane_id < PLANE_SPRITE4;
> > +}
> > +
> >  struct intel_plane *
> >  skl_universal_plane_create(struct drm_i915_private *dev_priv,
> >  			   enum pipe pipe, enum plane_id plane_id)
> > @@ -2098,6 +2017,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
> >  	const struct drm_plane_funcs *plane_funcs;
> >  	struct intel_plane *plane;
> >  	enum drm_plane_type plane_type;
> > +	enum intel_plane_caps plane_caps;
> >  	unsigned int supported_rotations;
> >  	unsigned int supported_csc;
> >  	const u64 *modifiers;
> > @@ -2159,29 +2079,34 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
> >  		formats = skl_get_plane_formats(dev_priv, pipe,
> >  						plane_id, &num_formats);
> >  
> > -	plane->has_ccs = skl_plane_has_ccs(dev_priv, pipe, plane_id);
> > -	if (DISPLAY_VER(dev_priv) >= 12) {
> > -		modifiers = gen12_get_plane_modifiers(dev_priv, plane_id);
> > +	if (DISPLAY_VER(dev_priv) >= 12)
> >  		plane_funcs = &gen12_plane_funcs;
> > -	} else {
> > -		if (plane->has_ccs)
> > -			modifiers = skl_plane_format_modifiers_ccs;
> > -		else
> > -			modifiers = skl_plane_format_modifiers_noccs;
> > +	else
> >  		plane_funcs = &skl_plane_funcs;
> > -	}
> >  
> >  	if (plane_id == PLANE_PRIMARY)
> >  		plane_type = DRM_PLANE_TYPE_PRIMARY;
> >  	else
> >  		plane_type = DRM_PLANE_TYPE_OVERLAY;
> >  
> > +	plane_caps = PLANE_HAS_TILING;
> > +	if (skl_plane_has_rc_ccs(dev_priv, pipe, plane_id))
> > +		plane_caps |= PLANE_HAS_CCS_RC;
> > +
> > +	if (gen12_plane_has_mc_ccs(dev_priv, plane_id))
> > +		plane_caps |= PLANE_HAS_CCS_MC;
> > +
> > +	modifiers = intel_fb_plane_get_modifiers(dev_priv, plane_caps);
> > +
> >  	ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
> >  				       0, plane_funcs,
> >  				       formats, num_formats, modifiers,
> >  				       plane_type,
> >  				       "plane %d%c", plane_id + 1,
> >  				       pipe_name(pipe));
> > +
> > +	kfree(modifiers);
> > +
> >  	if (ret)
> >  		goto fail;
> >  
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 12256218634f4..a92228c922a54 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1342,6 +1342,9 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
> >  #define DISPLAY_VER(i915)	(INTEL_INFO(i915)->display.ver)
> >  #define IS_DISPLAY_VER(i915, from, until) \
> >  	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
> > +#define DISPLAY_VER_BIT(d)	BIT_ULL(d)
> > +#define DISPLAY_VER_MASK(f, u)	GENMASK_ULL(u, f)
> > +#define DISPLAY_VER_MASK_ALL	DISPLAY_VER_MASK(0, BITS_PER_LONG_LONG - 1)
> >  
> >  #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
> >  
> > -- 
> > 2.27.0
> 
> -- 
> Ville Syrjälä
> Intel
