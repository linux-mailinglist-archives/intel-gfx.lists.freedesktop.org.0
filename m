Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C95341D7927
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 15:02:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3546E16D;
	Mon, 18 May 2020 13:01:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F53C6E16D
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 13:01:57 +0000 (UTC)
IronPort-SDR: /iuqcJ5ddxQot/6wDKJznxaBYlVlF4pm5ZSgAzDcM+4mDQvZh36s+KtHaNbHr1uWrVo3pZeWEk
 xv3szxAgy9Mw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 06:01:31 -0700
IronPort-SDR: 4IutIRpjemORc4khMy8YffTMNSB32L1b11HoqgAbxlLFqHR+Z5RwPVRYVG8A5qB59BYKak64kZ
 rc0yZtVX3VZQ==
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="439209201"
Received: from coheno1-mobl.ger.corp.intel.com (HELO [10.214.214.153])
 ([10.214.214.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 06:01:30 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200518081440.17948-6-chris@chris-wilson.co.uk>
 <20200518123325.26678-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2bcbbf4a-42ad-ac61-89f0-a1fb25fb2c04@linux.intel.com>
Date: Mon, 18 May 2020 14:01:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200518123325.26678-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Use virtual_engine during
 execlists_dequeue
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


On 18/05/2020 13:33, Chris Wilson wrote:
> Rather than going back and forth between the rb_node entry and the
> virtual_engine type, store the ve local and reuse it. As the
> container_of conversion from rb_node to virtual_engine requires a
> variable offset, performing that conversion just once shaves off a bit
> of code.
> 
> v2: Keep a single virtual engine lookup, for typical use.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 176 +++++++++++++---------------
>   1 file changed, 84 insertions(+), 92 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 8524c5f3a329..7843bf3f3f1f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -451,7 +451,7 @@ static int queue_prio(const struct intel_engine_execlists *execlists)
>   
>   static inline bool need_preempt(const struct intel_engine_cs *engine,
>   				const struct i915_request *rq,
> -				struct rb_node *rb)
> +				struct virtual_engine *ve)
>   {
>   	int last_prio;
>   
> @@ -488,9 +488,7 @@ static inline bool need_preempt(const struct intel_engine_cs *engine,
>   	    rq_prio(list_next_entry(rq, sched.link)) > last_prio)
>   		return true;
>   
> -	if (rb) {
> -		struct virtual_engine *ve =
> -			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
> +	if (ve) {
>   		bool preempt = false;
>   
>   		if (engine == ve->siblings[0]) { /* only preempt one sibling */
> @@ -1812,6 +1810,35 @@ static bool virtual_matches(const struct virtual_engine *ve,
>   	return true;
>   }
>   
> +static struct virtual_engine *
> +first_virtual_engine(struct intel_engine_cs *engine)
> +{
> +	struct intel_engine_execlists *el = &engine->execlists;
> +	struct rb_node *rb = rb_first_cached(&el->virtual);
> +
> +	while (rb) {
> +		struct virtual_engine *ve =
> +			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
> +		struct i915_request *rq = READ_ONCE(ve->request);
> +
> +		if (!rq) { /* lazily cleanup after another engine handled rq */
> +			rb_erase_cached(rb, &el->virtual);
> +			RB_CLEAR_NODE(rb);
> +			rb = rb_first_cached(&el->virtual);
> +			continue;
> +		}
> +
> +		if (!virtual_matches(ve, rq, engine)) {
> +			rb = rb_next(rb);
> +			continue;
> +		}
> +
> +		return ve;
> +	}
> +
> +	return NULL;
> +}
> +
>   static void virtual_xfer_breadcrumbs(struct virtual_engine *ve)
>   {
>   	/*
> @@ -1896,7 +1923,7 @@ static void defer_active(struct intel_engine_cs *engine)
>   static bool
>   need_timeslice(const struct intel_engine_cs *engine,
>   	       const struct i915_request *rq,
> -	       const struct rb_node *rb)
> +	       struct virtual_engine *ve)
>   {
>   	int hint;
>   
> @@ -1905,9 +1932,7 @@ need_timeslice(const struct intel_engine_cs *engine,
>   
>   	hint = engine->execlists.queue_priority_hint;
>   
> -	if (rb) {
> -		const struct virtual_engine *ve =
> -			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
> +	if (ve) {
>   		const struct intel_engine_cs *inflight =
>   			intel_context_inflight(&ve->context);
>   
> @@ -2057,7 +2082,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   	struct intel_engine_execlists * const execlists = &engine->execlists;
>   	struct i915_request **port = execlists->pending;
>   	struct i915_request ** const last_port = port + execlists->port_mask;
> -	struct i915_request * const *active;
> +	struct i915_request * const *active = READ_ONCE(execlists->active);
> +	struct virtual_engine *ve = first_virtual_engine(engine);
>   	struct i915_request *last;
>   	struct rb_node *rb;
>   	bool submit = false;
> @@ -2084,26 +2110,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   	 * and context switches) submission.
>   	 */
>   
> -	for (rb = rb_first_cached(&execlists->virtual); rb; ) {
> -		struct virtual_engine *ve =
> -			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
> -		struct i915_request *rq = READ_ONCE(ve->request);
> -
> -		if (!rq) { /* lazily cleanup after another engine handled rq */
> -			rb_erase_cached(rb, &execlists->virtual);
> -			RB_CLEAR_NODE(rb);
> -			rb = rb_first_cached(&execlists->virtual);
> -			continue;
> -		}
> -
> -		if (!virtual_matches(ve, rq, engine)) {
> -			rb = rb_next(rb);
> -			continue;
> -		}
> -
> -		break;
> -	}
> -
>   	/*
>   	 * If the queue is higher priority than the last
>   	 * request in the currently active context, submit afresh.
> @@ -2111,10 +2117,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   	 * the active context to interject the preemption request,
>   	 * i.e. we will retrigger preemption following the ack in case
>   	 * of trouble.
> -	 */
> -	active = READ_ONCE(execlists->active);
> -
> -	/*
> +	 *
>   	 * In theory we can skip over completed contexts that have not
>   	 * yet been processed by events (as those events are in flight):
>   	 *
> @@ -2125,9 +2128,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   	 * find itself trying to jump back into a context it has just
>   	 * completed and barf.
>   	 */
> -
>   	if ((last = *active)) {
> -		if (need_preempt(engine, last, rb)) {
> +		if (need_preempt(engine, last, ve)) {
>   			if (i915_request_completed(last)) {
>   				tasklet_hi_schedule(&execlists->tasklet);
>   				return;
> @@ -2158,7 +2160,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   			__unwind_incomplete_requests(engine);
>   
>   			last = NULL;
> -		} else if (need_timeslice(engine, last, rb) &&
> +		} else if (need_timeslice(engine, last, ve) &&
>   			   timeslice_expired(execlists, last)) {
>   			if (i915_request_completed(last)) {
>   				tasklet_hi_schedule(&execlists->tasklet);
> @@ -2212,57 +2214,53 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   		}
>   	}
>   
> -	while (rb) { /* XXX virtual is always taking precedence */
> -		struct virtual_engine *ve =
> -			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
> +	while (ve) { /* XXX virtual is always taking precedence */
>   		struct i915_request *rq;
>   
>   		spin_lock(&ve->base.active.lock);
>   
>   		rq = ve->request;
> -		if (unlikely(!rq)) { /* lost the race to a sibling */
> -			spin_unlock(&ve->base.active.lock);
> -			rb_erase_cached(rb, &execlists->virtual);
> -			RB_CLEAR_NODE(rb);
> -			rb = rb_first_cached(&execlists->virtual);
> -			continue;
> -		}
> +		if (unlikely(!rq)) /* lost the race to a sibling */
> +			goto unlock;

Doesn't this now rely on a later patch to clear the node?

>   
>   		GEM_BUG_ON(rq != ve->request);
>   		GEM_BUG_ON(rq->engine != &ve->base);
>   		GEM_BUG_ON(rq->context != &ve->context);
>   
> -		if (rq_prio(rq) >= queue_prio(execlists)) {
> -			if (!virtual_matches(ve, rq, engine)) {
> -				spin_unlock(&ve->base.active.lock);
> -				rb = rb_next(rb);
> -				continue;
> -			}
> +		if (rq_prio(rq) < queue_prio(execlists)) {
> +			spin_unlock(&ve->base.active.lock);
> +			break;
> +		}
>   
> -			if (last && !can_merge_rq(last, rq)) {
> -				spin_unlock(&ve->base.active.lock);
> -				start_timeslice(engine, rq_prio(rq));
> -				return; /* leave this for another sibling */
> -			}
> +		GEM_BUG_ON(!virtual_matches(ve, rq, engine));

This as well.

Regards,

Tvrtko

>   
> -			ENGINE_TRACE(engine,
> -				     "virtual rq=%llx:%lld%s, new engine? %s\n",
> -				     rq->fence.context,
> -				     rq->fence.seqno,
> -				     i915_request_completed(rq) ? "!" :
> -				     i915_request_started(rq) ? "*" :
> -				     "",
> -				     yesno(engine != ve->siblings[0]));
> -
> -			WRITE_ONCE(ve->request, NULL);
> -			WRITE_ONCE(ve->base.execlists.queue_priority_hint,
> -				   INT_MIN);
> -			rb_erase_cached(rb, &execlists->virtual);
> -			RB_CLEAR_NODE(rb);
> +		if (last && !can_merge_rq(last, rq)) {
> +			spin_unlock(&ve->base.active.lock);
> +			start_timeslice(engine, rq_prio(rq));
> +			return; /* leave this for another sibling */
> +		}
> +
> +		ENGINE_TRACE(engine,
> +			     "virtual rq=%llx:%lld%s, new engine? %s\n",
> +			     rq->fence.context,
> +			     rq->fence.seqno,
> +			     i915_request_completed(rq) ? "!" :
> +			     i915_request_started(rq) ? "*" :
> +			     "",
> +			     yesno(engine != ve->siblings[0]));
>   
> -			GEM_BUG_ON(!(rq->execution_mask & engine->mask));
> -			WRITE_ONCE(rq->engine, engine);
> +		WRITE_ONCE(ve->request, NULL);
> +		WRITE_ONCE(ve->base.execlists.queue_priority_hint,
> +			   INT_MIN);
>   
> +		rb = &ve->nodes[engine->id].rb;
> +		rb_erase_cached(rb, &execlists->virtual);
> +		RB_CLEAR_NODE(rb);
> +
> +		GEM_BUG_ON(!(rq->execution_mask & engine->mask));
> +		WRITE_ONCE(rq->engine, engine);
> +
> +		if (__i915_request_submit(rq)) {
>   			if (engine != ve->siblings[0]) {
>   				u32 *regs = ve->context.lrc_reg_state;
>   				unsigned int n;
> @@ -2294,28 +2292,22 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   				GEM_BUG_ON(ve->siblings[0] != engine);
>   			}
>   
> -			if (__i915_request_submit(rq)) {
> -				submit = true;
> -				last = rq;
> -			}
> -			i915_request_put(rq);
> -
> -			/*
> -			 * Hmm, we have a bunch of virtual engine requests,
> -			 * but the first one was already completed (thanks
> -			 * preempt-to-busy!). Keep looking at the veng queue
> -			 * until we have no more relevant requests (i.e.
> -			 * the normal submit queue has higher priority).
> -			 */
> -			if (!submit) {
> -				spin_unlock(&ve->base.active.lock);
> -				rb = rb_first_cached(&execlists->virtual);
> -				continue;
> -			}
> +			submit = true;
> +			last = rq;
>   		}
>   
> +		i915_request_put(rq);
> +unlock:
>   		spin_unlock(&ve->base.active.lock);
> -		break;
> +
> +		/*
> +		 * Hmm, we have a bunch of virtual engine requests,
> +		 * but the first one was already completed (thanks
> +		 * preempt-to-busy!). Keep looking at the veng queue
> +		 * until we have no more relevant requests (i.e.
> +		 * the normal submit queue has higher priority).
> +		 */
> +		ve = submit ? NULL : first_virtual_engine(engine);
>   	}
>   
>   	while ((rb = rb_first_cached(&execlists->queue))) {
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
