Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A8413B22C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 19:33:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BFC56E434;
	Tue, 14 Jan 2020 18:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09BEE6E434
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 18:33:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 10:33:10 -0800
X-IronPort-AV: E=Sophos;i="5.70,319,1574150400"; d="scan'208";a="213427492"
Received: from mdanino-mobl1.ger.corp.intel.com (HELO [10.252.23.174])
 ([10.252.23.174])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Jan 2020 10:33:09 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200113104442.1753973-1-chris@chris-wilson.co.uk>
 <20200113104442.1753973-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <40d5588a-9c47-495b-a7d2-b8adacc50ef2@linux.intel.com>
Date: Tue, 14 Jan 2020 18:33:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200113104442.1753973-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/gt: Allow temporary suspension
 of inflight requests
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


On 13/01/2020 10:44, Chris Wilson wrote:
> In order to support out-of-line error capture, we need to remove the
> active request from HW and put it to one side while a worker compresses
> and stores all the details associated with that request. (As that
> compression may take an arbitrary user-controlled amount of time, we
> want to let the engine continue running on other workloads while the
> hanging request is dumped.) Not only do we need to remove the active
> request, but we also have to remove its context and all requests that
> were dependent on it (both in flight, queued and future submission).
> 
> Finally once the capture is complete, we need to be able to resubmit the
> request and its dependents and allow them to execute.
> 
> References: https://gitlab.freedesktop.org/drm/intel/issues/738
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   1 +
>   drivers/gpu/drm/i915/gt/intel_engine_types.h |   1 +
>   drivers/gpu/drm/i915/gt/intel_lrc.c          | 109 ++++++++++++++++++-
>   drivers/gpu/drm/i915/gt/selftest_lrc.c       | 103 ++++++++++++++++++
>   drivers/gpu/drm/i915/i915_request.h          |  22 ++++
>   5 files changed, 231 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index f451ef376548..c296aaf381e7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -671,6 +671,7 @@ void
>   intel_engine_init_active(struct intel_engine_cs *engine, unsigned int subclass)
>   {
>   	INIT_LIST_HEAD(&engine->active.requests);
> +	INIT_LIST_HEAD(&engine->active.hold);
>   
>   	spin_lock_init(&engine->active.lock);
>   	lockdep_set_subclass(&engine->active.lock, subclass);
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 00287515e7af..6f4f9912a364 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -295,6 +295,7 @@ struct intel_engine_cs {
>   	struct {
>   		spinlock_t lock;
>   		struct list_head requests;
> +		struct list_head hold;
>   	} active;
>   
>   	struct llist_head barrier_tasks;
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 685659f079a2..e0347e05e577 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2355,6 +2355,77 @@ static void __execlists_submission_tasklet(struct intel_engine_cs *const engine)
>   	}
>   }
>   
> +static void __execlists_hold(struct i915_request *rq)
> +{
> +	struct i915_dependency *p;
> +
> +	if (!i915_request_completed(rq)) {
> +		RQ_TRACE(rq, "on hold\n");
> +		if (i915_request_is_active(rq))
> +			__i915_request_unsubmit(rq);
> +		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> +		list_move_tail(&rq->sched.link, &rq->engine->active.hold);
> +		i915_request_set_hold(rq);
> +	}
> +
> +	list_for_each_entry(p, &rq->sched.waiters_list, wait_link) {
> +		struct i915_request *w =
> +			container_of(p->waiter, typeof(*w), sched);
> +
> +		/* Leave semaphores spinning on the other engines */
> +		if (w->engine != rq->engine)
> +			continue;
> +
> +		__execlists_hold(w);

Seems like easy stack overflow attach due recursion.

> +	}
> +}
> +
> +__maybe_unused
> +static void execlists_hold(struct intel_engine_cs *engine,
> +			   struct i915_request *rq)
> +{
> +	spin_lock_irq(&engine->active.lock);
> +	__execlists_hold(rq);

Can this get called with rq->engine != engine?

> +	spin_unlock_irq(&engine->active.lock);
> +}
> +
> +static void __execlists_unhold(struct i915_request *rq)
> +{
> +	struct i915_dependency *p;
> +
> +	if (!i915_request_has_hold(rq))
> +		return;
> +
> +	i915_request_clear_hold(rq);
> +	list_move_tail(&rq->sched.link,
> +		       i915_sched_lookup_priolist(rq->engine, rq_prio(rq)));
> +	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> +	RQ_TRACE(rq, "hold release\n");
> +
> +	list_for_each_entry(p, &rq->sched.waiters_list, wait_link) {
> +		struct i915_request *w =
> +			container_of(p->waiter, typeof(*w), sched);
> +
> +		if (w->engine != rq->engine)
> +			continue;
> +
> +		__execlists_unhold(w);
> +	}
> +}
> +
> +__maybe_unused
> +static void execlists_unhold(struct intel_engine_cs *engine,
> +			     struct i915_request *rq)
> +{
> +	spin_lock_irq(&engine->active.lock);
> +	__execlists_unhold(rq);
> +	if (rq_prio(rq) > engine->execlists.queue_priority_hint) {
> +		engine->execlists.queue_priority_hint = rq_prio(rq);
> +		tasklet_hi_schedule(&engine->execlists.tasklet);
> +	}
> +	spin_unlock_irq(&engine->active.lock);
> +}
> +
>   static noinline void preempt_reset(struct intel_engine_cs *engine)
>   {
>   	const unsigned int bit = I915_RESET_ENGINE + engine->id;
> @@ -2466,6 +2537,29 @@ static void submit_queue(struct intel_engine_cs *engine,
>   	__submit_queue_imm(engine);
>   }
>   
> +static bool hold_request(const struct i915_request *rq)
> +{
> +	struct i915_dependency *p;
> +
> +	list_for_each_entry(p, &rq->sched.signalers_list, signal_link) {
> +		const struct i915_request *s =
> +			container_of(p->signaler, typeof(*s), sched);
> +
> +		if (s->engine != rq->engine)
> +			continue;
> +
> +		return i915_request_has_hold(s);
> +	}
> +
> +	return false;
> +}

I am not sure what question this function is answering. Needs a comment 
or a better name I think.

> +
> +static bool on_hold(const struct intel_engine_cs *engine,
> +		    const struct i915_request *rq)
> +{
> +	return !list_empty(&engine->active.hold) && hold_request(rq);

When is engine != rq->engine?

Secondly, first part of the conditional seems to be asking whether this 
engine has any requests on hold. Second part whether a particular rq has 
a dependency on hold, on the same engine as rq->engine. Needs to be 
explained with a comment.

Is the first check just an optimisation?

> +}
> +
>   static void execlists_submit_request(struct i915_request *request)
>   {
>   	struct intel_engine_cs *engine = request->engine;
> @@ -2474,13 +2568,18 @@ static void execlists_submit_request(struct i915_request *request)
>   	/* Will be called from irq-context when using foreign fences. */
>   	spin_lock_irqsave(&engine->active.lock, flags);
>   
> -	queue_request(engine, &request->sched, rq_prio(request));
> -	set_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
> +	if (unlikely(on_hold(engine, request))) {
> +		i915_request_set_hold(request);
> +		list_add_tail(&request->sched.link, &engine->active.hold);

Or explained here.

But in general this part is for when new dependencies of a held request 
become runnable?

Regards,

Tvrtko

> +	} else {
> +		queue_request(engine, &request->sched, rq_prio(request));
> +		set_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
>   
> -	GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
> -	GEM_BUG_ON(list_empty(&request->sched.link));
> +		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
> +		GEM_BUG_ON(list_empty(&request->sched.link));
>   
> -	submit_queue(engine, request);
> +		submit_queue(engine, request);
> +	}
>   
>   	spin_unlock_irqrestore(&engine->active.lock, flags);
>   }
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 15cda024e3e4..78501d79c0ea 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -285,6 +285,108 @@ static int live_unlite_preempt(void *arg)
>   	return live_unlite_restore(arg, I915_USER_PRIORITY(I915_PRIORITY_MAX));
>   }
>   
> +static int live_hold_reset(void *arg)
> +{
> +	struct intel_gt *gt = arg;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	struct igt_spinner spin;
> +	int err = 0;
> +
> +	/*
> +	 * In order to support offline error capture for fast preempt reset,
> +	 * we need to decouple the guilty request and ensure that it and its
> +	 * descendents are not executed while the capture is in progress.
> +	 */
> +
> +	if (!intel_has_reset_engine(gt))
> +		return 0;
> +
> +	if (igt_spinner_init(&spin, gt))
> +		return -ENOMEM;
> +
> +	for_each_engine(engine, gt, id) {
> +		struct intel_context *ce;
> +		unsigned long heartbeat;
> +		struct i915_request *rq;
> +
> +		ce = intel_context_create(engine);
> +		if (IS_ERR(ce)) {
> +			err = PTR_ERR(ce);
> +			break;
> +		}
> +
> +		engine_heartbeat_disable(engine, &heartbeat);
> +
> +		rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			goto out;
> +		}
> +		i915_request_add(rq);
> +
> +		if (!igt_wait_for_spinner(&spin, rq)) {
> +			intel_gt_set_wedged(gt);
> +			err = -ETIME;
> +			goto out;
> +		}
> +
> +		/* We have our request executing, now remove it and reset */
> +
> +		if (test_and_set_bit(I915_RESET_ENGINE + id,
> +				     &gt->reset.flags)) {
> +			spin_unlock_irq(&engine->active.lock);
> +			intel_gt_set_wedged(gt);
> +			err = -EBUSY;
> +			goto out;
> +		}
> +		tasklet_disable(&engine->execlists.tasklet);
> +
> +		engine->execlists.tasklet.func(engine->execlists.tasklet.data);
> +		GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
> +
> +		execlists_hold(engine, rq);
> +		GEM_BUG_ON(!i915_request_has_hold(rq));
> +
> +		intel_engine_reset(engine, NULL);
> +		GEM_BUG_ON(rq->fence.error != -EIO);
> +
> +		tasklet_enable(&engine->execlists.tasklet);
> +		clear_and_wake_up_bit(I915_RESET_ENGINE + id,
> +				      &gt->reset.flags);
> +
> +		/* Check that we do not resubmit the held request */
> +		i915_request_get(rq);
> +		if (!i915_request_wait(rq, 0, HZ / 5)) {
> +			pr_err("%s: on hold request completed!\n",
> +			       engine->name);
> +			i915_request_put(rq);
> +			err = -EIO;
> +			goto out;
> +		}
> +		GEM_BUG_ON(!i915_request_has_hold(rq));
> +
> +		/* But is resubmitted on release */
> +		execlists_unhold(engine, rq);
> +		if (i915_request_wait(rq, 0, HZ / 5) < 0) {
> +			pr_err("%s: held request did not complete!\n",
> +			       engine->name);
> +			intel_gt_set_wedged(gt);
> +			err = -ETIME;
> +		}
> +		i915_request_put(rq);
> +
> +out:
> +		engine_heartbeat_enable(engine, heartbeat);
> +		intel_context_put(ce);
> +		if (err)
> +			break;
> +	}
> +
> +	igt_spinner_fini(&spin);
> +	return err;
> +}
> +
>   static int
>   emit_semaphore_chain(struct i915_request *rq, struct i915_vma *vma, int idx)
>   {
> @@ -3315,6 +3417,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(live_sanitycheck),
>   		SUBTEST(live_unlite_switch),
>   		SUBTEST(live_unlite_preempt),
> +		SUBTEST(live_hold_reset),
>   		SUBTEST(live_timeslice_preempt),
>   		SUBTEST(live_timeslice_queue),
>   		SUBTEST(live_busywait_preempt),
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index f3e50ec989b8..2da8cfb3f3a1 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -89,6 +89,13 @@ enum {
>   	 */
>   	I915_FENCE_FLAG_SIGNAL,
>   
> +	/*
> +	 * I915_FENCE_FLAG_HOLD - this request is currently on hold
> +	 *
> +	 * This request has been suspended, pending an ongoing investigation.
> +	 */
> +	I915_FENCE_FLAG_HOLD,
> +
>   	/*
>   	 * I915_FENCE_FLAG_NOPREEMPT - this request should not be preempted
>   	 *
> @@ -499,6 +506,21 @@ static inline bool i915_request_has_sentinel(const struct i915_request *rq)
>   	return unlikely(test_bit(I915_FENCE_FLAG_SENTINEL, &rq->fence.flags));
>   }
>   
> +static inline bool i915_request_has_hold(const struct i915_request *rq)
> +{
> +	return unlikely(test_bit(I915_FENCE_FLAG_HOLD, &rq->fence.flags));
> +}
> +
> +static inline void i915_request_set_hold(struct i915_request *rq)
> +{
> +	set_bit(I915_FENCE_FLAG_HOLD, &rq->fence.flags);
> +}
> +
> +static inline void i915_request_clear_hold(struct i915_request *rq)
> +{
> +	clear_bit(I915_FENCE_FLAG_HOLD, &rq->fence.flags);
> +}
> +
>   static inline struct intel_timeline *
>   i915_request_timeline(struct i915_request *rq)
>   {
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
