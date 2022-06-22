Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F60556E57
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 00:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6E9910E09A;
	Wed, 22 Jun 2022 22:19:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D54AA10E09A
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 22:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655936342; x=1687472342;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XpS4BjC0JGy4Vei6Rm3bN4s3PRw2/4eVFtd9ucaS86Q=;
 b=CtOiaHb3IoODiU08YoNTaY1NMjU4iPXBeL4doa9iiVchy0VFsjRwvNQS
 hzaD45AcG1hO5sldUU1ZX3vFviWCAgVlc1LzJQo+bgEcvE7+/08ngij/2
 3FHzm8ri57/wDS5jCANOdd7W2ycT6hyMWQsqIc6mNLw1QoxHaD9PLw+Uf
 J0rJsJugRmOMTrQhuBhGkc6dta/x70QZHx+TdunQWUnVgo/HTblhl+cBk
 fSAjvLm0u1VQLkS4n1bp8/5FQolYAgGeLlqCgLPYDgRxPek+AQxDzqIsk
 JTD2cdA5RIR20T7nagieu31lDWyPrVi1TqJRfRgW4AU5mL/OeJ5XN8KVZ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="263593989"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="263593989"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 15:19:02 -0700
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="615343655"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 15:19:02 -0700
Date: Wed, 22 Jun 2022 15:19:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YrOVVcGkuq5QEMrY@mdroper-desk1.amr.corp.intel.com>
References: <20220617190629.355356-1-jose.souza@intel.com>
 <YqzV9N4qGegV7Y3h@mdroper-desk1.amr.corp.intel.com>
 <2ace5508071ad1e7fc9048cb988ceea313bcb151.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2ace5508071ad1e7fc9048cb988ceea313bcb151.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Call i915_gem_suspend() only
 after display is turned off
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

On Tue, Jun 21, 2022 at 10:03:04AM -0700, Souza, Jose wrote:
> On Fri, 2022-06-17 at 12:28 -0700, Matt Roper wrote:
> > On Fri, Jun 17, 2022 at 12:06:29PM -0700, José Roberto de Souza wrote:
> > > Gem buffers could still be in use by display after i915_gem_suspend()
> > > is executed so there is chances that i915_gem_flush_free_objects()
> > > will be being executed at the same time that
> > > intel_runtime_pm_driver_release() is executed printing warnings about
> > > wakerefs will being held.
> > 
> > By the same logic do we need to adjust i915_driver_remove() too?
> 
> Nope, all display buffers are freed in i915_driver_unregister() call chain:
> 
> 
> i915_driver_remove()
> 	i915_driver_unregister()
> 		intel_display_driver_unregister()
> 			drm_atomic_helper_shutdown()
> 	i915_gem_suspend()
> 		i915_gem_drain_freed_objects()
> 
> 
> Only FBC compressed framebuffer is freed after that but that will not cause any warnings as it is allocated from stolen memory.

Okay sounds good; thanks for checking.

I'm still having a bit of trouble understanding your description of the
issue in the commit message though:

        "...so there is chances that i915_gem_flush_free_objects() will
        be being executed at the same time that
        intel_runtime_pm_driver_release()..."

I'm not super familiar with the driver teardown paths, or the memory
management cleanup details.  Intuitively it makes sense that we should
clean up memory management (GEM) only after we've torn down display so
that all objects that were used by framebuffers are out of circulation.
But from a cursory view, it looks like i915_gem_suspend() is mostly
concerned with quiescing the GT and cleaning up PPGTT (which doesn't
impact display since all of its buffers are in the GGTT).

Is the problem arising from i915->mm.free_work still doing asynchronous
work to actually release the unused objects at the same time we're
tearing down runtime PM later?  If so does swapping the order of the
gem_suspend and display disable here actually prevent that from
happening or does it just make the race less likely by helping some
objects free up earlier?


Matt

> 
> > 
> > 
> > Matt
> > 
> > > 
> > > So here only calling i915_gem_suspend() and by consequence
> > > i915_gem_drain_freed_objects() only after display is down making
> > > sure all buffers are freed.
> > > 
> > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_driver.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > index d26dcca7e654a..4227675dd1cfe 100644
> > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > @@ -1067,8 +1067,6 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
> > >  	intel_runtime_pm_disable(&i915->runtime_pm);
> > >  	intel_power_domains_disable(i915);
> > >  
> > > -	i915_gem_suspend(i915);
> > > -
> > >  	if (HAS_DISPLAY(i915)) {
> > >  		drm_kms_helper_poll_disable(&i915->drm);
> > >  
> > > @@ -1085,6 +1083,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
> > >  
> > >  	intel_dmc_ucode_suspend(i915);
> > >  
> > > +	i915_gem_suspend(i915);
> > > +
> > >  	/*
> > >  	 * The only requirement is to reboot with display DC states disabled,
> > >  	 * for now leaving all display power wells in the INIT power domain
> > > -- 
> > > 2.36.1
> > > 
> > 
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
