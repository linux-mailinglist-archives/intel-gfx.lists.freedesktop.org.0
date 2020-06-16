Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9401FABDE
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 11:07:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE12A6E153;
	Tue, 16 Jun 2020 09:07:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D17E6E871
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 09:07:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 93D0B3F559;
 Tue, 16 Jun 2020 11:07:32 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=qrcnNpo2; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v5gxZTOBNLtt; Tue, 16 Jun 2020 11:07:31 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id F2D653F3F1;
 Tue, 16 Jun 2020 11:07:29 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 428E7360070;
 Tue, 16 Jun 2020 11:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1592298449; bh=Yn20kAamp27anYnG5usHxEEcwOJa+AybZvmMn7cXUfM=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=qrcnNpo2cF9QOWCvYmyneDYb3FnLHZ87ISsJmhu0XVacAJ8UsySyHR6akijD4SEcs
 IqXGttet0n1oXcIdHGM9E4PhDlrDascbWvhkG7PIkz7bXkqChYJFdekfW3BR0fxo3e
 KQy/Fagql2p44VTVkkfXhaixPyUrI+Ijozx19jBo=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
 <20200607222108.14401-26-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <5a7ebfbc-665b-eff6-d969-7d27b568f161@shipmail.org>
Date: Tue, 16 Jun 2020 11:07:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200607222108.14401-26-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 26/28] drm/i915: Fair low-latency scheduling
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Chris,

Some comments and questions:

On 6/8/20 12:21 AM, Chris Wilson wrote:
> The first "scheduler" was a topographical sorting of requests into
> priority order. The execution order was deterministic, the earliest
> submitted, highest priority request would be executed first. Priority
> inherited ensured that inversions were kept at bay, and allowed us to
> dynamically boost priorities (e.g. for interactive pageflips).
>
> The minimalistic timeslicing scheme was an attempt to introduce fairness
> between long running requests, by evicting the active request at the end
> of a timeslice and moving it to the back of its priority queue (while
> ensuring that dependencies were kept in order). For short running
> requests from many clients of equal priority, the scheme is still very
> much FIFO submission ordering, and as unfair as before.
>
> To impose fairness, we need an external metric that ensures that clients
> are interpersed, we don't execute one long chain from client A before
> executing any of client B. This could be imposed by the clients by using
> a fences based on an external clock, that is they only submit work for a
> "frame" at frame-interval, instead of submitting as much work as they
> are able to. The standard SwapBuffers approach is akin to double
> bufferring, where as one frame is being executed, the next is being
> submitted, such that there is always a maximum of two frames per client
> in the pipeline. Even this scheme exhibits unfairness under load as a
> single client will execute two frames back to back before the next, and
> with enough clients, deadlines will be missed.
>
> The idea introduced by BFS/MuQSS is that fairness is introduced by
> metering with an external clock. Every request, when it becomes ready to
> execute is assigned a virtual deadline, and execution order is then
> determined by earliest deadline. Priority is used as a hint, rather than
> strict ordering, where high priority requests have earlier deadlines,
> but not necessarily earlier than outstanding work. Thus work is executed
> in order of 'readiness', with timeslicing to demote long running work.
>
> The Achille's heel of this scheduler is its strong preference for
> low-latency and favouring of new queues. Whereas it was easy to dominate
> the old scheduler by flooding it with many requests over a short period
> of time, the new scheduler can be dominated by a 'synchronous' client
> that waits for each of its requests to complete before submitting the
> next. As such a client has no history, it is always considered
> ready-to-run and receives an earlier deadline than the long running
> requests.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  12 +-
>   .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |   1 +
>   drivers/gpu/drm/i915/gt/intel_engine_pm.c     |   4 +-
>   drivers/gpu/drm/i915/gt/intel_engine_types.h  |  24 --
>   drivers/gpu/drm/i915/gt/intel_lrc.c           | 328 +++++++-----------
>   drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   5 +-
>   drivers/gpu/drm/i915/gt/selftest_lrc.c        |  43 ++-
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   6 +-
>   drivers/gpu/drm/i915/i915_priolist_types.h    |   7 +-
>   drivers/gpu/drm/i915/i915_request.h           |   4 +-
>   drivers/gpu/drm/i915/i915_scheduler.c         | 322 ++++++++++++-----
>   drivers/gpu/drm/i915/i915_scheduler.h         |  22 +-
>   drivers/gpu/drm/i915/i915_scheduler_types.h   |  17 +
>   .../drm/i915/selftests/i915_mock_selftests.h  |   1 +
>   drivers/gpu/drm/i915/selftests/i915_request.c |   1 +
>   .../gpu/drm/i915/selftests/i915_scheduler.c   |  49 +++
>   16 files changed, 484 insertions(+), 362 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/selftests/i915_scheduler.c

Do we have timings to back this change up? Would it make sense to have a 
configurable scheduler choice?

> @@ -1096,22 +1099,30 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
>   {
>   	struct i915_request *rq, *rn, *active = NULL;
>   	struct list_head *uninitialized_var(pl);
> -	int prio = I915_PRIORITY_INVALID;
> +	u64 deadline = I915_DEADLINE_NEVER;
>   
>   	lockdep_assert_held(&engine->active.lock);
>   
>   	list_for_each_entry_safe_reverse(rq, rn,
>   					 &engine->active.requests,
>   					 sched.link) {
> -		if (i915_request_completed(rq))
> +		if (i915_request_completed(rq)) {
> +			list_del_init(&rq->sched.link);
>   			continue; /* XXX */
> +		}

Is this an unrelated change? If so separate patch?

...


> @@ -2162,14 +2140,13 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   			__unwind_incomplete_requests(engine);
>   
>   			last = NULL;
> -		} else if (need_timeslice(engine, last, ve) &&
> -			   timeslice_expired(execlists, last)) {
> +		} else if (timeslice_expired(engine, last)) {
>   			ENGINE_TRACE(engine,
> -				     "expired last=%llx:%lld, prio=%d, hint=%d, yield?=%s\n",
> -				     last->fence.context,
> -				     last->fence.seqno,
> -				     last->sched.attr.priority,
> -				     execlists->queue_priority_hint,
> +				     "expired:%s last=%llx:%llu, deadline=%llu, now=%llu, yield?=%s\n",
> +				     yesno(timer_expired(&execlists->timer)),
> +				     last->fence.context, last->fence.seqno,
> +				     rq_deadline(last),
> +				     i915_sched_to_ticks(ktime_get()),
>   				     yesno(timeslice_yield(execlists, last)));

There are multiple introductions of ktime_get() in the patch. Perhaps 
use monotonic clock source like ktime_get_raw()? Also immediately 
convert to ns.

...

> @@ -2837,10 +2788,7 @@ static void __execlists_unhold(struct i915_request *rq)
>   		GEM_BUG_ON(!i915_sw_fence_signaled(&rq->submit));
>   
>   		i915_request_clear_hold(rq);
> -		list_move_tail(&rq->sched.link,
> -			       i915_sched_lookup_priolist(rq->engine,
> -							  rq_prio(rq)));
> -		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> +		submit |= intel_engine_queue_request(rq->engine, rq);

As new to this codebase, I immediately wonder whether that bitwise or is 
intentional and whether you got the short-circuiting right. It looks 
correct to me.

...

> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 118ab6650d1f..23594e712292 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -561,7 +561,7 @@ static inline void i915_request_clear_hold(struct i915_request *rq)
>   }
>   
>   static inline struct intel_timeline *
> -i915_request_timeline(struct i915_request *rq)
> +i915_request_timeline(const struct i915_request *rq)
>   {
>   	/* Valid only while the request is being constructed (or retired). */
>   	return rcu_dereference_protected(rq->timeline,
> @@ -576,7 +576,7 @@ i915_request_gem_context(struct i915_request *rq)
>   }
>   
>   static inline struct intel_timeline *
> -i915_request_active_timeline(struct i915_request *rq)
> +i915_request_active_timeline(const struct i915_request *rq)

Are these unrelated? Separate patch?



>   {
>   	/*
>   	 * When in use during submission, we are protected by a guarantee that
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index 4c189b81cc62..30bcb6f9d99f 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -20,6 +20,11 @@ static struct i915_global_scheduler {
>   static DEFINE_SPINLOCK(ipi_lock);
>   static LIST_HEAD(ipi_list);
>   
> +static inline u64 rq_deadline(const struct i915_request *rq)
> +{
> +	return READ_ONCE(rq->sched.deadline);
> +}
> +

Does this need a release barrier paired with an acquire barrier in 
__i915_request_set_deadline below?

> +
> +static bool __i915_request_set_deadline(struct i915_request *rq, u64 deadline)
> +{
> +	struct intel_engine_cs *engine = rq->engine;
> +	struct i915_request *rn;
> +	struct list_head *plist;
> +	LIST_HEAD(dfs);
> +
> +	lockdep_assert_held(&engine->active.lock);
> +	list_add(&rq->sched.dfs, &dfs);
> +
> +	list_for_each_entry(rq, &dfs, sched.dfs) {
> +		struct i915_dependency *p;
> +
> +		GEM_BUG_ON(rq->engine != engine);
> +
> +		for_each_signaler(p, rq) {
> +			struct i915_request *s =
> +				container_of(p->signaler, typeof(*s), sched);
> +
> +			GEM_BUG_ON(s == rq);
> +
> +			if (rq_deadline(s) <= deadline)
> +				continue;
> +
> +			if (i915_request_completed(s))
> +				continue;
> +
> +			if (s->engine != rq->engine) {
> +				spin_lock(&ipi_lock);
> +				if (deadline < p->ipi_deadline) {
> +					p->ipi_deadline = deadline;
> +					list_move(&p->ipi_link, &ipi_list);
> +					irq_work_queue(&ipi_work);
> +				}
> +				spin_unlock(&ipi_lock);
> +				continue;
> +			}
> +
> +			list_move_tail(&s->sched.dfs, &dfs);
> +		}
> +	}
> +
> +	plist = i915_sched_lookup_priolist(engine, deadline);
> +
> +	/* Fifo and depth-first replacement ensure our deps execute first */
> +	list_for_each_entry_safe_reverse(rq, rn, &dfs, sched.dfs) {
> +		GEM_BUG_ON(rq->engine != engine);
> +		GEM_BUG_ON(deadline > rq_deadline(rq));
> +
> +		INIT_LIST_HEAD(&rq->sched.dfs);
> +		WRITE_ONCE(rq->sched.deadline, deadline);

An smp barrier needed?

...

> +static u64 prio_slice(int prio)
>   {
> -	const struct i915_request *inflight;
> +	u64 slice;
> +	int sf;
>   
>   	/*
> -	 * We only need to kick the tasklet once for the high priority
> -	 * new context we add into the queue.
> +	 * With a 1ms scheduling quantum:
> +	 *
> +	 *   MAX USER:  ~32us deadline
> +	 *   0:         ~16ms deadline
> +	 *   MIN_USER: 1000ms deadline
>   	 */
> -	if (prio <= engine->execlists.queue_priority_hint)
> -		return;
>   
> -	rcu_read_lock();
> +	if (prio >= __I915_PRIORITY_KERNEL__)
> +		return INT_MAX - prio;
>   
> -	/* Nothing currently active? We're overdue for a submission! */
> -	inflight = execlists_active(&engine->execlists);
> -	if (!inflight)
> -		goto unlock;
> +	slice = __I915_PRIORITY_KERNEL__ - prio;
> +	if (prio >= 0)
> +		sf = 20 - 6;
> +	else
> +		sf = 20 - 1;
> +
> +	return slice << sf;
> +}
> +

Is this the same deadline calculation as used in the BFS? Could you 
perhaps add a pointer to some documentation?


/Thomas


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
