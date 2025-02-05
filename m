Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFB4A29524
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 16:45:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 614BA10E0FE;
	Wed,  5 Feb 2025 15:45:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CTEB3w+m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E48E510E0FE;
 Wed,  5 Feb 2025 15:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738770338; x=1770306338;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kama7OlRqUJt6NzJ6O5Es2psaCtCYGal1DJAmoorOBA=;
 b=CTEB3w+m7K+8jzuCbBj/SDzbfRky75R0RIXoANLaAGHgDWgjIiFQ7dIa
 08zwNdP+V190bMseqX+65NusPYci8R+TvlezB/ksWrw7TAb32FAlfUFtj
 soNgH5tQvj45iTRverlUfTFTwHfdmlRqLSiiT9cF26ct6GQE6fJoKQhb3
 VVskWJ17OTJhvrkr2DlbmsmZzoeiXO+lssr6JlaVmNQ+rPhwAtAAqGf8U
 TSNyX4B5i6nXagyBMprR6p595h2bdXC5Qb4V66YWdN0CtaDihJUjeExLx
 OwkU+ErtYM9oVMc2XzXCoUWD72Y1tkRQ1G1LmQ5Ov1DVvV0rJbU1GEdCT w==;
X-CSE-ConnectionGUID: lnHI0ruSRDKXVbq8/xSQ9w==
X-CSE-MsgGUID: iB75AbhATxuhZ5aaCXmDsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="26945346"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="26945346"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 07:45:37 -0800
X-CSE-ConnectionGUID: +ubC9hMZQfWH457OEQBUVg==
X-CSE-MsgGUID: l1XF+YhMRg+MvfPsYaMyjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="111113018"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Feb 2025 07:45:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Feb 2025 17:45:33 +0200
Date: Wed, 5 Feb 2025 17:45:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Reddy Guddati, Santhosh" <santhosh.reddy.guddati@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v6 5/7] drm/i915/xe3: dirty rect support for FBC
Message-ID: <Z6OHnWBSIGodZenY@intel.com>
References: <20250130210027.591927-1-vinod.govindapillai@intel.com>
 <20250130210027.591927-6-vinod.govindapillai@intel.com>
 <Z6NoKssUSP3T7Ca3@intel.com>
 <844e0a6875c675b6eacbb51e9d657fbea1a87751.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <844e0a6875c675b6eacbb51e9d657fbea1a87751.camel@intel.com>
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

On Wed, Feb 05, 2025 at 02:49:46PM +0000, Govindapillai, Vinod wrote:
> So based on your comments on the previous patch and this one, let me conclude the changes to be done
> here!
> 
> 1. As part of the previous patch, we collect the fbc_dirty rect from the damage_helper call. Make
> damage empty if the plane not visible. 
> 
> 2. Update the FBC dirty rect registes. This do two things
> 	2.1 Prepare the collected FBC dirty and copy it to the correct fbc_state - 	  	
> intel_fbc_prepare_dirty_rect()
> 
> 	2.2 Write to the registers - intel_fbc_dirty_rect_update_noarm()
> 
> 2.1 AT the beginning of the atomic_commit_tail() within the DSB block handling, calls
> intel_fbc_prepare_dirty_rect() to populate fbc_state's fbc_dirty_rect structs
> 
> In the intel_fbc_prepare_dirty_rect(), 
> 	iterate through each plane in the atomic_state
>         check the correct plane, pipe etc. Then,
> 
> 	if (drm_rect_visible(damage_merged)
> 		update fbc_state's fbc dirty rect 
>         else
> 		Make at it atleast one scan line and update the fbc_state's fbc_dirty rect 
> 
> 2.2 Then call intel_fbc_dirty_rect_update_noarm() form intel_plane_update_noarm()
> 	And within in intel_fbc_dirty_rect_update_noarm() just update the FBC dirty registers with
> the values from corresponding fbc_state->fbc_dirty 
> 
> 
> I think last time when we discussed, we decided keep that valid flag to track
> intel_fbc_can_flip_nuke() case. So I guess that is not required anymore
> 
> Regarding the async flip cases, I thought nothing specific need to be done for the fbc dirty rect.
> Atleast the some the tests I tried were passing with dirty rect enabled.
> 
> I will add the locks in these new functions.
> 
> BR
> Vinod
> 
> 
> On Wed, 2025-02-05 at 15:31 +0200, Ville Syrjälä wrote:
> > On Thu, Jan 30, 2025 at 11:00:24PM +0200, Vinod Govindapillai wrote:
> > > Dirty rectangle feature allows FBC to recompress a subsection
> > > of a frame. When this feature is enabled, display will read
> > > the scan lines between dirty rectangle start line and dirty
> > > rectangle end line in subsequent frames.
> > > 
> > > Use the merged damage clip stored in the plane state to
> > > configure the FBC dirty rect areas.
> > > 
> > > v2: - Move dirty rect handling to fbc state (Ville)
> > > 
> > > v3: - Use intel_fbc_dirty_rect_update_noarm (Ville)
> > >     - Split plane damage collection and dirty rect preparation
> > >     - Handle case where dirty rect fall outside the visible region
> > > 
> > > v4: - A state variable to check if we need to update dirty rect
> > >     registers in case intel_fbc_can_flip_nuke() (Ville)
> > > 
> > > Bspec: 68881, 71675, 73424
> > > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c |   7 +
> > >  drivers/gpu/drm/i915/display/intel_fbc.c     | 132 +++++++++++++++++++
> > >  drivers/gpu/drm/i915/display/intel_fbc.h     |   6 +
> > >  3 files changed, 145 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 7d68d652c1bc..33277f892279 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -7263,6 +7263,8 @@ static void intel_update_crtc(struct intel_atomic_state *state,
> > >  
> > >  		commit_pipe_pre_planes(state, crtc);
> > >  
> > > +		intel_fbc_dirty_rect_update_noarm(NULL, state, crtc);
> > > +
> > 
> > That is not the right place for _noarm() stuff.
> > 
> > Hmm, maybe we should just do this as part of intel_plane_update_noarm()?
> > How does the dirty rect interact with async flips?
> 
> Ok.
> 
> I thought no need to handle anything specific to dirty_rect in case of async flips.
> Atleast the the tests that I tried were ok! 
>

The question is whether async flip:
- results in full nuke or does it use the dirty rect?
- if it uses the dirty rect does that mean the new
  dirty rect (*) takes effect alongside the the async flip
  or is it still using a previously latched dirty rect?

(*) ie. one that was written into the register just before
    the surface register write, without there being a start
    of vblank in between the two writes

Should be easy to confirm with something like:
1. set up a framebuffer with some color
2. scan out from said framebuffer
3. write the dirty rect register with some small area of the screen
4. write SURF to trigger a sync flip
5. wait for vblank
6. rewrite the fb with some other color
7. set the async flip bit on PLANE_CTL
8. read the frame counter
9. write the dirty rect register with some other small area
10. write SURF to trigger an async flip
11. re-read frame counter and confirm it is still the same value
    as in step 8.
12. observe visually which area of the screen changed

That should at least tell us whether the new dirty rect gets latched due
to an async flip or not, and whether we get a full nuke or not.

And if the new dirty rect does get latched I suppose we can then
rinse an repeat this  with a full screen dirty rectangle, and then
we should be able to tell whether the dirty rect gets latched alongside
SURF during the async flip (tearing should be visible), or if it gets
delayed until the next vblank (no tearing should be visible, assuming
the entire fb did get compressed, which should hopefully be the case
for a solid color fb).

 > 
> > >  		intel_crtc_planes_update_arm(NULL, state, crtc);
> > >  
> > >  		commit_pipe_post_planes(state, crtc);
> > > @@ -7723,6 +7725,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
> > >  						 new_crtc_state);
> > >  		intel_crtc_planes_update_noarm(new_crtc_state->dsb_commit,
> > >  					       state, crtc);
> > > +		intel_fbc_dirty_rect_update_noarm(new_crtc_state->dsb_commit,
> > > +						  state, crtc);
> > >  
> > >  		intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
> > >  
> > > @@ -7769,6 +7773,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
> > >  
> > >  	intel_atomic_prepare_plane_clear_colors(state);
> > >  
> > > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> > > +		intel_fbc_prepare_dirty_rect(state, crtc);
> > > +
> > >  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> > >  		intel_atomic_dsb_finish(state, crtc);
> > >  
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index df05904bac8a..24736c7a79a6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -88,6 +88,10 @@ struct intel_fbc_state {
> > >  	u16 override_cfb_stride;
> > >  	u16 interval;
> > >  	s8 fence_id;
> > > +	struct {
> > > +		struct drm_rect rect;
> > > +		bool valid;
> > > +	} fbc_dirty_rect;
> > >  };
> > >  
> > >  struct intel_fbc {
> > > @@ -527,6 +531,9 @@ static void ilk_fbc_deactivate(struct intel_fbc *fbc)
> > >  	struct intel_display *display = fbc->display;
> > >  	u32 dpfc_ctl;
> > >  
> > > +	if (HAS_FBC_DIRTY_RECT(display))
> > > +		intel_de_write(display, XE3_FBC_DIRTY_CTL(fbc->id), 0);
> > > +
> > >  	/* Disable compression */
> > >  	dpfc_ctl = intel_de_read(display, ILK_DPFC_CONTROL(fbc->id));
> > >  	if (dpfc_ctl & DPFC_CTL_EN) {
> > > @@ -670,6 +677,10 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
> > >  	if (DISPLAY_VER(display) >= 20)
> > >  		intel_de_write(display, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
> > >  
> > > +	if (HAS_FBC_DIRTY_RECT(display))
> > > +		intel_de_write(display, XE3_FBC_DIRTY_CTL(fbc->id),
> > > +			       FBC_DIRTY_RECT_EN);
> > > +
> > >  	intel_de_write(display, ILK_DPFC_CONTROL(fbc->id),
> > >  		       DPFC_CTL_EN | dpfc_ctl);
> > >  }
> > > @@ -1203,6 +1214,127 @@ static bool tiling_is_valid(const struct intel_plane_state *plane_state)
> > >  		return i8xx_fbc_tiling_valid(plane_state);
> > >  }
> > >  
> > > +static bool intel_fbc_can_flip_nuke(struct intel_atomic_state *state,
> > > +				    struct intel_crtc *crtc,
> > > +				    struct intel_plane *plane);
> > 
> > You should put the code into a place that doesn't need this extra
> > declaration.
> > 
> > > +
> > > +static void
> > > +intel_fbc_dirty_rect_update(struct intel_dsb *dsb, struct intel_plane *plane)
> > > +{
> > > +	struct intel_display *display = to_intel_display(plane);
> > > +	struct intel_fbc *fbc = plane->fbc;
> > > +	struct intel_fbc_state *fbc_state = &fbc->state;
> > > +	struct drm_rect *fbc_dirty_rect = &fbc_state->fbc_dirty_rect.rect;
> > > +
> > > +	if (fbc_state->plane != plane)
> > > +		return;
> > > +
> > > +	if (!fbc_state->fbc_dirty_rect.valid)
> > > +		return;
> > 
> > I think that extra flag can be thrown out and you can just
> > check if the rect is visible here.
> > > +
> > > +	intel_de_write_dsb(display, dsb, XE3_FBC_DIRTY_RECT(fbc->id),
> > > +			   FBC_DIRTY_RECT_START_LINE(fbc_dirty_rect->y1) |
> > > +			   FBC_DIRTY_RECT_END_LINE(fbc_dirty_rect->y2));
> > > +
> > > +	fbc_state->fbc_dirty_rect.valid = false;
> > 
> > Why?
> > 
> > > +}
> > > +
> > > +void
> > > +intel_fbc_dirty_rect_update_noarm(struct intel_dsb *dsb,
> > > +				  struct intel_atomic_state *state,
> > > +				  struct intel_crtc *crtc)
> > > +{
> > > +	struct intel_display *display = to_intel_display(state);
> > > +	struct intel_plane_state *plane_state;
> > 
> > const, although it seems to me we can just rely on the rect being valid
> > or not and then the plane visiblility is also already covered.
> > 
> > > +	struct intel_plane *plane;
> > > +	int i;
> > > +
> > > +	if (!HAS_FBC_DIRTY_RECT(display))
> > > +		return;
> > > +
> > > +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> > > +		struct intel_fbc *fbc = plane->fbc;
> > > +
> > > +		if (!fbc || plane->pipe != crtc->pipe)
> > > +			continue;
> > > +
> > > +		if (!plane_state->uapi.visible)
> > > +			continue;
> > 
> > That check would also disappear.
> > 
> > This does need to check if the plane is the one using FBC
> > currently. Oh, I see you put that check inside
> > intel_fbc_dirty_rect_update(). I think the check belongs
> > here because that is how we do it everwhere else.
> > 
> > I was pondering if we need to keep this lockless or not.
> > I guess we don't since we are doing it from the noarm()
> > section (assuming we're not planing to implement mailbox
> > flips tomorrow). So for now I think we can just do the proper
> > locking here too. If we do need to make this lockless in
> > then we need to explain what makes it safe/correct.
> > 
> > > +
> > > +		intel_fbc_dirty_rect_update(dsb, plane);
> > > +	}
> > > +}
> > > +
> > > +static void
> > > +validate_and_clip_dirty_rect(struct intel_plane_state *plane_state,
> > > +			     struct drm_rect *dirty_rect)
> > > +{
> > > +	int y_offset = plane_state->view.color_plane[0].y;
> > > +	int plane_height = drm_rect_height(&plane_state->uapi.src) >> 16;
> > > +	int max_endline = y_offset + plane_height - 1;
> > > +
> > > +	dirty_rect->y1 = clamp(dirty_rect->y1, y_offset, max_endline);
> > > +	dirty_rect->y2 = clamp(dirty_rect->y2, dirty_rect->y1, max_endline);
> > > +}
> > 
> > This is not needed.
> > 
> > > +
> > > +static void
> > > +__intel_fbc_prepare_dirty_rect(struct intel_plane *plane,
> > > +			       struct intel_plane_state *plane_state,
> > > +			       bool fbc_dirty_rect_valid)
> > > +{
> > > +	struct intel_fbc_state *fbc_state = &plane->fbc->state;
> > > +	struct drm_rect *fbc_dirty_rect = &fbc_state->fbc_dirty_rect.rect;
> > > +	struct drm_rect *damage_merged = &plane_state->damage_merged;
> > > +	int y_offset = plane_state->view.color_plane[0].y;
> > > +
> > > +	fbc_state->fbc_dirty_rect.valid = fbc_dirty_rect_valid;
> > > +
> > > +	if (drm_rect_visible(damage_merged)) {
> > > +		fbc_dirty_rect->y1 = damage_merged->y1;
> > > +		fbc_dirty_rect->y2 = damage_merged->y2;
> > > +	} else {
> > > +		/* If not visible, we need to set one single line */
> > > +		fbc_dirty_rect->y1 = y_offset;
> > > +		fbc_dirty_rect->y2 = y_offset;
> > > +	}
> > > +	fbc_dirty_rect->x1 = damage_merged->x1;
> > > +	fbc_dirty_rect->x2 = damage_merged->x2;
> > > +
> > > +	validate_and_clip_dirty_rect(plane_state, fbc_dirty_rect);
> > > +}
> > > +
> > > +void
> > > +intel_fbc_prepare_dirty_rect(struct intel_atomic_state *state,
> > > +			     struct intel_crtc *crtc)
> > > +{
> > > +	struct intel_display *display = to_intel_display(state);
> > > +	struct intel_plane_state *plane_state;
> > > +	struct intel_plane *plane;
> > > +	int i;
> > > +
> > > +	if (!HAS_FBC_DIRTY_RECT(display))
> > > +		return;
> > > +
> > > +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> > > +		struct intel_fbc *fbc = plane->fbc;
> > > +
> > > +		if (!fbc || plane->pipe != crtc->pipe)
> > > +			continue;
> > > +
> > > +		if (!fbc->state.plane)
> > > +			continue;
> > 
> > fbc->state.plane != plane
> > 
> > Also needs locking.
> > 
> > > +
> > > +		/* If plane not visible, dirty rect might have invalid coordinates */
> > > +		if (!plane_state->uapi.visible)
> > > +			continue;
> > 
> > Seems like a redundant check.
> > 
> > > +
> > > +		__intel_fbc_prepare_dirty_rect(plane, plane_state,
> > > +					       intel_fbc_can_flip_nuke(state,
> > > +								       crtc,
> > > +								       plane));
> > > +	}
> > > +}
> > > +
> > >  static void intel_fbc_update_state(struct intel_atomic_state *state,
> > >  				   struct intel_crtc *crtc,
> > >  				   struct intel_plane *plane)
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
> > > index ceae55458e14..8f1b11c6f4d2 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> > > @@ -14,6 +14,7 @@ struct intel_atomic_state;
> > >  struct intel_crtc;
> > >  struct intel_crtc_state;
> > >  struct intel_display;
> > > +struct intel_dsb;
> > >  struct intel_fbc;
> > >  struct intel_plane;
> > >  struct intel_plane_state;
> > > @@ -48,5 +49,10 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
> > >  void intel_fbc_reset_underrun(struct intel_display *display);
> > >  void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
> > >  void intel_fbc_debugfs_register(struct intel_display *display);
> > > +void intel_fbc_prepare_dirty_rect(struct intel_atomic_state *state,
> > > +				  struct intel_crtc *crtc);
> > > +void intel_fbc_dirty_rect_update_noarm(struct intel_dsb *dsb,
> > > +				       struct intel_atomic_state *state,
> > > +				       struct intel_crtc *crtc);
> > >  
> > >  #endif /* __INTEL_FBC_H__ */
> > > -- 
> > > 2.43.0
> > 
> 

-- 
Ville Syrjälä
Intel
