Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMVlK+tP3mndqAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 16:32:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB4F3FB47F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 16:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB68010E612;
	Tue, 14 Apr 2026 14:32:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EfiXV5mY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 625AA10E34F;
 Tue, 14 Apr 2026 14:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776177128; x=1807713128;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kKNzpoxDFI2YMGxgjuzAQzQbsIM9oP3mltMpKlD2iR8=;
 b=EfiXV5mYDUS79Y0rR5uLt362oV+Pbuuic/VGs5RslkGdKGwH0nLiyu/n
 SnCnC5htizWNUjGdz/rk7SUfxgEeh73wouHGetADUta+BgyLJ2e4uMq7v
 EdMGSyQ/L5t16/RRI6EeE1K5o3VSxPswrLN1ubjtQG2iz2q64PAO8oM9G
 IJWT3EtZgxxSlci4l42UAi71sriK3wyBmUWm/erfIWcDpWDO4S6qaBKbE
 84z4UQl1EG2he4T6587jIt6V7bxbKnua52dded+M0RzhDNqPCbL5USb9F
 gKwo+zMCvYSqTO0i8ILDYXbQZgjiaCwAXm+/8jyWgIncEr21eUsl3e6gL Q==;
X-CSE-ConnectionGUID: osG+hVhhSpKEL8858VS1yQ==
X-CSE-MsgGUID: jQ1cig8pShezqAfZBuIj0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="76841043"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="76841043"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 07:32:07 -0700
X-CSE-ConnectionGUID: V+sVBy4aSk6+7+XIgLhd3Q==
X-CSE-MsgGUID: U9XxuzQFTqSm+gmFYD0Lgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="231862963"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.235])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 07:32:05 -0700
Date: Tue, 14 Apr 2026 17:32:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 04/10] drm/i915: Make plane_config->fb a struct
 drm_framebuffer*
Message-ID: <ad5P4XUVw3I6VGar@intel.com>
References: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
 <20260410150449.9699-5-ville.syrjala@linux.intel.com>
 <fa77ccf73f2da60f4fcfc7275c03ce63907da8ba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fa77ccf73f2da60f4fcfc7275c03ce63907da8ba@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.64 / 15.00];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 0BB4F3FB47F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 06:48:02PM +0300, Jani Nikula wrote:
> On Fri, 10 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > There's no need to use the intel specific struct intel_framebuffer*
> > type in the initial plane_config structure. Just make it a
> > struct drm_framebuffer*.
> 
> I guess a few words on the "why?" would be nice. I mean they're still
> pointers to struct intel_framebuffer objects, and could be
> container_of'd back.

Yeah, meant to put something more sensible here. Basically I think the
less special types we expose in the interface (even if just pointers)
the better. At least then there is no need to change the interface
definition if we ever change the internal types. And I hope that the
existing examples will generally encourage people to not expose more
special types unless absolutely necessary.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/i9xx_plane.c          |  2 +-
> >  drivers/gpu/drm/i915/display/intel_display_types.h |  2 +-
> >  drivers/gpu/drm/i915/display/intel_initial_plane.c | 10 +++++-----
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
> >  drivers/gpu/drm/i915/i915_initial_plane.c          |  6 +++---
> >  drivers/gpu/drm/xe/display/xe_initial_plane.c      |  2 +-
> >  6 files changed, 12 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > index 9c16753a1f3b..70734d32a409 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > @@ -1240,7 +1240,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
> >  		    fb->width, fb->height, fb->format->cpp[0] * 8,
> >  		    base, fb->pitches[0], plane_config->size);
> >  
> > -	plane_config->fb = intel_fb;
> > +	plane_config->fb = &intel_fb->base;
> >  }
> >  
> >  bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index eaa37b8d9584..82c7e03427ff 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -755,7 +755,7 @@ struct intel_plane_state {
> >  };
> >  
> >  struct intel_initial_plane_config {
> > -	struct intel_framebuffer *fb;
> > +	struct drm_framebuffer *fb;
> >  	struct i915_vma *vma;
> >  	int size;
> >  	u32 base;
> > diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> > index 4f51083dbd11..911d67dceba9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> > @@ -55,9 +55,9 @@ static struct drm_gem_object *
> >  intel_alloc_initial_plane_obj(struct intel_display *display,
> >  			      struct intel_initial_plane_config *plane_config)
> >  {
> > -	struct intel_framebuffer *fb = plane_config->fb;
> > +	struct drm_framebuffer *fb = plane_config->fb;
> >  
> > -	switch (fb->base.modifier) {
> > +	switch (fb->modifier) {
> >  	case DRM_FORMAT_MOD_LINEAR:
> >  	case I915_FORMAT_MOD_X_TILED:
> >  	case I915_FORMAT_MOD_Y_TILED:
> > @@ -65,7 +65,7 @@ intel_alloc_initial_plane_obj(struct intel_display *display,
> >  		break;
> >  	default:
> >  		drm_dbg_kms(display->drm, "Unsupported modifier for initial FB: 0x%llx\n",
> > -			    fb->base.modifier);
> > +			    fb->modifier);
> >  		return NULL;
> >  	}
> >  
> > @@ -93,7 +93,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
> >  		return;
> >  
> >  	if (intel_alloc_initial_plane_obj(display, plane_config)) {
> > -		fb = &plane_config->fb->base;
> > +		fb = plane_config->fb;
> >  		vma = plane_config->vma;
> >  	} else {
> >  		const struct intel_plane_state *other_plane_state;
> > @@ -149,7 +149,7 @@ static void plane_config_fini(struct intel_display *display,
> >  			      struct intel_initial_plane_config *plane_config)
> >  {
> >  	if (plane_config->fb) {
> > -		struct drm_framebuffer *fb = &plane_config->fb->base;
> > +		struct drm_framebuffer *fb = plane_config->fb;
> >  
> >  		/* We may only have the stub and not a full framebuffer */
> >  		if (drm_framebuffer_read_refcount(fb))
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 7a9d494334b5..00c863e378a1 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -3206,7 +3206,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
> >  		    fb->width, fb->height, fb->format->cpp[0] * 8,
> >  		    base, fb->pitches[0], plane_config->size);
> >  
> > -	plane_config->fb = intel_fb;
> > +	plane_config->fb = &intel_fb->base;
> >  	return;
> >  
> >  error:
> > diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
> > index 6df57db9b62a..5cb1adde67b6 100644
> > --- a/drivers/gpu/drm/i915/i915_initial_plane.c
> > +++ b/drivers/gpu/drm/i915/i915_initial_plane.c
> > @@ -137,7 +137,7 @@ initial_plane_vma(struct drm_i915_private *i915,
> >  	i915_gem_object_set_cache_coherency(obj, HAS_WT(i915) ?
> >  					    I915_CACHE_WT : I915_CACHE_NONE);
> >  
> > -	tiling = intel_fb_modifier_to_tiling(plane_config->fb->base.modifier);
> > +	tiling = intel_fb_modifier_to_tiling(plane_config->fb->modifier);
> >  
> >  	switch (tiling) {
> >  	case I915_TILING_NONE:
> > @@ -145,7 +145,7 @@ initial_plane_vma(struct drm_i915_private *i915,
> >  	case I915_TILING_X:
> >  	case I915_TILING_Y:
> >  		obj->tiling_and_stride =
> > -			plane_config->fb->base.pitches[0] |
> > +			plane_config->fb->pitches[0] |
> >  			tiling;
> >  		break;
> >  	default:
> > @@ -223,7 +223,7 @@ i915_alloc_initial_plane_obj(struct drm_device *drm,
> >  {
> >  	struct drm_i915_private *i915 = to_i915(drm);
> >  	struct drm_mode_fb_cmd2 mode_cmd = {};
> > -	struct drm_framebuffer *fb = &plane_config->fb->base;
> > +	struct drm_framebuffer *fb = plane_config->fb;
> >  	struct i915_vma *vma;
> >  
> >  	vma = initial_plane_vma(i915, plane_config);
> > diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> > index 1c7a4e8c390c..8f2d0244c03f 100644
> > --- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
> > +++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> > @@ -115,7 +115,7 @@ xe_alloc_initial_plane_obj(struct drm_device *drm,
> >  {
> >  	struct xe_device *xe = to_xe_device(drm);
> >  	struct drm_mode_fb_cmd2 mode_cmd = { 0 };
> > -	struct drm_framebuffer *fb = &plane_config->fb->base;
> > +	struct drm_framebuffer *fb = plane_config->fb;
> >  	struct xe_bo *bo;
> >  
> >  	mode_cmd.pixel_format = fb->format->format;
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
