Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 678345585E8
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 20:06:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC66310E559;
	Thu, 23 Jun 2022 18:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABA6410E544
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656007585; x=1687543585;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2b1PR/aYOHkiAYfIChLORbvyAJS+KWXNdpRvpUo5DDg=;
 b=M7HG4rdQ13PiW7pCpoOJQplvMzlillx2RmuIHk94nIXqYjeDj/02ZJRm
 vayh2WORru2Ns1ezqG9VsGLWPstU+zGc0JzH1GPVDAy3nh/7PZVp1C4dt
 xdDcbKsbRwvz1joGKksYOIA3mRZw4SJW14yuhJ37nHMTvsPPwOwd2e9Gs
 cmxIZF9Ew42skCS7PxOnpT7WgaKscPq7juydMRPDoDAzwTRu5PyWwmuQy
 4r28t/pVbkOqhGv1Ar4sAF4y6h+elJmjXoEt/Rq65AEVbhO0MxeU5AToi
 WxmDr4AtbBbrzhr+/laOjs7iIlPfLb4mFLiMYA7Y2ElkK4k05a4xnyge2 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="281528317"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="281528317"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 11:06:25 -0700
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="644861686"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 11:06:24 -0700
Date: Thu, 23 Jun 2022 11:06:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YrSrn7uZlHlTDcDc@mdroper-desk1.amr.corp.intel.com>
References: <20220617190629.355356-1-jose.souza@intel.com>
 <YqzV9N4qGegV7Y3h@mdroper-desk1.amr.corp.intel.com>
 <2ace5508071ad1e7fc9048cb988ceea313bcb151.camel@intel.com>
 <YrOVVcGkuq5QEMrY@mdroper-desk1.amr.corp.intel.com>
 <80633c435571ead14b963a17d96874bcb9cd92e6.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <80633c435571ead14b963a17d96874bcb9cd92e6.camel@intel.com>
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

On Thu, Jun 23, 2022 at 07:48:32AM -0700, Souza, Jose wrote:
> On Wed, 2022-06-22 at 15:19 -0700, Matt Roper wrote:
> > On Tue, Jun 21, 2022 at 10:03:04AM -0700, Souza, Jose wrote:
> > > On Fri, 2022-06-17 at 12:28 -0700, Matt Roper wrote:
> > > > On Fri, Jun 17, 2022 at 12:06:29PM -0700, José Roberto de Souza wrote:
> > > > > Gem buffers could still be in use by display after i915_gem_suspend()
> > > > > is executed so there is chances that i915_gem_flush_free_objects()
> > > > > will be being executed at the same time that
> > > > > intel_runtime_pm_driver_release() is executed printing warnings about
> > > > > wakerefs will being held.
> > > > 
> > > > By the same logic do we need to adjust i915_driver_remove() too?
> > > 
> > > Nope, all display buffers are freed in i915_driver_unregister() call chain:
> > > 
> > > 
> > > i915_driver_remove()
> > > 	i915_driver_unregister()
> > > 		intel_display_driver_unregister()
> > > 			drm_atomic_helper_shutdown()
> > > 	i915_gem_suspend()
> > > 		i915_gem_drain_freed_objects()
> > > 
> > > 
> > > Only FBC compressed framebuffer is freed after that but that will not cause any warnings as it is allocated from stolen memory.
> > 
> > Okay sounds good; thanks for checking.
> > 
> > I'm still having a bit of trouble understanding your description of the
> > issue in the commit message though:
> > 
> >         "...so there is chances that i915_gem_flush_free_objects() will
> >         be being executed at the same time that
> >         intel_runtime_pm_driver_release()..."
> > 
> > I'm not super familiar with the driver teardown paths, or the memory
> > management cleanup details.  Intuitively it makes sense that we should
> > clean up memory management (GEM) only after we've torn down display so
> > that all objects that were used by framebuffers are out of circulation.
> > But from a cursory view, it looks like i915_gem_suspend() is mostly
> > concerned with quiescing the GT and cleaning up PPGTT (which doesn't
> > impact display since all of its buffers are in the GGTT).
> > 
> > Is the problem arising from i915->mm.free_work still doing asynchronous
> > work to actually release the unused objects at the same time we're
> > tearing down runtime PM later?  If so does swapping the order of the
> > gem_suspend and display disable here actually prevent that from
> > happening or does it just make the race less likely by helping some
> > objects free up earlier?
> 
> So when the last reference of a gem object is removed it is added to the mm.free_list list and mm.free_work is queued to actually free the object.
> i915_gem_drain_freed_objects() flushes the mm.free_work.
> 
> If any other gem object has its last reference removed after i915_gem_suspend()/i915_gem_drain_freed_objects() the warning in
> intel_runtime_pm_driver_release() can happen as the mm.free_work could be running at the same time.
> 
> But when pci_driver.remove() is called, probably all file descriptors attached to this device have been closed and the functions called after
> i915_gem_suspend() will not free any gem object, so I don't believe we will have any more warnings.

Okay, thanks for explaining, makes sense.  You might want to add some of
this extra explanation to the commit message too for future reference,
but either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> > 
> > 
> > Matt
> > 
> > > 
> > > > 
> > > > 
> > > > Matt
> > > > 
> > > > > 
> > > > > So here only calling i915_gem_suspend() and by consequence
> > > > > i915_gem_drain_freed_objects() only after display is down making
> > > > > sure all buffers are freed.
> > > > > 
> > > > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/i915_driver.c | 4 ++--
> > > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > > > index d26dcca7e654a..4227675dd1cfe 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > > > @@ -1067,8 +1067,6 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
> > > > >  	intel_runtime_pm_disable(&i915->runtime_pm);
> > > > >  	intel_power_domains_disable(i915);
> > > > >  
> > > > > -	i915_gem_suspend(i915);
> > > > > -
> > > > >  	if (HAS_DISPLAY(i915)) {
> > > > >  		drm_kms_helper_poll_disable(&i915->drm);
> > > > >  
> > > > > @@ -1085,6 +1083,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
> > > > >  
> > > > >  	intel_dmc_ucode_suspend(i915);
> > > > >  
> > > > > +	i915_gem_suspend(i915);
> > > > > +
> > > > >  	/*
> > > > >  	 * The only requirement is to reboot with display DC states disabled,
> > > > >  	 * for now leaving all display power wells in the INIT power domain
> > > > > -- 
> > > > > 2.36.1
> > > > > 
> > > > 
> > > 
> > 
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
