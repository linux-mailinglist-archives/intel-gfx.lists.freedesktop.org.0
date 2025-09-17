Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62779B7FC23
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 16:07:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F08510E849;
	Wed, 17 Sep 2025 14:07:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ik3M8MAc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B301410E847;
 Wed, 17 Sep 2025 14:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758118058; x=1789654058;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=baTSy1ufNoDrGJL4DZKjlDh1KzScoApg+xSWTwa+R+E=;
 b=Ik3M8MAcL9HUMFL+exKOT6CjQ/tcF1pL6cnZHuXFfTl7bwZk0fNfhauD
 iaQO0HHMiiJh1EFFxkmDnqbF9Kx8rAZ8M0y+UBWzkf4LELg8BId1tMxi4
 WXw8wkUPcwZz2NDrRpub3QuddD6jRQbt8rS/CUMJTutDehFChYlQZmD5r
 QK2A37ON+J7AbstYE5/EQTjdycAxA2sttq8UYLdKQkPLmcHBkS/2QHVpf
 FHLKfKn+AlUpux/mNJY6xBVgflePg5VsncbBeVJ2xnCWUHmgibM3S6z8O
 GVlZN+DX3DqYYEAdEluoNp6mcpHyQOUIhwrxK+gE32X4Zztdr+bfKQ4h7 w==;
X-CSE-ConnectionGUID: QRMYYw3eQVy+h2fkyt+zAA==
X-CSE-MsgGUID: 3uN9KdrNQEOkQAvakCtDLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="59469181"
X-IronPort-AV: E=Sophos;i="6.18,272,1751266800"; d="scan'208";a="59469181"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 07:07:38 -0700
X-CSE-ConnectionGUID: s41uOYu4RiiGcojs9q1+aA==
X-CSE-MsgGUID: hW/xUITBRI+JXz/B+2Zziw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,272,1751266800"; d="scan'208";a="198940549"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.83])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 07:07:37 -0700
Date: Wed, 17 Sep 2025 17:07:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/9] drm/{i915,xe}/fbdev: add intel_fbdev_fb_bo_destroy()
Message-ID: <aMrApoD9mHeiOPoV@intel.com>
References: <cover.1756931441.git.jani.nikula@intel.com>
 <52acac7760e8bc440ad9539aaa89b8cb3b5c23dc.1756931441.git.jani.nikula@intel.com>
 <aLmkNu6AJ6LGVt6q@intel.com>
 <4e4d1bc04de69092cdb3ecc16bda81764d2b9b16@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4e4d1bc04de69092cdb3ecc16bda81764d2b9b16@intel.com>
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

On Wed, Sep 17, 2025 at 03:33:31PM +0300, Jani Nikula wrote:
> On Thu, 04 Sep 2025, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Wed, Sep 03, 2025 at 11:32:03PM +0300, Jani Nikula wrote:
> >> xe does xe_bo_unpin_map_no_vm() on the failure path. Add a common helper
> >> to enable further refactoring.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 5 +++++
> >>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h | 1 +
> >>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 7 ++++++-
> >>  3 files changed, 12 insertions(+), 1 deletion(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> >> index 3837973b0d25..6b70823ce5ef 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> >> @@ -51,6 +51,11 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
> >>  	return &obj->base;
> >>  }
> >>  
> >> +void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
> >> +{
> >> +	/* nop? */
> >
> > gem_object_put() is what destroys the bo on i915, so I think you're
> > introducing a leak in the next patch with this nop implementation.
> >
> > xe seems to be riddled with footguns here since it conflates
> > creation+pinning+whatever in the same thing (and I guess it
> > doesn't know how to clean all that up when the last reference
> > to the object disappears?) and you have to use that horribly
> > misnamed function instead...
> 
> Hmm, can we just slap i915_gem_object_put(obj) in there?

That would at least match how it behaves currently. Though I
didn't look too deeply whether that is 100% sufficient to clean
up properly.

> 
> The i915 variant of intel_fbdev_fb_alloc() ignores errors from
> intel_framebuffer_create() and just unconditionally does
> i915_gem_object_put() afterwards:
> 
> 	fb = intel_framebuffer_create(intel_bo_to_drm_bo(obj),
> 				      drm_get_format_info(display->drm,
> 							  mode_cmd.pixel_format,
> 							  mode_cmd.modifier[0]),
> 				      &mode_cmd);
> 	i915_gem_object_put(obj);
> 
> 	return to_intel_framebuffer(fb);
> 
> Presumably the refcounts are handled correctly either way.
> 
> It's just a bit fishy that the potential error pointer from
> intel_framebuffer_create() goes through to_intel_framebuffer() to the
> caller.

Yeah, would be less confusing to just check for the error
explicitly.

-- 
Ville Syrjälä
Intel
