Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AD413A80F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 12:13:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06C366E359;
	Tue, 14 Jan 2020 11:13:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9697B6E359
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 11:13:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 03:13:08 -0800
X-IronPort-AV: E=Sophos;i="5.69,432,1571727600"; d="scan'208";a="213300164"
Received: from mdanino-mobl1.ger.corp.intel.com (HELO [10.252.23.174])
 ([10.252.23.174])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Jan 2020 03:13:07 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200113104442.1753973-1-chris@chris-wilson.co.uk>
 <20200113104442.1753973-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9b90921d-be2b-0c17-c1e6-32cdfec3ab19@linux.intel.com>
Date: Tue, 14 Jan 2020 11:13:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200113104442.1753973-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Use common priotree lists for
 virtual engine
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



On 13/01/2020 10:44, Chris Wilson wrote:
> Since commit 422d7df4f090 ("drm/i915: Replace engine->timeline with a
> plain list"), we used the default embedded priotree slot for the virtual
> engine request queue, which means we can also use the same solitary slot
> with the scheduler. However, the priolist is expected to be guarded by
> the engine->active.lock, but this is not true for the virtual engine
> 
> References: 422d7df4f090 ("drm/i915: Replace engine->timeline with a plain list")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c   |  3 +++
>   drivers/gpu/drm/i915/i915_request.c   |  4 +++-
>   drivers/gpu/drm/i915/i915_request.h   | 16 ++++++++++++++++
>   drivers/gpu/drm/i915/i915_scheduler.c |  3 +--
>   4 files changed, 23 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index a6ac37dece0a..685659f079a2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -985,6 +985,8 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
>   			GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
>   
>   			list_move(&rq->sched.link, pl);
> +			set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> +
>   			active = rq;
>   		} else {
>   			struct intel_engine_cs *owner = rq->context->engine;
> @@ -2473,6 +2475,7 @@ static void execlists_submit_request(struct i915_request *request)
>   	spin_lock_irqsave(&engine->active.lock, flags);
>   
>   	queue_request(engine, &request->sched, rq_prio(request));
> +	set_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);

Move into queue_request so it is closer to priolist management, just like at other call sites?

Also, these are all under the engine active lock so non-atomic set/clear could be used, no?

>   
>   	GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
>   	GEM_BUG_ON(list_empty(&request->sched.link));
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index be185886e4fc..9ed0d3bc7249 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -408,8 +408,10 @@ bool __i915_request_submit(struct i915_request *request)
>   xfer:	/* We may be recursing from the signal callback of another i915 fence */
>   	spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);
>   
> -	if (!test_and_set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags))
> +	if (!test_and_set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags)) {
>   		list_move_tail(&request->sched.link, &engine->active.requests);
> +		clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
> +	}
>   
>   	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags) &&
>   	    !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &request->fence.flags) &&
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 031433691a06..f3e50ec989b8 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -70,6 +70,17 @@ enum {
>   	 */
>   	I915_FENCE_FLAG_ACTIVE = DMA_FENCE_FLAG_USER_BITS,
>   
> +	/*
> +	 * I915_FENCE_FLAG_PQUEUE - this request is ready for execution
> +	 *
> +	 * Using the scheduler, when a request is ready for execution it is put
> +	 * into the priority queue. We want to track its membership within that
> +	 * queue so that we can easily check before rescheduling.
> +	 *
> +	 * See i915_request_in_priority_queue()
> +	 */
> +	I915_FENCE_FLAG_PQUEUE,
> +
>   	/*
>   	 * I915_FENCE_FLAG_SIGNAL - this request is currently on signal_list
>   	 *
> @@ -361,6 +372,11 @@ static inline bool i915_request_is_active(const struct i915_request *rq)
>   	return test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
>   }
>   
> +static inline bool i915_request_in_priority_queue(const struct i915_request *rq)
> +{
> +	return test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> +}
> +
>   /**
>    * Returns true if seq1 is later than seq2.
>    */
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index bf87c70bfdd9..4f6e4d6c590a 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -338,8 +338,7 @@ static void __i915_schedule(struct i915_sched_node *node,
>   			continue;
>   		}
>   
> -		if (!intel_engine_is_virtual(engine) &&
> -		    !i915_request_is_active(node_to_request(node))) {
> +		if (i915_request_in_priority_queue(node_to_request(node))) {

Not shown in this diff before this if block we have:

	if (list_empty(&node->link)) {
		/*
		 * If the request is not in the priolist queue because
		 * it is not yet runnable, then it doesn't contribute
		 * to our preemption decisions. On the other hand,
		 * if the request is on the HW, it too is not in the
		 * queue; but in that case we may still need to reorder
		 * the inflight requests.
		 */
		continue;
	}

What is the difference between list_empty(&node->link) and !i915_request_in_priority_queue?

Regards,

Tvrtko

>   			if (!cache.priolist)
>   				cache.priolist =
>   					i915_sched_lookup_priolist(engine,
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
