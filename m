Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DA4A28DC6
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 15:05:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0783810E7CE;
	Wed,  5 Feb 2025 14:05:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mXNX+p+K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFB1D10E7D4;
 Wed,  5 Feb 2025 14:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738764316; x=1770300316;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=o6pFVuB+2dCZkdL2kOoTeqIu7cozfMXCIhxkSV8FNnU=;
 b=mXNX+p+KMUQYO6Y0LyiwfJKiwWbQIZX/VURbm3vxyZ68dgutUdgPielA
 hfs300TQIgHlVz1I3WLs2JkseTkQhCouqiruWJdy4qjN226DEqe7o/Fe8
 U93FGOZ/zVLbAeOjWDbZu5U+zvTHiYX4Ccdxxm4kYUPhEYAcSjE1s8qVk
 G104BBDmLV1tYpaZl+sZmWIMfIhGBzkLhxjv1YD50J9XPfE7ILloQt4bd
 PYx6OFPfvztqYcQCszt+um3qSOHk+/CEFwm68LJvaqEZfryZjsVoylovs
 m84n2yyt8f69t99YsRZB0Mc3us7Z65RwkQ8Ob6t+DgMbKsQJxODzG/EfO w==;
X-CSE-ConnectionGUID: JAU15crhQlioBsGbG29xKw==
X-CSE-MsgGUID: Q/ZnPAY7SwCUF/EBaK19qQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39355880"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="39355880"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 06:05:16 -0800
X-CSE-ConnectionGUID: 6wzNLFihRzyL5s8RqLtUWw==
X-CSE-MsgGUID: MtiZQhIwRCSMqHpyeNB/tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="111088012"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Feb 2025 06:05:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Feb 2025 16:05:11 +0200
Date: Wed, 5 Feb 2025 16:05:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Reddy Guddati, Santhosh" <santhosh.reddy.guddati@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v6 4/7] drm/i915/xe3: update and store the plane damage
 clips
Message-ID: <Z6NwFwTGxTNf9dGs@intel.com>
References: <20250130210027.591927-1-vinod.govindapillai@intel.com>
 <20250130210027.591927-5-vinod.govindapillai@intel.com>
 <Z6Nc6lhdFbiF-og3@intel.com>
 <23ec83a000bf38ae7bd9ab85a5fa01ecaadcc24b.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <23ec83a000bf38ae7bd9ab85a5fa01ecaadcc24b.camel@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Feb 05, 2025 at 01:29:30PM +0000, Govindapillai, Vinod wrote:
> Thanks Ville for the review..
> 
> Some responses and clarifications inline..
> 
> On Wed, 2025-02-05 at 14:43 +0200, Ville Syrjälä wrote:
> > On Thu, Jan 30, 2025 at 11:00:23PM +0200, Vinod Govindapillai wrote:
> > > Userspace can pass damage area clips per plane to track
> > > changes in a plane and some display components can utilze
> > > these damage clips for efficiently handling use cases like
> > > FBC, PSR etc. A merged damage area is generated and its
> > > coordinates are updated relative to viewport and HW and
> > > stored in the plane_state. This merged damage areas will be
> > > used for FBC dirty rect support in xe3 in the follow-up
> > > patch.
> > > 
> > > Big thanks to Ville Syrjala for his contribuitions in shaping
> > > up of this series.
> > > 
> > > v1: - Move damage_merged helper to cover bigjoiner case and use
> > >     the correct plane state for damage find helper (Ville)
> > >     - Damage handling code under HAS_FBC_DIRTY_RECT() so the
> > >     the related part will be executed only for xe3+
> > >     - Changed dev_priv to i915 in one of the functions
> > > 
> > > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > ---
> > >  .../gpu/drm/i915/display/intel_atomic_plane.c | 28 ++++++++++++
> > >  .../drm/i915/display/intel_display_types.h    |  2 +
> > >  .../drm/i915/display/skl_universal_plane.c    | 45 +++++++++++++++++--
> > >  3 files changed, 71 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index c558143f4f82..f55f7044dc67 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -36,6 +36,7 @@
> > >  
> > >  #include <drm/drm_atomic_helper.h>
> > >  #include <drm/drm_blend.h>
> > > +#include <drm/drm_damage_helper.h>
> > >  #include <drm/drm_fourcc.h>
> > >  #include <drm/drm_gem.h>
> > >  #include <drm/drm_gem_atomic_helper.h>
> > > @@ -322,6 +323,25 @@ static void intel_plane_clear_hw_state(struct intel_plane_state
> > > *plane_state)
> > >  	memset(&plane_state->hw, 0, sizeof(plane_state->hw));
> > >  }
> > >  
> > > +static void
> > > +intel_plane_check_plane_damage(struct intel_plane_state *new_plane_state,
> > > +			       const struct intel_plane_state *old_primary_plane_state,
> > > +			       const struct intel_plane_state *new_primary_plane_state)
> > 
> > "primary_plane_state" is a confusing name because "primary plane"
> > generally means something totally different than what's used here.
> > probably we should just call these "uapi_plane_state" or something.
> 
> Okay! At this function call it is still intel_plane_state, could it be old_primary_crtc_plane_sate
> and new_primary_crtc_plane_state? Or do you meant to change these parameters to old_uapi_plane_state
> and new_uapi_plane_state?

We should probably change all of them. But that should be a separate
patch.

> 
> > 
> > > +{
> > > +	struct intel_display *display = to_intel_display(new_plane_state);
> > > +	struct drm_rect *damage_merged = &new_plane_state->damage_merged;
> > > +
> > > +	if (!HAS_FBC_DIRTY_RECT(display))
> > > +		return;
> > > +
> > > +	if (!drm_atomic_helper_damage_merged(&old_primary_plane_state->uapi,
> > > +					     &new_primary_plane_state->uapi,
> > > +					     damage_merged))
> > > +		/* Incase helper fails, mark whole plane region as damage */
> > > +		*damage_merged =
> > > +			drm_plane_state_src(&new_primary_plane_state->uapi);
> > > +}
> > > +
> > >  void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
> > >  				       const struct intel_plane_state *from_plane_state,
> > >  				       struct intel_crtc *crtc)
> > > @@ -691,6 +711,7 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
> > >  	const struct intel_plane_state *old_plane_state =
> > >  		intel_atomic_get_old_plane_state(state, plane);
> > >  	const struct intel_plane_state *new_primary_crtc_plane_state;
> > > +	const struct intel_plane_state *old_primary_crtc_plane_state;
> > >  	struct intel_crtc *crtc = intel_crtc_for_pipe(display, plane->pipe);
> > >  	const struct intel_crtc_state *old_crtc_state =
> > >  		intel_atomic_get_old_crtc_state(state, crtc);
> > > @@ -705,10 +726,17 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
> > >  
> > >  		new_primary_crtc_plane_state =
> > >  			intel_atomic_get_new_plane_state(state, primary_crtc_plane);
> > > +		old_primary_crtc_plane_state =
> > > +			intel_atomic_get_old_plane_state(state, primary_crtc_plane);
> > >  	} else {
> > >  		new_primary_crtc_plane_state = new_plane_state;
> > > +		old_primary_crtc_plane_state = old_plane_state;
> > >  	}
> > >  
> > > +	intel_plane_check_plane_damage(new_plane_state,
> > > +				       old_primary_crtc_plane_state,
> > > +				       new_primary_crtc_plane_state);
> > > +
> > >  	intel_plane_copy_uapi_to_hw_state(new_plane_state,
> > >  					  new_primary_crtc_plane_state,
> > >  					  crtc);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index cb51b7936f93..8d53bcca9614 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -695,6 +695,8 @@ struct intel_plane_state {
> > >  	u64 ccval;
> > >  
> > >  	const char *no_fbc_reason;
> > > +
> > > +	struct drm_rect damage_merged;
> > 
> > Since this is only used for the fbc stuff I would just
> > call it 'fbc_dirty'. Though I suppose if we were to also
> > use this for the PSR stuff then "damage" might be a decent
> > name. The _merged part is pointless imo.
> 
> Yes. I was thinking if PSR can also use it at some point. But I can change it to fbc_dirty

Hmm. Maybe leave it as "damage". And since it's ephemeral it should
be cleared out in intel_plane_duplicate_state(). And then the "we need
at least one scanline for FBC" thing does need to be handle somewhere
later.

> 
> > 
> > >  };
> > >  
> > >  struct intel_initial_plane_config {
> > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > index 301ad3a22c4c..b90a7d52c071 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > @@ -2249,11 +2249,42 @@ static void check_protection(struct intel_plane_state *plane_state)
> > >  		!plane_state->decrypt;
> > >  }
> > >  
> > > +static void
> > > +skl_plane_check_damage_with_viewport(struct intel_plane_state *plane_state)
> > > +{
> > > +	struct drm_rect *damage_merged = &plane_state->damage_merged;
> > > +	const struct drm_framebuffer *fb = plane_state->hw.fb;
> > > +	unsigned int rotation = plane_state->hw.rotation;
> > > +	struct drm_rect *src = &plane_state->uapi.src;
> > 
> > const
> 
> Ack.
> 
> > 
> > > +
> > > +	if (drm_rotation_90_or_270(rotation)) {
> > > +		drm_rect_rotate(damage_merged, fb->width, fb->height,
> > 
> > fb might be NULL here. 
> > 
> > I guess we might as well do something like:
> > if (!visible) -> make the dirty rect empty
> 
> Actually, the drm_atomic_helper_damage_merged() returns false in case the plane not visible. Then
> intel_plane_check_plane_damage() makes the damage area as a full plane region!
> 
> So will check if (plane_state->uapi.visible) before calling the functions to make rect relative to
> viewport and plane SURF.
> 
> So the fbc_dirty will point to whole plane in such cases. And in the FBC dirty rect handling part
> plane->visible condition is checked.
> 
> What do you think about this?

If the plane is invisible there should be no damage.

> 
> > 
> > > +				DRM_MODE_ROTATE_270);
> > > +		drm_rect_translate(damage_merged, -(src->y1 >> 16),
> > > +				   -(src->x1 >> 16));
> > > +	} else {
> > > +		drm_rect_translate(damage_merged, -(src->x1 >> 16),
> > > +				   -(src->y1 >> 16));
> > > +	}
> > > +}
> > > +
> > > +static void
> > > +skl_plane_check_damage_with_plane_surf(struct intel_plane_state *plane_state)
> > 
> > the "with" stuff in the name is a bit confusing. What we are doing 
> > is make the rectangle relative to plane SURF. Same story with the
> > other function.
> 
> Sure. How about
> skl_plane_check_fbc_dirty_relativeto_viewport()
> skl_plane_check_fbc_dirty_relativeto_plane_surf()

Still rather confusing to me. If we do leave it as just "damage" maybe
we should in fact keep it viewport relative always, then the latter
function could be called just clip_damage()/etc. The first one I
guess should be called something like make_damage_viewport_relative().

I suppose what we should really do is have
intel_atomic_plane_check_clipping() do all of it already. But that
does mean we might have to move the src coordinate tweaking
from intel_plane_check_src_coordinates() into there already.
But I haven't really though through the full implications what it
means for sub-pixel coordinates and such (not that we handle those
properly anyway atm).

> 
> > 
> > > +{
> > > +	struct drm_rect *damage_merged = &plane_state->damage_merged;
> > > +	struct drm_rect src;
> > > +
> > > +	drm_rect_fp_to_int(&src, &plane_state->uapi.src);
> > > +	drm_rect_translate(damage_merged, src.x1, src.y1);
> > > +	drm_rect_intersect(damage_merged, &src);
> > 
> > Missing the "make it at last one scanline" here. Though if we do
> > decide to use this also for PSR then I guess we'd need to handle
> > that elsewhere. For now it could just be here.
> 
> I am doing that as part of the FBC dirty prepare.
> Isnt it really a FBC dirty rect validation restriction than here?
> 
> BR
> Vinod
> 
> > 
> > > +}
> > > +
> > >  static int skl_plane_check(struct intel_crtc_state *crtc_state,
> > >  			   struct intel_plane_state *plane_state)
> > >  {
> > > +	struct intel_display *display = to_intel_display(crtc_state);
> > >  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> > > -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> > > +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> > >  	const struct drm_framebuffer *fb = plane_state->hw.fb;
> > >  	int min_scale = DRM_PLANE_NO_SCALING;
> > >  	int max_scale = DRM_PLANE_NO_SCALING;
> > > @@ -2266,7 +2297,7 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
> > >  	/* use scaler when colorkey is not required */
> > >  	if (!plane_state->ckey.flags && skl_fb_scalable(fb)) {
> > >  		min_scale = 1;
> > > -		max_scale = skl_plane_max_scale(dev_priv, fb);
> > > +		max_scale = skl_plane_max_scale(i915, fb);
> > >  	}
> > >  
> > >  	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state,
> > > @@ -2274,6 +2305,9 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
> > >  	if (ret)
> > >  		return ret;
> > >  
> > > +	if (HAS_FBC_DIRTY_RECT(display))
> > > +		skl_plane_check_damage_with_viewport(plane_state);
> > > +
> > >  	ret = skl_check_plane_surface(plane_state);
> > >  	if (ret)
> > >  		return ret;
> > > @@ -2289,6 +2323,9 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
> > >  	if (ret)
> > >  		return ret;
> > >  
> > > +	if (HAS_FBC_DIRTY_RECT(display))
> > > +		skl_plane_check_damage_with_plane_surf(plane_state);
> > > +
> > >  	ret = skl_plane_check_nv12_rotation(plane_state);
> > >  	if (ret)
> > >  		return ret;
> > > @@ -2301,12 +2338,12 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
> > >  
> > >  	plane_state->ctl = skl_plane_ctl(crtc_state, plane_state);
> > >  
> > > -	if (DISPLAY_VER(dev_priv) >= 10)
> > > +	if (DISPLAY_VER(display) >= 10)
> > >  		plane_state->color_ctl = glk_plane_color_ctl(crtc_state,
> > >  							     plane_state);
> > >  
> > >  	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
> > > -	    icl_is_hdr_plane(dev_priv, plane->id))
> > > +	    icl_is_hdr_plane(i915, plane->id))
> > >  		/* Enable and use MPEG-2 chroma siting */
> > >  		plane_state->cus_ctl = PLANE_CUS_ENABLE |
> > >  			PLANE_CUS_HPHASE_0 |
> > > -- 
> > > 2.43.0
> > 
> 

-- 
Ville Syrjälä
Intel
