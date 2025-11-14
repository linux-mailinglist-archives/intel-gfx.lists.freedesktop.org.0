Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 578C6C5D892
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 15:21:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5F6D10EA88;
	Fri, 14 Nov 2025 14:21:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RkIkPWDR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A630C10EA84;
 Fri, 14 Nov 2025 14:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763130100; x=1794666100;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5wQv1TmV1xieH5oFFkOP4bDdhI+tbsGUyG6ivskBZsM=;
 b=RkIkPWDROnjmkKS3oj95Cltm39Om0o1cv1ytdvA8Vq8yxA035p0k71b9
 4+WgBXnqNy/upJvkxkJXpqr7MkrHSvYCRx1zugYgYsr12WlHAqC2yZCKN
 mZMQrcHKzvvnMPE9Wwjb46VoBhoQyArYfAhh0RO0KGjHo8JPbFJFy2SJ7
 xb0hPk4YughW5sE9uD76xG9ji3ngbF/3p29M63iJW4AUoaoTnFoML6j25
 K5KBVsYVJz6dqZ6jpILbCOX/AcgUPq5A6GrDuJGH87QmgKRv37XKyycQy
 eSOX1gmklFnDF55b//UpF7Y8Azwy0VWz0D1gDiRV/DR8IyxndQWJLMyR4 A==;
X-CSE-ConnectionGUID: 2vbdfzUXTT633yx5pu8tdw==
X-CSE-MsgGUID: iyygpVqSTFK17Bx32jW78w==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="65127694"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="65127694"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 06:21:39 -0800
X-CSE-ConnectionGUID: jRy8/xtSSdWtspfpdu2xyQ==
X-CSE-MsgGUID: s41Sw5sOS92Or58DiqJoxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="189055392"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.70])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 06:21:38 -0800
Date: Fri, 14 Nov 2025 16:21:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 08/10] drm/i915/rps: postpone i915 fence check to boost
Message-ID: <aRc67_nycxi-U5Nw@intel.com>
References: <cover.1763115899.git.jani.nikula@intel.com>
 <cea4ca198ccb5272df49c93bbfb73394912e1219.1763115899.git.jani.nikula@intel.com>
 <aRc5n-WdlZuZNfMP@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aRc5n-WdlZuZNfMP@intel.com>
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

On Fri, Nov 14, 2025 at 04:15:59PM +0200, Ville Syrjälä wrote:
> On Fri, Nov 14, 2025 at 12:26:47PM +0200, Jani Nikula wrote:
> > Make the RPS boost code independent of i915 request code by moving the
> > dma_fence_is_i915() check to the RPS boost call.
> > 
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > 
> > ---
> > 
> > I'm not actually sure what the non-i915 fences would be here, and what
> > kind of overhead they would cause.
> 
> The fence could be from another GPU driver that did the rendering,
> and then we can't convert the fence to i915 request.
> 
> At some point we should probably look into using the fence
> .set_deadline() stuff instead of this "boost when late"
> approach, but that's one of those things that probably needs
> some amount of hand tuning, so real work required.
> 
> Anyways I think this should be fine, we just set up the vblank
> miss thingy even for non-i915 fences now and then do nothing
> if it triggers.
> 
> aReviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Rather
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_rps.c | 4 ----
> >  drivers/gpu/drm/i915/gt/intel_rps.c              | 7 ++++++-
> >  2 files changed, 6 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
> > index e70c4f0eab80..86e757423c0a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_rps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
> > @@ -9,7 +9,6 @@
> >  #include <drm/drm_vblank.h>
> >  
> >  #include "i915_reg.h"
> > -#include "i915_request.h"
> >  #include "intel_display_core.h"
> >  #include "intel_display_irq.h"
> >  #include "intel_display_rps.h"
> > @@ -49,9 +48,6 @@ void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
> >  	if (!intel_parent_rps_available(display))
> >  		return;
> >  
> > -	if (!dma_fence_is_i915(fence))
> > -		return;
> > -
> >  	if (DISPLAY_VER(display) < 6)
> >  		return;
> >  
> > diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> > index 61d746bda462..05b21de6c24b 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> > @@ -2917,7 +2917,12 @@ EXPORT_SYMBOL_GPL(i915_gpu_turbo_disable);
> >  
> >  static void boost(struct dma_fence *fence)
> >  {
> > -	struct i915_request *rq = to_request(fence);
> > +	struct i915_request *rq;
> > +
> > +	if (!dma_fence_is_i915(fence))
> > +		return;
> > +
> > +	rq = to_request(fence);
> >  
> >  	/*
> >  	 * If we missed the vblank, but the request is already running it
> > -- 
> > 2.47.3
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
