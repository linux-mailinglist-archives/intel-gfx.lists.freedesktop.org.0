Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5513026ED
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 16:35:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A1A96E1F2;
	Mon, 25 Jan 2021 15:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A7DD6E1F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 15:34:57 +0000 (UTC)
IronPort-SDR: cIQyuDZpH7RCGXkgcBXyqbEMLYCa1/JdHqh6Tk5bzCEe4UhXTBbJ3OxT3nvfwLxkpBoPT9yazo
 sjAa/XYMqOQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="167421354"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="167421354"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:34:56 -0800
IronPort-SDR: pqZEVJoE15UY9pHeUjjo5S59n8CcCWH2BicRTaBnYTJQf+vTtr5Pcb4BhVNQfeRMSSObPo37/5
 1lG4h5n5p6xg==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="387428275"
Received: from fjohn-mobl1.ger.corp.intel.com (HELO [10.249.46.217])
 ([10.249.46.217])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:34:55 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9b91423b-ad4f-7381-824f-a47d6758ae4a@linux.intel.com>
Date: Mon, 25 Jan 2021 15:34:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210125140136.10494-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/41] drm/i915: Teach the i915_dependency
 to use a double-lock
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


On 25/01/2021 14:00, Chris Wilson wrote:
> Currently, we construct and teardown the i915_dependency chains using a
> global spinlock. As the lists are entirely local, it should be possible
> to use an double-lock with an explicit nesting [signaler -> waiter,
> always] and so avoid the costly convenience of a global spinlock.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_request.c         |  2 +-
>   drivers/gpu/drm/i915/i915_scheduler.c       | 65 +++++++++++++--------
>   drivers/gpu/drm/i915/i915_scheduler.h       |  2 +-
>   drivers/gpu/drm/i915/i915_scheduler_types.h |  2 +
>   4 files changed, 46 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index abda565dfe62..df2ab39b394d 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -330,7 +330,7 @@ bool i915_request_retire(struct i915_request *rq)
>   	intel_context_unpin(rq->context);
>   
>   	free_capture_list(rq);
> -	i915_sched_node_fini(&rq->sched);
> +	i915_sched_node_retire(&rq->sched);
>   	i915_request_put(rq);
>   
>   	return true;
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index dbdd4128f13d..96fe1e22dad7 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -19,6 +19,17 @@ static struct i915_global_scheduler {
>   
>   static DEFINE_SPINLOCK(schedule_lock);
>   
> +static struct i915_sched_node *node_get(struct i915_sched_node *node)
> +{
> +	i915_request_get(container_of(node, struct i915_request, sched));
> +	return node;
> +}
> +
> +static void node_put(struct i915_sched_node *node)
> +{
> +	i915_request_put(container_of(node, struct i915_request, sched));
> +}
> +
>   static const struct i915_request *
>   node_to_request(const struct i915_sched_node *node)
>   {
> @@ -353,6 +364,8 @@ void i915_request_set_priority(struct i915_request *rq, int prio)
>   
>   void i915_sched_node_init(struct i915_sched_node *node)
>   {
> +	spin_lock_init(&node->lock);
> +
>   	INIT_LIST_HEAD(&node->signalers_list);
>   	INIT_LIST_HEAD(&node->waiters_list);
>   	INIT_LIST_HEAD(&node->link);
> @@ -377,10 +390,17 @@ i915_dependency_alloc(void)
>   	return kmem_cache_alloc(global.slab_dependencies, GFP_KERNEL);
>   }
>   
> +static void
> +rcu_dependency_free(struct rcu_head *rcu)
> +{
> +	kmem_cache_free(global.slab_dependencies,
> +			container_of(rcu, typeof(struct i915_dependency), rcu));
> +}
> +
>   static void
>   i915_dependency_free(struct i915_dependency *dep)
>   {
> -	kmem_cache_free(global.slab_dependencies, dep);
> +	call_rcu(&dep->rcu, rcu_dependency_free);
>   }
>   
>   bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
> @@ -390,24 +410,27 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
>   {
>   	bool ret = false;
>   
> -	spin_lock_irq(&schedule_lock);
> +	/* The signal->lock is always the outer lock in this double-lock. */
> +	spin_lock(&signal->lock);
>   
>   	if (!node_signaled(signal)) {
>   		INIT_LIST_HEAD(&dep->dfs_link);
>   		dep->signaler = signal;
> -		dep->waiter = node;
> +		dep->waiter = node_get(node);
>   		dep->flags = flags;
>   
>   		/* All set, now publish. Beware the lockless walkers. */
> +		spin_lock_nested(&node->lock, SINGLE_DEPTH_NESTING);
>   		list_add_rcu(&dep->signal_link, &node->signalers_list);
>   		list_add_rcu(&dep->wait_link, &signal->waiters_list);
> +		spin_unlock(&node->lock);
>   
>   		/* Propagate the chains */
>   		node->flags |= signal->flags;
>   		ret = true;
>   	}
>   
> -	spin_unlock_irq(&schedule_lock);
> +	spin_unlock(&signal->lock);

So we have to be sure another entry point cannot try to lock the same 
nodes in reverse, that is with reversed roles. Situation where nodes are 
simultaneously both each other waiters and signalers does indeed sound 
impossible so I think this is fine.

Only if some entry point would lock something which is a waiter, and 
then went to boost the priority of a signaler. That is still one with a 
global lock. So the benefit of this patch is just to reduce contention 
between adding and re-scheduling?

And __i915_schedule does walk the list of signalers without holding this 
new lock. What is the safety net there? RCU? Do we need 
list_for_each_entry_rcu and explicit rcu_read_(un)lock in there then?

Regards,

Tvrtko

>   
>   	return ret;
>   }
> @@ -429,39 +452,36 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
>   	return 0;
>   }
>   
> -void i915_sched_node_fini(struct i915_sched_node *node)
> +void i915_sched_node_retire(struct i915_sched_node *node)
>   {
>   	struct i915_dependency *dep, *tmp;
>   
> -	spin_lock_irq(&schedule_lock);
> -
>   	/*
>   	 * Everyone we depended upon (the fences we wait to be signaled)
>   	 * should retire before us and remove themselves from our list.
>   	 * However, retirement is run independently on each timeline and
> -	 * so we may be called out-of-order.
> +	 * so we may be called out-of-order. As we need to avoid taking
> +	 * the signaler's lock, just mark up our completion and be wary
> +	 * in traversing the signalers->waiters_list.
>   	 */
> -	list_for_each_entry_safe(dep, tmp, &node->signalers_list, signal_link) {
> -		GEM_BUG_ON(!list_empty(&dep->dfs_link));
> -
> -		list_del_rcu(&dep->wait_link);
> -		if (dep->flags & I915_DEPENDENCY_ALLOC)
> -			i915_dependency_free(dep);
> -	}
> -	INIT_LIST_HEAD(&node->signalers_list);
>   
>   	/* Remove ourselves from everyone who depends upon us */
> +	spin_lock(&node->lock);
>   	list_for_each_entry_safe(dep, tmp, &node->waiters_list, wait_link) {
> -		GEM_BUG_ON(dep->signaler != node);
> -		GEM_BUG_ON(!list_empty(&dep->dfs_link));
> +		struct i915_sched_node *w = dep->waiter;
>   
> +		GEM_BUG_ON(dep->signaler != node);
> +
> +		spin_lock_nested(&w->lock, SINGLE_DEPTH_NESTING);
>   		list_del_rcu(&dep->signal_link);
> +		spin_unlock(&w->lock);
> +		node_put(w);
> +
>   		if (dep->flags & I915_DEPENDENCY_ALLOC)
>   			i915_dependency_free(dep);
>   	}
> -	INIT_LIST_HEAD(&node->waiters_list);
> -
> -	spin_unlock_irq(&schedule_lock);
> +	INIT_LIST_HEAD_RCU(&node->waiters_list);
> +	spin_unlock(&node->lock);
>   }
>   
>   void i915_request_show_with_schedule(struct drm_printer *m,
> @@ -512,8 +532,7 @@ static struct i915_global_scheduler global = { {
>   int __init i915_global_scheduler_init(void)
>   {
>   	global.slab_dependencies = KMEM_CACHE(i915_dependency,
> -					      SLAB_HWCACHE_ALIGN |
> -					      SLAB_TYPESAFE_BY_RCU);
> +					      SLAB_HWCACHE_ALIGN);
>   	if (!global.slab_dependencies)
>   		return -ENOMEM;
>   
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
> index ccee506c9a26..a045be784c67 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler.h
> @@ -33,7 +33,7 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
>   				   struct i915_sched_node *signal,
>   				   unsigned long flags);
>   
> -void i915_sched_node_fini(struct i915_sched_node *node);
> +void i915_sched_node_retire(struct i915_sched_node *node);
>   
>   void i915_request_set_priority(struct i915_request *request, int prio);
>   
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index 343ed44d5ed4..623bf41fcf35 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -60,6 +60,7 @@ struct i915_sched_attr {
>    * others.
>    */
>   struct i915_sched_node {
> +	spinlock_t lock; /* protect the lists */
>   	struct list_head signalers_list; /* those before us, we depend upon */
>   	struct list_head waiters_list; /* those after us, they depend upon us */
>   	struct list_head link;
> @@ -75,6 +76,7 @@ struct i915_dependency {
>   	struct list_head signal_link;
>   	struct list_head wait_link;
>   	struct list_head dfs_link;
> +	struct rcu_head rcu;
>   	unsigned long flags;
>   #define I915_DEPENDENCY_ALLOC		BIT(0)
>   #define I915_DEPENDENCY_EXTERNAL	BIT(1)
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
