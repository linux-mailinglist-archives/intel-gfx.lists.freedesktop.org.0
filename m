Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B38BB1624
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 19:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8577910E73B;
	Wed,  1 Oct 2025 17:43:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hnaw3X9y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B7E310E73A;
 Wed,  1 Oct 2025 17:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759340637; x=1790876637;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=w8zj70qCOi8bBSbbsGW5h3pDr/hzsfERLDeZRyJHCmY=;
 b=hnaw3X9yiTXoIfzy1jdSgzetOmhNOXU3OI7GEHV68V0d2SxzM9pazvoW
 9j4dDQcWnttDAb1QdiQsCtBhF2ZFgYaRd5Bxvted2cNnoo2/5zAjmbpxM
 Q4gb5IjTEkIrA5iuhVOGmIwIWRv8MubM0T1+ieqr7zulwcWJApDhy0ghm
 zIK9IOjlqFgtUUZEdS9m812VZTq1GC5Jqpb16IPMP2L9CLDoLp5A5esNY
 kTRwdWww+BX/hvc/13wG+bYvbTzqef9hiYGUM+GSWJNMTPoOKIy3CXEHj
 +5c/GpVeisalbAza5ZLQ4v9yfViOj5deJVWWro7Vkw6Q2+IJeLtgf04R1 A==;
X-CSE-ConnectionGUID: ulAjmPDjQEOsAu3OK+y0uQ==
X-CSE-MsgGUID: X6VLthPER+O/HE1PBaVDsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="72724201"
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="72724201"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 10:43:56 -0700
X-CSE-ConnectionGUID: G4jH1JCZTt64SDyxY4YzDw==
X-CSE-MsgGUID: 2BALRfeMS+OXa1FR1PokOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="184030061"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.91])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 10:43:55 -0700
Date: Wed, 1 Oct 2025 20:43:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jocelyn Falempe <jfalempe@redhat.com>, Maarten Lankhorst <dev@lankhorst.se>
Subject: Re: [PATCH 6/8] drm/{i915,xe}/panic: move framebuffer allocation
 where it belongs
Message-ID: <aN1oV1c2au8kdoBe@intel.com>
References: <cover.1756835342.git.jani.nikula@intel.com>
 <d29f63e0118d002fc8edd368caea7e8185418e17.1756835342.git.jani.nikula@intel.com>
 <2224b0cc8934e4e7c89ed1fb80648c637669f188@intel.com>
 <aN1Y2IB-oS4X5NU9@intel.com>
 <413d3e0fc6e6bc10ed22b7d7fa9771ab8fbaf414@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <413d3e0fc6e6bc10ed22b7d7fa9771ab8fbaf414@intel.com>
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

On Wed, Oct 01, 2025 at 08:28:53PM +0300, Jani Nikula wrote:
> On Wed, 01 Oct 2025, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Wed, Oct 01, 2025 at 06:04:58PM +0300, Jani Nikula wrote:
> >> On Tue, 02 Sep 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> >> > The struct intel_framebuffer allocation naturally belongs in intel_fb.c,
> >> > not hidden inside panic implementation. Separate the panic
> >> > allocation. Drop the unnecessary struct i915_framebuffer and struct
> >> > xe_framebuffer types.
> >> >
> >> > Cc: Jocelyn Falempe <jfalempe@redhat.com>
> >> > Cc: Maarten Lankhorst <dev@lankhorst.se>
> >> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_fb.c    | 17 ++++++++++++++++-
> >> >  drivers/gpu/drm/i915/display/intel_panic.c |  4 ++--
> >> >  drivers/gpu/drm/i915/display/intel_panic.h |  3 ++-
> >> >  drivers/gpu/drm/i915/gem/i915_gem_object.h |  5 +++--
> >> >  drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 17 ++++-------------
> >> >  drivers/gpu/drm/xe/display/xe_panic.c      | 17 ++++-------------
> >> >  6 files changed, 31 insertions(+), 32 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> >> > index 2a2ed0f0461f..22a4a1575d22 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> >> > @@ -2346,7 +2346,22 @@ intel_user_framebuffer_create(struct drm_device *dev,
> >> >  
> >> >  struct intel_framebuffer *intel_framebuffer_alloc(void)
> >> >  {
> >> > -	return intel_bo_alloc_framebuffer();
> >> > +	struct intel_framebuffer *intel_fb;
> >> > +	struct intel_panic *panic;
> >> > +
> >> > +	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
> >> > +	if (!intel_fb)
> >> > +		return NULL;
> >> > +
> >> > +	panic = intel_panic_alloc();
> >> > +	if (!panic) {
> >> > +		kfree(intel_fb);
> >> > +		return NULL;
> >> > +	}
> >> > +
> >> > +	intel_fb->panic = panic;
> >> 
> >> So I screwed up here. There's no deallocation of fb->panic, and this
> >> leaks. I don't know what I was thinking.
> >> 
> >> To make matters worse, struct intel_framebuffer is deallocated via
> >> drm_framebuffer_put() i.e. there's no obvious place to plug the free in.
> >
> > intel_user_framebuffer_destroy()
> 
> D'oh! I still wasn't thinking it appears. Thanks.
> 
> Still not straightforward with the alloc and init split in
> i9xx_get_initial_plane_config()/skl_get_initial_plane_config() and the
> intel_alloc_initial_plane_obj() implementations.
> 
> I think the framebuffer leaked on the error paths already before my
> change, so I guess I could just plug what I caused.

Maybe just move the panic alloc into intel_framebuffer_init()?

Hmm, looks like someone opened the small race there again with the
intel_frontbuffer_get() vs. intel_fb_bo_framebuffer_init() reodering.
I'll need to fix that again...

-- 
Ville Syrjälä
Intel
