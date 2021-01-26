Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 150F73043B2
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 17:23:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FE1D6E0D1;
	Tue, 26 Jan 2021 16:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 213A66E0D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 16:23:06 +0000 (UTC)
IronPort-SDR: l+O0DvVj0RcKR+V9c8mgjvrFGALT+8giUXs8WMDGie1ScUJ99D05gWhokRVYfhpb0JC/atw7SF
 77Fb8Hxv4mLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="241457871"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="241457871"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 08:23:03 -0800
IronPort-SDR: KwVLP9LU7ifpgPDTO2vNY9xt8YU3hhixbUnlxgOH/nkXRDVVRSB7l8TXeC2E0Pd3k+Qr8TXMB7
 /3wNm8fgjfKQ==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="362041210"
Received: from jackedwa-mobl.ger.corp.intel.com (HELO [10.214.230.137])
 ([10.214.230.137])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 08:23:01 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-8-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c394217f-8f50-588d-daa2-2d802050e378@linux.intel.com>
Date: Tue, 26 Jan 2021 16:22:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210125140136.10494-8-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/41] drm/i915: Improve DFS for priority
 inheritance
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
> The core of the scheduling algorithm is that we compute the topological
> order of the fence DAG. Knowing that we have a DAG, we should be able to
> use a DFS to compute the topological sort in linear time. However,
> during the conversion of the recursive algorithm into an iterative one,
> the memoization of how far we had progressed down a branch was
> forgotten. The result was that instead of running in linear time, it was
> running in geometric time and could easily run for a few hundred
> milliseconds given a wide enough graph, not the microseconds as required.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_scheduler.c | 58 ++++++++++++++++-----------
>   1 file changed, 34 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index 4802c9b1081d..9139a91f0aa3 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -234,6 +234,26 @@ void __i915_priolist_free(struct i915_priolist *p)
>   	kmem_cache_free(global.slab_priorities, p);
>   }
>   
> +static struct i915_request *
> +stack_push(struct i915_request *rq,
> +	   struct i915_request *stack,
> +	   struct list_head *pos)
> +{
> +	stack->sched.dfs.prev = pos;
> +	rq->sched.dfs.next = (struct list_head *)stack;
> +	return rq;
> +}
> +
> +static struct i915_request *
> +stack_pop(struct i915_request *rq,
> +	  struct list_head **pos)
> +{
> +	rq = (struct i915_request *)rq->sched.dfs.next;
> +	if (rq)
> +		*pos = rq->sched.dfs.prev;
> +	return rq;
> +}
> +
>   static inline bool need_preempt(int prio, int active)
>   {
>   	/*
> @@ -298,11 +318,10 @@ static void ipi_priority(struct i915_request *rq, int prio)
>   static void __i915_request_set_priority(struct i915_request *rq, int prio)
>   {
>   	struct intel_engine_cs *engine = rq->engine;
> -	struct i915_request *rn;
> +	struct list_head *pos = &rq->sched.signalers_list;
>   	struct list_head *plist;
> -	LIST_HEAD(dfs);
>   
> -	list_add(&rq->sched.dfs, &dfs);
> +	plist = i915_sched_lookup_priolist(engine, prio);
>   
>   	/*
>   	 * Recursively bump all dependent priorities to match the new request.
> @@ -322,40 +341,31 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
>   	 * end result is a topological list of requests in reverse order, the
>   	 * last element in the list is the request we must execute first.
>   	 */
> -	list_for_each_entry(rq, &dfs, sched.dfs) {
> -		struct i915_dependency *p;
> -
> -		/* Also release any children on this engine that are ready */
> -		GEM_BUG_ON(rq->engine != engine);
> -
> -		for_each_signaler(p, rq) {
> +	rq->sched.dfs.next = NULL;
> +	do {
> +		list_for_each_continue(pos, &rq->sched.signalers_list) {
> +			struct i915_dependency *p =
> +				list_entry(pos, typeof(*p), signal_link);
>   			struct i915_request *s =
>   				container_of(p->signaler, typeof(*s), sched);
>   
> -			GEM_BUG_ON(s == rq);
> -
>   			if (rq_prio(s) >= prio)
>   				continue;
>   
>   			if (__i915_request_is_complete(s))
>   				continue;
>   
> -			if (s->engine != rq->engine) {
> +			if (s->engine != engine) {
>   				ipi_priority(s, prio);
>   				continue;
>   			}
>   
> -			list_move_tail(&s->sched.dfs, &dfs);
> +			/* Remember our position along this branch */
> +			rq = stack_push(s, rq, pos);
> +			pos = &rq->sched.signalers_list;
>   		}
> -	}
>   
> -	plist = i915_sched_lookup_priolist(engine, prio);
> -
> -	/* Fifo and depth-first replacement ensure our deps execute first */
> -	list_for_each_entry_safe_reverse(rq, rn, &dfs, sched.dfs) {
> -		GEM_BUG_ON(rq->engine != engine);
> -
> -		INIT_LIST_HEAD(&rq->sched.dfs);
> +		RQ_TRACE(rq, "set-priority:%d\n", prio);
>   		WRITE_ONCE(rq->sched.attr.priority, prio);
>   
>   		/*
> @@ -369,12 +379,13 @@ static void __i915_request_set_priority(struct i915_request *rq, int prio)
>   		if (!i915_request_is_ready(rq))
>   			continue;
>   
> +		GEM_BUG_ON(rq->engine != engine);
>   		if (i915_request_in_priority_queue(rq))
>   			list_move_tail(&rq->sched.link, plist);
>   
>   		/* Defer (tasklet) submission until after all updates. */
>   		kick_submission(engine, rq, prio);
> -	}
> +	} while ((rq = stack_pop(rq, &pos)));
>   }
>   
>   void i915_request_set_priority(struct i915_request *rq, int prio)
> @@ -444,7 +455,6 @@ void i915_sched_node_init(struct i915_sched_node *node)
>   	INIT_LIST_HEAD(&node->signalers_list);
>   	INIT_LIST_HEAD(&node->waiters_list);
>   	INIT_LIST_HEAD(&node->link);
> -	INIT_LIST_HEAD(&node->dfs);
>   
>   	node->ipi_link = NULL;
>   
> 

Pen and paper was needed here but it looks good.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
