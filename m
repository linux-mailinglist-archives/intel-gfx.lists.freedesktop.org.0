Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B05223043D4
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 17:28:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1923389C49;
	Tue, 26 Jan 2021 16:28:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A049189C49
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 16:28:22 +0000 (UTC)
IronPort-SDR: C4GoNi36QcDTrX0VNsjKd5GSRSQXBIrxG60oUb8tt8BhMsiyrMqtBS8vve5Hp/920rpq4wRDsL
 2lCIT6J/K8uw==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180075325"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="180075325"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 08:28:18 -0800
IronPort-SDR: QXAgbK17wRiz2VW5T6BmQjjA22t6Z6K2cKdGyUDZP112z4YNm0q2mpjl1MSq/Nt2rGoBRTXUlZ
 R7WwvNtI91lg==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="362042770"
Received: from jackedwa-mobl.ger.corp.intel.com (HELO [10.214.230.137])
 ([10.214.230.137])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 08:28:17 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-11-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d05db7a1-1adf-8379-9f5a-a5b8c1899075@linux.intel.com>
Date: Tue, 26 Jan 2021 16:28:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210125140136.10494-11-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 11/41] drm/i915: Extract request submission
 from execlists
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
Cc: thomas.hellstrom@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/01/2021 14:01, Chris Wilson wrote:
> In the process of preparing to reuse the request submission logic for
> other backends, lift it out of the execlists backend. It already
> operates on the common structs, so just a matter of moving and renaming.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../drm/i915/gt/intel_execlists_submission.c  | 55 +------------
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 30 +------
>   drivers/gpu/drm/i915/i915_scheduler.c         | 82 +++++++++++++++++++
>   drivers/gpu/drm/i915/i915_scheduler.h         |  2 +
>   4 files changed, 86 insertions(+), 83 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 309fb421ff5c..e6acdd8dc361 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2404,59 +2404,6 @@ static void execlists_preempt(struct timer_list *timer)
>   	execlists_kick(timer, preempt);
>   }
>   
> -static void queue_request(struct intel_engine_cs *engine,
> -			  struct i915_request *rq)
> -{
> -	GEM_BUG_ON(!list_empty(&rq->sched.link));
> -	list_add_tail(&rq->sched.link,
> -		      i915_sched_lookup_priolist(engine, rq_prio(rq)));
> -	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> -}
> -
> -static bool submit_queue(struct intel_engine_cs *engine,
> -			 const struct i915_request *rq)
> -{
> -	struct intel_engine_execlists *execlists = &engine->execlists;
> -
> -	if (rq_prio(rq) <= execlists->queue_priority_hint)
> -		return false;
> -
> -	execlists->queue_priority_hint = rq_prio(rq);
> -	return true;
> -}
> -
> -static bool ancestor_on_hold(const struct intel_engine_cs *engine,
> -			     const struct i915_request *rq)
> -{
> -	GEM_BUG_ON(i915_request_on_hold(rq));
> -	return !list_empty(&engine->active.hold) && hold_request(rq);
> -}
> -
> -static void execlists_submit_request(struct i915_request *request)
> -{
> -	struct intel_engine_cs *engine = request->engine;
> -	unsigned long flags;
> -
> -	/* Will be called from irq-context when using foreign fences. */
> -	spin_lock_irqsave(&engine->active.lock, flags);
> -
> -	if (unlikely(ancestor_on_hold(engine, request))) {
> -		RQ_TRACE(request, "ancestor on hold\n");
> -		list_add_tail(&request->sched.link, &engine->active.hold);
> -		i915_request_set_hold(request);
> -	} else {
> -		queue_request(engine, request);
> -
> -		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
> -		GEM_BUG_ON(list_empty(&request->sched.link));
> -
> -		if (submit_queue(engine, request))
> -			__execlists_kick(&engine->execlists);
> -	}
> -
> -	spin_unlock_irqrestore(&engine->active.lock, flags);
> -}
> -
>   static int execlists_context_pre_pin(struct intel_context *ce,
>   				     struct i915_gem_ww_ctx *ww,
>   				     void **vaddr)
> @@ -3072,7 +3019,7 @@ static bool can_preempt(struct intel_engine_cs *engine)
>   
>   static void execlists_set_default_submission(struct intel_engine_cs *engine)
>   {
> -	engine->submit_request = execlists_submit_request;
> +	engine->submit_request = i915_request_enqueue;
>   	engine->execlists.tasklet.func = execlists_submission_tasklet;
>   
>   	engine->reset.prepare = execlists_reset_prepare;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 53cf68e240c3..4f1eee4fbfb2 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -510,34 +510,6 @@ static int guc_request_alloc(struct i915_request *request)
>   	return 0;
>   }
>   
> -static inline void queue_request(struct intel_engine_cs *engine,
> -				 struct i915_request *rq,
> -				 int prio)
> -{
> -	GEM_BUG_ON(!list_empty(&rq->sched.link));
> -	list_add_tail(&rq->sched.link,
> -		      i915_sched_lookup_priolist(engine, prio));
> -	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> -}
> -
> -static void guc_submit_request(struct i915_request *rq)
> -{
> -	struct intel_engine_cs *engine = rq->engine;
> -	unsigned long flags;
> -
> -	/* Will be called from irq-context when using foreign fences. */
> -	spin_lock_irqsave(&engine->active.lock, flags);
> -
> -	queue_request(engine, rq, rq_prio(rq));
> -
> -	GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
> -	GEM_BUG_ON(list_empty(&rq->sched.link));
> -
> -	tasklet_hi_schedule(&engine->execlists.tasklet);
> -
> -	spin_unlock_irqrestore(&engine->active.lock, flags);
> -}
> -
>   static void sanitize_hwsp(struct intel_engine_cs *engine)
>   {
>   	struct intel_timeline *tl;
> @@ -606,7 +578,7 @@ static int guc_resume(struct intel_engine_cs *engine)
>   
>   static void guc_set_default_submission(struct intel_engine_cs *engine)
>   {
> -	engine->submit_request = guc_submit_request;
> +	engine->submit_request = i915_request_enqueue;
>   	engine->execlists.tasklet.func = guc_submission_tasklet;
>   
>   	engine->reset.prepare = guc_reset_prepare;
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index 9139a91f0aa3..3f5fc03908dc 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -448,6 +448,88 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
>   	spin_unlock_irqrestore(&engine->active.lock, flags);
>   }
>   
> +static void queue_request(struct intel_engine_cs *engine,
> +			  struct i915_request *rq)
> +{
> +	GEM_BUG_ON(!list_empty(&rq->sched.link));
> +	list_add_tail(&rq->sched.link,
> +		      i915_sched_lookup_priolist(engine, rq_prio(rq)));
> +	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> +}
> +
> +static bool submit_queue(struct intel_engine_cs *engine,
> +			 const struct i915_request *rq)
> +{
> +	struct intel_engine_execlists *execlists = &engine->execlists;
> +
> +	if (rq_prio(rq) <= execlists->queue_priority_hint)
> +		return false;
> +
> +	execlists->queue_priority_hint = rq_prio(rq);
> +	return true;
> +}
> +
> +static bool hold_request(const struct i915_request *rq)
> +{
> +	struct i915_dependency *p;
> +	bool result = false;
> +
> +	/*
> +	 * If one of our ancestors is on hold, we must also be put on hold,
> +	 * otherwise we will bypass it and execute before it.
> +	 */
> +	rcu_read_lock();
> +	for_each_signaler(p, rq) {
> +		const struct i915_request *s =
> +			container_of(p->signaler, typeof(*s), sched);
> +
> +		if (s->engine != rq->engine)
> +			continue;
> +
> +		result = i915_request_on_hold(s);
> +		if (result)
> +			break;
> +	}
> +	rcu_read_unlock();
> +
> +	return result;
> +}
> +
> +static bool ancestor_on_hold(const struct intel_engine_cs *engine,
> +			     const struct i915_request *rq)
> +{
> +	GEM_BUG_ON(i915_request_on_hold(rq));
> +	return unlikely(!list_empty(&engine->active.hold)) && hold_request(rq);
> +}
> +
> +void i915_request_enqueue(struct i915_request *rq)
> +{
> +	struct intel_engine_cs *engine = rq->engine;
> +	unsigned long flags;
> +	bool kick = false;
> +
> +	/* Will be called from irq-context when using foreign fences. */
> +	spin_lock_irqsave(&engine->active.lock, flags);
> +	GEM_BUG_ON(test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
> +
> +	if (unlikely(ancestor_on_hold(engine, rq))) {
> +		RQ_TRACE(rq, "ancestor on hold\n");
> +		list_add_tail(&rq->sched.link, &engine->active.hold);
> +		i915_request_set_hold(rq);
> +	} else {
> +		queue_request(engine, rq);
> +
> +		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
> +
> +		kick = submit_queue(engine, rq);
> +	}
> +
> +	GEM_BUG_ON(list_empty(&rq->sched.link));
> +	spin_unlock_irqrestore(&engine->active.lock, flags);
> +	if (kick)
> +		tasklet_hi_schedule(&engine->execlists.tasklet);
> +}
> +
>   void i915_sched_node_init(struct i915_sched_node *node)
>   {
>   	spin_lock_init(&node->lock);
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
> index 5be7f90e7896..c4c086d56f81 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler.h
> @@ -39,6 +39,8 @@ void i915_sched_init_ipi(struct i915_sched_ipi *ipi);
>   
>   void i915_request_set_priority(struct i915_request *request, int prio);
>   
> +void i915_request_enqueue(struct i915_request *request);
> +
>   struct list_head *
>   i915_sched_lookup_priolist(struct intel_engine_cs *engine, int prio);
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
