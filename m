Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC21425F9C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 00:00:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A0BB6F4EC;
	Thu,  7 Oct 2021 22:00:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A7456F4EC
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 22:00:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="289874722"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="289874722"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 15:00:11 -0700
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="489190664"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 15:00:10 -0700
Date: Fri, 8 Oct 2021 01:00:06 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211007220006.GE3322158@ideak-desk.fi.intel.com>
References: <20211007203517.3364336-1-imre.deak@intel.com>
 <20211007203517.3364336-2-imre.deak@intel.com>
 <YV9iKCRLsskhN4iw@intel.com>
 <20211007212611.GD3322158@ideak-desk.fi.intel.com>
 <YV9niXLx3Qfkhga0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YV9niXLx3Qfkhga0@intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915: Add a table with a
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

On Fri, Oct 08, 2021 at 12:32:57AM +0300, Ville Syrjälä wrote:
> On Fri, Oct 08, 2021 at 12:26:11AM +0300, Imre Deak wrote:
> > On Fri, Oct 08, 2021 at 12:10:00AM +0300, Ville Syrjälä wrote:
> > > On Thu, Oct 07, 2021 at 11:35:07PM +0300, Imre Deak wrote:
> > > > Add a table describing all the framebuffer modifiers used by i915 at one
> > > > place. This has the benefit of deduplicating the listing of supported
> > > > modifiers for each platform and checking the support of these modifiers
> > > > on a given plane. This also simplifies in a similar way getting some
> > > > attribute for a modifier, for instance checking if the modifier is a
> > > > CCS modifier type.
> > > > 
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_cursor.c   |  19 +-
> > > >  .../drm/i915/display/intel_display_types.h    |   1 -
> > > >  drivers/gpu/drm/i915/display/intel_fb.c       | 178 ++++++++++++++++++
> > > >  drivers/gpu/drm/i915/display/intel_fb.h       |   8 +
> > > >  drivers/gpu/drm/i915/display/intel_sprite.c   |  35 +---
> > > >  drivers/gpu/drm/i915/display/skl_scaler.c     |   1 +
> > > >  .../drm/i915/display/skl_universal_plane.c    | 137 +-------------
> > > >  drivers/gpu/drm/i915/i915_drv.h               |   3 +
> > > >  8 files changed, 218 insertions(+), 164 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> > > > index f6dcb5aa63f64..bcd44ff30ce5b 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > > > @@ -28,11 +28,6 @@ static const u32 intel_cursor_formats[] = {
> > > >  	DRM_FORMAT_ARGB8888,
> > > >  };
> > > >  
> > > > -static const u64 cursor_format_modifiers[] = {
> > > > -	DRM_FORMAT_MOD_LINEAR,
> > > > -	DRM_FORMAT_MOD_INVALID
> > > > -};
> > > > -
> > > >  static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
> > > >  {
> > > >  	struct drm_i915_private *dev_priv =
> > > > @@ -605,8 +600,10 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
> > > >  static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
> > > >  					      u32 format, u64 modifier)
> > > >  {
> > > > -	return modifier == DRM_FORMAT_MOD_LINEAR &&
> > > > -		format == DRM_FORMAT_ARGB8888;
> > > > +	if (!intel_fb_plane_supports_modifier(to_intel_plane(_plane), modifier))
> > > > +		return false;
> > > > +
> > > > +	return format == DRM_FORMAT_ARGB8888;
> > > >  }
> > > >  
> > > >  static int
> > > > @@ -754,6 +751,7 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
> > > >  {
> > > >  	struct intel_plane *cursor;
> > > >  	int ret, zpos;
> > > > +	u64 *modifiers;
> > > >  
> > > >  	cursor = intel_plane_alloc();
> > > >  	if (IS_ERR(cursor))
> > > > @@ -784,13 +782,18 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
> > > >  	if (IS_I845G(dev_priv) || IS_I865G(dev_priv) || HAS_CUR_FBC(dev_priv))
> > > >  		cursor->cursor.size = ~0;
> > > >  
> > > > +	modifiers = intel_fb_plane_get_modifiers(dev_priv, pipe, cursor->id);
> > > > +
> > > >  	ret = drm_universal_plane_init(&dev_priv->drm, &cursor->base,
> > > >  				       0, &intel_cursor_plane_funcs,
> > > >  				       intel_cursor_formats,
> > > >  				       ARRAY_SIZE(intel_cursor_formats),
> > > > -				       cursor_format_modifiers,
> > > > +				       modifiers,
> > > >  				       DRM_PLANE_TYPE_CURSOR,
> > > >  				       "cursor %c", pipe_name(pipe));
> > > > +
> > > > +	kfree(modifiers);
> > > > +
> > > >  	if (ret)
> > > >  		goto fail;
> > > >  
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > index 21ce8bccc645a..bb53b01f07aee 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > @@ -1336,7 +1336,6 @@ struct intel_plane {
> > > >  	enum plane_id id;
> > > >  	enum pipe pipe;
> > > >  	bool has_fbc;
> > > > -	bool has_ccs;
> > > >  	bool need_async_flip_disable_wa;
> > > >  	u32 frontbuffer_bit;
> > > >  
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> > > > index fa1f375e696bf..aefae988b620b 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > > > @@ -13,6 +13,184 @@
> > > >  
> > > >  #define check_array_bounds(i915, a, i) drm_WARN_ON(&(i915)->drm, (i) >= ARRAY_SIZE(a))
> > > >  
> > > > +const struct intel_modifier_desc {
> > > > +	u64 id;
> > > > +	u64 display_versions;
> > > > +
> > > > +	struct {
> > > > +#define INTEL_CCS_RC		BIT(0)
> > > > +#define INTEL_CCS_RC_CC		BIT(1)
> > > > +#define INTEL_CCS_MC		BIT(2)
> > > > +
> > > > +#define INTEL_CCS_ANY		(INTEL_CCS_RC | INTEL_CCS_RC_CC | INTEL_CCS_MC)
> > > > +		u8 type:3;
> > > > +	} ccs;
> > > > +} intel_modifiers[] = {
> > > > +	{
> > > > +		.id = DRM_FORMAT_MOD_LINEAR,
> > > > +		.display_versions = DISPLAY_VER_MASK_ALL,
> > > > +	},
> > > > +	{
> > > > +		.id = I915_FORMAT_MOD_X_TILED,
> > > > +		.display_versions = DISPLAY_VER_MASK_ALL,
> > > > +	},
> > > > +	{
> > > > +		.id = I915_FORMAT_MOD_Y_TILED,
> > > > +		.display_versions = DISPLAY_VER_MASK(9, 13),
> > > > +	},
> > > > +	{
> > > > +		.id = I915_FORMAT_MOD_Yf_TILED,
> > > > +		.display_versions = DISPLAY_VER_MASK(9, 11),
> > > > +	},
> > > > +	{
> > > > +		.id = I915_FORMAT_MOD_Y_TILED_CCS,
> > > > +		.display_versions = DISPLAY_VER_MASK(9, 11),
> > > > +
> > > > +		.ccs.type = INTEL_CCS_RC,
> > > > +	},
> > > > +	{
> > > > +		.id = I915_FORMAT_MOD_Yf_TILED_CCS,
> > > > +		.display_versions = DISPLAY_VER_MASK(9, 11),
> > > > +
> > > > +		.ccs.type = INTEL_CCS_RC,
> > > > +	},
> > > > +	{
> > > > +		.id = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> > > > +		.display_versions = DISPLAY_VER_MASK(12, 13),
> > > > +
> > > > +		.ccs.type = INTEL_CCS_RC,
> > > > +	},
> > > > +	{
> > > > +		.id = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
> > > > +		.display_versions = DISPLAY_VER_MASK(12, 13),
> > > > +
> > > > +		.ccs.type = INTEL_CCS_RC_CC,
> > > > +	},
> > > > +	{
> > > > +		.id = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
> > > > +		.display_versions = DISPLAY_VER_MASK(12, 13),
> > > > +
> > > > +		.ccs.type = INTEL_CCS_MC,
> > > > +	},
> > > > +};
> > > > +
> > > > +static bool is_ccs_type_modifier(const struct intel_modifier_desc *md, u8 ccs_type)
> > > > +{
> > > > +	return md->ccs.type & ccs_type;
> > > > +}
> > > > +
> > > > +static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> > > > +				 enum pipe pipe, enum plane_id plane_id)
> > > > +{
> > > > +	if (plane_id == PLANE_CURSOR)
> > > > +		return false;
> > > > +
> > > > +	/* Wa_22011186057 */
> > > > +	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> > > > +		return false;
> > > > +
> > > > +	if (DISPLAY_VER(i915) >= 11)
> > > > +		return true;
> > > > +
> > > > +	if (IS_GEMINILAKE(i915))
> > > > +		return pipe != PIPE_C;
> > > > +
> > > > +	return pipe != PIPE_C &&
> > > > +		(plane_id == PLANE_PRIMARY ||
> > > > +		 plane_id == PLANE_SPRITE0);
> > > > +}
> > > 
> > > This part I don't really like. IMO the plane capabilities should
> > > be listed in the plane code, not anywhere else.
> > 
> > Ok. How about adding back plane->has_rc_ccs and also adding
> > plane->has_mc_ccs and initing these before calling 
> > intel_fb_plane_get_modifiers() (as before)?
> 
> Yeah, maybe something like that. Ie. basically reduce the full list
> of modifiers to a set of higher level classes, which each plane could
> declare in a more compact form. I guess we could have some kind of small
> plane_caps structure for it this even?

So also including the cursor case below something like a plane_caps enum
with bitfields for PLANE_HAS_CCS_RC (applying to both RC and RC_CC since
no point to differentiate even on SKL for this), PLANE_HAS_CCS_MC and
PLANE_HAS_TILING? This enum could be just passed then to
intel_fb_plane_get_modifiers() instead of pipe and plane_id.

> We would lose the direct info in the plane code for eg. "is Yf
> supported?",

If becomes an issue could this be a new cap?

> but since that's a platform wide thing I don't think
> it's a problem. Just the info about the individual planes and their
> special little exceptions I'd really would want in the plane code.
> 
> > What about the 
> > plane_id == PLANE_CURSOR && md->id != DRM_FORMAT_MOD_LINEAR
> > check in plane_has_modifier()?
> 
> Maybe we reduce that to .has_tiling or something?

So the above PLANE_HAS_TILING and to keep initialization simple an
.linear field in intel_modifier_desc?

> 
> -- 
> Ville Syrjälä
> Intel
