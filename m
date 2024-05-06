Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 736758BD32A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 18:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B58DE10F906;
	Mon,  6 May 2024 16:51:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q1DQPVvS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59F3410F906;
 Mon,  6 May 2024 16:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715014311; x=1746550311;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dmckq7XSNxC1nPvxU3E5EPY2BErh5fHtiNRRB6aWGns=;
 b=Q1DQPVvSfY49CJw0G6vVg15L06uvCdOgvt7RQiIfpta12WZoPTzAfnUq
 fiqNHeaLmAwaGG3NnbX0k1d5k2NUgPbQD4VPmsc22umfiNw9inO8wdjIi
 WBGygI9b4PJgHRc5cihPPz4gnr0BWbNsn0Xy15c1wfjriR2hMg/KJnt+2
 ZNJHAVY/8G4chQ17XT6H+6LjIJJQ9lv+C55RtLtPJEobpvkkgIWJF8pjg
 2/56KPdegTfJrMI+pI5/J4DoE0Cq89E9skgkmYMqhblbmgV7iobVq0L2J
 tGSBiIgjnRHsfLdRejnU+U4PThvS6fmK6TsWIk21pE+5quONlhaq1F+Yw w==;
X-CSE-ConnectionGUID: mYSyxGfGQbC7Pq0VhPTKfw==
X-CSE-MsgGUID: UcEXL4jmQtmbGy6J8Ujc2A==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="21321548"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="21321548"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 09:51:51 -0700
X-CSE-ConnectionGUID: Vej5qO8aS72u3hxj4MyvCw==
X-CSE-MsgGUID: bPq336ahQryLE7JlruOX3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28216358"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 09:51:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 19:51:47 +0300
Date: Mon, 6 May 2024 19:51:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/9] drm/i915: Change intel_fbdev_fb_alloc() reuturn type
Message-ID: <ZjkKo29TW8BhLq5z@intel.com>
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
 <20240506125718.26001-8-ville.syrjala@linux.intel.com>
 <87pltzkotp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87pltzkotp.fsf@intel.com>
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

On Mon, May 06, 2024 at 05:16:50PM +0300, Jani Nikula wrote:
> 
> *return in subject
> 
> On Mon, 06 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Change intel_fbdev_fb_alloc() to return struct intel_fb instead
> > of struct drm_framebuffer. Let's us eliminate some annoying
> > aliasing variables in the fbdev setup code.
> 
> You'll need to enable DRM_XE=m and DRM_XE_DISPLAY=y configs, this will
> fail the build there. ;)

$ grep DRM_XE build_test/.config
CONFIG_DRM_XE=m
CONFIG_DRM_XE_DISPLAY=y

It actually builds just fine here, which is a bit
surprising.

> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbdev.c    | 10 +++++-----
> >  drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  6 +++---
> >  drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  5 +++--
> >  3 files changed, 11 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> > index bda702c2cab8..0d79ec1a6427 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> > @@ -207,13 +207,13 @@ static int intelfb_create(struct drm_fb_helper *helper,
> >  		intel_fb = ifbdev->fb = NULL;
> >  	}
> >  	if (!intel_fb || drm_WARN_ON(dev, !intel_fb_obj(&intel_fb->base))) {
> > -		struct drm_framebuffer *fb;
> > +		struct intel_framebuffer *fb;
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "no BIOS fb, allocating a new one\n");
> > -		fb = intel_fbdev_fb_alloc(helper, sizes);
> > -		if (IS_ERR(fb))
> > -			return PTR_ERR(fb);
> > -		intel_fb = ifbdev->fb = to_intel_framebuffer(fb);
> > +		intel_fb = intel_fbdev_fb_alloc(helper, sizes);
> 
> Now you have both fb in block context and intel_fb in the function
> context, and I think there's some confusion here.

Aye. Probably a rebase fail or something. The next patch
fixes it all up, but this intermediate thing does look
completely borked.

> 
> BR,
> Jani.
> 
> > +		if (IS_ERR(intel_fb))
> > +			return PTR_ERR(intel_fb);
> > +		ifbdev->fb = fb;
> >  	} else {
> >  		drm_dbg_kms(&dev_priv->drm, "re-using BIOS fb\n");
> >  		prealloc = true;
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> > index 0665f943f65f..497525ef9668 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> > @@ -11,8 +11,8 @@
> >  #include "intel_display_types.h"
> >  #include "intel_fbdev_fb.h"
> >  
> > -struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> > -					     struct drm_fb_helper_surface_size *sizes)
> > +struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> > +					       struct drm_fb_helper_surface_size *sizes)
> >  {
> >  	struct drm_framebuffer *fb;
> >  	struct drm_device *dev = helper->dev;
> > @@ -63,7 +63,7 @@ struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> >  	fb = intel_framebuffer_create(obj, &mode_cmd);
> >  	i915_gem_object_put(obj);
> >  
> > -	return fb;
> > +	return to_intel_framebuffer(fb);
> >  }
> >  
> >  int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> > index a395b2c65d33..82e8e7cc007b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
> > @@ -12,9 +12,10 @@ struct drm_i915_gem_object;
> >  struct drm_i915_private;
> >  struct fb_info;
> >  struct i915_vma;
> > +struct intel_framebuffer;
> >  
> > -struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> > -					     struct drm_fb_helper_surface_size *sizes);
> > +struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> > +					       struct drm_fb_helper_surface_size *sizes);
> >  int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
> >  			     struct drm_i915_gem_object *obj, struct i915_vma *vma);
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
