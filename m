Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3504D42DB20
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 16:07:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A1AE6EB18;
	Thu, 14 Oct 2021 14:07:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 073056EB18
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 14:07:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="313881649"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="313881649"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 07:07:21 -0700
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="492012433"
Received: from rwambsga-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.251.210.16])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 07:07:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20211007203517.3364336-2-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211007203517.3364336-1-imre.deak@intel.com>
 <20211007203517.3364336-2-imre.deak@intel.com>
Date: Thu, 14 Oct 2021 17:07:16 +0300
Message-ID: <874k9jwvhn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 07 Oct 2021, Imre Deak <imre.deak@intel.com> wrote:
> Add a table describing all the framebuffer modifiers used by i915 at one
> place. This has the benefit of deduplicating the listing of supported
> modifiers for each platform and checking the support of these modifiers
> on a given plane. This also simplifies in a similar way getting some
> attribute for a modifier, for instance checking if the modifier is a
> CCS modifier type.

Just some high level comments inline.

>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c   |  19 +-
>  .../drm/i915/display/intel_display_types.h    |   1 -
>  drivers/gpu/drm/i915/display/intel_fb.c       | 178 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fb.h       |   8 +
>  drivers/gpu/drm/i915/display/intel_sprite.c   |  35 +---
>  drivers/gpu/drm/i915/display/skl_scaler.c     |   1 +
>  .../drm/i915/display/skl_universal_plane.c    | 137 +-------------
>  drivers/gpu/drm/i915/i915_drv.h               |   3 +
>  8 files changed, 218 insertions(+), 164 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index f6dcb5aa63f64..bcd44ff30ce5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -28,11 +28,6 @@ static const u32 intel_cursor_formats[] = {
>  	DRM_FORMAT_ARGB8888,
>  };
>  
> -static const u64 cursor_format_modifiers[] = {
> -	DRM_FORMAT_MOD_LINEAR,
> -	DRM_FORMAT_MOD_INVALID
> -};
> -
>  static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
>  {
>  	struct drm_i915_private *dev_priv =
> @@ -605,8 +600,10 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
>  static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
>  					      u32 format, u64 modifier)
>  {
> -	return modifier == DRM_FORMAT_MOD_LINEAR &&
> -		format == DRM_FORMAT_ARGB8888;
> +	if (!intel_fb_plane_supports_modifier(to_intel_plane(_plane), modifier))
> +		return false;
> +
> +	return format == DRM_FORMAT_ARGB8888;
>  }
>  
>  static int
> @@ -754,6 +751,7 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
>  {
>  	struct intel_plane *cursor;
>  	int ret, zpos;
> +	u64 *modifiers;
>  
>  	cursor = intel_plane_alloc();
>  	if (IS_ERR(cursor))
> @@ -784,13 +782,18 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
>  	if (IS_I845G(dev_priv) || IS_I865G(dev_priv) || HAS_CUR_FBC(dev_priv))
>  		cursor->cursor.size = ~0;
>  
> +	modifiers = intel_fb_plane_get_modifiers(dev_priv, pipe, cursor->id);
> +
>  	ret = drm_universal_plane_init(&dev_priv->drm, &cursor->base,
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
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 21ce8bccc645a..bb53b01f07aee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1336,7 +1336,6 @@ struct intel_plane {
>  	enum plane_id id;
>  	enum pipe pipe;
>  	bool has_fbc;
> -	bool has_ccs;
>  	bool need_async_flip_disable_wa;
>  	u32 frontbuffer_bit;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index fa1f375e696bf..aefae988b620b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -13,6 +13,184 @@
>  
>  #define check_array_bounds(i915, a, i) drm_WARN_ON(&(i915)->drm, (i) >= ARRAY_SIZE(a))
>  
> +const struct intel_modifier_desc {

static?

Maybe split the struct declaration and the array definition for
clarity. *shrug*

> +	u64 id;
> +	u64 display_versions;
> +
> +	struct {
> +#define INTEL_CCS_RC		BIT(0)
> +#define INTEL_CCS_RC_CC		BIT(1)
> +#define INTEL_CCS_MC		BIT(2)
> +
> +#define INTEL_CCS_ANY		(INTEL_CCS_RC | INTEL_CCS_RC_CC | INTEL_CCS_MC)
> +		u8 type:3;
> +	} ccs;
> +} intel_modifiers[] = {
> +	{
> +		.id = DRM_FORMAT_MOD_LINEAR,
> +		.display_versions = DISPLAY_VER_MASK_ALL,

What is this going to look like when display version mask isn't fine
grained enough to cover all the platforms? Do we have cases like that
already?

[snip]

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 12256218634f4..a92228c922a54 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1342,6 +1342,9 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>  #define DISPLAY_VER(i915)	(INTEL_INFO(i915)->display.ver)
>  #define IS_DISPLAY_VER(i915, from, until) \
>  	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
> +#define DISPLAY_VER_BIT(d)	BIT_ULL(d)
> +#define DISPLAY_VER_MASK(f, u)	GENMASK_ULL(u, f)
> +#define DISPLAY_VER_MASK_ALL	DISPLAY_VER_MASK(0, BITS_PER_LONG_LONG - 1)

Do we want to promote this usage all over the place? Maybe keep them
internal to intel_fb.c?

Or just add both from and until members in intel_modifier_desc, and use
the regular IS_DISPLAY_VER() in intel_fb.c as well. It's not worse
considering the mask you have is u64. You could have two u8's
instead. You could consider 0 for either to mean "no limit", and skip
the initialization instead of duplicating .display_versions =
DISPLAY_VER_MASK_ALL.

I think I'd prefer that. Or do you see masks with gaps in them?

BR,
Jani.


>  
>  #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)

-- 
Jani Nikula, Intel Open Source Graphics Center
