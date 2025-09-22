Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F74B91306
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 14:48:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C58610E1B1;
	Mon, 22 Sep 2025 12:48:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fZJIVf4U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47DDE10E1B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Sep 2025 12:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758545318; x=1790081318;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Viza9NbBvFgH/JMHgVpWdXG3DzvT00QuvHS0d1+gFAA=;
 b=fZJIVf4UgsthQ14tLXkyYugXGGCrCahhQYzK5PxdZnuIALa2X4mM0vyh
 EBgMvJkIqm35zwBUTjNZ0VkwgK8v+ZSgq6E5M1lkiPUovO54qSsvT5KSu
 Pht/8yOSlenP1ydkwyLcY5oEJRrXULCtucT1yZwXEDIF3bOaqW9xtQEHs
 Y1SFfLa36/c4WKEFGStsGixlQzpERTQLPAzx+gOlLvtxPaagQPFWxDxuV
 SA6IYV8OmwratjItx6QLgUW/7BlicdkUExL9Ro2NJDut3T3lPA/xigLyW
 Iye5wOqGT6rw4HFT5hxnS0YB5B5ZSe1gppaOUvzrqAkeO5ujbpKF+vnQE Q==;
X-CSE-ConnectionGUID: pXzqWkzQR/WaqVLONwi7mw==
X-CSE-MsgGUID: xpntlW3qQuGKdjUCuGjJzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60744658"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60744658"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 05:48:38 -0700
X-CSE-ConnectionGUID: tYLNvMH/TvqOobwNhme9Kw==
X-CSE-MsgGUID: PKhM0fy5SbqqW9LcNnuuEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="176386637"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 05:48:36 -0700
Date: Mon, 22 Sep 2025 15:48:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>
Cc: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/6] drm/i915/wm: convert x/y-tiling bools to an enum
Message-ID: <aNFFoTTumhe0Yzsq@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
 <20250908073734.1180687-5-luciano.coelho@intel.com>
 <aM0WFVMhQwIU-4QI@intel.com>
 <c95960bce99cc88737bfc6bc1b3914486c164e70.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c95960bce99cc88737bfc6bc1b3914486c164e70.camel@coelho.fi>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Sep 22, 2025 at 03:38:46PM +0300, Luca Coelho wrote:
> On Fri, 2025-09-19 at 11:36 +0300, Ville Syrjälä wrote:
> > On Mon, Sep 08, 2025 at 10:35:33AM +0300, Luca Coelho wrote:
> > > There are currently two booleans to define three tiling modes, which
> > > is bad practice because it allows representing an invalid mode.  In
> > > order to simplify this, convert these two booleans into one
> > > enumeration with three possible tiling modes.
> > > 
> > > Additionally, introduce the concept of Y "family" of tiling, which
> > > groups Y, Yf and 4 tiling, since they're effectively treated in the
> > > same way in the watermark calculations.  Describe the grouping in the
> > > enumeration definition.
> > > 
> > > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/skl_watermark.c | 35 ++++++++++++++------
> > >  1 file changed, 24 insertions(+), 11 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > index 0ce3420a919e..dd4bed02c3c0 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > @@ -53,9 +53,16 @@ struct intel_dbuf_state {
> > >  #define intel_atomic_get_new_dbuf_state(state) \
> > >  	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->dbuf.obj))
> > >  
> > > +/* Tiling mode groups relevant to WM calculations */
> > > +enum wm_tiling_mode {
> > > +	WM_TILING_LINEAR,
> > > +	WM_TILING_X_TILED,	/* mostly like linear */
> > 
> > The _TILED suffix seems redundant here.
> 
> Indeed.  I'll remove.  I just wanted to differentiate the actually
> tiled ones from linear, but that's moot.
> 
> 
> > > +	WM_TILING_Y_FAMILY,	/* includes Y, Yf and 4 tiling */
> > 
> > I don't really like the "y family" invention. Doesn't really
> > unconfuse anything for the reader without going back to have
> > a look at the comment.
> > 
> > I think it would be better to just spell out each tilimg mode.
> > So I guess something like "WM_TILING_Y_Yf_4"
> 
> Yeah, I wasn't entirely happy with "family", but I really couldn't find
> any better term.  My idea was to make it generic enough so we wouldn't
> have to add a new tiling to the symbol every time we add something new.
> Which is what happened with the "Y_TILED" before, and included also Yf
> and 4 without any reference to this in the code.  It confused the crap
> out of me.
> 
> Anyway, your idea is definitely clearer, so I'll change this.
> 
> 
> > > +};
> > > +
> > >  /* Stores plane specific WM parameters */
> > >  struct skl_wm_params {
> > > -	bool x_tiled, y_tiled;
> > > +	enum wm_tiling_mode tiling;
> > 
> > That'll now be 4 bytes.
> > 
> > >  	bool rc_surface;
> > >  	bool is_planar;
> > 
> > and we'll have a two byte hole here.
> > 
> > >  	u32 width;
> >         u8 cpp;
> > 
> > And there's a 3 byte hole already here after the cpp.
> > Should group the u8 with the bools to avoid so many holes.
> > 
> > We could also shrink y_min_scanlines to a u8 and
> > stick it into the last 1 byte hole. That'd shrink the whole
> > struct by 4 bytes.
> > 
> > dbuf_block_size would also fit in a u16, but doesn't look
> > like we have any other holes where we could stick it. Hmm,
> > actually 'width' could probably also be shrunk to be a u16.
> > So could get rid of another 4 bytes here if we really
> > wanted to.
> > 
> > But I suppose all that repacking should be a separate patch...
> 
> Okay, I'll move the two remaining bools below the u8, so we fill part
> of that existing space.  And I'll add a separate patch to reduce the
> y_min_scanlines to u8 and fill the existing hole.
> 
> I'll leave the dbuf_block_size and width change out for now.  I think 4
> bytes extra saving will not be worth the trouble, but I'll keep this in
> mind if I eventually encounter other changes to be made with these
> elements.
> 
> 
> > > @@ -618,7 +625,8 @@ static unsigned int skl_wm_latency(struct intel_display *display, int level,
> > >  	     display->platform.cometlake) && skl_watermark_ipc_enabled(display))
> > >  		latency += 4;
> > >  
> > > -	if (skl_needs_memory_bw_wa(display) && wp && wp->x_tiled)
> > > +	if (skl_needs_memory_bw_wa(display) &&
> > > +	    wp && wp->tiling == WM_TILING_X_TILED)
> > >  		latency += 15;
> > >  
> > >  	return latency;
> > > @@ -1674,9 +1682,14 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
> > >  		return -EINVAL;
> > >  	}
> > >  
> > > -	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
> > > -	wp->y_tiled = modifier != I915_FORMAT_MOD_X_TILED &&
> > > -		intel_fb_is_tiled_modifier(modifier);
> > > +	if (modifier == I915_FORMAT_MOD_X_TILED)
> > > +		wp->tiling = WM_TILING_X_TILED;
> > > +	else if (modifier != I915_FORMAT_MOD_X_TILED &&
> > 
> > The modifier check here is redundant with the if-else construct.
> 
> Indeed.
> 
> 
> > > +		 intel_fb_is_tiled_modifier(modifier))
> > > +		wp->tiling = WM_TILING_Y_FAMILY;
> > > +	else
> > > +		wp->tiling = WM_TILING_LINEAR;
> > 
> > In fact we can avoid the entire intel_fb_is_tiled_modifier()
> > call with something like:
> > 
> > if (mod == LINEAR)
> > 	tiling = LINEAR;
> > else if (mod == X)
> > 	tiling = X;
> > else
> > 	tiling = Y_Yf_4;
> 
> Nice, I'll change it.
> 
> 
> > The wm code always pops up fairly high in cpu profiles, so
> > anything that makes it lighter is worth considering.
> 
> Oh, that's good to know.  But this is not happening in the "datapath",
> but during modesets, right? Do the modesets really take so long and
> happen so often so that avoiding a CPU cycles makes much difference?

This happens on every flip. While not a big deal perhaps for sync
flips @60Hz, but with async flips and/or high refresh rates it
starts to matter more.

-- 
Ville Syrjälä
Intel
