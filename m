Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8637063586B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 10:57:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A977A10E1ED;
	Wed, 23 Nov 2022 09:57:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBD1110E1ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 09:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669197467; x=1700733467;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vQtgxdMimFxD5ud/xZ9Kup3ring4GMAmefS5DxuJVrw=;
 b=nbX4p5Vq5g49C+ZWVCmSlm6rKP1dAZSVntgTPjidH9UpkawcIwzcjihx
 0A1ijcQXcBqbNxwLkZ878btJbctm4KFQTMBgjo6MWdwk280EUsUIkQd9y
 9yKM3K8gTI1J0yU4ubAokuYhpzzxXI0Ye5agPZcHi8AVNktocqmzAWt5M
 JSLFVTY2SwjYjM2xt0U9oa7udJStajxxqgK/mAgQEQV6R0TmDGf0qd3e2
 av5O2ZEDncNGNhp4hp5xpbyeKTn20GOGPItyGWlXzqi57MOphosgZLZy+
 FTWWRrvuiJSmGHoH0n3Ky0GeVWw4uEdG33DFN3wkZun5Crkt1pFnnOHQR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="294418615"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="294418615"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 01:57:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="644059689"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="644059689"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 23 Nov 2022 01:57:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 11:57:44 +0200
Date: Wed, 23 Nov 2022 11:57:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>
Message-ID: <Y33umBIPFL8fSqUm@intel.com>
References: <20221122102344.30244-1-luciano.coelho@intel.com>
 <Y33CGl3lfE/JxtVf@intel.com>
 <03db57b25685301886bc5a15fc6e6f70edf15272.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <03db57b25685301886bc5a15fc6e6f70edf15272.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/mtl: limit second scaler
 vertical scaling in ver >= 14
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 23, 2022 at 09:16:42AM +0000, Coelho, Luciano wrote:
> On Wed, 2022-11-23 at 08:47 +0200, Ville Syrjälä wrote:
> > On Tue, Nov 22, 2022 at 12:23:43PM +0200, Luca Coelho wrote:
> > > In newer hardware versions (i.e. display version >= 14), the second
> > > scaler doesn't support vertical scaling.
> > > 
> > > The current implementation of the scaling limits is simplified and
> > > only occurs when the planes are created, so we don't know which scaler
> > > is being used.
> > > 
> > > In order to handle separate scaling limits for horizontal and vertical
> > > scaling, and different limits per scaler, split the checks in two
> > > phases.  We first do a simple check during plane creation and use the
> > > best-case scenario (because we don't know the scaler that may be used
> > > at a later point) and then do a more specific check when the scalers
> > > are actually being set up.
> > > 
> > > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > > ---
> 
> 
> [...]
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > index 6621aa245caf..43b1c7a227f8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > @@ -38,6 +38,7 @@
> > >  #include "intel_atomic.h"
> > >  #include "intel_cdclk.h"
> > >  #include "intel_display_types.h"
> > > +#include "intel_fb.h"
> > >  #include "intel_global_state.h"
> > >  #include "intel_hdcp.h"
> > >  #include "intel_psr.h"
> > > @@ -375,6 +376,52 @@ static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_sta
> > >  		mode = SKL_PS_SCALER_MODE_DYN;
> > >  	}
> > >  
> > > +	if (plane_state && plane_state->hw.fb) {
> > > +		const struct drm_framebuffer *fb = plane_state->hw.fb;
> > > +		struct drm_rect *src = &plane_state->uapi.src;
> > > +		struct drm_rect *dst = &plane_state->uapi.dst;
> > 
> > We want the scale factor checks for the pfit use case too. So this
> > stuff shouldn't be so tied into planes. I guess we could go with
> > a FIXME initially.
> 
> Okay, I'll add a FIXME.  It was tied to the plane checks before,
> though, wasn't it? So nothing should have changed in that regard here.
> 
> 
> > > +		int hscale, vscale, max_vscale, max_hscale;
> > > +
> > > +		if (DISPLAY_VER(dev_priv) >= 14) {
> > > +			/*
> > > +			 * On versions 14 and up, only the first
> > > +			 * scaler supports a vertical scaling factor
> > > +			 * of more than 1.0, while a horizontal
> > > +			 * scaling factor of 3.0 is supported.
> > > +			 */
> > > +			max_hscale = 0x30000 - 1;
> > > +			if (*scaler_id == 0)
> > > +				max_vscale = 0x30000 - 1;
> > > +			else
> > > +				max_vscale = 0x10000;
> > 
> > We still have the chicken vs. egg problem here that we'd need to
> > consider the scale factors already when selecting the scaler.
> > But that could be another FIXME.
> 
> Do you mean in regards to the HQ vs. non-HQ needs?

I mean the "no downscaling on the second scaler" thing. The
problem is that this thing walks the scaler users in order
and assigns each one a scaler in turn. So if the first user
doesn't need downscaling but the second one does then we
will fail. OTOH had we just assigned the scalers in the
reverse order we would have succeeded.

> 
> 
> > > +
> > > +		} else if (DISPLAY_VER(dev_priv) >= 10 ||
> > > +			   !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
> > > +			max_hscale = 0x30000 - 1;
> > > +			max_vscale = 0x30000 - 1;
> > > +		} else {
> > > +			max_hscale = 0x20000 - 1;
> > > +			max_vscale = 0x20000 - 1;
> > > +		}
> > 
> > Pre-glk hq scaler case not handled.
> 
> I don't recall seen this specifically checked before.  Is this the
> stuff I missed from g4x_sprite_check() below? Or am I missing something
> else?

It was broken before in the sense that it allowed up to 3.0 scale factor
whether or not the HQ scaler was used or not. Now it will reject anything
above 2.0 even if the HQ scaler is used. So I guess technically it's a bit
less broken now, but more limited. Anyways, should be possible to just
check the scaler mode and pick the correct scaling limits based on it.

> 
> 
> > > +
> > > +		/* Check if required scaling is within limits */
> > > +		hscale = drm_rect_calc_hscale(src, dst, 1, max_hscale);
> > > +		vscale = drm_rect_calc_vscale(src, dst, 1, max_vscale);
> > > +
> > > +		if (hscale < 0 || vscale < 0) {
> > > +			drm_dbg_kms(&dev_priv->drm,
> > > +				    "Scaler %d doesn't support required plane scaling\n",
> > > +				    *scaler_id);
> > > +			drm_rect_debug_print("src: ", src, true);
> > > +			drm_rect_debug_print("dst: ", dst, false);
> > > +
> > > +			scaler_state->scalers[*scaler_id].in_use = 0;
> > > +			*scaler_id = -1;
> > > +
> > > +			return;
> > 
> > This would have to return an error rather than pretending that
> > everything is fine.
> 
> We were already pretending everything is fine if a scaler if we
> couldn't find a free scaler, for instance, so I just kept the same
> logic, clearing up the scaler_id and marking the scaler as not in use
> as well.
> 
> I can convert this to return an error, of course.  But then in the "not
> free scaler" case we would still just ignore it or should we change the
> behavior and make it fail as well?

The code is a mess, but it does look like intel_atomic_setup_scalers()
should fail correctly if we can't find enough scalers.

> 
> 
> [...]
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index 10e1fc9d0698..9100f328df60 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -887,7 +887,7 @@ void intel_crtc_planes_update_arm(struct intel_atomic_state *state,
> > >  
> > >  int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
> > >  				      struct intel_crtc_state *crtc_state,
> > > -				      int min_scale, int max_scale,
> > > +				      bool allow_scaling,
> > >  				      bool can_position)
> > >  {
> > >  	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> > > @@ -897,19 +897,50 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
> > >  	const struct drm_rect *clip = &crtc_state->pipe_src;
> > >  	unsigned int rotation = plane_state->hw.rotation;
> > >  	int hscale, vscale;
> > > +	int max_hscale, min_hscale, max_vscale, min_vscale;
> > >  
> > >  	if (!fb) {
> > >  		plane_state->uapi.visible = false;
> > >  		return 0;
> > >  	}
> > >  
> > > +	/*
> > > +	 * At this point we don't really know the HW limitations, so
> > > +	 * we just sanitize the values against the maximum supported
> > > +	 * scaling.
> > > +	 */
> > > +	if (allow_scaling) {
> > > +		min_vscale = 1;
> > > +		min_hscale = 1;
> > > +
> > > +		if (DISPLAY_VER(i915) < 10 ||
> > > +		    intel_format_info_is_yuv_semiplanar(fb->format,
> > > +							fb->modifier)) {
> > > +			max_vscale = 0x20000 - 1;
> > > +			max_hscale = 0x20000 - 1;
> > > +		} else {
> > > +			max_vscale = 0x30000 - 1;
> > > +			max_hscale = 0x30000 - 1;
> > > +		}
> > > +	} else {
> > > +		min_hscale = DRM_PLANE_NO_SCALING;
> > > +		max_hscale = DRM_PLANE_NO_SCALING;
> > > +		min_vscale = DRM_PLANE_NO_SCALING;
> > > +		max_vscale = DRM_PLANE_NO_SCALING;
> > > +	}
> > 
> > I still don't see the point in moving this hw specific knowledge
> > from the more hw specific files into the hw agnostic file.
> 
> Is this file really that HW agnostic? I see lots of version checks with
> "if (DISPLAY_VER(x))" all over the place.

It's hw agnostic in the sense that most of it applies
to all hw generations. And this function in particular is
pretty much entirely hw agnostic currently.

> 
> As we discussed before, I think this kind of rules should be in HW-
> specific configurations, but we don't have that yet.  And I thought it
> would be better to keep these decisions in a single place rather than
> just calling functions in other files...
> 
> If you prefer, I can move this back to skl_universal_plane.c or some
> other of the skl_*.c files, but TBH they don't seem to be the right
> place for this to me either...

The current place knows exactly what kind of hardware/plane its
dealing with, and thus knows its limits. Seems perfectly fine to me.

> 
> 
> [...]
> > > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > index e6b4d24b9cd0..9ad1173a0551 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > @@ -1355,22 +1355,11 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
> > >  {
> > >  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> > >  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> > > -	int min_scale = DRM_PLANE_NO_SCALING;
> > > -	int max_scale = DRM_PLANE_NO_SCALING;
> > >  	int ret;
> > >  
> > > -	if (g4x_fb_scalable(plane_state->hw.fb)) {
> > > -		if (DISPLAY_VER(dev_priv) < 7) {
> > > -			min_scale = 1;
> > > -			max_scale = 16 << 16;
> > > -		} else if (IS_IVYBRIDGE(dev_priv)) {
> > > -			min_scale = 1;
> > > -			max_scale = 2 << 16;
> > > -		}
> > > -	}
> > 
> > So what happened to these limits?
> 
> Oh, it seems that I lost them.  I guess they should be moved to the
> intel_atomic_plane_check_clipping() function.  Again, to keep it all in
> a single place.  But this seems to be only required in the sprite code,
> so I'm not sure what I can do.
> 
> It's a problem to have this kinds of checks everywhere. 😞
> 
> 
> [...]
> > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > index 76490cc59d8f..e2ae6624378f 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > @@ -1463,22 +1463,6 @@ static int skl_plane_check_nv12_rotation(const struct intel_plane_state *plane_s
> > >  	return 0;
> > >  }
> > >  
> > > -static int skl_plane_max_scale(struct drm_i915_private *dev_priv,
> > > -			       const struct drm_framebuffer *fb)
> > > -{
> > > -	/*
> > > -	 * We don't yet know the final source width nor
> > > -	 * whether we can use the HQ scaler mode. Assume
> > > -	 * the best case.
> > > -	 * FIXME need to properly check this later.
> > > -	 */
> > 
> > Doesn't look like that FIXME has been dealt with as far
> > as the hq scaler is concerned.
> 
> We now check the limits _after_ having decided whether HQ mode is used.
> So that should be covered, right?

If we actaully add the hq mode check when determining the scaling
limits.

> 
> 
> > 
> Thanks for your review!
> 
> --
> Cheers,
> Luca.

-- 
Ville Syrjälä
Intel
