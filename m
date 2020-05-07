Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7981C8360
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 09:24:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B1C46E027;
	Thu,  7 May 2020 07:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6692D6E027
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 07:24:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21134630-1500050 for multiple; Thu, 07 May 2020 08:07:47 +0100
MIME-Version: 1.0
In-Reply-To: <20200506143616.19925-2-chris@chris-wilson.co.uk>
References: <20200506143616.19925-1-chris@chris-wilson.co.uk>
 <20200506143616.19925-2-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158883526573.927.15444450504350938149@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 07 May 2020 08:07:45 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Suppress internal
 I915_PRIORITY_WAIT for timeslicing
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

Quoting Chris Wilson (2020-05-06 15:36:16)
> Make sure we ignore the I915_PRIORITY_WAIT hint when looking at
> timeslicing, as we do not treat it as a preemption request but as a soft
> ordering hint. If we apply the hint, then when we recompute the ordering
> after unwinding for the timeslice, we will often leave the order
> unchanged due to the soft-hint. However, if we apply it to all those we
> unwind, then the two equivalent levels may be reordered, and since the
> dependencies will be replayed in order, we will not change the order of
> dependencies.
> 
> There is a small issue with the lack of cross-engine priority bumping on
> unwind, leaving the total graph slightly unordered; but that will not
> result in any misordering of rendering on remote machines as any
> signalers will also be live. Though there may be a danger that this will
> upset our sanitychecks.
> 
> Why keep the I915_PRIORITY_WAIT soft-hint, I hear Tvrtko ask? Despite
> the many hairy tricks we play to have the hint and then ignore it, I
> still like the concept of codel and the promise that it gives for low
> latency of independent queues!
> 
> Testcase: igt/gem_exec_fence/submit
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 10109f661bcb..3606a7946707 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -414,6 +414,12 @@ static inline int rq_prio(const struct i915_request *rq)
>         return READ_ONCE(rq->sched.attr.priority);
>  }
>  
> +static int __effective_prio(int prio)
> +{
> +       BUILD_BUG_ON(__NO_PREEMPTION & ~I915_PRIORITY_MASK); /* only internal */
> +       return prio | __NO_PREEMPTION;
> +}
> +
>  static int effective_prio(const struct i915_request *rq)
>  {
>         int prio = rq_prio(rq);
> @@ -439,8 +445,7 @@ static int effective_prio(const struct i915_request *rq)
>                 prio |= I915_PRIORITY_NOSEMAPHORE;
>  
>         /* Restrict mere WAIT boosts from triggering preemption */
> -       BUILD_BUG_ON(__NO_PREEMPTION & ~I915_PRIORITY_MASK); /* only internal */
> -       return prio | __NO_PREEMPTION;
> +       return __effective_prio(prio);
>  }
>  
>  static int queue_prio(const struct intel_engine_execlists *execlists)
> @@ -1126,6 +1131,7 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
>                         continue; /* XXX */
>  
>                 __i915_request_unsubmit(rq);
> +               rq->sched.attr.priority |= __NO_PREEMPTION;

And this doesn't work as it gives special consideration to anything that
made it to the GPU, stays on the GPU. That is we then cannot select
something from the top of the queue that deserves to be run.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
