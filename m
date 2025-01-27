Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75567A1DAC3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 17:44:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F199410E241;
	Mon, 27 Jan 2025 16:44:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iUVou/HJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92D7710E241;
 Mon, 27 Jan 2025 16:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737996265; x=1769532265;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GHOCYNXIFi98EeT6hRymUssBc8UzPx5TFtDnFyVsA/A=;
 b=iUVou/HJ9JDng9es1Z/ZQbYjdu0YWvMVD1aNue/8PbGx1inImZl1hV9i
 zbEqvSb2dI4rtLCUzcifSBMyQ+phOpJUU8LI2rWP4wUDtvRQhxOVMvmpH
 6E88fDnDrtxSmFkw7ttUroFaR/9otKsjzDdvrbha4NJZ/7J4i+amZRi0A
 HsRgDPC4XHKI4d0wxrq3Kvj+vcwfKjMQabWTZu1r5K/7NoARGsqfaCSHN
 ZxZg9zoPXnYmv3Zfgo4mHTXlgkYLCPBt4yh43nEjuPYgvt/xws/HsJ4Nd
 6iIqQCIzbynY9nVtlHD4199/zcmjoYRNR78B8oBlkpTZR3Ca20q8VRmeL A==;
X-CSE-ConnectionGUID: ZdXoXwfwTzaOIqndn4EQRA==
X-CSE-MsgGUID: qNkTLRy1R9mu+gr1p+YqNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="60930610"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="60930610"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 08:44:25 -0800
X-CSE-ConnectionGUID: aOveiAgoSz2VfFYvoPCfvA==
X-CSE-MsgGUID: iQ7Vbe5eTB2XR/N/TZ+n0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="108598955"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Jan 2025 08:44:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Jan 2025 18:44:21 +0200
Date: Mon, 27 Jan 2025 18:44:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/i915: Move VT-d alignment into
 plane->min_alignment()
Message-ID: <Z5e35V4CqZ3m40y-@intel.com>
References: <20250122151755.6928-1-ville.syrjala@linux.intel.com>
 <20250122151755.6928-2-ville.syrjala@linux.intel.com>
 <878qqwbn6d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <878qqwbn6d.fsf@intel.com>
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

On Mon, Jan 27, 2025 at 11:50:34AM +0200, Jani Nikula wrote:
> On Wed, 22 Jan 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Currently we don't account for the VT-d alignment w/a in
> > plane->min_alignment() which means that panning inside a larger
> > framebuffer can still cause the plane SURF to be misaligned.
> > Fix the issue by moving the VT-d alignment w/a into
> > plane->min_alignment() itself (for the affected platforms).
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/i9xx_plane.c          | 10 ++++++++++
> >  drivers/gpu/drm/i915/display/intel_cursor.c        |  5 +++++
> >  drivers/gpu/drm/i915/display/intel_fb_pin.c        |  8 --------
> >  drivers/gpu/drm/i915/display/intel_sprite.c        |  5 +++++
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c |  4 ++++
> >  5 files changed, 24 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > index ed171fbf8720..19cc34babef3 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > @@ -780,9 +780,14 @@ unsigned int vlv_plane_min_alignment(struct intel_plane *plane,
> >  				     const struct drm_framebuffer *fb,
> >  				     int color_plane)
> >  {
> > +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> > +
> >  	if (intel_plane_can_async_flip(plane, fb->modifier))
> >  		return 256 * 1024;
> >  
> > +	if (intel_scanout_needs_vtd_wa(i915))
> > +		return 256 * 1024;
> 
> Nitpick, would be great to convert intel_scanout_needs_vtd_wa() to
> struct intel_display first, so we wouldn't have to introduce so many new
> struct drm_i915_private uses.

I didn't really want to add intel_display stuff to the
gem side (where this is being used currently). Once
its all moved into the display code (patch 3) then it
makes more sense.

> 
> BR,
> Jani.
> 
> > +
> >  	switch (fb->modifier) {
> >  	case I915_FORMAT_MOD_X_TILED:
> >  		return 4 * 1024;
> > @@ -798,9 +803,14 @@ static unsigned int g4x_primary_min_alignment(struct intel_plane *plane,
> >  					      const struct drm_framebuffer *fb,
> >  					      int color_plane)
> >  {
> > +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> > +
> >  	if (intel_plane_can_async_flip(plane, fb->modifier))
> >  		return 256 * 1024;
> >  
> > +	if (intel_scanout_needs_vtd_wa(i915))
> > +		return 256 * 1024;
> > +
> >  	switch (fb->modifier) {
> >  	case I915_FORMAT_MOD_X_TILED:
> >  	case DRM_FORMAT_MOD_LINEAR:
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> > index ae7243ad6e0c..9157825e370b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -372,6 +372,11 @@ static unsigned int i9xx_cursor_min_alignment(struct intel_plane *plane,
> >  					      const struct drm_framebuffer *fb,
> >  					      int color_plane)
> >  {
> > +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> > +
> > +	if (intel_scanout_needs_vtd_wa(i915))
> > +		return 256 * 1024;
> > +
> >  	return 4 * 1024; /* physical for i915/i945 */
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > index dd3ac7f98dfc..2b9ad46eaef7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > @@ -126,14 +126,6 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
> >  	if (drm_WARN_ON(dev, alignment && !is_power_of_2(alignment)))
> >  		return ERR_PTR(-EINVAL);
> >  
> > -	/* Note that the w/a also requires 64 PTE of padding following the
> > -	 * bo. We currently fill all unused PTE with the shadow page and so
> > -	 * we should always have valid PTE following the scanout preventing
> > -	 * the VT-d warning.
> > -	 */
> > -	if (intel_scanout_needs_vtd_wa(dev_priv) && alignment < 256 * 1024)
> > -		alignment = 256 * 1024;
> > -
> >  	/*
> >  	 * Global gtt pte registers are special registers which actually forward
> >  	 * writes to a chunk of system memory. Which means that there is no risk
> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> > index 13996d7059ad..d63e71fe469e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -980,6 +980,11 @@ static unsigned int g4x_sprite_min_alignment(struct intel_plane *plane,
> >  					     const struct drm_framebuffer *fb,
> >  					     int color_plane)
> >  {
> > +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> > +
> > +	if (intel_scanout_needs_vtd_wa(i915))
> > +		return 256 * 1024;
> > +
> >  	return 4 * 1024;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 450dd8c64e0c..5cec2df0baca 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -649,6 +649,10 @@ static u32 skl_plane_min_alignment(struct intel_plane *plane,
> >  	if (color_plane != 0)
> >  		return 4 * 1024;
> >  
> > +	/*
> > +	 * VT-d needs at least 256k alignment,
> > +	 * but that's already covered below.
> > +	 */
> >  	switch (fb->modifier) {
> >  	case DRM_FORMAT_MOD_LINEAR:
> >  	case I915_FORMAT_MOD_X_TILED:
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
