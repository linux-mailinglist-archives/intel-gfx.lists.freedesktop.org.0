Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F260223B4A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 14:22:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A54C6E0AA;
	Fri, 17 Jul 2020 12:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D5FE6E0AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 12:21:59 +0000 (UTC)
IronPort-SDR: yQjYBYyJWcNoLRtfRe/P7oMWk3L5ZHKhURfzwlYlXR0iR2SNDGvXK9zEqxdmbZPd7N3C05QLhY
 CJ0Gd+BSifAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="150956824"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="150956824"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 05:21:58 -0700
IronPort-SDR: qVvHRPYDlm2gz36hnhPXM+DvV15/NHAJ2KJIeA4u7cxj9Wrs/i13OSSBb37s/iarQmlnypZEiW
 zXpxLI/wvvNQ==
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="460831036"
Received: from gpanagop-mobl.ger.corp.intel.com (HELO [10.249.33.238])
 ([10.249.33.238])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 05:21:57 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-6-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <173d852e-045a-86aa-a030-4bf564bcd6b3@linux.intel.com>
Date: Fri, 17 Jul 2020 13:21:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-6-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/66] drm/i915: Export a preallocate
 variant of i915_active_acquire()
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


On 15/07/2020 12:50, Chris Wilson wrote:
> Sometimes we have to be very careful not to allocate underneath a mutex
> (or spinlock) and yet still want to track activity. Enter
> i915_active_acquire_for_context(). This raises the activity counter on
> i915_active prior to use and ensures that the fence-tree contains a slot
> for the context.

Changelog?
 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   2 +-
>   drivers/gpu/drm/i915/gt/intel_timeline.c      |   4 +-
>   drivers/gpu/drm/i915/i915_active.c            | 136 +++++++++++++++---
>   drivers/gpu/drm/i915/i915_active.h            |  12 +-
>   4 files changed, 126 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 6b4ec66cb558..719ba9fe3e85 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1729,7 +1729,7 @@ __parser_mark_active(struct i915_vma *vma,
>   {
>   	struct intel_gt_buffer_pool_node *node = vma->private;
>   
> -	return i915_active_ref(&node->active, tl, fence);
> +	return i915_active_ref(&node->active, tl->fence_context, fence);
>   }
>   
>   static int
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
> index 46d20f5f3ddc..acb43aebd669 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
> @@ -484,7 +484,9 @@ __intel_timeline_get_seqno(struct intel_timeline *tl,
>   	 * free it after the current request is retired, which ensures that
>   	 * all writes into the cacheline from previous requests are complete.
>   	 */
> -	err = i915_active_ref(&tl->hwsp_cacheline->active, tl, &rq->fence);
> +	err = i915_active_ref(&tl->hwsp_cacheline->active,
> +			      tl->fence_context,
> +			      &rq->fence);
>   	if (err)
>   		goto err_cacheline;
>   
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index 841b5c30950a..799282fb1bb9 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -28,12 +28,14 @@ static struct i915_global_active {
>   } global;
>   
>   struct active_node {
> +	struct rb_node node;
>   	struct i915_active_fence base;
>   	struct i915_active *ref;
> -	struct rb_node node;
>   	u64 timeline;
>   };
>   
> +#define fetch_node(x) rb_entry(READ_ONCE(x), typeof(struct active_node), node)
> +
>   static inline struct active_node *
>   node_from_active(struct i915_active_fence *active)
>   {
> @@ -216,12 +218,40 @@ excl_retire(struct dma_fence *fence, struct dma_fence_cb *cb)
>   		active_retire(container_of(cb, struct i915_active, excl.cb));
>   }
>   
> +static struct active_node *__active_lookup(struct i915_active *ref, u64 idx)
> +{
> +	struct active_node *it;
> +
> +	it = READ_ONCE(ref->cache);
> +	if (it && it->timeline == idx)
> +		return it;
> +
> +	BUILD_BUG_ON(offsetof(typeof(*it), node));
> +
> +	/* While active, the tree can only be built; not destroyed */
> +	GEM_BUG_ON(i915_active_is_idle(ref));
> +
> +	it = fetch_node(ref->tree.rb_node);
> +	while (it) {
> +		if (it->timeline < idx) {
> +			it = fetch_node(it->node.rb_right);
> +		} else if (it->timeline > idx) {
> +			it = fetch_node(it->node.rb_left);
> +		} else {
> +			WRITE_ONCE(ref->cache, it);
> +			break;
> +		}
> +	}
> +
> +	/* NB: If the tree rotated beneath us, we may miss our target. */
> +	return it;
> +}
> +
>   static struct i915_active_fence *
> -active_instance(struct i915_active *ref, struct intel_timeline *tl)
> +active_instance(struct i915_active *ref, u64 idx)
>   {
>   	struct active_node *node, *prealloc;
>   	struct rb_node **p, *parent;
> -	u64 idx = tl->fence_context;
>   
>   	/*
>   	 * We track the most recently used timeline to skip a rbtree search
> @@ -230,8 +260,8 @@ active_instance(struct i915_active *ref, struct intel_timeline *tl)
>   	 * after the previous activity has been retired, or if it matches the
>   	 * current timeline.
>   	 */
> -	node = READ_ONCE(ref->cache);
> -	if (node && node->timeline == idx)
> +	node = __active_lookup(ref, idx);
> +	if (likely(node))
>   		return &node->base;
>   
>   	/* Preallocate a replacement, just in case */
> @@ -268,10 +298,9 @@ active_instance(struct i915_active *ref, struct intel_timeline *tl)
>   	rb_insert_color(&node->node, &ref->tree);
>   
>   out:
> -	ref->cache = node;
> +	WRITE_ONCE(ref->cache, node);
>   	spin_unlock_irq(&ref->tree_lock);
>   
> -	BUILD_BUG_ON(offsetof(typeof(*node), base));
>   	return &node->base;
>   }
>   
> @@ -353,21 +382,17 @@ __active_del_barrier(struct i915_active *ref, struct active_node *node)
>   	return ____active_del_barrier(ref, node, barrier_to_engine(node));
>   }
>   
> -int i915_active_ref(struct i915_active *ref,
> -		    struct intel_timeline *tl,
> -		    struct dma_fence *fence)
> +int i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence)
>   {
>   	struct i915_active_fence *active;
>   	int err;
>   
> -	lockdep_assert_held(&tl->mutex);
> -
>   	/* Prevent reaping in case we malloc/wait while building the tree */
>   	err = i915_active_acquire(ref);
>   	if (err)
>   		return err;
>   
> -	active = active_instance(ref, tl);
> +	active = active_instance(ref, idx);
>   	if (!active) {
>   		err = -ENOMEM;
>   		goto out;
> @@ -384,32 +409,81 @@ int i915_active_ref(struct i915_active *ref,
>   		atomic_dec(&ref->count);
>   	}
>   	if (!__i915_active_fence_set(active, fence))
> -		atomic_inc(&ref->count);
> +		__i915_active_acquire(ref);
>   
>   out:
>   	i915_active_release(ref);
>   	return err;
>   }
>   
> -struct dma_fence *
> -i915_active_set_exclusive(struct i915_active *ref, struct dma_fence *f)
> +static struct dma_fence *
> +__i915_active_set_fence(struct i915_active *ref,
> +			struct i915_active_fence *active,
> +			struct dma_fence *fence)
>   {
>   	struct dma_fence *prev;
>   
> -	/* We expect the caller to manage the exclusive timeline ordering */
> -	GEM_BUG_ON(i915_active_is_idle(ref));
> +	if (is_barrier(active)) { /* proto-node used by our idle barrier */
> +		/*
> +		 * This request is on the kernel_context timeline, and so
> +		 * we can use it to substitute for the pending idle-barrer
> +		 * request that we want to emit on the kernel_context.
> +		 */
> +		__active_del_barrier(ref, node_from_active(active));
> +		RCU_INIT_POINTER(active->fence, fence);

There is still some duplication between i915_active_ref and here. Maybe something like:

static bool __active_check_delete_barrier(active, fence)
{
	if (is_barrier(active)) { /* proto-node used by our idle barrier */
		/*
		 * This request is on the kernel_context timeline, and so
		 * we can use it to substitute for the pending idle-barrer
		 * request that we want to emit on the kernel_context.
		 */
		__active_del_barrier(ref, node_from_active(active));
		RCU_INIT_POINTER(active->fence, NULL);
		return true;
	} else {
		return false
	}
}

And then here:

	if (__active_check_delete_barrier(active, fence))
		return NULL;

And in i915_active_ref:

	if (__active_check_delete_barrier(active, fence))
		atomic_dec(&ref->count);

?

> +		return NULL;
> +	}
>   
>   	rcu_read_lock();
> -	prev = __i915_active_fence_set(&ref->excl, f);
> +	prev = __i915_active_fence_set(active, fence);
>   	if (prev)
>   		prev = dma_fence_get_rcu(prev);
>   	else
> -		atomic_inc(&ref->count);
> +		__i915_active_acquire(ref);
>   	rcu_read_unlock();
>   
>   	return prev;
>   }
>   
> +static struct i915_active_fence *__active_fence(struct i915_active *ref, u64 idx)
> +{
> +	struct active_node *it;
> +
> +	it = __active_lookup(ref, idx);
> +	if (unlikely(!it)) { /* Contention with parallel tree builders! */
> +		spin_lock_irq(&ref->tree_lock);
> +		it = fetch_node(ref->tree.rb_node);
> +		while (it) {
> +			if (it->timeline < idx) {
> +				it = fetch_node(it->node.rb_right);
> +			} else if (it->timeline > idx) {
> +				it = fetch_node(it->node.rb_left);
> +			} else {
> +				WRITE_ONCE(ref->cache, it);
> +				break;
> +			}
> +		}

The part between the spinlocks is the same as the lookup in __active_lookup. Even if you add three underscores I'd share it for readability.

> +		spin_unlock_irq(&ref->tree_lock);
> +	}
> +	GEM_BUG_ON(!it); /* slot must be preallocated */
> +
> +	return &it->base;
> +}
> +
> +struct dma_fence *
> +__i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence)
> +{
> +	/* Only valid while active, see i915_active_acquire_for_context() */
> +	return __i915_active_set_fence(ref, __active_fence(ref, idx), fence);
> +}

What is the difference between i915_active_ref and __i915_active_ref?

> +
> +struct dma_fence *
> +i915_active_set_exclusive(struct i915_active *ref, struct dma_fence *f)
> +{
> +	/* We expect the caller to manage the exclusive timeline ordering */
> +	return __i915_active_set_fence(ref, &ref->excl, f);
> +}
> +
>   bool i915_active_acquire_if_busy(struct i915_active *ref)
>   {
>   	debug_active_assert(ref);
> @@ -450,6 +524,24 @@ int i915_active_acquire(struct i915_active *ref)
>   	return err;
>   }
>   
> +int i915_active_acquire_for_context(struct i915_active *ref, u64 idx)
> +{
> +	struct i915_active_fence *active;
> +	int err;
> +
> +	err = i915_active_acquire(ref);
> +	if (err)
> +		return err;
> +
> +	active = active_instance(ref, idx);
> +	if (!active) {
> +		i915_active_release(ref);
> +		return -ENOMEM;
> +	}
> +
> +	return 0; /* return with active ref */
> +}
> +
>   void i915_active_release(struct i915_active *ref)
>   {
>   	debug_active_assert(ref);
> @@ -753,7 +845,7 @@ static struct active_node *reuse_idle_barrier(struct i915_active *ref, u64 idx)
>   match:
>   	rb_erase(p, &ref->tree); /* Hide from waits and sibling allocations */
>   	if (p == &ref->cache->node)
> -		ref->cache = NULL;
> +		WRITE_ONCE(ref->cache, NULL);
>   	spin_unlock_irq(&ref->tree_lock);
>   
>   	return rb_entry(p, struct active_node, node);
> @@ -811,7 +903,7 @@ int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
>   			 */
>   			RCU_INIT_POINTER(node->base.fence, ERR_PTR(-EAGAIN));
>   			node->base.cb.node.prev = (void *)engine;
> -			atomic_inc(&ref->count);
> +			__i915_active_acquire(ref);
>   		}
>   		GEM_BUG_ON(rcu_access_pointer(node->base.fence) != ERR_PTR(-EAGAIN));
>   
> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> index cf4058150966..73ded3c52a04 100644
> --- a/drivers/gpu/drm/i915/i915_active.h
> +++ b/drivers/gpu/drm/i915/i915_active.h
> @@ -163,14 +163,16 @@ void __i915_active_init(struct i915_active *ref,
>   	__i915_active_init(ref, active, retire, &__mkey, &__wkey);	\
>   } while (0)
>   
> -int i915_active_ref(struct i915_active *ref,
> -		    struct intel_timeline *tl,
> -		    struct dma_fence *fence);
> +struct dma_fence *
> +__i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence);
> +int i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence);
>   
>   static inline int
>   i915_active_add_request(struct i915_active *ref, struct i915_request *rq)
>   {
> -	return i915_active_ref(ref, i915_request_timeline(rq), &rq->fence);
> +	return i915_active_ref(ref,
> +			       i915_request_timeline(rq)->fence_context,
> +			       &rq->fence);
>   }
>   
>   struct dma_fence *
> @@ -198,7 +200,9 @@ int i915_request_await_active(struct i915_request *rq,
>   #define I915_ACTIVE_AWAIT_BARRIER BIT(2)
>   
>   int i915_active_acquire(struct i915_active *ref);
> +int i915_active_acquire_for_context(struct i915_active *ref, u64 idx);
>   bool i915_active_acquire_if_busy(struct i915_active *ref);
> +
>   void i915_active_release(struct i915_active *ref);
>   
>   static inline void __i915_active_acquire(struct i915_active *ref)
> 

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
