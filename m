Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D8C30C0EB
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 15:11:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50B99892D4;
	Tue,  2 Feb 2021 14:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68C77892D4
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 14:11:51 +0000 (UTC)
IronPort-SDR: H87F/1Kxqmgb0CjVmanv4Yx3rqkZkTETuqilfZ00pzdsV4Xy5lXtdJQlccEYpO+m8YFVNy0+tg
 39r7xN1NXXyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="168535454"
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="168535454"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 06:11:50 -0800
IronPort-SDR: awAGP9z2Mry3zc6UcdbryHA8uP2d5ROPwodqQqgkEpifNZM/s5v9SHt0jsLOWw2ibMrHLo9Esg
 Yz/eonyaUe/g==
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; d="scan'208";a="432938332"
Received: from irisshal-mobl1.ger.corp.intel.com (HELO [10.214.210.18])
 ([10.214.210.18])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 06:11:49 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-19-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <748db21e-335a-7f7d-16c7-50bc68e5b266@linux.intel.com>
Date: Tue, 2 Feb 2021 14:10:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210201085715.27435-19-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 19/57] drm/i915: Fix the iterative dfs for
 defering requests
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
> The current implementation of walking the children of a deferred
> requests lacks the backtracking required to reduce the dfs to linear.
> Having pulled it from execlists into the common layer, we can reuse the
> dfs code for priority inheritance.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_scheduler.c | 56 +++++++++++++++++++--------
>   1 file changed, 40 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index bfd37ee801fd..694ca3a3b563 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -466,8 +466,10 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
>   void __i915_sched_defer_request(struct intel_engine_cs *engine,
>   				struct i915_request *rq)
>   {
> -	struct list_head *pl;
> -	LIST_HEAD(list);
> +	struct list_head *pos = &rq->sched.waiters_list;
> +	const int prio = rq_prio(rq);
> +	struct i915_request *rn;
> +	LIST_HEAD(dfs);
>   
>   	lockdep_assert_held(&engine->active.lock);
>   	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags));
> @@ -477,14 +479,11 @@ void __i915_sched_defer_request(struct intel_engine_cs *engine,
>   	 * to those that are waiting upon it. So we traverse its chain of
>   	 * waiters and move any that are earlier than the request to after it.
>   	 */
> -	pl = lookup_priolist(engine, rq_prio(rq));
> +	rq->sched.dfs.prev = NULL;
>   	do {
> -		struct i915_dependency *p;
> -
> -		GEM_BUG_ON(i915_request_is_active(rq));
> -		list_move_tail(&rq->sched.link, pl);
> -
> -		for_each_waiter(p, rq) {
> +		list_for_each_continue(pos, &rq->sched.waiters_list) {
> +			struct i915_dependency *p =
> +				list_entry(pos, typeof(*p), wait_link);
>   			struct i915_request *w =
>   				container_of(p->waiter, typeof(*w), sched);
>   
> @@ -500,19 +499,44 @@ void __i915_sched_defer_request(struct intel_engine_cs *engine,
>   				   __i915_request_has_started(w) &&
>   				   !__i915_request_is_complete(rq));
>   
> -			if (!i915_request_is_ready(w))
> +			if (!i915_request_in_priority_queue(w))
>   				continue;
>   
> -			if (rq_prio(w) < rq_prio(rq))
> +			/*
> +			 * We also need to reorder within the same priority.
> +			 *
> +			 * This is unlike priority-inheritance, where if the
> +			 * signaler already has a higher priority [earlier
> +			 * deadline] than us, we can ignore as it will be
> +			 * scheduled first. If a waiter already has the
> +			 * same priority, we still have to push it to the end
> +			 * of the list. This unfortunately means we cannot
> +			 * use the rq_deadline() itself as a 'visited' bit.

rq_deadline only appears later but never mind.

> +			 */
> +			if (rq_prio(w) < prio)
>   				continue;
>   
> -			GEM_BUG_ON(rq_prio(w) > rq_prio(rq));
> -			GEM_BUG_ON(i915_request_is_active(w));
> -			list_move_tail(&w->sched.link, &list);
> +			GEM_BUG_ON(rq_prio(w) != prio);
> +
> +			/* Remember our position along this branch */
> +			rq = stack_push(w, rq, pos);
> +			pos = &rq->sched.waiters_list;
>   		}
>   
> -		rq = list_first_entry_or_null(&list, typeof(*rq), sched.link);
> -	} while (rq);
> +		/* Note list is reversed for waiters wrt signal hierarchy */
> +		GEM_BUG_ON(rq->engine != engine);
> +		GEM_BUG_ON(!i915_request_in_priority_queue(rq));
> +		list_move(&rq->sched.link, &dfs);
> +
> +		/* Track our visit, and prevent duplicate processing */
> +		clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> +	} while ((rq = stack_pop(rq, &pos)));
> +
> +	pos = lookup_priolist(engine, prio);
> +	list_for_each_entry_safe(rq, rn, &dfs, sched.link) {
> +		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> +		list_add_tail(&rq->sched.link, pos);
> +	}
>   }
>   
>   static void queue_request(struct intel_engine_cs *engine,
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
