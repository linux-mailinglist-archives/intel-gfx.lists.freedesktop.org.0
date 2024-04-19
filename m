Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC0C8AB2D9
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 18:08:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5186A10E8D5;
	Fri, 19 Apr 2024 16:08:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TMmnwGXl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAAAD10E2CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 16:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713542893; x=1745078893;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uDLTqkflj0j1hrF5WyoNYsfSkNFOhfSxH/osdX6u51k=;
 b=TMmnwGXlMoGd7MiAX5m6BxSQSayyjhFK0TLb3o5YR0OMDbJHFpJf+udd
 5/VzoTvb3fRze56MeUGxeRQzyAX69oln2FtfCvef51NuR9U6ZBHKZL5y7
 YiRe7phkOl3Y8pSbm8LJk04FDusDhFK0eekag2W2eybL1txOOr8uxcuDL
 K0Ra3SbkmVLm9qorALLebOQZ5ZrZpIpyeel8YgzuCREQslKEgSwNKPjfh
 qrVbvH5XrwJnDycRtxXeasQTxjYy4UjTTZZEBG6qVYQndjiNg+N+fbOsW
 TrUarByalN0Q1oHKYFlhCdUrEabGh/ZNu+FCdn61lT4mrjtbWmT06AtpE A==;
X-CSE-ConnectionGUID: swxSEGDMQJKYwG6FcOk5hA==
X-CSE-MsgGUID: iymX+cCLSv6AKKh4cgldeg==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="20573302"
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="20573302"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 09:08:12 -0700
X-CSE-ConnectionGUID: 3wwI9dj3Tg2jPZH4uQfOag==
X-CSE-MsgGUID: 8dGrhdFHSX6pnNn8Z23Ecg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="23440729"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Apr 2024 09:08:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Apr 2024 19:08:09 +0300
Date: Fri, 19 Apr 2024 19:08:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/6] drm/i915: Align PLANE_SURF to 16k on ADL for async
 flips
Message-ID: <ZiKW6YK6mVf9rHIW@intel.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
 <20240320160424.700-2-ville.syrjala@linux.intel.com>
 <IA0PR11MB7307385AC116A560D0E6466FBA0D2@IA0PR11MB7307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA0PR11MB7307385AC116A560D0E6466FBA0D2@IA0PR11MB7307.namprd11.prod.outlook.com>
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

On Fri, Apr 19, 2024 at 04:20:40AM +0000, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Wednesday, March 20, 2024 9:34 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 1/6] drm/i915: Align PLANE_SURF to 16k on ADL for async flips
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On ADL async flips apparently generate DMAR and GGTT faults (with
> > accompanying visual glitches) unless PLANE_SURF is aligned to at least 16k.
> > Bump up the alignment to 16k.
> 
> I don’t find any such restriction in the spec. Can you please add link to the spec?

I don't think it's documented, hence the FIXME.

> 
> Thanks and Regards,
> Arun R Murthy
> -------------------
> > 
> > TODO: analyze things better to figure out what is really
> >       going on here
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpt.c    |  7 ++++---
> >  drivers/gpu/drm/i915/display/intel_dpt.h    |  3 ++-
> >  drivers/gpu/drm/i915/display/intel_fb.c     | 17 ++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_fb_pin.c | 10 +++++-----
> >  4 files changed, 27 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c
> > b/drivers/gpu/drm/i915/display/intel_dpt.c
> > index b29bceff73f2..786d3f2e94c7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> > @@ -121,7 +121,8 @@ static void dpt_cleanup(struct i915_address_space
> > *vm)
> >  	i915_gem_object_put(dpt->obj);
> >  }
> > 
> > -struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
> > +struct i915_vma *intel_dpt_pin(struct i915_address_space *vm,
> > +			       unsigned int alignment)
> >  {
> >  	struct drm_i915_private *i915 = vm->i915;
> >  	struct i915_dpt *dpt = i915_vm_to_dpt(vm); @@ -143,8 +144,8 @@
> > struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
> >  		if (err)
> >  			continue;
> > 
> > -		vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0,
> > 4096,
> > -						  pin_flags);
> > +		vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0,
> > +						  alignment, pin_flags);
> >  		if (IS_ERR(vma)) {
> >  			err = PTR_ERR(vma);
> >  			continue;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpt.h
> > b/drivers/gpu/drm/i915/display/intel_dpt.h
> > index e18a9f767b11..f467578a4950 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpt.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpt.h
> > @@ -13,7 +13,8 @@ struct i915_vma;
> >  struct intel_framebuffer;
> > 
> >  void intel_dpt_destroy(struct i915_address_space *vm); -struct i915_vma
> > *intel_dpt_pin(struct i915_address_space *vm);
> > +struct i915_vma *intel_dpt_pin(struct i915_address_space *vm,
> > +			       unsigned int alignment);
> >  void intel_dpt_unpin(struct i915_address_space *vm);  void
> > intel_dpt_suspend(struct drm_i915_private *i915);  void
> > intel_dpt_resume(struct drm_i915_private *i915); diff --git
> > a/drivers/gpu/drm/i915/display/intel_fb.c
> > b/drivers/gpu/drm/i915/display/intel_fb.c
> > index 3ea6470d6d92..58ead05fba6f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -805,8 +805,23 @@ unsigned int intel_surf_alignment(const struct
> > drm_framebuffer *fb,  {
> >  	struct drm_i915_private *dev_priv = to_i915(fb->dev);
> > 
> > -	if (intel_fb_uses_dpt(fb))
> > +	if (intel_fb_uses_dpt(fb)) {
> > +		/* AUX_DIST needs only 4K alignment */
> > +		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
> > +			return 512 * 4096;
> > +
> > +		/*
> > +		 * FIXME ADL sees GGTT/DMAR faults with async
> > +		 * flips unless we align to 16k at least.
> > +		 * Figure out what's going on here...
> > +		 */
> > +		if (IS_ALDERLAKE_P(dev_priv) &&
> > +		    !intel_fb_is_ccs_modifier(fb->modifier) &&
> > +		    HAS_ASYNC_FLIPS(dev_priv))
> > +			return 512 * 16 * 1024;
> > +
> >  		return 512 * 4096;
> > +	}
> > 
> >  	/* AUX_DIST needs only 4K alignment */
> >  	if (intel_fb_is_ccs_aux_plane(fb, color_plane)) diff --git
> > a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > index 7b42aef37d2f..c28ae99ebe6a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > @@ -19,6 +19,7 @@
> >  static struct i915_vma *
> >  intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
> >  		     const struct i915_gtt_view *view,
> > +		     unsigned int alignment,
> >  		     bool uses_fence,
> >  		     unsigned long *out_flags,
> >  		     struct i915_address_space *vm)
> > @@ -28,7 +29,6 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
> >  	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
> >  	struct i915_gem_ww_ctx ww;
> >  	struct i915_vma *vma;
> > -	u32 alignment;
> >  	int ret;
> > 
> >  	/*
> > @@ -41,8 +41,6 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
> >  	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
> >  		return ERR_PTR(-EINVAL);
> > 
> > -	alignment = 4096 * 512;
> > -
> >  	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
> > 
> >  	for_i915_gem_ww(&ww, ret, true) {
> > @@ -257,14 +255,16 @@ int intel_plane_pin_fb(struct intel_plane_state
> > *plane_state)
> >  		plane_state->ggtt_vma = vma;
> >  	} else {
> >  		struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
> > +		unsigned int alignment = intel_surf_alignment(fb, 0);
> > 
> > -		vma = intel_dpt_pin(intel_fb->dpt_vm);
> > +		vma = intel_dpt_pin(intel_fb->dpt_vm, alignment / 512);
> >  		if (IS_ERR(vma))
> >  			return PTR_ERR(vma);
> > 
> >  		plane_state->ggtt_vma = vma;
> > 
> > -		vma = intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt, false,
> > +		vma = intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt,
> > +					   alignment, false,
> >  					   &plane_state->flags, intel_fb-
> > >dpt_vm);
> >  		if (IS_ERR(vma)) {
> >  			intel_dpt_unpin(intel_fb->dpt_vm);
> > --
> > 2.43.2
> 

-- 
Ville Syrjälä
Intel
