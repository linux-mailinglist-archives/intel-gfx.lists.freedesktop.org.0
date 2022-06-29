Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB76D5605D1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 18:29:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7879310E720;
	Wed, 29 Jun 2022 16:28:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AD6F10EA84;
 Wed, 29 Jun 2022 16:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656520135; x=1688056135;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Cj+Sj3myx6uQknSNjjUJfZv0gqfpzQDoIMdhnJhT9XI=;
 b=F6RmO8shJXUUxczqIDjQkUJ8NEi851pFaERaoH2Nb3giJDvuE3IKSSTO
 zgBnju2y9Dur8osYxFwrZOGJeRNpnrxyZN7wF+GXp8ibhs7Pm1abBPhUI
 /Jbegt7n3sDdLiSWqfSWD697RiMB/xB2L5KyuyJp/VbK+tJQNJSPzHqhW
 s75RspNJDKpYWhYzPjF8Ivb9loY9gk9CGxNq8tBNQRwTTpckCwkJec4AD
 XpfBhxwoB24hVPSNcM8JrpXO7+FIAxq8fqqmQ5/WRGPkAMUD4L+FYApgZ
 4nW/t60xgBMr/1wMMUh4TdNhuqJyj/Xo/eAjLivg9AS/RQTztYjht07au g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="282811874"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="282811874"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 09:28:54 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="717888481"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO [10.213.202.136])
 ([10.213.202.136])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 09:28:52 -0700
Message-ID: <88fce8f0-71ae-7d64-2ebf-f016ab2dac5b@intel.com>
Date: Wed, 29 Jun 2022 17:28:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-GB
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220629121427.353800-1-matthew.auld@intel.com>
 <20220629121427.353800-12-matthew.auld@intel.com>
 <6de9f08e-a171-ca14-b9cc-770e34088644@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <6de9f08e-a171-ca14-b9cc-770e34088644@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 11/13] drm/i915/ttm: handle blitter
 failure on DG2
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
Cc: Kenneth Graunke <kenneth@whitecape.org>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 29/06/2022 17:11, Thomas Hellström wrote:
> Hi, Matthew,
> 
> On 6/29/22 14:14, Matthew Auld wrote:
>> If the move or clear operation somehow fails, and the memory underneath
>> is not cleared, like when moving to lmem, then we currently fallback to
>> memcpy or memset. However with small-BAR systems this fallback might no
>> longer be possible. For now we use the set_wedged sledgehammer if we
>> ever encounter such a scenario, and mark the object as borked to plug
>> any holes where access to the memory underneath can happen. Add some
>> basic selftests to exercise this.
>>
>> v2:
>>    - In the selftests make sure we grab the runtime pm around the reset.
>>      Also make sure we grab the reset lock before checking if the device
>>      is wedged, since the wedge might still be in-progress and hence the
>>      bit might not be set yet.
>>    - Don't wedge or put the object into an unknown state, if the request
>>      construction fails (or similar). Just returning an error and
>>      skipping the fallback should be safe here.
>>    - Make sure we wedge each gt. (Thomas)
>>    - Peek at the unknown_state in io_reserve, that way we don't have to
>>      export or hand roll the fault_wait_for_idle. (Thomas)
>>    - Add the missing read-side barriers for the unknown_state. (Thomas)
>>    - Some kernel-doc fixes. (Thomas)
>>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Cc: Jordan Justen <jordan.l.justen@intel.com>
>> Cc: Kenneth Graunke <kenneth@whitecape.org>
>> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_object.c    |  21 +++
>>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |   1 +
>>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  18 +++
>>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  26 +++-
>>   drivers/gpu/drm/i915/gem/i915_gem_ttm.h       |   3 +
>>   drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  |  88 +++++++++--
>>   drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h  |   1 +
>>   .../drm/i915/gem/selftests/i915_gem_migrate.c | 141 +++++++++++++++---
>>   .../drm/i915/gem/selftests/i915_gem_mman.c    |  69 +++++++++
>>   drivers/gpu/drm/i915/i915_vma.c               |  25 ++--
>>   10 files changed, 346 insertions(+), 47 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> index 06b1b188ce5a..642a5d59ce26 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> @@ -783,10 +783,31 @@ int i915_gem_object_wait_moving_fence(struct 
>> drm_i915_gem_object *obj,
>>                       intr, MAX_SCHEDULE_TIMEOUT);
>>       if (!ret)
>>           ret = -ETIME;
>> +    else if (ret > 0 && i915_gem_object_has_unknown_state(obj))
>> +        ret = -EIO;
>>       return ret < 0 ? ret : 0;
>>   }
>> +/**
>> + * i915_gem_object_has_unknown_state - Return true if the object 
>> backing pages are
>> + * in an unknown_state. This means that userspace must NEVER be 
>> allowed to touch
>> + * the pages, with either the GPU or CPU.
>> + *
>> + * ONLY valid to be called after ensuring that all kernel fences have 
>> signalled
>> + * (in particular the fence for moving/clearing the object).
>> + */
>> +bool i915_gem_object_has_unknown_state(struct drm_i915_gem_object *obj)
>> +{
>> +    /*
>> +     * The below barrier pairs with the dma_fence_signal() in
>> +     * __memcpy_work(). We should only sample the unknown_state after 
>> all
>> +     * the kernel fences have signalled.
>> +     */
>> +    smp_rmb();
>> +    return obj->mm.unknown_state;
>> +}
>> +
>>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>>   #include "selftests/huge_gem_object.c"
>>   #include "selftests/huge_pages.c"
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h 
>> b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> index e11d82a9f7c3..0bf3ee27a2a8 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> @@ -524,6 +524,7 @@ int i915_gem_object_get_moving_fence(struct 
>> drm_i915_gem_object *obj,
>>                        struct dma_fence **fence);
>>   int i915_gem_object_wait_moving_fence(struct drm_i915_gem_object *obj,
>>                         bool intr);
>> +bool i915_gem_object_has_unknown_state(struct drm_i915_gem_object *obj);
>>   void i915_gem_object_set_cache_coherency(struct drm_i915_gem_object 
>> *obj,
>>                        unsigned int cache_level);
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h 
>> b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> index 2c88bdb8ff7c..5cf36a130061 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> @@ -547,6 +547,24 @@ struct drm_i915_gem_object {
>>            */
>>           bool ttm_shrinkable;
>> +        /**
>> +         * @unknown_state: Indicate that the object is effectively
>> +         * borked. This is write-once and set if we somehow encounter a
>> +         * fatal error when moving/clearing the pages, and we are not
>> +         * able to fallback to memcpy/memset, like on small-BAR systems.
>> +         * The GPU should also be wedged (or in the process) at this
>> +         * point.
>> +         *
>> +         * Only valid to read this after acquiring the dma-resv lock and
>> +         * waiting for all DMA_RESV_USAGE_KERNEL fences to be signalled,
>> +         * or if we otherwise know that the moving fence has signalled,
>> +         * and we are certain the pages underneath are valid for
>> +         * immediate access (under normal operation), like just prior to
>> +         * binding the object or when setting up the CPU fault handler.
>> +         * See i915_gem_object_has_unknown_state();
>> +         */
>> +        bool unknown_state;
>> +
>>           /**
>>            * Priority list of potential placements for this object.
>>            */
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> index 4c25d9b2f138..098409a33e10 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> @@ -675,7 +675,15 @@ static void i915_ttm_swap_notify(struct 
>> ttm_buffer_object *bo)
>>           i915_ttm_purge(obj);
>>   }
>> -static bool i915_ttm_resource_mappable(struct ttm_resource *res)
>> +/**
>> + * i915_ttm_resource_mappable - Return true if the ttm resource is CPU
>> + * accessible.
>> + * @res: The TTM resource to check.
>> + *
>> + * This is interesting on small-BAR systems where we may encounter 
>> lmem objects
>> + * that can't be accessed via the CPU.
>> + */
>> +bool i915_ttm_resource_mappable(struct ttm_resource *res)
>>   {
>>       struct i915_ttm_buddy_resource *bman_res = 
>> to_ttm_buddy_resource(res);
>> @@ -687,6 +695,22 @@ static bool i915_ttm_resource_mappable(struct 
>> ttm_resource *res)
>>   static int i915_ttm_io_mem_reserve(struct ttm_device *bdev, struct 
>> ttm_resource *mem)
>>   {
>> +    struct drm_i915_gem_object *obj = i915_ttm_to_gem(mem->bo);
>> +    bool unknown_state;
>> +
>> +    if (!obj)
>> +        return -EINVAL;
>> +
>> +    if (!kref_get_unless_zero(&obj->base.refcount))
>> +        return -EINVAL;
>> +
>> +    assert_object_held(obj);
>> +
>> +    unknown_state = i915_gem_object_has_unknown_state(obj);
>> +    i915_gem_object_put(obj);
>> +    if (unknown_state)
>> +        return -EINVAL;
>> +
>>       if (!i915_ttm_cpu_maps_iomem(mem))
>>           return 0;
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h 
>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
>> index 73e371aa3850..e4842b4296fc 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
>> @@ -92,4 +92,7 @@ static inline bool i915_ttm_cpu_maps_iomem(struct 
>> ttm_resource *mem)
>>       /* Once / if we support GGTT, this is also false for cached 
>> ttm_tts */
>>       return mem->mem_type != I915_PL_SYSTEM;
>>   }
>> +
>> +bool i915_ttm_resource_mappable(struct ttm_resource *res);
>> +
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
>> index a10716f4e717..364e7fe8efb1 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
>> @@ -33,6 +33,7 @@
>>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>>   static bool fail_gpu_migration;
>>   static bool fail_work_allocation;
>> +static bool ban_memcpy;
>>   void i915_ttm_migrate_set_failure_modes(bool gpu_migration,
>>                       bool work_allocation)
>> @@ -40,6 +41,11 @@ void i915_ttm_migrate_set_failure_modes(bool 
>> gpu_migration,
>>       fail_gpu_migration = gpu_migration;
>>       fail_work_allocation = work_allocation;
>>   }
>> +
>> +void i915_ttm_migrate_set_ban_memcpy(bool ban)
>> +{
>> +    ban_memcpy = ban;
>> +}
>>   #endif
>>   static enum i915_cache_level
>> @@ -258,15 +264,23 @@ struct i915_ttm_memcpy_arg {
>>    * from the callback for lockdep reasons.
>>    * @cb: Callback for the accelerated migration fence.
>>    * @arg: The argument for the memcpy functionality.
>> + * @i915: The i915 pointer.
>> + * @obj: The GEM object.
>> + * @memcpy_allowed: Instead of processing the @arg, and falling back 
>> to memcpy
>> + * or memset, we wedge the device and set the @obj unknown_state, to 
>> prevent
>> + * further access to the object with the CPU or GPU.  On some devices 
>> we might
>> + * only be permitted to use the blitter engine for such operations.
>>    */
>>   struct i915_ttm_memcpy_work {
>>       struct dma_fence fence;
>>       struct work_struct work;
>> -    /* The fence lock */
>>       spinlock_t lock;
>>       struct irq_work irq_work;
>>       struct dma_fence_cb cb;
>>       struct i915_ttm_memcpy_arg arg;
>> +    struct drm_i915_private *i915;
>> +    struct drm_i915_gem_object *obj;
>> +    bool memcpy_allowed;
>>   };
>>   static void i915_ttm_move_memcpy(struct i915_ttm_memcpy_arg *arg)
>> @@ -319,12 +333,34 @@ static void __memcpy_work(struct work_struct *work)
>>       struct i915_ttm_memcpy_arg *arg = &copy_work->arg;
>>       bool cookie = dma_fence_begin_signalling();
>> -    i915_ttm_move_memcpy(arg);
>> +    if (copy_work->memcpy_allowed) {
>> +        i915_ttm_move_memcpy(arg);
>> +    } else {
>> +        /*
>> +         * Prevent further use of the object. Any future GTT binding or
>> +         * CPU access is not allowed once we signal the fence. Outside
>> +         * of the fence critical section, we then also then wedge the 
>> gpu
>> +         * to indicate the device is not functional.
>> +         *
>> +         * The below dma_fence_signal() is our write-memory-barrier.
>> +         */
>> +        copy_work->obj->mm.unknown_state = true;
>> +    }
>> +
>>       dma_fence_end_signalling(cookie);
>>       dma_fence_signal(&copy_work->fence);
>> +    if (!copy_work->memcpy_allowed) {
>> +        struct intel_gt *gt;
>> +        unsigned int id;
>> +
>> +        for_each_gt(gt, copy_work->i915, id)
>> +            intel_gt_set_wedged(gt);
>> +    }
> 
> Did you try to move the gt wedging to before dma_fence_signal, but 
> before dma_fence_end_signalling? Otherwise I think there is a race 
> opportunity (albeit very unlikely) where the gpu might read 
> uninitialized content.

I didn't try moving the set_wedged. But here AFAIK the wedge is not 
needed to prevent GPU access to the pages, more just to indicate that 
something is very broken. Prior to binding the object, either for the 
sync or async case (which must be after we signalled the clear/move here 
I think) we always first sample the unknown_state, and just keep the 
PTEs pointing to scratch if it has been set.

> 
> With that fixed (or not working)
> 
> Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> 
> 
>> +
>>       i915_ttm_memcpy_release(arg);
>> +    i915_gem_object_put(copy_work->obj);
>>       dma_fence_put(&copy_work->fence);
>>   }
>> @@ -336,6 +372,7 @@ static void __memcpy_irq_work(struct irq_work 
>> *irq_work)
>>       dma_fence_signal(&copy_work->fence);
>>       i915_ttm_memcpy_release(arg);
>> +    i915_gem_object_put(copy_work->obj);
>>       dma_fence_put(&copy_work->fence);
>>   }
>> @@ -389,6 +426,16 @@ i915_ttm_memcpy_work_arm(struct 
>> i915_ttm_memcpy_work *work,
>>       return &work->fence;
>>   }
>> +static bool i915_ttm_memcpy_allowed(struct ttm_buffer_object *bo,
>> +                    struct ttm_resource *dst_mem)
>> +{
>> +    if (!(i915_ttm_resource_mappable(bo->resource) &&
>> +          i915_ttm_resource_mappable(dst_mem)))
>> +        return false;
>> +
>> +    return I915_SELFTEST_ONLY(ban_memcpy) ? false : true;
>> +}
>> +
>>   static struct dma_fence *
>>   __i915_ttm_move(struct ttm_buffer_object *bo,
>>           const struct ttm_operation_ctx *ctx, bool clear,
>> @@ -396,6 +443,9 @@ __i915_ttm_move(struct ttm_buffer_object *bo,
>>           struct i915_refct_sgt *dst_rsgt, bool allow_accel,
>>           const struct i915_deps *move_deps)
>>   {
>> +    const bool memcpy_allowed = i915_ttm_memcpy_allowed(bo, dst_mem);
>> +    struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
>> +    struct drm_i915_private *i915 = to_i915(bo->base.dev);
>>       struct i915_ttm_memcpy_work *copy_work = NULL;
>>       struct i915_ttm_memcpy_arg _arg, *arg = &_arg;
>>       struct dma_fence *fence = ERR_PTR(-EINVAL);
>> @@ -423,9 +473,14 @@ __i915_ttm_move(struct ttm_buffer_object *bo,
>>               copy_work = kzalloc(sizeof(*copy_work), GFP_KERNEL);
>>           if (copy_work) {
>> +            copy_work->i915 = i915;
>> +            copy_work->memcpy_allowed = memcpy_allowed;
>> +            copy_work->obj = i915_gem_object_get(obj);
>>               arg = &copy_work->arg;
>> -            i915_ttm_memcpy_init(arg, bo, clear, dst_mem, dst_ttm,
>> -                         dst_rsgt);
>> +            if (memcpy_allowed)
>> +                i915_ttm_memcpy_init(arg, bo, clear, dst_mem,
>> +                             dst_ttm, dst_rsgt);
>> +
>>               fence = i915_ttm_memcpy_work_arm(copy_work, dep);
>>           } else {
>>               dma_fence_wait(dep, false);
>> @@ -450,17 +505,23 @@ __i915_ttm_move(struct ttm_buffer_object *bo,
>>       }
>>       /* Error intercept failed or no accelerated migration to start 
>> with */
>> -    if (!copy_work)
>> -        i915_ttm_memcpy_init(arg, bo, clear, dst_mem, dst_ttm,
>> -                     dst_rsgt);
>> -    i915_ttm_move_memcpy(arg);
>> -    i915_ttm_memcpy_release(arg);
>> +
>> +    if (memcpy_allowed) {
>> +        if (!copy_work)
>> +            i915_ttm_memcpy_init(arg, bo, clear, dst_mem, dst_ttm,
>> +                         dst_rsgt);
>> +        i915_ttm_move_memcpy(arg);
>> +        i915_ttm_memcpy_release(arg);
>> +    }
>> +    if (copy_work)
>> +        i915_gem_object_put(copy_work->obj);
>>       kfree(copy_work);
>> -    return NULL;
>> +    return memcpy_allowed ? NULL : ERR_PTR(-EIO);
>>   out:
>>       if (!fence && copy_work) {
>>           i915_ttm_memcpy_release(arg);
>> +        i915_gem_object_put(copy_work->obj);
>>           kfree(copy_work);
>>       }
>> @@ -539,8 +600,11 @@ int i915_ttm_move(struct ttm_buffer_object *bo, 
>> bool evict,
>>       }
>>       if (migration_fence) {
>> -        ret = ttm_bo_move_accel_cleanup(bo, migration_fence, evict,
>> -                        true, dst_mem);
>> +        if (I915_SELFTEST_ONLY(evict && fail_gpu_migration))
>> +            ret = -EIO; /* never feed non-migrate fences into ttm */
>> +        else
>> +            ret = ttm_bo_move_accel_cleanup(bo, migration_fence, evict,
>> +                            true, dst_mem);
>>           if (ret) {
>>               dma_fence_wait(migration_fence, false);
>>               ttm_bo_move_sync_cleanup(bo, dst_mem);
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h 
>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h
>> index d2e7f149e05c..8a5d5ab0cc34 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h
>> @@ -22,6 +22,7 @@ int i915_ttm_move_notify(struct ttm_buffer_object *bo);
>>   I915_SELFTEST_DECLARE(void i915_ttm_migrate_set_failure_modes(bool 
>> gpu_migration,
>>                                     bool work_allocation));
>> +I915_SELFTEST_DECLARE(void i915_ttm_migrate_set_ban_memcpy(bool ban));
>>   int i915_gem_obj_copy_ttm(struct drm_i915_gem_object *dst,
>>                 struct drm_i915_gem_object *src,
>> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c 
>> b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
>> index 801af51aff62..fe6c37fd7859 100644
>> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
>> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
>> @@ -9,6 +9,7 @@
>>   #include "i915_deps.h"
>> +#include "selftests/igt_reset.h"
>>   #include "selftests/igt_spinner.h"
>>   static int igt_fill_check_buffer(struct drm_i915_gem_object *obj,
>> @@ -109,7 +110,8 @@ static int igt_same_create_migrate(void *arg)
>>   static int lmem_pages_migrate_one(struct i915_gem_ww_ctx *ww,
>>                     struct drm_i915_gem_object *obj,
>> -                  struct i915_vma *vma)
>> +                  struct i915_vma *vma,
>> +                  bool silent_migrate)
>>   {
>>       int err;
>> @@ -138,7 +140,8 @@ static int lmem_pages_migrate_one(struct 
>> i915_gem_ww_ctx *ww,
>>       if (i915_gem_object_is_lmem(obj)) {
>>           err = i915_gem_object_migrate(obj, ww, INTEL_REGION_SMEM);
>>           if (err) {
>> -            pr_err("Object failed migration to smem\n");
>> +            if (!silent_migrate)
>> +                pr_err("Object failed migration to smem\n");
>>               if (err)
>>                   return err;
>>           }
>> @@ -156,7 +159,8 @@ static int lmem_pages_migrate_one(struct 
>> i915_gem_ww_ctx *ww,
>>       } else {
>>           err = i915_gem_object_migrate(obj, ww, INTEL_REGION_LMEM_0);
>>           if (err) {
>> -            pr_err("Object failed migration to lmem\n");
>> +            if (!silent_migrate)
>> +                pr_err("Object failed migration to lmem\n");
>>               if (err)
>>                   return err;
>>           }
>> @@ -179,7 +183,8 @@ static int __igt_lmem_pages_migrate(struct 
>> intel_gt *gt,
>>                       struct i915_address_space *vm,
>>                       struct i915_deps *deps,
>>                       struct igt_spinner *spin,
>> -                    struct dma_fence *spin_fence)
>> +                    struct dma_fence *spin_fence,
>> +                    bool borked_migrate)
>>   {
>>       struct drm_i915_private *i915 = gt->i915;
>>       struct drm_i915_gem_object *obj;
>> @@ -242,7 +247,8 @@ static int __igt_lmem_pages_migrate(struct 
>> intel_gt *gt,
>>        */
>>       for (i = 1; i <= 5; ++i) {
>>           for_i915_gem_ww(&ww, err, true)
>> -            err = lmem_pages_migrate_one(&ww, obj, vma);
>> +            err = lmem_pages_migrate_one(&ww, obj, vma,
>> +                             borked_migrate);
>>           if (err)
>>               goto out_put;
>>       }
>> @@ -283,23 +289,70 @@ static int __igt_lmem_pages_migrate(struct 
>> intel_gt *gt,
>>   static int igt_lmem_pages_failsafe_migrate(void *arg)
>>   {
>> -    int fail_gpu, fail_alloc, ret;
>> +    int fail_gpu, fail_alloc, ban_memcpy, ret;
>>       struct intel_gt *gt = arg;
>>       for (fail_gpu = 0; fail_gpu < 2; ++fail_gpu) {
>>           for (fail_alloc = 0; fail_alloc < 2; ++fail_alloc) {
>> -            pr_info("Simulated failure modes: gpu: %d, alloc: %d\n",
>> -                fail_gpu, fail_alloc);
>> -            i915_ttm_migrate_set_failure_modes(fail_gpu,
>> -                               fail_alloc);
>> -            ret = __igt_lmem_pages_migrate(gt, NULL, NULL, NULL, NULL);
>> -            if (ret)
>> -                goto out_err;
>> +            for (ban_memcpy = 0; ban_memcpy < 2; ++ban_memcpy) {
>> +                pr_info("Simulated failure modes: gpu: %d, alloc:%d, 
>> ban_memcpy: %d\n",
>> +                    fail_gpu, fail_alloc, ban_memcpy);
>> +                i915_ttm_migrate_set_ban_memcpy(ban_memcpy);
>> +                i915_ttm_migrate_set_failure_modes(fail_gpu,
>> +                                   fail_alloc);
>> +                ret = __igt_lmem_pages_migrate(gt, NULL, NULL,
>> +                                   NULL, NULL,
>> +                                   ban_memcpy &&
>> +                                   fail_gpu);
>> +
>> +                if (ban_memcpy && fail_gpu) {
>> +                    struct intel_gt *__gt;
>> +                    unsigned int id;
>> +
>> +                    if (ret != -EIO) {
>> +                        pr_err("expected -EIO, got (%d)\n", ret);
>> +                        ret = -EINVAL;
>> +                    } else {
>> +                        ret = 0;
>> +                    }
>> +
>> +                    for_each_gt(__gt, gt->i915, id) {
>> +                        intel_wakeref_t wakeref;
>> +                        bool wedged;
>> +
>> +                        mutex_lock(&__gt->reset.mutex);
>> +                        wedged = test_bit(I915_WEDGED, 
>> &__gt->reset.flags);
>> +                        mutex_unlock(&__gt->reset.mutex);
>> +
>> +                        if (fail_gpu && !fail_alloc) {
>> +                            if (!wedged) {
>> +                                pr_err("gt(%u) not wedged\n", id);
>> +                                ret = -EINVAL;
>> +                                continue;
>> +                            }
>> +                        } else if (wedged) {
>> +                            pr_err("gt(%u) incorrectly wedged\n", id);
>> +                            ret = -EINVAL;
>> +                        } else {
>> +                            continue;
>> +                        }
>> +
>> +                        wakeref = 
>> intel_runtime_pm_get(__gt->uncore->rpm);
>> +                        igt_global_reset_lock(__gt);
>> +                        intel_gt_reset(__gt, ALL_ENGINES, NULL);
>> +                        igt_global_reset_unlock(__gt);
>> +                        intel_runtime_pm_put(__gt->uncore->rpm, 
>> wakeref);
>> +                    }
>> +                    if (ret)
>> +                        goto out_err;
>> +                }
>> +            }
>>           }
>>       }
>>   out_err:
>>       i915_ttm_migrate_set_failure_modes(false, false);
>> +    i915_ttm_migrate_set_ban_memcpy(false);
>>       return ret;
>>   }
>> @@ -370,7 +423,7 @@ static int igt_async_migrate(struct intel_gt *gt)
>>               goto out_ce;
>>           err = __igt_lmem_pages_migrate(gt, &ppgtt->vm, &deps, &spin,
>> -                           spin_fence);
>> +                           spin_fence, false);
>>           i915_deps_fini(&deps);
>>           dma_fence_put(spin_fence);
>>           if (err)
>> @@ -394,23 +447,67 @@ static int igt_async_migrate(struct intel_gt *gt)
>>   #define ASYNC_FAIL_ALLOC 1
>>   static int igt_lmem_async_migrate(void *arg)
>>   {
>> -    int fail_gpu, fail_alloc, ret;
>> +    int fail_gpu, fail_alloc, ban_memcpy, ret;
>>       struct intel_gt *gt = arg;
>>       for (fail_gpu = 0; fail_gpu < 2; ++fail_gpu) {
>>           for (fail_alloc = 0; fail_alloc < ASYNC_FAIL_ALLOC; 
>> ++fail_alloc) {
>> -            pr_info("Simulated failure modes: gpu: %d, alloc: %d\n",
>> -                fail_gpu, fail_alloc);
>> -            i915_ttm_migrate_set_failure_modes(fail_gpu,
>> -                               fail_alloc);
>> -            ret = igt_async_migrate(gt);
>> -            if (ret)
>> -                goto out_err;
>> +            for (ban_memcpy = 0; ban_memcpy < 2; ++ban_memcpy) {
>> +                pr_info("Simulated failure modes: gpu: %d, alloc: %d, 
>> ban_memcpy: %d\n",
>> +                    fail_gpu, fail_alloc, ban_memcpy);
>> +                i915_ttm_migrate_set_ban_memcpy(ban_memcpy);
>> +                i915_ttm_migrate_set_failure_modes(fail_gpu,
>> +                                   fail_alloc);
>> +                ret = igt_async_migrate(gt);
>> +
>> +                if (fail_gpu && ban_memcpy) {
>> +                    struct intel_gt *__gt;
>> +                    unsigned int id;
>> +
>> +                    if (ret != -EIO) {
>> +                        pr_err("expected -EIO, got (%d)\n", ret);
>> +                        ret = -EINVAL;
>> +                    } else {
>> +                        ret = 0;
>> +                    }
>> +
>> +                    for_each_gt(__gt, gt->i915, id) {
>> +                        intel_wakeref_t wakeref;
>> +                        bool wedged;
>> +
>> +                        mutex_lock(&__gt->reset.mutex);
>> +                        wedged = test_bit(I915_WEDGED, 
>> &__gt->reset.flags);
>> +                        mutex_unlock(&__gt->reset.mutex);
>> +
>> +                        if (fail_gpu && !fail_alloc) {
>> +                            if (!wedged) {
>> +                                pr_err("gt(%u) not wedged\n", id);
>> +                                ret = -EINVAL;
>> +                                continue;
>> +                            }
>> +                        } else if (wedged) {
>> +                            pr_err("gt(%u) incorrectly wedged\n", id);
>> +                            ret = -EINVAL;
>> +                        } else {
>> +                            continue;
>> +                        }
>> +
>> +                        wakeref = 
>> intel_runtime_pm_get(__gt->uncore->rpm);
>> +                        igt_global_reset_lock(__gt);
>> +                        intel_gt_reset(__gt, ALL_ENGINES, NULL);
>> +                        igt_global_reset_unlock(__gt);
>> +                        intel_runtime_pm_put(__gt->uncore->rpm, 
>> wakeref);
>> +                    }
>> +                }
>> +                if (ret)
>> +                    goto out_err;
>> +            }
>>           }
>>       }
>>   out_err:
>>       i915_ttm_migrate_set_failure_modes(false, false);
>> +    i915_ttm_migrate_set_ban_memcpy(false);
>>       return ret;
>>   }
>> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c 
>> b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> index da28acb78a88..3ced9948a331 100644
>> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> @@ -10,6 +10,7 @@
>>   #include "gem/i915_gem_internal.h"
>>   #include "gem/i915_gem_region.h"
>>   #include "gem/i915_gem_ttm.h"
>> +#include "gem/i915_gem_ttm_move.h"
>>   #include "gt/intel_engine_pm.h"
>>   #include "gt/intel_gpu_commands.h"
>>   #include "gt/intel_gt.h"
>> @@ -21,6 +22,7 @@
>>   #include "i915_selftest.h"
>>   #include "selftests/i915_random.h"
>>   #include "selftests/igt_flush_test.h"
>> +#include "selftests/igt_reset.h"
>>   #include "selftests/igt_mmap.h"
>>   struct tile {
>> @@ -1163,6 +1165,7 @@ static int ___igt_mmap_migrate(struct 
>> drm_i915_private *i915,
>>   #define IGT_MMAP_MIGRATE_FILL        (1 << 1)
>>   #define IGT_MMAP_MIGRATE_EVICTABLE   (1 << 2)
>>   #define IGT_MMAP_MIGRATE_UNFAULTABLE (1 << 3)
>> +#define IGT_MMAP_MIGRATE_FAIL_GPU    (1 << 4)
>>   static int __igt_mmap_migrate(struct intel_memory_region **placements,
>>                     int n_placements,
>>                     struct intel_memory_region *expected_mr,
>> @@ -1237,13 +1240,62 @@ static int __igt_mmap_migrate(struct 
>> intel_memory_region **placements,
>>       if (flags & IGT_MMAP_MIGRATE_EVICTABLE)
>>           igt_make_evictable(&objects);
>> +    if (flags & IGT_MMAP_MIGRATE_FAIL_GPU) {
>> +        err = i915_gem_object_lock(obj, NULL);
>> +        if (err)
>> +            goto out_put;
>> +
>> +        /*
>> +         * Ensure we only simulate the gpu failuire when faulting the
>> +         * pages.
>> +         */
>> +        err = i915_gem_object_wait_moving_fence(obj, true);
>> +        i915_gem_object_unlock(obj);
>> +        if (err)
>> +            goto out_put;
>> +        i915_ttm_migrate_set_failure_modes(true, false);
>> +    }
>> +
>>       err = ___igt_mmap_migrate(i915, obj, addr,
>>                     flags & IGT_MMAP_MIGRATE_UNFAULTABLE);
>> +
>>       if (!err && obj->mm.region != expected_mr) {
>>           pr_err("%s region mismatch %s\n", __func__, expected_mr->name);
>>           err = -EINVAL;
>>       }
>> +    if (flags & IGT_MMAP_MIGRATE_FAIL_GPU) {
>> +        struct intel_gt *gt;
>> +        unsigned int id;
>> +
>> +        i915_ttm_migrate_set_failure_modes(false, false);
>> +
>> +        for_each_gt(gt, i915, id) {
>> +            intel_wakeref_t wakeref;
>> +            bool wedged;
>> +
>> +            mutex_lock(&gt->reset.mutex);
>> +            wedged = test_bit(I915_WEDGED, &gt->reset.flags);
>> +            mutex_unlock(&gt->reset.mutex);
>> +            if (!wedged) {
>> +                pr_err("gt(%u) not wedged\n", id);
>> +                err = -EINVAL;
>> +                continue;
>> +            }
>> +
>> +            wakeref = intel_runtime_pm_get(gt->uncore->rpm);
>> +            igt_global_reset_lock(gt);
>> +            intel_gt_reset(gt, ALL_ENGINES, NULL);
>> +            igt_global_reset_unlock(gt);
>> +            intel_runtime_pm_put(gt->uncore->rpm, wakeref);
>> +        }
>> +
>> +        if (!i915_gem_object_has_unknown_state(obj)) {
>> +            pr_err("object missing unknown_state\n");
>> +            err = -EINVAL;
>> +        }
>> +    }
>> +
>>   out_put:
>>       i915_gem_object_put(obj);
>>       igt_close_objects(i915, &objects);
>> @@ -1324,6 +1376,23 @@ static int igt_mmap_migrate(void *arg)
>>                        IGT_MMAP_MIGRATE_TOPDOWN |
>>                        IGT_MMAP_MIGRATE_FILL |
>>                        IGT_MMAP_MIGRATE_UNFAULTABLE);
>> +        if (err)
>> +            goto out_io_size;
>> +
>> +        /*
>> +         * Allocate in the non-mappable portion, but force migrating to
>> +         * the mappable portion on fault (LMEM -> LMEM). We then also
>> +         * simulate a gpu error when moving the pages when faulting the
>> +         * pages, which should result in wedging the gpu and returning
>> +         * SIGBUS in the fault handler, since we can't fallback to
>> +         * memcpy.
>> +         */
>> +        err = __igt_mmap_migrate(single, ARRAY_SIZE(single), mr,
>> +                     IGT_MMAP_MIGRATE_TOPDOWN |
>> +                     IGT_MMAP_MIGRATE_FILL |
>> +                     IGT_MMAP_MIGRATE_EVICTABLE |
>> +                     IGT_MMAP_MIGRATE_FAIL_GPU |
>> +                     IGT_MMAP_MIGRATE_UNFAULTABLE);
>>   out_io_size:
>>           mr->io_size = saved_io_size;
>>           i915_ttm_buddy_man_force_visible_size(man,
>> diff --git a/drivers/gpu/drm/i915/i915_vma.c 
>> b/drivers/gpu/drm/i915/i915_vma.c
>> index 5d5828b9a242..43339ecabd73 100644
>> --- a/drivers/gpu/drm/i915/i915_vma.c
>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>> @@ -310,7 +310,7 @@ struct i915_vma_work {
>>       struct i915_address_space *vm;
>>       struct i915_vm_pt_stash stash;
>>       struct i915_vma_resource *vma_res;
>> -    struct drm_i915_gem_object *pinned;
>> +    struct drm_i915_gem_object *obj;
>>       struct i915_sw_dma_fence_cb cb;
>>       enum i915_cache_level cache_level;
>>       unsigned int flags;
>> @@ -321,17 +321,25 @@ static void __vma_bind(struct dma_fence_work *work)
>>       struct i915_vma_work *vw = container_of(work, typeof(*vw), base);
>>       struct i915_vma_resource *vma_res = vw->vma_res;
>> +    /*
>> +     * We are about the bind the object, which must mean we have already
>> +     * signaled the work to potentially clear/move the pages 
>> underneath. If
>> +     * something went wrong at that stage then the object should have
>> +     * unknown_state set, in which case we need to skip the bind.
>> +     */
>> +    if (i915_gem_object_has_unknown_state(vw->obj))
>> +        return;
>> +
>>       vma_res->ops->bind_vma(vma_res->vm, &vw->stash,
>>                      vma_res, vw->cache_level, vw->flags);
>> -
>>   }
>>   static void __vma_release(struct dma_fence_work *work)
>>   {
>>       struct i915_vma_work *vw = container_of(work, typeof(*vw), base);
>> -    if (vw->pinned)
>> -        i915_gem_object_put(vw->pinned);
>> +    if (vw->obj)
>> +        i915_gem_object_put(vw->obj);
>>       i915_vm_free_pt_stash(vw->vm, &vw->stash);
>>       if (vw->vma_res)
>> @@ -517,14 +525,7 @@ int i915_vma_bind(struct i915_vma *vma,
>>           }
>>           work->base.dma.error = 0; /* enable the queue_work() */
>> -
>> -        /*
>> -         * If we don't have the refcounted pages list, keep a reference
>> -         * on the object to avoid waiting for the async bind to
>> -         * complete in the object destruction path.
>> -         */
>> -        if (!work->vma_res->bi.pages_rsgt)
>> -            work->pinned = i915_gem_object_get(vma->obj);
>> +        work->obj = i915_gem_object_get(vma->obj);
>>       } else {
>>           ret = i915_gem_object_wait_moving_fence(vma->obj, true);
>>           if (ret) {
