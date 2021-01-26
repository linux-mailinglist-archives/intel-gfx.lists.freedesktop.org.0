Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D95A0304534
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 18:26:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BAF489385;
	Tue, 26 Jan 2021 17:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 14.mo7.mail-out.ovh.net (14.mo7.mail-out.ovh.net
 [178.33.251.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B34589385
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 17:26:52 +0000 (UTC)
Received: from player789.ha.ovh.net (unknown [10.108.54.9])
 by mo7.mail-out.ovh.net (Postfix) with ESMTP id 6EEB41911F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 18:18:29 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player789.ha.ovh.net (Postfix) with ESMTPSA id C6A911A73EF4B;
 Tue, 26 Jan 2021 17:18:23 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-96R001cbcf9d57-965d-4aa3-b58a-9a6d0bd4c375,
 FCD1BBE7D880F588B4D98BD35E77FB0D8B597664) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Tue, 26 Jan 2021 19:18:22 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YBBO3uRy6802cL1A@jack.zhora.eu>
References: <20210120122205.2808-1-chris@chris-wilson.co.uk>
 <20210120122205.2808-7-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120122205.2808-7-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 5684668631095755273
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrvdeigdefjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpeejtdfhveefteegvdduieeikeeugeelfeefgefghfdvuedvtdfftedvvefgvdevueenucffohhmrghinhepfhhrvggvuggvshhkthhophdrohhrghenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeekledrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915: Restructure priority
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

> +		local_bh_disable();
> +		i915_request_set_priority(rq, prio);
> +		local_bh_enable();
> +
> +		i915_request_put(rq);
> +		rq = ptr_mask_bits(rn, 1);

why are you using ptr_mask_bits here?

> +	} while (rq);
> +}
> +
> +void i915_sched_init_ipi(struct i915_sched_ipi *ipi)
> +{
> +	INIT_WORK(&ipi->work, ipi_schedule);
> +	ipi->list = NULL;
> +}
> +
> +static void __ipi_add(struct i915_request *rq)
> +{
> +#define STUB ((struct i915_request *)1)
> +	struct intel_engine_cs *engine = READ_ONCE(rq->engine);
> +	struct i915_request *first;
> +
> +	if (!i915_request_get_rcu(rq))
> +		return;
> +
> +	if (__i915_request_is_complete(rq) ||
> +	    cmpxchg(&rq->sched.ipi_link, NULL, STUB)) { /* already queued */
> +		i915_request_put(rq);
> +		return;
> +	}
> +
> +	first = READ_ONCE(engine->execlists.ipi.list);
> +	do
> +		rq->sched.ipi_link = ptr_pack_bits(first, 1, 1);

... and why ptr_pack_bits here?

do they make any difference?

Andi

> @@ -265,66 +322,41 @@ static void __i915_schedule(struct i915_sched_node *node, int prio)
>  	 * end result is a topological list of requests in reverse order, the
>  	 * last element in the list is the request we must execute first.
>  	 */
> -	list_for_each_entry(dep, &dfs, dfs_link) {
> -		struct i915_sched_node *node = dep->signaler;
> +	list_for_each_entry(rq, &dfs, sched.dfs) {
> +		struct i915_dependency *p;
>  
> -		/* If we are already flying, we know we have no signalers */
> -		if (node_started(node))
> -			continue;
> +		/* Also release any children on this engine that are ready */
> +		GEM_BUG_ON(rq->engine != engine);
>  
> -		/*
> -		 * Within an engine, there can be no cycle, but we may
> -		 * refer to the same dependency chain multiple times
> -		 * (redundant dependencies are not eliminated) and across
> -		 * engines.
> -		 */
> -		list_for_each_entry(p, &node->signalers_list, signal_link) {
> -			GEM_BUG_ON(p == dep); /* no cycles! */
> +		for_each_signaler(p, rq) {
> +			struct i915_request *s =
> +				container_of(p->signaler, typeof(*s), sched);
>  
> -			if (node_signaled(p->signaler))
> +			GEM_BUG_ON(s == rq);
> +
> +			if (rq_prio(s) >= prio)
>  				continue;
>  
> -			if (prio > READ_ONCE(p->signaler->attr.priority))
> -				list_move_tail(&p->dfs_link, &dfs);
> +			if (__i915_request_is_complete(s))
> +				continue;
> +
> +			if (s->engine != rq->engine) {
> +				ipi_priority(s, prio);
> +				continue;
> +			}
> +
> +			list_move_tail(&s->sched.dfs, &dfs);
>  		}
>  	}
>  
> -	/*
> -	 * If we didn't need to bump any existing priorities, and we haven't
> -	 * yet submitted this request (i.e. there is no potential race with
> -	 * execlists_submit_request()), we can set our own priority and skip
> -	 * acquiring the engine locks.
> -	 */
> -	if (node->attr.priority == I915_PRIORITY_INVALID) {
> -		GEM_BUG_ON(!list_empty(&node->link));
> -		node->attr.priority = prio;
> +	plist = i915_sched_lookup_priolist(engine, prio);
>  
> -		if (stack.dfs_link.next == stack.dfs_link.prev)
> -			return;
> +	/* Fifo and depth-first replacement ensure our deps execute first */
> +	list_for_each_entry_safe_reverse(rq, rn, &dfs, sched.dfs) {
> +		GEM_BUG_ON(rq->engine != engine);
>  
> -		__list_del_entry(&stack.dfs_link);
> -	}
> -
> -	memset(&cache, 0, sizeof(cache));
> -	engine = node_to_request(node)->engine;
> -	spin_lock(&engine->active.lock);
> -
> -	/* Fifo and depth-first replacement ensure our deps execute before us */
> -	engine = sched_lock_engine(node, engine, &cache);
> -	list_for_each_entry_safe_reverse(dep, p, &dfs, dfs_link) {
> -		INIT_LIST_HEAD(&dep->dfs_link);
> -
> -		node = dep->signaler;
> -		engine = sched_lock_engine(node, engine, &cache);
> -		lockdep_assert_held(&engine->active.lock);
> -
> -		/* Recheck after acquiring the engine->timeline.lock */
> -		if (prio <= node->attr.priority || node_signaled(node))
> -			continue;
> -
> -		GEM_BUG_ON(node_to_request(node)->engine != engine);
> -
> -		WRITE_ONCE(node->attr.priority, prio);
> +		INIT_LIST_HEAD(&rq->sched.dfs);
> +		WRITE_ONCE(rq->sched.attr.priority, prio);
>  
>  		/*
>  		 * Once the request is ready, it will be placed into the
> @@ -334,32 +366,75 @@ static void __i915_schedule(struct i915_sched_node *node, int prio)
>  		 * any preemption required, be dealt with upon submission.
>  		 * See engine->submit_request()
>  		 */
> -		if (list_empty(&node->link))
> +		if (!i915_request_is_ready(rq))
>  			continue;
>  
> -		if (i915_request_in_priority_queue(node_to_request(node))) {
> -			if (!cache.priolist)
> -				cache.priolist =
> -					i915_sched_lookup_priolist(engine,
> -								   prio);
> -			list_move_tail(&node->link, cache.priolist);
> -		}
> +		if (i915_request_in_priority_queue(rq))
> +			list_move_tail(&rq->sched.link, plist);
>  
> -		/* Defer (tasklet) submission until after all of our updates. */
> -		kick_submission(engine, node_to_request(node), prio);
> +		/* Defer (tasklet) submission until after all updates. */
> +		kick_submission(engine, rq, prio);
>  	}
> -
> -	spin_unlock(&engine->active.lock);
>  }
>  
>  void i915_request_set_priority(struct i915_request *rq, int prio)
>  {
> -	if (!intel_engine_has_scheduler(rq->engine))
> +	struct intel_engine_cs *engine;
> +	unsigned long flags;
> +
> +	if (prio <= rq_prio(rq))
>  		return;
>  
> -	spin_lock_irq(&schedule_lock);
> -	__i915_schedule(&rq->sched, prio);
> -	spin_unlock_irq(&schedule_lock);
> +	/*
> +	 * If we are setting the priority before being submitted, see if we
> +	 * can quickly adjust our own priority in-situ and avoid taking
> +	 * the contended engine->active.lock. If we need priority inheritance,
> +	 * take the slow route.
> +	 */
> +	if (rq_prio(rq) == I915_PRIORITY_INVALID) {
> +		struct i915_dependency *p;
> +
> +		rcu_read_lock();
> +		for_each_signaler(p, rq) {
> +			struct i915_request *s =
> +				container_of(p->signaler, typeof(*s), sched);
> +
> +			if (rq_prio(s) >= prio)
> +				continue;
> +
> +			if (__i915_request_is_complete(s))
> +				continue;
> +
> +			break;
> +		}
> +		rcu_read_unlock();
> +
> +		if (&p->signal_link == &rq->sched.signalers_list &&
> +		    cmpxchg(&rq->sched.attr.priority,
> +			    I915_PRIORITY_INVALID,
> +			    prio) == I915_PRIORITY_INVALID)
> +			return;
> +	}
> +
> +	engine = lock_engine_irqsave(rq, flags);
> +	if (prio <= rq_prio(rq))
> +		goto unlock;
> +
> +	if (__i915_request_is_complete(rq))
> +		goto unlock;
> +
> +	if (!intel_engine_has_scheduler(engine)) {
> +		rq->sched.attr.priority = prio;
> +		goto unlock;
> +	}
> +
> +	rcu_read_lock();
> +	__i915_request_set_priority(rq, prio);
> +	rcu_read_unlock();
> +	GEM_BUG_ON(rq_prio(rq) != prio);
> +
> +unlock:
> +	spin_unlock_irqrestore(&engine->active.lock, flags);
>  }
>  
>  void i915_sched_node_init(struct i915_sched_node *node)
> @@ -369,6 +444,9 @@ void i915_sched_node_init(struct i915_sched_node *node)
>  	INIT_LIST_HEAD(&node->signalers_list);
>  	INIT_LIST_HEAD(&node->waiters_list);
>  	INIT_LIST_HEAD(&node->link);
> +	INIT_LIST_HEAD(&node->dfs);
> +
> +	node->ipi_link = NULL;
>  
>  	i915_sched_node_reinit(node);
>  }
> @@ -379,6 +457,9 @@ void i915_sched_node_reinit(struct i915_sched_node *node)
>  	node->semaphores = 0;
>  	node->flags = 0;
>  
> +	GEM_BUG_ON(node->ipi_link);
> +	node->ipi_priority = I915_PRIORITY_INVALID;
> +
>  	GEM_BUG_ON(!list_empty(&node->signalers_list));
>  	GEM_BUG_ON(!list_empty(&node->waiters_list));
>  	GEM_BUG_ON(!list_empty(&node->link));
> @@ -414,7 +495,6 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
>  	spin_lock(&signal->lock);
>  
>  	if (!node_signaled(signal)) {
> -		INIT_LIST_HEAD(&dep->dfs_link);
>  		dep->signaler = signal;
>  		dep->waiter = node_get(node);
>  		dep->flags = flags;
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
> index a045be784c67..5be7f90e7896 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler.h
> @@ -35,6 +35,8 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
>  
>  void i915_sched_node_retire(struct i915_sched_node *node);
>  
> +void i915_sched_init_ipi(struct i915_sched_ipi *ipi);
> +
>  void i915_request_set_priority(struct i915_request *request, int prio);
>  
>  struct list_head *
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index 623bf41fcf35..5a84d59134ee 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -8,8 +8,8 @@
>  #define _I915_SCHEDULER_TYPES_H_
>  
>  #include <linux/list.h>
> +#include <linux/workqueue.h>
>  
> -#include "gt/intel_engine_types.h"
>  #include "i915_priolist_types.h"
>  
>  struct drm_i915_private;
> @@ -61,13 +61,23 @@ struct i915_sched_attr {
>   */
>  struct i915_sched_node {
>  	spinlock_t lock; /* protect the lists */
> +
>  	struct list_head signalers_list; /* those before us, we depend upon */
>  	struct list_head waiters_list; /* those after us, they depend upon us */
> -	struct list_head link;
> +	struct list_head link; /* guarded by engine->active.lock */
> +	struct list_head dfs; /* guarded by engine->active.lock */
>  	struct i915_sched_attr attr;
> -	unsigned int flags;
> +	unsigned long flags;
>  #define I915_SCHED_HAS_EXTERNAL_CHAIN	BIT(0)
> -	intel_engine_mask_t semaphores;
> +	unsigned long semaphores;
> +
> +	struct i915_request *ipi_link;
> +	int ipi_priority;
> +};
> +
> +struct i915_sched_ipi {
> +	struct i915_request *list;
> +	struct work_struct work;
>  };
>  
>  struct i915_dependency {
> @@ -75,7 +85,6 @@ struct i915_dependency {
>  	struct i915_sched_node *waiter;
>  	struct list_head signal_link;
>  	struct list_head wait_link;
> -	struct list_head dfs_link;
>  	struct rcu_head rcu;
>  	unsigned long flags;
>  #define I915_DEPENDENCY_ALLOC		BIT(0)
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
