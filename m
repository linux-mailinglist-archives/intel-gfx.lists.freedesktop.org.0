Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E69F3EA6BE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 16:46:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF06C6E41D;
	Thu, 12 Aug 2021 14:45:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB4766E418
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 14:45:51 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 w21-20020a7bc1150000b02902e69ba66ce6so4786212wmi.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 07:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/pVUWCt+GnJPGHt+waLtrVl9I5ZSqj5V327VgxxAsYw=;
 b=R58uERSeiPVYWsiXHi7jAuQhOakGjKo08VBDMTiymq5vFNrdatf/oJcic7FOrk+DXn
 IuxCYqtjtBmFHuEx4syY+B9W2GIsLFgetpbo+17cDSpTKqHwaA3CmpUNUXVell1nsQ/i
 Sj24xTmCelXoseaQ6bs/Ik7ZEnWyIcRVTpF0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/pVUWCt+GnJPGHt+waLtrVl9I5ZSqj5V327VgxxAsYw=;
 b=c7F0xWIe5P0c1iw7xvN6IsxbZpSaCiNbzjQyz3CokhbvnUUlnk1DuhguUPKPCxfsLF
 bl5ew9BkiM20tYosizRxnkM+sVrj0htU0qoi6klrR5vcxDYDip+iAsEOyoTRC2wk9ZlO
 UCCsB+zJr02dI4dkuNxn6R3JWgWl8ZE9H6wT8cigDa9eddfCO+QtB8IEAzYqURymehn1
 ffk8U43Url8iudDGtidZkOYTIjhS/mDih3F4mj1AP06ieOZI2x9/grQJ93kTOG0FAZ+n
 9/eSgNCU8smbM4sUfLlvgT5vViQvBfJp9qHFpj2/5Yy5ELlzw2DhSj/9cvo78ZXFg5rk
 SHlA==
X-Gm-Message-State: AOAM5318y4JYMj4Bd4smbd1xRje/5cGwSRx+POjWwAyEfyw4NWVUkUv0
 g8HsKudlgfR+nYiTDPxTkDFJMg==
X-Google-Smtp-Source: ABdhPJxrin1cF7UJ7VjuYM3p/AV9Osp1hWtEmq12+dYboK0Lhd6gbuam3m/XM1sqaSgFMad4TgbltA==
X-Received: by 2002:a1c:a543:: with SMTP id o64mr4871348wme.13.1628779549914; 
 Thu, 12 Aug 2021 07:45:49 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i5sm3213731wrs.85.2021.08.12.07.45.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 07:45:49 -0700 (PDT)
Date: Thu, 12 Aug 2021 16:45:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Message-ID: <YRU0G/gDvlGt82B2@phenom.ffwll.local>
References: <20210803222943.27686-1-matthew.brost@intel.com>
 <20210803222943.27686-17-matthew.brost@intel.com>
 <YRFHDuw1OjuTUxh0@phenom.ffwll.local>
 <20210809185823.GA123728@DUT151-ICLU.fm.intel.com>
 <YRI+kfRFSIG30uBQ@phenom.ffwll.local>
 <YRJB6xUlHcl44aT5@phenom.ffwll.local>
 <20210811180636.GA297189@DUT151-ICLU.fm.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210811180636.GA297189@DUT151-ICLU.fm.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 16/46] drm/i915/guc: Implement GuC
 parent-child context pin / unpin functions
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

On Wed, Aug 11, 2021 at 06:06:36PM +0000, Matthew Brost wrote:
> On Tue, Aug 10, 2021 at 11:07:55AM +0200, Daniel Vetter wrote:
> > On Tue, Aug 10, 2021 at 10:53:37AM +0200, Daniel Vetter wrote:
> > > On Mon, Aug 09, 2021 at 06:58:23PM +0000, Matthew Brost wrote:
> > > > On Mon, Aug 09, 2021 at 05:17:34PM +0200, Daniel Vetter wrote:
> > > > > On Tue, Aug 03, 2021 at 03:29:13PM -0700, Matthew Brost wrote:
> > > > > > Implement GuC parent-child context pin / unpin functions in which in any
> > > > > > contexts in the relationship are pinned all the contexts are pinned. The
> > > > > > parent owns most of the pinning / unpinning process and the children
> > > > > > direct any pins / unpins to the parent.
> > > > > > 
> > > > > > Patch implements a number of unused functions that will be connected
> > > > > > later in the series.
> > > > > > 
> > > > > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/gt/intel_context.c       | 187 ++++++++++++++++--
> > > > > >  drivers/gpu/drm/i915/gt/intel_context.h       |  43 +---
> > > > > >  drivers/gpu/drm/i915/gt/intel_context_types.h |   4 +-
> > > > > >  .../drm/i915/gt/intel_execlists_submission.c  |  25 ++-
> > > > > >  drivers/gpu/drm/i915/gt/intel_lrc.c           |  26 +--
> > > > > >  drivers/gpu/drm/i915/gt/intel_lrc.h           |   6 +-
> > > > > >  .../gpu/drm/i915/gt/intel_ring_submission.c   |   5 +-
> > > > > >  drivers/gpu/drm/i915/gt/mock_engine.c         |   4 +-
> > > > > >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 183 +++++++++++++++--
> > > > > >  9 files changed, 371 insertions(+), 112 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> > > > > > index 8cb92b10b547..bb4c14656067 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/intel_context.c
> > > > > > +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> > > > > > @@ -158,8 +158,8 @@ static void __ring_retire(struct intel_ring *ring)
> > > > > >  	intel_ring_unpin(ring);
> > > > > >  }
> > > > > >  
> > > > > > -static int intel_context_pre_pin(struct intel_context *ce,
> > > > > > -				 struct i915_gem_ww_ctx *ww)
> > > > > > +static int __intel_context_pre_pin(struct intel_context *ce,
> > > > > > +				   struct i915_gem_ww_ctx *ww)
> > > > > >  {
> > > > > >  	int err;
> > > > > >  
> > > > > > @@ -190,7 +190,7 @@ static int intel_context_pre_pin(struct intel_context *ce,
> > > > > >  	return err;
> > > > > >  }
> > > > > >  
> > > > > > -static void intel_context_post_unpin(struct intel_context *ce)
> > > > > > +static void __intel_context_post_unpin(struct intel_context *ce)
> > > > > >  {
> > > > > >  	if (ce->state)
> > > > > >  		__context_unpin_state(ce->state);
> > > > > > @@ -199,13 +199,85 @@ static void intel_context_post_unpin(struct intel_context *ce)
> > > > > >  	__ring_retire(ce->ring);
> > > > > >  }
> > > > > >  
> > > > > > -int __intel_context_do_pin_ww(struct intel_context *ce,
> > > > > > -			      struct i915_gem_ww_ctx *ww)
> > > > > > +static int intel_context_pre_pin(struct intel_context *ce,
> > > > > > +				 struct i915_gem_ww_ctx *ww)
> > > > > >  {
> > > > > > -	bool handoff = false;
> > > > > > -	void *vaddr;
> > > > > > +	struct intel_context *child;
> > > > > > +	int err, i = 0;
> > > > > > +
> > > > > > +	GEM_BUG_ON(intel_context_is_child(ce));
> > > > > > +
> > > > > > +	for_each_child(ce, child) {
> > > > > > +		err = __intel_context_pre_pin(child, ww);
> > > > > > +		if (unlikely(err))
> > > > > > +			goto unwind;
> > > > > > +		++i;
> > > > > > +	}
> > > > > > +
> > > > > > +	err = __intel_context_pre_pin(ce, ww);
> > > > > > +	if (unlikely(err))
> > > > > > +		goto unwind;
> > > > > > +
> > > > > > +	return 0;
> > > > > > +
> > > > > > +unwind:
> > > > > > +	for_each_child(ce, child) {
> > > > > > +		if (!i--)
> > > > > > +			break;
> > > > > > +		__intel_context_post_unpin(ce);
> > > > > > +	}
> > > > > > +
> > > > > > +	return err;
> > > > > > +}
> > > > > > +
> > > > > > +static void intel_context_post_unpin(struct intel_context *ce)
> > > > > > +{
> > > > > > +	struct intel_context *child;
> > > > > > +
> > > > > > +	GEM_BUG_ON(intel_context_is_child(ce));
> > > > > > +
> > > > > > +	for_each_child(ce, child)
> > > > > > +		__intel_context_post_unpin(child);
> > > > > > +
> > > > > > +	__intel_context_post_unpin(ce);
> > > > > > +}
> > > > > > +
> > > > > > +static int __do_ww_lock(struct intel_context *ce,
> > > > > > +			struct i915_gem_ww_ctx *ww)
> > > > > > +{
> > > > > > +	int err = i915_gem_object_lock(ce->timeline->hwsp_ggtt->obj, ww);
> > > > > > +
> > > > > > +	if (!err && ce->ring->vma->obj)
> > > > > > +		err = i915_gem_object_lock(ce->ring->vma->obj, ww);
> > > > > > +	if (!err && ce->state)
> > > > > > +		err = i915_gem_object_lock(ce->state->obj, ww);
> > > > > > +
> > > > > > +	return err;
> > > > > > +}
> > > > > > +
> > > > > > +static int do_ww_lock(struct intel_context *ce,
> > > > > > +		      struct i915_gem_ww_ctx *ww)
> > > > > > +{
> > > > > > +	struct intel_context *child;
> > > > > >  	int err = 0;
> > > > > >  
> > > > > > +	GEM_BUG_ON(intel_context_is_child(ce));
> > > > > > +
> > > > > > +	for_each_child(ce, child) {
> > > > > > +		err = __do_ww_lock(child, ww);
> > > > > > +		if (unlikely(err))
> > > > > > +			return err;
> > > > > > +	}
> > > > > > +
> > > > > > +	return __do_ww_lock(ce, ww);
> > > > > > +}
> > > > > > +
> > > > > > +static int __intel_context_do_pin_ww(struct intel_context *ce,
> > > > > > +				     struct i915_gem_ww_ctx *ww)
> > > > > > +{
> > > > > > +	bool handoff = false;
> > > > > > +	int err;
> > > > > > +
> > > > > >  	if (unlikely(!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))) {
> > > > > >  		err = intel_context_alloc_state(ce);
> > > > > >  		if (err)
> > > > > > @@ -217,14 +289,11 @@ int __intel_context_do_pin_ww(struct intel_context *ce,
> > > > > >  	 * refcount for __intel_context_active(), which prevent a lock
> > > > > >  	 * inversion of ce->pin_mutex vs dma_resv_lock().
> > > > > >  	 */
> > > > > > +	err = do_ww_lock(ce, ww);
> > > > > > +	if (err)
> > > > > > +		return err;
> > > > > >  
> > > > > > -	err = i915_gem_object_lock(ce->timeline->hwsp_ggtt->obj, ww);
> > > > > > -	if (!err && ce->ring->vma->obj)
> > > > > > -		err = i915_gem_object_lock(ce->ring->vma->obj, ww);
> > > > > > -	if (!err && ce->state)
> > > > > > -		err = i915_gem_object_lock(ce->state->obj, ww);
> > > > > > -	if (!err)
> > > > > > -		err = intel_context_pre_pin(ce, ww);
> > > > > > +	err = intel_context_pre_pin(ce, ww);
> > > > > >  	if (err)
> > > > > >  		return err;
> > > > > >  
> > > > > > @@ -232,7 +301,7 @@ int __intel_context_do_pin_ww(struct intel_context *ce,
> > > > > >  	if (err)
> > > > > >  		goto err_ctx_unpin;
> > > > > >  
> > > > > > -	err = ce->ops->pre_pin(ce, ww, &vaddr);
> > > > > > +	err = ce->ops->pre_pin(ce, ww);
> > > > > >  	if (err)
> > > > > >  		goto err_release;
> > > > > >  
> > > > > > @@ -250,7 +319,7 @@ int __intel_context_do_pin_ww(struct intel_context *ce,
> > > > > >  		if (unlikely(err))
> > > > > >  			goto err_unlock;
> > > > > >  
> > > > > > -		err = ce->ops->pin(ce, vaddr);
> > > > > > +		err = ce->ops->pin(ce);
> > > > > >  		if (err) {
> > > > > >  			intel_context_active_release(ce);
> > > > > >  			goto err_unlock;
> > > > > > @@ -290,7 +359,7 @@ int __intel_context_do_pin_ww(struct intel_context *ce,
> > > > > >  	return err;
> > > > > >  }
> > > > > >  
> > > > > > -int __intel_context_do_pin(struct intel_context *ce)
> > > > > > +static int __intel_context_do_pin(struct intel_context *ce)
> > > > > >  {
> > > > > >  	struct i915_gem_ww_ctx ww;
> > > > > >  	int err;
> > > > > > @@ -337,7 +406,7 @@ static void __intel_context_retire(struct i915_active *active)
> > > > > >  		 intel_context_get_avg_runtime_ns(ce));
> > > > > >  
> > > > > >  	set_bit(CONTEXT_VALID_BIT, &ce->flags);
> > > > > > -	intel_context_post_unpin(ce);
> > > > > > +	__intel_context_post_unpin(ce);
> > > > > >  	intel_context_put(ce);
> > > > > >  }
> > > > > >  
> > > > > > @@ -562,6 +631,88 @@ void intel_context_bind_parent_child(struct intel_context *parent,
> > > > > >  	child->parent = parent;
> > > > > >  }
> > > > > >  
> > > > > > +static inline int ____intel_context_pin(struct intel_context *ce)
> > > > > > +{
> > > > > > +	if (likely(intel_context_pin_if_active(ce)))
> > > > > > +		return 0;
> > > > > > +
> > > > > > +	return __intel_context_do_pin(ce);
> > > > > > +}
> > > > > > +
> > > > > > +static inline int __intel_context_pin_ww(struct intel_context *ce,
> > > > > > +					 struct i915_gem_ww_ctx *ww)
> > > > > > +{
> > > > > > +	if (likely(intel_context_pin_if_active(ce)))
> > > > > > +		return 0;
> > > > > > +
> > > > > > +	return __intel_context_do_pin_ww(ce, ww);
> > > > > > +}
> > > > > > +
> > > > > > +static inline void __intel_context_unpin(struct intel_context *ce)
> > > > > > +{
> > > > > > +	if (!ce->ops->sched_disable) {
> > > > > > +		__intel_context_do_unpin(ce, 1);
> > > > > > +	} else {
> > > > > > +		/*
> > > > > > +		 * Move ownership of this pin to the scheduling disable which is
> > > > > > +		 * an async operation. When that operation completes the above
> > > > > > +		 * intel_context_sched_disable_unpin is called potentially
> > > > > > +		 * unpinning the context.
> > > > > > +		 */
> > > > > > +		while (!atomic_add_unless(&ce->pin_count, -1, 1)) {
> > > > > > +			if (atomic_cmpxchg(&ce->pin_count, 1, 2) == 1) {
> > 
> > Just as an example of what I mean here on the code review side. This is an
> > endless loop, and you need to prove that there's no livelock or starvation
> > issues. Or explain how else you handle that if there is one.
> > 
> 
> If we pop into the while loop the pin_count = 1, so in all likelihood the
> follow if evaluates to true and the loop is broken. Only way it
> evaluates to false is the context gets pinned between the while & if, so
> on the next pass the while statement should evaluate to false breaking
> the looping unless of course the contexts gets unpinned again... In
> pratice this should be at most 3 atomic operations unless the loop is
> broken.

That's not really how this works ... E.g. the linux spinlocks are
ticketed/queued locks, exactly because the "this likely doesn't happen"
argument is not a very good one.

Can't we at least convert intel_context->pin_count into a normal counter
with a spinlock around it and then just make all this stuff a lot more
reasonable?

Yes this doesn't help the situation overall much, but at least we're not
spreading dubious hand-roll locking patterns all over the place for not
much good reasons.

Hand-crafted artisanal locking is never a quality sign.
-Daniel

> 
> Matt
> 
> > Because unlike hand-rolled stuff linux kernel spinlocks are not dumb
> > spinlocks, but ticketed/queued locks and therefor starvation proof. But
> > this stuff actually matters on todays multi-core and not-so-uniform (even
> > without fully NUMA) architectures.
> > 
> > Also I've just found another lockless retry loop which does actually
> > degenerate into a full endless loop (if you're sufficiently unlucky in
> > your races), so this really isn't academic at all.
> > -Daniel
> > 
> > > > > 
> > > > > Uh man lockless algorithms.
> > > > > 
> > > > > Unless this comes:
> > > > > - with essentially an academic looking paper that describes the abstract
> > > > >   model of the lockless algorithm and proves it against the linux kernel
> > > > >   meory model.
> > > > > 
> > > > > - lockless stuff generally needs barriers, and those barriers must be all
> > > > >   documented. This means a) a comment next to each barrier in the code b)
> > > > >   pointing to its counterparty c) with the overall design also explained
> > > > >   in the kerneldoc for those datastructres.
> > > > > 
> > > > >   If you don't know where your barriers are, see above point about "it
> > > > >   should look more like an academic paper in the commit message"
> > > > > 
> > > > > - hard perf data about how this is absolutely required, based on a
> > > > >   real-world use-case (which then sometimes justifies a microbenchmark
> > > > >   metric for the details, but it always needs to be real-world based). And
> > > > >   also a throughrough explainer how the perf issue isn't fixable through
> > > > >   better design. If that's not doable, just protect the state machine with
> > > > >   a big dumb lock and move on.
> > > > > 
> > > > > - Also, because the current code is in such bad shape wrt lockless
> > > > >   algorithms and premature optimizations: Overall complexity should go
> > > > >   down (it's way too high right now), so pay down your new lockless trick
> > > > >   by removing one of the existing ones that we only have because we can.
> > > > > 
> > > > > Yes this is steep, but we're way out in the woods here and need to smoehow
> > > > > get back.
> > > > 
> > > > See below FIXME. At one point all of this was hidden in the backend but
> > > > the dma-resv patches that landed upstream completely broke the layering,
> > > > hence the need for the code here.
> > > > 
> > > > I guess I don't really understand what mean when you say lockless alg
> > > > needs barriers, if the atomic functions are not really atomic wouldn't
> > > > the world be broken?
> > > 
> > > They unordered atomics by default. Which means they're atomic itself, but
> > > entirely unordered with anything else that's going on. Except when you
> > > have one of the atomic ops which already guarantee a barrier, or you
> > > manually add the barriers yourself. And yes there's enormous amounts of
> > > bugs, and with our dgpu potentially running on non-IA cpus those bugs
> > > matter.
> > > 
> > > Note that in C++ atomics the default behaviour is strongly ordered atomics
> > > with full barriers by default, because those are much easier to program
> > > against. Kernel isn't like that and defaults to "you need to add all the
> > > barriers yourself".
> > > 
> > > I have a full lenght rant in the works and will work that through all
> > > channels, but essentially locking is really hard to get right. And
> > > lockless tricks practically need an academic paper with a formal
> > > correctness proof against the linux memory model, or you do have bugs.
> > > 
> > > And I know that the current code is choke full of this stuff, so it's
> > > tempting to just add more, but we really cant. The amount of locking
> > > trickery we have in the codebase must go down substantially. My take is
> > > that any code that adds anything trick needs to fully justify it against
> > > the above list, _and_ also clean up some of the existing nonsense so that
> > > overall complexity doesn't increase.
> > > 
> > > I'll share the full length rant with you internally, it's not yet ready
> > > for publishing (but that's planned too).
> > > 
> > > 
> > > > Also here I don't think it is really as simple as grab big dump lock for
> > > > a variety of reasons, at least with the current dynamic pin / unpin code
> > > > in place. If we move a perma-pinned contexts this could be cleaned up
> > > > then.
> > > 
> > > Yes it's a disaster, but we need to stop the bleeding. If perma-pinned
> > > context can fix this I think we should do this asap. I'd say for parallel
> > > context we should just do it outright (special case them or whatever) so
> > > that we don't have to add even more very tricky code and tech debt.
> > > 
> > > Doable?
> > > 
> > > Cheers, Daniel
> > > 
> > > 
> > > > 
> > > > Matt
> > > > 
> > > > > -Daniel
> > > > > 
> > > > > > +				ce->ops->sched_disable(ce);
> > > > > > +				break;
> > > > > > +			}
> > > > > > +		}
> > > > > > +	}
> > > > > > +}
> > > > > > +
> > > > > > +/*
> > > > > > + * FIXME: This is ugly, these branches are only needed for parallel contexts in
> > > > > > + * GuC submission. Basically the idea is if any of the contexts, that are
> > > > > > + * configured for parallel submission, are pinned all the contexts need to be
> > > > > > + * pinned in order to register these contexts with the GuC. We are adding the
> > > > > > + * layer here while it should probably be pushed to the backend via a vfunc. But
> > > > > > + * since we already have ce->pin + a layer atop it is confusing. Definitely
> > > > > > + * needs a bit of rework how to properly layer / structure this code path. What
> > > > > > + * is in place works but is not ideal.
> > > > > > + */
> > > > > > +int intel_context_pin(struct intel_context *ce)
> > > > > > +{
> > > > > > +	if (intel_context_is_child(ce)) {
> > > > > > +		if (!atomic_fetch_add(1, &ce->pin_count))
> > > > > > +			return ____intel_context_pin(ce->parent);
> > > > > > +		else
> > > > > > +			return 0;
> > > > > > +	} else {
> > > > > > +		return ____intel_context_pin(ce);
> > > > > > +	}
> > > > > > +}
> > > > > > +
> > > > > > +int intel_context_pin_ww(struct intel_context *ce,
> > > > > > +			 struct i915_gem_ww_ctx *ww)
> > > > > > +{
> > > > > > +	if (intel_context_is_child(ce)) {
> > > > > > +		if (!atomic_fetch_add(1, &ce->pin_count))
> > > > > > +			return __intel_context_pin_ww(ce->parent, ww);
> > > > > > +		else
> > > > > > +			return 0;
> > > > > > +	} else {
> > > > > > +		return __intel_context_pin_ww(ce, ww);
> > > > > > +	}
> > > > > > +}
> > > > > > +
> > > > > > +void intel_context_unpin(struct intel_context *ce)
> > > > > > +{
> > > > > > +	if (intel_context_is_child(ce)) {
> > > > > > +		if (atomic_fetch_add(-1, &ce->pin_count) == 1)
> > > > > > +			__intel_context_unpin(ce->parent);
> > > > > > +	} else {
> > > > > > +		__intel_context_unpin(ce);
> > > > > > +	}
> > > > > > +}
> > > > > > +
> > > > > >  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> > > > > >  #include "selftest_context.c"
> > > > > >  #endif
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
> > > > > > index ad6ce5ac4824..c208691fc87d 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/intel_context.h
> > > > > > +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> > > > > > @@ -110,31 +110,15 @@ static inline void intel_context_unlock_pinned(struct intel_context *ce)
> > > > > >  	mutex_unlock(&ce->pin_mutex);
> > > > > >  }
> > > > > >  
> > > > > > -int __intel_context_do_pin(struct intel_context *ce);
> > > > > > -int __intel_context_do_pin_ww(struct intel_context *ce,
> > > > > > -			      struct i915_gem_ww_ctx *ww);
> > > > > > -
> > > > > >  static inline bool intel_context_pin_if_active(struct intel_context *ce)
> > > > > >  {
> > > > > >  	return atomic_inc_not_zero(&ce->pin_count);
> > > > > >  }
> > > > > >  
> > > > > > -static inline int intel_context_pin(struct intel_context *ce)
> > > > > > -{
> > > > > > -	if (likely(intel_context_pin_if_active(ce)))
> > > > > > -		return 0;
> > > > > > -
> > > > > > -	return __intel_context_do_pin(ce);
> > > > > > -}
> > > > > > -
> > > > > > -static inline int intel_context_pin_ww(struct intel_context *ce,
> > > > > > -				       struct i915_gem_ww_ctx *ww)
> > > > > > -{
> > > > > > -	if (likely(intel_context_pin_if_active(ce)))
> > > > > > -		return 0;
> > > > > > +int intel_context_pin(struct intel_context *ce);
> > > > > >  
> > > > > > -	return __intel_context_do_pin_ww(ce, ww);
> > > > > > -}
> > > > > > +int intel_context_pin_ww(struct intel_context *ce,
> > > > > > +			 struct i915_gem_ww_ctx *ww);
> > > > > >  
> > > > > >  static inline void __intel_context_pin(struct intel_context *ce)
> > > > > >  {
> > > > > > @@ -146,28 +130,11 @@ void __intel_context_do_unpin(struct intel_context *ce, int sub);
> > > > > >  
> > > > > >  static inline void intel_context_sched_disable_unpin(struct intel_context *ce)
> > > > > >  {
> > > > > > +	GEM_BUG_ON(intel_context_is_child(ce));
> > > > > >  	__intel_context_do_unpin(ce, 2);
> > > > > >  }
> > > > > >  
> > > > > > -static inline void intel_context_unpin(struct intel_context *ce)
> > > > > > -{
> > > > > > -	if (!ce->ops->sched_disable) {
> > > > > > -		__intel_context_do_unpin(ce, 1);
> > > > > > -	} else {
> > > > > > -		/*
> > > > > > -		 * Move ownership of this pin to the scheduling disable which is
> > > > > > -		 * an async operation. When that operation completes the above
> > > > > > -		 * intel_context_sched_disable_unpin is called potentially
> > > > > > -		 * unpinning the context.
> > > > > > -		 */
> > > > > > -		while (!atomic_add_unless(&ce->pin_count, -1, 1)) {
> > > > > > -			if (atomic_cmpxchg(&ce->pin_count, 1, 2) == 1) {
> > > > > > -				ce->ops->sched_disable(ce);
> > > > > > -				break;
> > > > > > -			}
> > > > > > -		}
> > > > > > -	}
> > > > > > -}
> > > > > > +void intel_context_unpin(struct intel_context *ce);
> > > > > >  
> > > > > >  void intel_context_enter_engine(struct intel_context *ce);
> > > > > >  void intel_context_exit_engine(struct intel_context *ce);
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> > > > > > index 66b22b370a72..eb82be15b7a2 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> > > > > > +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> > > > > > @@ -39,8 +39,8 @@ struct intel_context_ops {
> > > > > >  
> > > > > >  	void (*ban)(struct intel_context *ce, struct i915_request *rq);
> > > > > >  
> > > > > > -	int (*pre_pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void **vaddr);
> > > > > > -	int (*pin)(struct intel_context *ce, void *vaddr);
> > > > > > +	int (*pre_pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww);
> > > > > > +	int (*pin)(struct intel_context *ce);
> > > > > >  	void (*unpin)(struct intel_context *ce);
> > > > > >  	void (*post_unpin)(struct intel_context *ce);
> > > > > >  
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > > > > index baa1797af1c8..fc74ca28f245 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > > > > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > > > > @@ -2554,16 +2554,17 @@ static void execlists_submit_request(struct i915_request *request)
> > > > > >  static int
> > > > > >  __execlists_context_pre_pin(struct intel_context *ce,
> > > > > >  			    struct intel_engine_cs *engine,
> > > > > > -			    struct i915_gem_ww_ctx *ww, void **vaddr)
> > > > > > +			    struct i915_gem_ww_ctx *ww)
> > > > > >  {
> > > > > >  	int err;
> > > > > >  
> > > > > > -	err = lrc_pre_pin(ce, engine, ww, vaddr);
> > > > > > +	err = lrc_pre_pin(ce, engine, ww);
> > > > > >  	if (err)
> > > > > >  		return err;
> > > > > >  
> > > > > >  	if (!__test_and_set_bit(CONTEXT_INIT_BIT, &ce->flags)) {
> > > > > > -		lrc_init_state(ce, engine, *vaddr);
> > > > > > +		lrc_init_state(ce, engine, ce->lrc_reg_state -
> > > > > > +			       LRC_STATE_OFFSET / sizeof(*ce->lrc_reg_state));
> > > > > >  
> > > > > >  		 __i915_gem_object_flush_map(ce->state->obj, 0, engine->context_size);
> > > > > >  	}
> > > > > > @@ -2572,15 +2573,14 @@ __execlists_context_pre_pin(struct intel_context *ce,
> > > > > >  }
> > > > > >  
> > > > > >  static int execlists_context_pre_pin(struct intel_context *ce,
> > > > > > -				     struct i915_gem_ww_ctx *ww,
> > > > > > -				     void **vaddr)
> > > > > > +				     struct i915_gem_ww_ctx *ww)
> > > > > >  {
> > > > > > -	return __execlists_context_pre_pin(ce, ce->engine, ww, vaddr);
> > > > > > +	return __execlists_context_pre_pin(ce, ce->engine, ww);
> > > > > >  }
> > > > > >  
> > > > > > -static int execlists_context_pin(struct intel_context *ce, void *vaddr)
> > > > > > +static int execlists_context_pin(struct intel_context *ce)
> > > > > >  {
> > > > > > -	return lrc_pin(ce, ce->engine, vaddr);
> > > > > > +	return lrc_pin(ce, ce->engine);
> > > > > >  }
> > > > > >  
> > > > > >  static int execlists_context_alloc(struct intel_context *ce)
> > > > > > @@ -3570,20 +3570,19 @@ static int virtual_context_alloc(struct intel_context *ce)
> > > > > >  }
> > > > > >  
> > > > > >  static int virtual_context_pre_pin(struct intel_context *ce,
> > > > > > -				   struct i915_gem_ww_ctx *ww,
> > > > > > -				   void **vaddr)
> > > > > > +				   struct i915_gem_ww_ctx *ww)
> > > > > >  {
> > > > > >  	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
> > > > > >  
> > > > > >  	 /* Note: we must use a real engine class for setting up reg state */
> > > > > > -	return __execlists_context_pre_pin(ce, ve->siblings[0], ww, vaddr);
> > > > > > +	return __execlists_context_pre_pin(ce, ve->siblings[0], ww);
> > > > > >  }
> > > > > >  
> > > > > > -static int virtual_context_pin(struct intel_context *ce, void *vaddr)
> > > > > > +static int virtual_context_pin(struct intel_context *ce)
> > > > > >  {
> > > > > >  	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
> > > > > >  
> > > > > > -	return lrc_pin(ce, ve->siblings[0], vaddr);
> > > > > > +	return lrc_pin(ce, ve->siblings[0]);
> > > > > >  }
> > > > > >  
> > > > > >  static void virtual_context_enter(struct intel_context *ce)
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > > > > index bb4af4977920..c466fc966005 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > > > > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > > > > @@ -947,30 +947,30 @@ void lrc_reset(struct intel_context *ce)
> > > > > >  int
> > > > > >  lrc_pre_pin(struct intel_context *ce,
> > > > > >  	    struct intel_engine_cs *engine,
> > > > > > -	    struct i915_gem_ww_ctx *ww,
> > > > > > -	    void **vaddr)
> > > > > > +	    struct i915_gem_ww_ctx *ww)
> > > > > >  {
> > > > > > +	void *vaddr;
> > > > > >  	GEM_BUG_ON(!ce->state);
> > > > > >  	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
> > > > > >  
> > > > > > -	*vaddr = i915_gem_object_pin_map(ce->state->obj,
> > > > > > -					 i915_coherent_map_type(ce->engine->i915,
> > > > > > -								ce->state->obj,
> > > > > > -								false) |
> > > > > > -					 I915_MAP_OVERRIDE);
> > > > > > +	vaddr = i915_gem_object_pin_map(ce->state->obj,
> > > > > > +					i915_coherent_map_type(ce->engine->i915,
> > > > > > +							       ce->state->obj,
> > > > > > +							       false) |
> > > > > > +					I915_MAP_OVERRIDE);
> > > > > >  
> > > > > > -	return PTR_ERR_OR_ZERO(*vaddr);
> > > > > > +	ce->lrc_reg_state = vaddr + LRC_STATE_OFFSET;
> > > > > > +
> > > > > > +	return PTR_ERR_OR_ZERO(vaddr);
> > > > > >  }
> > > > > >  
> > > > > >  int
> > > > > >  lrc_pin(struct intel_context *ce,
> > > > > > -	struct intel_engine_cs *engine,
> > > > > > -	void *vaddr)
> > > > > > +	struct intel_engine_cs *engine)
> > > > > >  {
> > > > > > -	ce->lrc_reg_state = vaddr + LRC_STATE_OFFSET;
> > > > > > -
> > > > > >  	if (!__test_and_set_bit(CONTEXT_INIT_BIT, &ce->flags))
> > > > > > -		lrc_init_state(ce, engine, vaddr);
> > > > > > +		lrc_init_state(ce, engine,
> > > > > > +			       (void *)ce->lrc_reg_state - LRC_STATE_OFFSET);
> > > > > >  
> > > > > >  	ce->lrc.lrca = lrc_update_regs(ce, engine, ce->ring->tail);
> > > > > >  	return 0;
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
> > > > > > index 7f697845c4cf..837fcf00270d 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/intel_lrc.h
> > > > > > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
> > > > > > @@ -38,12 +38,10 @@ void lrc_destroy(struct kref *kref);
> > > > > >  int
> > > > > >  lrc_pre_pin(struct intel_context *ce,
> > > > > >  	    struct intel_engine_cs *engine,
> > > > > > -	    struct i915_gem_ww_ctx *ww,
> > > > > > -	    void **vaddr);
> > > > > > +	    struct i915_gem_ww_ctx *ww);
> > > > > >  int
> > > > > >  lrc_pin(struct intel_context *ce,
> > > > > > -	struct intel_engine_cs *engine,
> > > > > > -	void *vaddr);
> > > > > > +	struct intel_engine_cs *engine);
> > > > > >  void lrc_unpin(struct intel_context *ce);
> > > > > >  void lrc_post_unpin(struct intel_context *ce);
> > > > > >  
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > > > > > index 2958e2fae380..f4f301bfb9f7 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > > > > > +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > > > > > @@ -472,8 +472,7 @@ static int ring_context_init_default_state(struct intel_context *ce,
> > > > > >  }
> > > > > >  
> > > > > >  static int ring_context_pre_pin(struct intel_context *ce,
> > > > > > -				struct i915_gem_ww_ctx *ww,
> > > > > > -				void **unused)
> > > > > > +				struct i915_gem_ww_ctx *ww)
> > > > > >  {
> > > > > >  	struct i915_address_space *vm;
> > > > > >  	int err = 0;
> > > > > > @@ -576,7 +575,7 @@ static int ring_context_alloc(struct intel_context *ce)
> > > > > >  	return 0;
> > > > > >  }
> > > > > >  
> > > > > > -static int ring_context_pin(struct intel_context *ce, void *unused)
> > > > > > +static int ring_context_pin(struct intel_context *ce)
> > > > > >  {
> > > > > >  	return 0;
> > > > > >  }
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
> > > > > > index 2c1af030310c..826b5d7a4573 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/mock_engine.c
> > > > > > +++ b/drivers/gpu/drm/i915/gt/mock_engine.c
> > > > > > @@ -167,12 +167,12 @@ static int mock_context_alloc(struct intel_context *ce)
> > > > > >  }
> > > > > >  
> > > > > >  static int mock_context_pre_pin(struct intel_context *ce,
> > > > > > -				struct i915_gem_ww_ctx *ww, void **unused)
> > > > > > +				struct i915_gem_ww_ctx *ww)
> > > > > >  {
> > > > > >  	return 0;
> > > > > >  }
> > > > > >  
> > > > > > -static int mock_context_pin(struct intel_context *ce, void *unused)
> > > > > > +static int mock_context_pin(struct intel_context *ce)
> > > > > >  {
> > > > > >  	return 0;
> > > > > >  }
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > > > index dec757d319a2..c5c73c42bcf7 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > > > > @@ -1905,6 +1905,7 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
> > > > > >  
> > > > > >  	GEM_BUG_ON(!engine->mask);
> > > > > >  	GEM_BUG_ON(context_guc_id_invalid(ce));
> > > > > > +	GEM_BUG_ON(intel_context_is_child(ce));
> > > > > >  
> > > > > >  	/*
> > > > > >  	 * Ensure LRC + CT vmas are is same region as write barrier is done
> > > > > > @@ -2008,15 +2009,13 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
> > > > > >  
> > > > > >  static int __guc_context_pre_pin(struct intel_context *ce,
> > > > > >  				 struct intel_engine_cs *engine,
> > > > > > -				 struct i915_gem_ww_ctx *ww,
> > > > > > -				 void **vaddr)
> > > > > > +				 struct i915_gem_ww_ctx *ww)
> > > > > >  {
> > > > > > -	return lrc_pre_pin(ce, engine, ww, vaddr);
> > > > > > +	return lrc_pre_pin(ce, engine, ww);
> > > > > >  }
> > > > > >  
> > > > > >  static int __guc_context_pin(struct intel_context *ce,
> > > > > > -			     struct intel_engine_cs *engine,
> > > > > > -			     void *vaddr)
> > > > > > +			     struct intel_engine_cs *engine)
> > > > > >  {
> > > > > >  	if (i915_ggtt_offset(ce->state) !=
> > > > > >  	    (ce->lrc.lrca & CTX_GTT_ADDRESS_MASK))
> > > > > > @@ -2027,20 +2026,33 @@ static int __guc_context_pin(struct intel_context *ce,
> > > > > >  	 * explaination of why.
> > > > > >  	 */
> > > > > >  
> > > > > > -	return lrc_pin(ce, engine, vaddr);
> > > > > > +	return lrc_pin(ce, engine);
> > > > > > +}
> > > > > > +
> > > > > > +static void __guc_context_unpin(struct intel_context *ce)
> > > > > > +{
> > > > > > +	lrc_unpin(ce);
> > > > > > +}
> > > > > > +
> > > > > > +static void __guc_context_post_unpin(struct intel_context *ce)
> > > > > > +{
> > > > > > +	lrc_post_unpin(ce);
> > > > > >  }
> > > > > >  
> > > > > >  static int guc_context_pre_pin(struct intel_context *ce,
> > > > > > -			       struct i915_gem_ww_ctx *ww,
> > > > > > -			       void **vaddr)
> > > > > > +			       struct i915_gem_ww_ctx *ww)
> > > > > >  {
> > > > > > -	return __guc_context_pre_pin(ce, ce->engine, ww, vaddr);
> > > > > > +	return __guc_context_pre_pin(ce, ce->engine, ww);
> > > > > >  }
> > > > > >  
> > > > > > -static int guc_context_pin(struct intel_context *ce, void *vaddr)
> > > > > > +static int guc_context_pin(struct intel_context *ce)
> > > > > >  {
> > > > > > -	int ret = __guc_context_pin(ce, ce->engine, vaddr);
> > > > > > +	int ret;
> > > > > >  
> > > > > > +	GEM_BUG_ON(intel_context_is_parent(ce) ||
> > > > > > +		   intel_context_is_child(ce));
> > > > > > +
> > > > > > +	ret = __guc_context_pin(ce, ce->engine);
> > > > > >  	if (likely(!ret && !intel_context_is_barrier(ce)))
> > > > > >  		intel_engine_pm_get(ce->engine);
> > > > > >  
> > > > > > @@ -2054,7 +2066,7 @@ static void guc_context_unpin(struct intel_context *ce)
> > > > > >  	GEM_BUG_ON(context_enabled(ce));
> > > > > >  
> > > > > >  	unpin_guc_id(guc, ce, true);
> > > > > > -	lrc_unpin(ce);
> > > > > > +	__guc_context_unpin(ce);
> > > > > >  
> > > > > >  	if (likely(!intel_context_is_barrier(ce)))
> > > > > >  		intel_engine_pm_put(ce->engine);
> > > > > > @@ -2062,7 +2074,141 @@ static void guc_context_unpin(struct intel_context *ce)
> > > > > >  
> > > > > >  static void guc_context_post_unpin(struct intel_context *ce)
> > > > > >  {
> > > > > > -	lrc_post_unpin(ce);
> > > > > > +	__guc_context_post_unpin(ce);
> > > > > > +}
> > > > > > +
> > > > > > +/* Future patches will use this function */
> > > > > > +__maybe_unused
> > > > > > +static int guc_parent_context_pre_pin(struct intel_context *ce,
> > > > > > +				      struct i915_gem_ww_ctx *ww)
> > > > > > +{
> > > > > > +	struct intel_context *child;
> > > > > > +	int err, i = 0, j = 0;
> > > > > > +
> > > > > > +	for_each_child(ce, child) {
> > > > > > +		err = i915_active_acquire(&child->active);
> > > > > > +		if (unlikely(err))
> > > > > > +			goto unwind_active;
> > > > > > +		++i;
> > > > > > +	}
> > > > > > +
> > > > > > +	for_each_child(ce, child) {
> > > > > > +		err = __guc_context_pre_pin(child, child->engine, ww);
> > > > > > +		if (unlikely(err))
> > > > > > +			goto unwind_pre_pin;
> > > > > > +		++j;
> > > > > > +	}
> > > > > > +
> > > > > > +	err = __guc_context_pre_pin(ce, ce->engine, ww);
> > > > > > +	if (unlikely(err))
> > > > > > +		goto unwind_pre_pin;
> > > > > > +
> > > > > > +	return 0;
> > > > > > +
> > > > > > +unwind_pre_pin:
> > > > > > +	for_each_child(ce, child) {
> > > > > > +		if (!j--)
> > > > > > +			break;
> > > > > > +		__guc_context_post_unpin(child);
> > > > > > +	}
> > > > > > +
> > > > > > +unwind_active:
> > > > > > +	for_each_child(ce, child) {
> > > > > > +		if (!i--)
> > > > > > +			break;
> > > > > > +		i915_active_release(&child->active);
> > > > > > +	}
> > > > > > +
> > > > > > +	return err;
> > > > > > +}
> > > > > > +
> > > > > > +/* Future patches will use this function */
> > > > > > +__maybe_unused
> > > > > > +static void guc_parent_context_post_unpin(struct intel_context *ce)
> > > > > > +{
> > > > > > +	struct intel_context *child;
> > > > > > +
> > > > > > +	for_each_child(ce, child)
> > > > > > +		__guc_context_post_unpin(child);
> > > > > > +	__guc_context_post_unpin(ce);
> > > > > > +
> > > > > > +	for_each_child(ce, child) {
> > > > > > +		intel_context_get(child);
> > > > > > +		i915_active_release(&child->active);
> > > > > > +		intel_context_put(child);
> > > > > > +	}
> > > > > > +}
> > > > > > +
> > > > > > +/* Future patches will use this function */
> > > > > > +__maybe_unused
> > > > > > +static int guc_parent_context_pin(struct intel_context *ce)
> > > > > > +{
> > > > > > +	int ret, i = 0, j = 0;
> > > > > > +	struct intel_context *child;
> > > > > > +	struct intel_engine_cs *engine;
> > > > > > +	intel_engine_mask_t tmp;
> > > > > > +
> > > > > > +	GEM_BUG_ON(!intel_context_is_parent(ce));
> > > > > > +
> > > > > > +	for_each_child(ce, child) {
> > > > > > +		ret = __guc_context_pin(child, child->engine);
> > > > > > +		if (unlikely(ret))
> > > > > > +			goto unwind_pin;
> > > > > > +		++i;
> > > > > > +	}
> > > > > > +	ret = __guc_context_pin(ce, ce->engine);
> > > > > > +	if (unlikely(ret))
> > > > > > +		goto unwind_pin;
> > > > > > +
> > > > > > +	for_each_child(ce, child)
> > > > > > +		if (test_bit(CONTEXT_LRCA_DIRTY, &child->flags)) {
> > > > > > +			set_bit(CONTEXT_LRCA_DIRTY, &ce->flags);
> > > > > > +			break;
> > > > > > +		}
> > > > > > +
> > > > > > +	for_each_engine_masked(engine, ce->engine->gt,
> > > > > > +			       ce->engine->mask, tmp)
> > > > > > +		intel_engine_pm_get(engine);
> > > > > > +	for_each_child(ce, child)
> > > > > > +		for_each_engine_masked(engine, child->engine->gt,
> > > > > > +				       child->engine->mask, tmp)
> > > > > > +			intel_engine_pm_get(engine);
> > > > > > +
> > > > > > +	return 0;
> > > > > > +
> > > > > > +unwind_pin:
> > > > > > +	for_each_child(ce, child) {
> > > > > > +		if (++j > i)
> > > > > > +			break;
> > > > > > +		__guc_context_unpin(child);
> > > > > > +	}
> > > > > > +
> > > > > > +	return ret;
> > > > > > +}
> > > > > > +
> > > > > > +/* Future patches will use this function */
> > > > > > +__maybe_unused
> > > > > > +static void guc_parent_context_unpin(struct intel_context *ce)
> > > > > > +{
> > > > > > +	struct intel_context *child;
> > > > > > +	struct intel_engine_cs *engine;
> > > > > > +	intel_engine_mask_t tmp;
> > > > > > +
> > > > > > +	GEM_BUG_ON(!intel_context_is_parent(ce));
> > > > > > +	GEM_BUG_ON(context_enabled(ce));
> > > > > > +
> > > > > > +	unpin_guc_id(ce_to_guc(ce), ce, true);
> > > > > > +	for_each_child(ce, child)
> > > > > > +		__guc_context_unpin(child);
> > > > > > +	__guc_context_unpin(ce);
> > > > > > +
> > > > > > +	for_each_engine_masked(engine, ce->engine->gt,
> > > > > > +			       ce->engine->mask, tmp)
> > > > > > +		intel_engine_pm_put(engine);
> > > > > > +	for_each_child(ce, child)
> > > > > > +		for_each_engine_masked(engine, child->engine->gt,
> > > > > > +				       child->engine->mask, tmp)
> > > > > > +			intel_engine_pm_put(engine);
> > > > > >  }
> > > > > >  
> > > > > >  static void __guc_context_sched_enable(struct intel_guc *guc,
> > > > > > @@ -2993,18 +3139,17 @@ static int guc_request_alloc(struct i915_request *rq)
> > > > > >  }
> > > > > >  
> > > > > >  static int guc_virtual_context_pre_pin(struct intel_context *ce,
> > > > > > -				       struct i915_gem_ww_ctx *ww,
> > > > > > -				       void **vaddr)
> > > > > > +				       struct i915_gem_ww_ctx *ww)
> > > > > >  {
> > > > > >  	struct intel_engine_cs *engine = guc_virtual_get_sibling(ce->engine, 0);
> > > > > >  
> > > > > > -	return __guc_context_pre_pin(ce, engine, ww, vaddr);
> > > > > > +	return __guc_context_pre_pin(ce, engine, ww);
> > > > > >  }
> > > > > >  
> > > > > > -static int guc_virtual_context_pin(struct intel_context *ce, void *vaddr)
> > > > > > +static int guc_virtual_context_pin(struct intel_context *ce)
> > > > > >  {
> > > > > >  	struct intel_engine_cs *engine = guc_virtual_get_sibling(ce->engine, 0);
> > > > > > -	int ret = __guc_context_pin(ce, engine, vaddr);
> > > > > > +	int ret = __guc_context_pin(ce, engine);
> > > > > >  	intel_engine_mask_t tmp, mask = ce->engine->mask;
> > > > > >  
> > > > > >  	if (likely(!ret))
> > > > > > @@ -3024,7 +3169,7 @@ static void guc_virtual_context_unpin(struct intel_context *ce)
> > > > > >  	GEM_BUG_ON(intel_context_is_barrier(ce));
> > > > > >  
> > > > > >  	unpin_guc_id(guc, ce, true);
> > > > > > -	lrc_unpin(ce);
> > > > > > +	__guc_context_unpin(ce);
> > > > > >  
> > > > > >  	for_each_engine_masked(engine, ce->engine->gt, mask, tmp)
> > > > > >  		intel_engine_pm_put(engine);
> > > > > > -- 
> > > > > > 2.28.0
> > > > > > 
> > > > > 
> > > > > -- 
> > > > > Daniel Vetter
> > > > > Software Engineer, Intel Corporation
> > > > > http://blog.ffwll.ch
> > > 
> > > -- 
> > > Daniel Vetter
> > > Software Engineer, Intel Corporation
> > > http://blog.ffwll.ch
> > 
> > -- 
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
