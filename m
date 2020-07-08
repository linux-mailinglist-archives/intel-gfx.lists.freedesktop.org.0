Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 573EA2187DF
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 14:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40C7C6E0D4;
	Wed,  8 Jul 2020 12:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B9B86E0D4
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 12:43:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21752414-1500050 for multiple; Wed, 08 Jul 2020 13:43:00 +0100
MIME-Version: 1.0
In-Reply-To: <427a43a2-c434-6239-5101-87209472def9@linux.intel.com>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-10-chris@chris-wilson.co.uk>
 <427a43a2-c434-6239-5101-87209472def9@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 08 Jul 2020 13:42:58 +0100
Message-ID: <159421217807.17526.6465016562541726599@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 09/20] drm/i915/gem: Assign context id for
 async work
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-07-08 13:26:24)
> 
> On 06/07/2020 07:19, Chris Wilson wrote:
> > Allocate a few dma fence context id that we can use to associate async work
> > [for the CPU] launched on behalf of this context. For extra fun, we allow
> > a configurable concurrency width.
> > 
> > A current example would be that we spawn an unbound worker for every
> > userptr get_pages. In the future, we wish to charge this work to the
> > context that initiated the async work and to impose concurrency limits
> > based on the context.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_context.c       | 4 ++++
> >   drivers/gpu/drm/i915/gem/i915_gem_context.h       | 6 ++++++
> >   drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 6 ++++++
> >   3 files changed, 16 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > index 41784df51e58..bd68746327b3 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> > @@ -714,6 +714,10 @@ __create_context(struct drm_i915_private *i915)
> >       ctx->sched.priority = I915_USER_PRIORITY(I915_PRIORITY_NORMAL);
> >       mutex_init(&ctx->mutex);
> >   
> > +     ctx->async.width = rounddown_pow_of_two(num_online_cpus());
> > +     ctx->async.context = dma_fence_context_alloc(ctx->async.width);
> > +     ctx->async.width--;
> 
> Hey I had a tri-core CPU back in the day.. :) Really, I can only assume 
> you are oding some tricks with masks which maybe only work with power of 
> 2 num cpus? Hard to say.. please explain in a comment.

Just a pot mask, that fits in the currently available set of CPUs.
 
> I don't even understand what the context will be for yet and why it 
> needs a separate context id.

The longer term view is that I want to pull the various async tasks we
use into a CPU scheduling kthread[s], that shares the same priority
inheritance of tasks. The issue at the moment is that as we use the
system_wq, that imposes an implicit FIFO ordering on our tasks upsetting
our context priorities. This is a step towards that to start looking at
how we might limit concurrency in various stages by using a bunch of
timelines for each stage, and queuing our work along each timeline before
submitting to an unbound system_wq. [The immediate goal is to limit how
much of the CPU one client can hog by submitting deferred work that would
run in parallel, with a view to making that configurable per-context.]

> >       spin_lock_init(&ctx->stale.lock);
> >       INIT_LIST_HEAD(&ctx->stale.engines);
> >   
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> > index 3702b2fb27ab..e104ff0ae740 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> > @@ -134,6 +134,12 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
> >   int i915_gem_context_reset_stats_ioctl(struct drm_device *dev, void *data,
> >                                      struct drm_file *file);
> >   
> > +static inline u64 i915_gem_context_async_id(struct i915_gem_context *ctx)
> > +{
> > +     return (ctx->async.context +
> > +             (atomic_fetch_inc(&ctx->async.cur) & ctx->async.width));
> > +}
> > +
> >   static inline struct i915_gem_context *
> >   i915_gem_context_get(struct i915_gem_context *ctx)
> >   {
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > index ae14ca24a11f..52561f98000f 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> > @@ -85,6 +85,12 @@ struct i915_gem_context {
> >   
> >       struct intel_timeline *timeline;
> >   
> > +     struct {
> > +             u64 context;
> > +             atomic_t cur;
> 
> What is cur? In which patch it gets used? (Can't see it.)

See i915_gem_context_async_id() above.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
