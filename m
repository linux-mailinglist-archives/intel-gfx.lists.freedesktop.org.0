Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D64E21B4EF
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:24:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DFE96E054;
	Fri, 10 Jul 2020 12:24:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B6896E054
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:24:26 +0000 (UTC)
IronPort-SDR: Lf5xjcg8F9ha1rObLRtDGPDGEGJ7dTePHV5siIh9avbE5gBSMLb2IZuM2k5i78mT/4UWtV017K
 3RlXSsJQ6Agg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="166279359"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="166279359"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:24:26 -0700
IronPort-SDR: ug+uYWBbditRftwdIxb5X/mM+tvj12dcV+B+BiqLD6xWY1k41vEGRopdqqUQMRYJ+GeuT/Mf8+
 KtwPE4JJEFEg==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="428551507"
Received: from unknown (HELO [10.252.44.180]) ([10.252.44.180])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:24:25 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-11-chris@chris-wilson.co.uk>
 <244f175e-b170-cac2-e7bf-080431b571da@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0a92e738-296e-290d-c6d0-ea5a99c52a18@linux.intel.com>
Date: Fri, 10 Jul 2020 13:24:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <244f175e-b170-cac2-e7bf-080431b571da@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 10/20] drm/i915: Export a preallocate
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/07/2020 15:36, Maarten Lankhorst wrote:
> Op 06-07-2020 om 08:19 schreef Chris Wilson:
>> Sometimes we have to be very careful not to allocate underneath a mutex
>> (or spinlock) and yet still want to track activity. Enter
>> i915_active_acquire_for_context(). This raises the activity counter on
>> i915_active prior to use and ensures that the fence-tree contains a slot
>> for the context.
>>
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> ---
>>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   2 +-
>>   drivers/gpu/drm/i915/gt/intel_timeline.c      |   4 +-
>>   drivers/gpu/drm/i915/i915_active.c            | 113 +++++++++++++++---
>>   drivers/gpu/drm/i915/i915_active.h            |  14 ++-
>>   4 files changed, 113 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> index 1015c4fd9f3e..6d20be29ff3c 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -1789,7 +1789,7 @@ __parser_mark_active(struct i915_vma *vma,
>>   {
>>   	struct intel_gt_buffer_pool_node *node = vma->private;
>>   
>> -	return i915_active_ref(&node->active, tl, fence);
>> +	return i915_active_ref(&node->active, tl->fence_context, fence);
>>   }
>>   
>>   static int
>> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
>> index 4546284fede1..e4a5326633b8 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
>> @@ -479,7 +479,9 @@ __intel_timeline_get_seqno(struct intel_timeline *tl,
>>   	 * free it after the current request is retired, which ensures that
>>   	 * all writes into the cacheline from previous requests are complete.
>>   	 */
>> -	err = i915_active_ref(&tl->hwsp_cacheline->active, tl, &rq->fence);
>> +	err = i915_active_ref(&tl->hwsp_cacheline->active,
>> +			      tl->fence_context,
>> +			      &rq->fence);
>>   	if (err)
>>   		goto err_cacheline;
>>   
>> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
>> index d960d0be5bd2..3f595446fd44 100644
>> --- a/drivers/gpu/drm/i915/i915_active.c
>> +++ b/drivers/gpu/drm/i915/i915_active.c
>> @@ -217,11 +217,10 @@ excl_retire(struct dma_fence *fence, struct dma_fence_cb *cb)
>>   }
>>   
>>   static struct i915_active_fence *
>> -active_instance(struct i915_active *ref, struct intel_timeline *tl)
>> +active_instance(struct i915_active *ref, u64 idx)
>>   {
>>   	struct active_node *node, *prealloc;
>>   	struct rb_node **p, *parent;
>> -	u64 idx = tl->fence_context;
>>   
>>   	/*
>>   	 * We track the most recently used timeline to skip a rbtree search
>> @@ -353,21 +352,17 @@ __active_del_barrier(struct i915_active *ref, struct active_node *node)
>>   	return ____active_del_barrier(ref, node, barrier_to_engine(node));
>>   }
>>   
>> -int i915_active_ref(struct i915_active *ref,
>> -		    struct intel_timeline *tl,
>> -		    struct dma_fence *fence)
>> +int i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence)
>>   {
>>   	struct i915_active_fence *active;
>>   	int err;
>>   
>> -	lockdep_assert_held(&tl->mutex);
>> -
>>   	/* Prevent reaping in case we malloc/wait while building the tree */
>>   	err = i915_active_acquire(ref);
>>   	if (err)
>>   		return err;
>>   
>> -	active = active_instance(ref, tl);
>> +	active = active_instance(ref, idx);
>>   	if (!active) {
>>   		err = -ENOMEM;
>>   		goto out;
>> @@ -384,32 +379,104 @@ int i915_active_ref(struct i915_active *ref,
>>   		atomic_dec(&ref->count);
>>   	}
>>   	if (!__i915_active_fence_set(active, fence))
>> -		atomic_inc(&ref->count);
>> +		__i915_active_acquire(ref);
>>   
>>   out:
>>   	i915_active_release(ref);
>>   	return err;
>>   }
>>   
>> -struct dma_fence *
>> -i915_active_set_exclusive(struct i915_active *ref, struct dma_fence *f)
>> +static struct dma_fence *
>> +__i915_active_set_fence(struct i915_active *ref,
>> +			struct i915_active_fence *active,
>> +			struct dma_fence *fence)
>>   {
>>   	struct dma_fence *prev;
>>   
>>   	/* We expect the caller to manage the exclusive timeline ordering */
>>   	GEM_BUG_ON(i915_active_is_idle(ref));
>>   
>> +	if (is_barrier(active)) { /* proto-node used by our idle barrier */
>> +		/*
>> +		 * This request is on the kernel_context timeline, and so
>> +		 * we can use it to substitute for the pending idle-barrer
>> +		 * request that we want to emit on the kernel_context.
>> +		 */
>> +		__active_del_barrier(ref, node_from_active(active));
>> +		RCU_INIT_POINTER(active->fence, NULL);
>> +		atomic_dec(&ref->count);
>> +	}
>> +
>>   	rcu_read_lock();
>> -	prev = __i915_active_fence_set(&ref->excl, f);
>> +	prev = __i915_active_fence_set(active, fence);
>>   	if (prev)
>>   		prev = dma_fence_get_rcu(prev);
>>   	else
>> -		atomic_inc(&ref->count);
>> +		__i915_active_acquire(ref);
>>   	rcu_read_unlock();
>>   
>>   	return prev;
>>   }
>>   
>> +static struct i915_active_fence *
>> +__active_lookup(struct i915_active *ref, u64 idx)
>> +{
>> +	struct active_node *node;
>> +	struct rb_node *p;
>> +
>> +	/* Like active_instance() but with no malloc */
>> +
>> +	node = READ_ONCE(ref->cache);
>> +	if (node && node->timeline == idx)
>> +		return &node->base;
>> +
>> +	spin_lock_irq(&ref->tree_lock);
>> +	GEM_BUG_ON(i915_active_is_idle(ref));
>> +
>> +	p = ref->tree.rb_node;
>> +	while (p) {
>> +		node = rb_entry(p, struct active_node, node);
>> +		if (node->timeline == idx) {
>> +			ref->cache = node;
>> +			spin_unlock_irq(&ref->tree_lock);
>> +			return &node->base;
>> +		}
>> +
>> +		if (node->timeline < idx)
>> +			p = p->rb_right;
>> +		else
>> +			p = p->rb_left;
>> +	}
>> +
>> +	spin_unlock_irq(&ref->tree_lock);
>> +
>> +	return NULL;
>> +}
>> +
>> +struct dma_fence *
>> +__i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence)
>> +{
>> +	struct dma_fence *prev = ERR_PTR(-ENOENT);
>> +	struct i915_active_fence *active;
>> +
>> +	if (!i915_active_acquire_if_busy(ref))
>> +		return ERR_PTR(-EINVAL);
>> +
>> +	active = __active_lookup(ref, idx);
>> +	if (active)
>> +		prev = __i915_active_set_fence(ref, active, fence);
>> +
>> +	i915_active_release(ref);
>> +	return prev;
>> +}
>> +
>> +struct dma_fence *
>> +i915_active_set_exclusive(struct i915_active *ref, struct dma_fence *f)
>> +{
>> +	/* We expect the caller to manage the exclusive timeline ordering */
>> +	return __i915_active_set_fence(ref, &ref->excl, f);
>> +}
>> +
>>   bool i915_active_acquire_if_busy(struct i915_active *ref)
>>   {
>>   	debug_active_assert(ref);
>> @@ -443,6 +510,24 @@ int i915_active_acquire(struct i915_active *ref)
>>   	return err;
>>   }
>>   
>> +int i915_active_acquire_for_context(struct i915_active *ref, u64 idx)
>> +{
>> +	struct i915_active_fence *active;
>> +	int err;
>> +
>> +	err = i915_active_acquire(ref);
>> +	if (err)
>> +		return err;
>> +
>> +	active = active_instance(ref, idx);
>> +	if (!active) {
>> +		i915_active_release(ref);
>> +		return -ENOMEM;
>> +	}
>> +
>> +	return 0; /* return with active ref */
>> +}
>> +
>>   void i915_active_release(struct i915_active *ref)
>>   {
>>   	debug_active_assert(ref);
>> @@ -804,7 +889,7 @@ int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
>>   			 */
>>   			RCU_INIT_POINTER(node->base.fence, ERR_PTR(-EAGAIN));
>>   			node->base.cb.node.prev = (void *)engine;
>> -			atomic_inc(&ref->count);
>> +			__i915_active_acquire(ref);
>>   		}
>>   		GEM_BUG_ON(rcu_access_pointer(node->base.fence) != ERR_PTR(-EAGAIN));
>>   
>> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
>> index cf4058150966..2e0bcb3289ec 100644
>> --- a/drivers/gpu/drm/i915/i915_active.h
>> +++ b/drivers/gpu/drm/i915/i915_active.h
>> @@ -163,14 +163,18 @@ void __i915_active_init(struct i915_active *ref,
>>   	__i915_active_init(ref, active, retire, &__mkey, &__wkey);	\
>>   } while (0)
>>   
>> -int i915_active_ref(struct i915_active *ref,
>> -		    struct intel_timeline *tl,
>> -		    struct dma_fence *fence);
>> +struct dma_fence *
>> +__i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence);
>> +int i915_active_ref(struct i915_active *ref, u64 idx, struct dma_fence *fence);
>>   
>>   static inline int
>>   i915_active_add_request(struct i915_active *ref, struct i915_request *rq)
>>   {
>> -	return i915_active_ref(ref, i915_request_timeline(rq), &rq->fence);
>> +	struct intel_timeline *tl = i915_request_timeline(rq);
>> +
>> +	lockdep_assert_held(&tl->mutex);
>> +
>> +	return i915_active_ref(ref, tl->fence_context, &rq->fence);
>>   }
>>   
>>   struct dma_fence *
>> @@ -198,7 +202,9 @@ int i915_request_await_active(struct i915_request *rq,
>>   #define I915_ACTIVE_AWAIT_BARRIER BIT(2)
>>   
>>   int i915_active_acquire(struct i915_active *ref);
>> +int i915_active_acquire_for_context(struct i915_active *ref, u64 idx);
>>   bool i915_active_acquire_if_busy(struct i915_active *ref);
>> +
>>   void i915_active_release(struct i915_active *ref);
>>   
>>   static inline void __i915_active_acquire(struct i915_active *ref)
> 
> Somewhere this is hiding a locking inversion in the later part of this series.
> 
> tl->mutex needs to be an inner lock of ww objects, see my patch series.
> 
> Since this is not the case, you're somehow hiding a locking inversion.

Which locks you think and from where? I want to make sure I am not 
missing something while reading the series..

There used to be (still is in upstream) a possible deadlock with async 
get pages if batch buffer was an userptr object, but this series solves 
that by pre-allocating page directories in the reservation phase. That's 
not a plain locking inversion, but maybe that's what you had in mind?

Does it take tl->mutex undeer dma_fence_wait? I can't see that it does.

Can't think of any other options at the moment.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
