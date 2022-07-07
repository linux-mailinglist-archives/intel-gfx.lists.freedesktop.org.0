Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C7E56ADF8
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 23:50:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EAB514A488;
	Thu,  7 Jul 2022 21:50:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B96C114A850
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 21:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657230634; x=1688766634;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6tkDbqJpj/2BRKQzoiI6zQJn4nLZf0F8ZMzQVi0dypg=;
 b=JwrPOw+/3vlg7LPpVQ2eihmT8LfPgdPMFbqZjDegV/TGlmEdFPT5eYgz
 St0B/Hljyo/uVQuYQTXX0l7GgyG5VJzig+gQLsp5ThFFYTwOZSmtNAqlm
 0U4CjrW9NCk1CMVP5jzgxBqsTVssL7LJnO2DaY6ZGUQpgAYU251VhxtEy
 jQ/k4MmD8nIE1rtDcYAb68kR1rOGKho5BeXJEj0bIRXUVRALYo0uiLUVw
 n6/3M1c/juXcYircZYLsc0S9Y0chWsDRaEaQJI5foQ/xElJj1J1d47ItW
 YgRoPYFcAUvH/xkw+Vb/OKlXnWBJriVPqGVYInD7y0KEJu9yketaYgssW A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="370444306"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="370444306"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 14:50:34 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="651303150"
Received: from tlonnber-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.208.235])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 14:50:32 -0700
Date: Thu, 7 Jul 2022 23:50:29 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YsdVJTU+kZzZS1wb@alfio.lan>
References: <cover.1656911806.git.karolina.drobnik@intel.com>
 <b0d575e51f795d0b19ca93fbf3e796a747c961ab.1656911806.git.karolina.drobnik@intel.com>
 <YsceoP5CYySLWjJk@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YsceoP5CYySLWjJk@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gem: Look for waitboosting
 across the whole object prior to individual waits
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
Cc: Thomas Voegtle <tv@lio96.de>, intel-gfx@lists.freedesktop.org,
 chris.p.wilson@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo, Chris and Karolina,

On Thu, Jul 07, 2022 at 01:57:52PM -0400, Rodrigo Vivi wrote:
> On Tue, Jul 05, 2022 at 12:57:17PM +0200, Karolina Drobnik wrote:
> > From: Chris Wilson <chris@chris-wilson.co.uk>
> > 
> > We employ a "waitboost" heuristic to detect when userspace is stalled
> > waiting for results from earlier execution. Under latency sensitive work
> > mixed between the gpu/cpu, the GPU is typically under-utilised and so
> > RPS sees that low utilisation as a reason to downclock the frequency,
> > causing longer stalls and lower throughput. The user left waiting for
> > the results is not impressed.

you can also write here "... is not impressed, was sad and cried"

> > On applying commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv
> > workaround") it was observed that deinterlacing h264 on Haswell
> > performance dropped by 2-5x. The reason being that the natural workload
> > was not intense enough to trigger RPS (using HW evaluation intervals) to
> > upclock, and so it was depending on waitboosting for the throughput.
> > 
> > Commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
> > changes the composition of dma-resv from keeping a single write fence +
> > multiple read fences, to a single array of multiple write and read
> > fences (a maximum of one pair of write/read fences per context). The
> > iteration order was also changed implicitly from all-read fences then
> > the single write fence, to a mix of write fences followed by read
> > fences. It is that ordering change that belied the fragility of
> > waitboosting.
> > 
> > Currently, a waitboost is inspected at the point of waiting on an
> > outstanding fence. If the GPU is backlogged such that we haven't yet
> > stated the request we need to wait on, we force the GPU to upclock until
> > the completion of that request. By changing the order in which we waited
> > upon requests, we ended up waiting on those requests in sequence and as
> > such we saw that each request was already started and so not a suitable
> > candidate for waitboosting.
> > 
> > Instead of
> 
> Okay, all the explanation makes sense. But this commit message and
> the cover letter tells that we are doing X *Instead* *of* Y.
> That would mean code for Y would be removed. But this patch just add X.
> 
> So it looks to me that we are adding extra boosts with the code below.
> 
> What am I missing?

I think the two things are unrelated and they are not mutually
exclusive.

What this patch does is to scan the fences upfront and boost
those requests that are not naturally boosted (that is what we
currently do and as of now regressed) in order to not leave the
sad user above crying for long.

Am I right? If so I would r-b this patch as it looks good to me.

> asking whether to boost each fence in turn, we can look at
> > whether boosting is required for the dma-resv ensemble prior to waiting
> > on any fence, making the heuristic more robust to the order in which
> > fences are stored in the dma-resv.
> > 
> > Reported-by: Thomas Voegtle <tv@lio96.de>
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6284
> > Fixes: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
> > Tested-by: Thomas Voegtle <tv@lio96.de>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_wait.c | 35 ++++++++++++++++++++++++
> >  1 file changed, 35 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> > index 319936f91ac5..3fbb464746e1 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> > @@ -9,6 +9,7 @@
> >  #include <linux/jiffies.h>
> >  
> >  #include "gt/intel_engine.h"
> > +#include "gt/intel_rps.h"
> >  
> >  #include "i915_gem_ioctls.h"
> >  #include "i915_gem_object.h"
> > @@ -31,6 +32,38 @@ i915_gem_object_wait_fence(struct dma_fence *fence,
> >  				      timeout);
> >  }
> >  
> > +static void
> > +i915_gem_object_boost(struct dma_resv *resv, unsigned int flags)
> > +{
> > +	struct dma_resv_iter cursor;
> > +	struct dma_fence *fence;
> > +
> > +	/*
> > +	 * Prescan all fences for potential boosting before we begin waiting.
> > +	 *
> > +	 * When we wait, we wait on outstanding fences serially. If the
> > +	 * dma-resv contains a sequence such as 1:1, 1:2 instead of a reduced
> > +	 * form 1:2, then as we look at each wait in turn we see that each
> > +	 * request is currently executing and not worthy of boosting. But if
> > +	 * we only happen to look at the final fence in the sequence (because
> > +	 * of request coalescing or splitting between read/write arrays by
> > +	 * the iterator), then we would boost. As such our decision to boost
> > +	 * or not is delicately balanced on the order we wait on fences.
> > +	 *
> > +	 * So instead of looking for boosts sequentially, look for all boosts
> > +	 * upfront and then wait on the outstanding fences.
> > +	 */
> > +
> > +	dma_resv_iter_begin(&cursor, resv,
> > +			    dma_resv_usage_rw(flags & I915_WAIT_ALL));
> > +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> > +		if (dma_fence_is_i915(fence) &&
> > +		    !i915_request_started(to_request(fence)))
> > +			intel_rps_boost(to_request(fence));
> > +	}

you can remove the brackets here.

Andi

> > +	dma_resv_iter_end(&cursor);
> > +}
> > +
> >  static long
> >  i915_gem_object_wait_reservation(struct dma_resv *resv,
> >  				 unsigned int flags,
> > @@ -40,6 +73,8 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
> >  	struct dma_fence *fence;
> >  	long ret = timeout ?: 1;
> >  
> > +	i915_gem_object_boost(resv, flags);
> > +
> >  	dma_resv_iter_begin(&cursor, resv,
> >  			    dma_resv_usage_rw(flags & I915_WAIT_ALL));
> >  	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> > -- 
> > 2.25.1
> > 
