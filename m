Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9335330BF1D
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 14:16:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A9C89FD4;
	Tue,  2 Feb 2021 13:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F44E89FD4
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 13:15:58 +0000 (UTC)
IronPort-SDR: 3laYwa3EZtdB18HVaIdTX6O0idmMtsVZtxCvzCQJwI3hpozSRH5tYL9TGml1/I6vnBSPtCI3N3
 o8eldS8Klxdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="199770108"
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="199770108"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 05:15:57 -0800
IronPort-SDR: 7iKFLGZuY0o/iAuExPkT9VK2y8bp+8DHW8tFM9AYIGCUDkP9am+W4ykPSlNT30WMZDTsVJXKQG
 h3J37kGlUR/A==
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="432919571"
Received: from irisshal-mobl1.ger.corp.intel.com (HELO [10.214.210.18])
 ([10.214.210.18])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 05:15:55 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-17-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <77b97a4c-5bcb-5025-cf4a-f2f4b75a0f47@linux.intel.com>
Date: Tue, 2 Feb 2021 13:15:52 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210201085715.27435-17-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 17/57] drm/i915: Extract request suspension
 from the execlists
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


On 01/02/2021 08:56, Chris Wilson wrote:
> Make the ability to suspend and resume a request and its dependents
> generic.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../drm/i915/gt/intel_execlists_submission.c  | 167 +-----------------
>   drivers/gpu/drm/i915/gt/selftest_execlists.c  |   8 +-
>   drivers/gpu/drm/i915/i915_scheduler.c         | 153 ++++++++++++++++
>   drivers/gpu/drm/i915/i915_scheduler.h         |  10 ++
>   4 files changed, 169 insertions(+), 169 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index b6dea80da533..853021314786 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -1921,169 +1921,6 @@ static void post_process_csb(struct i915_request **port,
>   		execlists_schedule_out(*port++);
>   }
>   
> -static void __execlists_hold(struct i915_request *rq)
> -{
> -	LIST_HEAD(list);
> -
> -	do {
> -		struct i915_dependency *p;
> -
> -		if (i915_request_is_active(rq))
> -			__i915_request_unsubmit(rq);
> -
> -		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> -		list_move_tail(&rq->sched.link, &rq->engine->active.hold);
> -		i915_request_set_hold(rq);
> -		RQ_TRACE(rq, "on hold\n");
> -
> -		for_each_waiter(p, rq) {
> -			struct i915_request *w =
> -				container_of(p->waiter, typeof(*w), sched);
> -
> -			if (p->flags & I915_DEPENDENCY_WEAK)
> -				continue;
> -
> -			/* Leave semaphores spinning on the other engines */
> -			if (w->engine != rq->engine)
> -				continue;
> -
> -			if (!i915_request_is_ready(w))
> -				continue;
> -
> -			if (__i915_request_is_complete(w))
> -				continue;
> -
> -			if (i915_request_on_hold(w))
> -				continue;
> -
> -			list_move_tail(&w->sched.link, &list);
> -		}
> -
> -		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
> -	} while (rq);
> -}
> -
> -static bool execlists_hold(struct intel_engine_cs *engine,
> -			   struct i915_request *rq)
> -{
> -	if (i915_request_on_hold(rq))
> -		return false;
> -
> -	spin_lock_irq(&engine->active.lock);
> -
> -	if (__i915_request_is_complete(rq)) { /* too late! */
> -		rq = NULL;
> -		goto unlock;
> -	}
> -
> -	/*
> -	 * Transfer this request onto the hold queue to prevent it
> -	 * being resumbitted to HW (and potentially completed) before we have
> -	 * released it. Since we may have already submitted following
> -	 * requests, we need to remove those as well.
> -	 */
> -	GEM_BUG_ON(i915_request_on_hold(rq));
> -	GEM_BUG_ON(rq->engine != engine);
> -	__execlists_hold(rq);
> -	GEM_BUG_ON(list_empty(&engine->active.hold));
> -
> -unlock:
> -	spin_unlock_irq(&engine->active.lock);
> -	return rq;
> -}
> -
> -static bool hold_request(const struct i915_request *rq)
> -{
> -	struct i915_dependency *p;
> -	bool result = false;
> -
> -	/*
> -	 * If one of our ancestors is on hold, we must also be on hold,
> -	 * otherwise we will bypass it and execute before it.
> -	 */
> -	rcu_read_lock();
> -	for_each_signaler(p, rq) {
> -		const struct i915_request *s =
> -			container_of(p->signaler, typeof(*s), sched);
> -
> -		if (s->engine != rq->engine)
> -			continue;
> -
> -		result = i915_request_on_hold(s);
> -		if (result)
> -			break;
> -	}
> -	rcu_read_unlock();
> -
> -	return result;
> -}
> -
> -static void __execlists_unhold(struct i915_request *rq)
> -{
> -	LIST_HEAD(list);
> -
> -	do {
> -		struct i915_dependency *p;
> -
> -		RQ_TRACE(rq, "hold release\n");
> -
> -		GEM_BUG_ON(!i915_request_on_hold(rq));
> -		GEM_BUG_ON(!i915_sw_fence_signaled(&rq->submit));
> -
> -		i915_request_clear_hold(rq);
> -		list_move_tail(&rq->sched.link,
> -			       i915_sched_lookup_priolist(rq->engine,
> -							  rq_prio(rq)));
> -		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> -
> -		/* Also release any children on this engine that are ready */
> -		for_each_waiter(p, rq) {
> -			struct i915_request *w =
> -				container_of(p->waiter, typeof(*w), sched);
> -
> -			if (p->flags & I915_DEPENDENCY_WEAK)
> -				continue;
> -
> -			/* Propagate any change in error status */
> -			if (rq->fence.error)
> -				i915_request_set_error_once(w, rq->fence.error);
> -
> -			if (w->engine != rq->engine)
> -				continue;
> -
> -			if (!i915_request_on_hold(w))
> -				continue;
> -
> -			/* Check that no other parents are also on hold */
> -			if (hold_request(w))
> -				continue;
> -
> -			list_move_tail(&w->sched.link, &list);
> -		}
> -
> -		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
> -	} while (rq);
> -}
> -
> -static void execlists_unhold(struct intel_engine_cs *engine,
> -			     struct i915_request *rq)
> -{
> -	spin_lock_irq(&engine->active.lock);
> -
> -	/*
> -	 * Move this request back to the priority queue, and all of its
> -	 * children and grandchildren that were suspended along with it.
> -	 */
> -	__execlists_unhold(rq);
> -
> -	if (rq_prio(rq) > engine->execlists.queue_priority_hint) {
> -		engine->execlists.queue_priority_hint = rq_prio(rq);
> -		tasklet_hi_schedule(&engine->execlists.tasklet);
> -	}
> -
> -	spin_unlock_irq(&engine->active.lock);
> -}
> -
>   struct execlists_capture {
>   	struct work_struct work;
>   	struct i915_request *rq;
> @@ -2116,7 +1953,7 @@ static void execlists_capture_work(struct work_struct *work)
>   	i915_gpu_coredump_put(cap->error);
>   
>   	/* Return this request and all that depend upon it for signaling */
> -	execlists_unhold(engine, cap->rq);
> +	i915_sched_resume_request(engine, cap->rq);
>   	i915_request_put(cap->rq);
>   
>   	kfree(cap);
> @@ -2250,7 +2087,7 @@ static void execlists_capture(struct intel_engine_cs *engine)
>   	 * simply hold that request accountable for being non-preemptible
>   	 * long enough to force the reset.
>   	 */
> -	if (!execlists_hold(engine, cap->rq))
> +	if (!i915_sched_suspend_request(engine, cap->rq))
>   		goto err_rq;
>   
>   	INIT_WORK(&cap->work, execlists_capture_work);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> index 73340a96548f..64f6a49a5c22 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> @@ -608,7 +608,7 @@ static int live_hold_reset(void *arg)
>   		GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
>   
>   		i915_request_get(rq);
> -		execlists_hold(engine, rq);
> +		i915_sched_suspend_request(engine, rq);
>   		GEM_BUG_ON(!i915_request_on_hold(rq));
>   
>   		__intel_engine_reset_bh(engine, NULL);
> @@ -630,7 +630,7 @@ static int live_hold_reset(void *arg)
>   		GEM_BUG_ON(!i915_request_on_hold(rq));
>   
>   		/* But is resubmitted on release */
> -		execlists_unhold(engine, rq);
> +		i915_sched_resume_request(engine, rq);
>   		if (i915_request_wait(rq, 0, HZ / 5) < 0) {
>   			pr_err("%s: held request did not complete!\n",
>   			       engine->name);
> @@ -4606,7 +4606,7 @@ static int reset_virtual_engine(struct intel_gt *gt,
>   	GEM_BUG_ON(rq->engine != engine);
>   
>   	/* Reset the engine while keeping our active request on hold */
> -	execlists_hold(engine, rq);
> +	i915_sched_suspend_request(engine, rq);
>   	GEM_BUG_ON(!i915_request_on_hold(rq));
>   
>   	__intel_engine_reset_bh(engine, NULL);
> @@ -4629,7 +4629,7 @@ static int reset_virtual_engine(struct intel_gt *gt,
>   	GEM_BUG_ON(!i915_request_on_hold(rq));
>   
>   	/* But is resubmitted on release */
> -	execlists_unhold(engine, rq);
> +	i915_sched_resume_request(engine, rq);
>   	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
>   		pr_err("%s: held request did not complete!\n",
>   		       engine->name);
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index 9fcfbf303ce0..351c0c0055b5 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -586,6 +586,159 @@ __i915_sched_rewind_requests(struct intel_engine_cs *engine)
>   	return active;
>   }
>   
> +bool __i915_sched_suspend_request(struct intel_engine_cs *engine,
> +				  struct i915_request *rq)
> +{
> +	LIST_HEAD(list);
> +
> +	lockdep_assert_held(&engine->active.lock);
> +	GEM_BUG_ON(rq->engine != engine);
> +
> +	if (__i915_request_is_complete(rq)) /* too late! */
> +		return false;
> +
> +	if (i915_request_on_hold(rq))
> +		return false;

This was a GEM_BUG_ON before so not pure extraction / code movement.

> +
> +	ENGINE_TRACE(engine, "suspending request %llx:%lld\n",
> +		     rq->fence.context, rq->fence.seqno);
> +
> +	/*
> +	 * Transfer this request onto the hold queue to prevent it
> +	 * being resumbitted to HW (and potentially completed) before we have
> +	 * released it. Since we may have already submitted following
> +	 * requests, we need to remove those as well.
> +	 */
> +	do {
> +		struct i915_dependency *p;
> +
> +		if (i915_request_is_active(rq))
> +			__i915_request_unsubmit(rq);
> +
> +		list_move_tail(&rq->sched.link, &engine->active.hold);
> +		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> +		i915_request_set_hold(rq);
> +		RQ_TRACE(rq, "on hold\n");
> +
> +		for_each_waiter(p, rq) {
> +			struct i915_request *w =
> +				container_of(p->waiter, typeof(*w), sched);
> +
> +			if (p->flags & I915_DEPENDENCY_WEAK)
> +				continue;
> +
> +			/* Leave semaphores spinning on the other engines */
> +			if (w->engine != engine)
> +				continue;
> +
> +			if (!i915_request_is_ready(w))
> +				continue;
> +
> +			if (__i915_request_is_complete(w))
> +				continue;
> +
> +			if (i915_request_on_hold(w)) /* acts as a visited bit */
> +				continue;
> +
> +			list_move_tail(&w->sched.link, &list);
> +		}
> +
> +		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
> +	} while (rq);
> +
> +	GEM_BUG_ON(list_empty(&engine->active.hold));
> +
> +	return true;
> +}
> +
> +bool i915_sched_suspend_request(struct intel_engine_cs *engine,
> +				struct i915_request *rq)
> +{
> +	bool result;
> +
> +	if (i915_request_on_hold(rq))
> +		return false;
> +
> +	spin_lock_irq(&engine->active.lock);
> +	result = __i915_sched_suspend_request(engine, rq);
> +	spin_unlock_irq(&engine->active.lock);
> +
> +	return result;
> +}
> +
> +void __i915_sched_resume_request(struct intel_engine_cs *engine,
> +				 struct i915_request *rq)
> +{
> +	LIST_HEAD(list);
> +
> +	lockdep_assert_held(&engine->active.lock);
> +
> +	if (rq_prio(rq) > engine->execlists.queue_priority_hint) {
> +		engine->execlists.queue_priority_hint = rq_prio(rq);
> +		tasklet_hi_schedule(&engine->execlists.tasklet);
> +	}
> +
> +	if (!i915_request_on_hold(rq))
> +		return;
> +
> +	ENGINE_TRACE(engine, "resuming request %llx:%lld\n",
> +		     rq->fence.context, rq->fence.seqno);
> +
> +	/*
> +	 * Move this request back to the priority queue, and all of its
> +	 * children and grandchildren that were suspended along with it.
> +	 */
> +	do {
> +		struct i915_dependency *p;
> +
> +		RQ_TRACE(rq, "hold release\n");
> +
> +		GEM_BUG_ON(!i915_request_on_hold(rq));
> +		GEM_BUG_ON(!i915_sw_fence_signaled(&rq->submit));
> +
> +		i915_request_clear_hold(rq);
> +		list_del_init(&rq->sched.link);
> +
> +		queue_request(engine, rq);
> +
> +		/* Also release any children on this engine that are ready */
> +		for_each_waiter(p, rq) {
> +			struct i915_request *w =
> +				container_of(p->waiter, typeof(*w), sched);
> +
> +			if (p->flags & I915_DEPENDENCY_WEAK)
> +				continue;
> +
> +			/* Propagate any change in error status */
> +			if (rq->fence.error)
> +				i915_request_set_error_once(w, rq->fence.error);
> +
> +			if (w->engine != engine)
> +				continue;
> +
> +			/* We also treat the on-hold status as a visited bit */
> +			if (!i915_request_on_hold(w))
> +				continue;
> +
> +			/* Check that no other parents are also on hold [BFS] */
> +			if (hold_request(w))
> +				continue;

hold_request() appears deleted in the patch so possible rebase error.

Regards,

Tvrtko

> +
> +			list_move_tail(&w->sched.link, &list);
> +		}
> +
> +		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
> +	} while (rq);
> +}
> +
> +void i915_sched_resume_request(struct intel_engine_cs *engine,
> +			       struct i915_request *rq)
> +{
> +	spin_lock_irq(&engine->active.lock);
> +	__i915_sched_resume_request(engine, rq);
> +	spin_unlock_irq(&engine->active.lock);
> +}
> +
>   void i915_sched_node_init(struct i915_sched_node *node)
>   {
>   	spin_lock_init(&node->lock);
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
> index d3984f65b3a6..9860459fedb1 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler.h
> @@ -45,6 +45,16 @@ void i915_request_enqueue(struct i915_request *request);
>   struct i915_request *
>   __i915_sched_rewind_requests(struct intel_engine_cs *engine);
>   
> +bool __i915_sched_suspend_request(struct intel_engine_cs *engine,
> +				  struct i915_request *rq);
> +void __i915_sched_resume_request(struct intel_engine_cs *engine,
> +				 struct i915_request *request);
> +
> +bool i915_sched_suspend_request(struct intel_engine_cs *engine,
> +				struct i915_request *request);
> +void i915_sched_resume_request(struct intel_engine_cs *engine,
> +			       struct i915_request *rq);
> +
>   struct list_head *
>   i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio);
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
