Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2027122F798
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jul 2020 20:19:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 189AB89FCC;
	Mon, 27 Jul 2020 18:19:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC36F89FCC
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jul 2020 18:19:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 242F33F893;
 Mon, 27 Jul 2020 20:19:27 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=Z7XosiHo; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.449
X-Spam-Level: 
X-Spam-Status: No, score=-2.449 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.35,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Y4YH0cLu_UG; Mon, 27 Jul 2020 20:19:26 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id A7A853F583;
 Mon, 27 Jul 2020 20:19:25 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.137.77])
 by mail1.shipmail.org (Postfix) with ESMTPSA id E691A360378;
 Mon, 27 Jul 2020 20:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1595873966; bh=W93gF+5ZxHanTDqkd8/HFJR8++R6b59oU75mCCLB95A=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=Z7XosiHo7cuFFnEP/tRpxUZjqzP3cEeiQ1Wh+mKQIYsRyPY3077PcUxidgr9aSyNp
 ru7UgB2zGE5tkaUwP3iBHw68o6MPU0pzBGdjAfxKACGDTW4raX6c3kpHYmVs/sXz8j
 7Kv9ujZ+m5f55VJ2q24Nfc7JfKRaf7lq1I7wRGdk=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-22-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <2a1088e1-17ba-24c8-7874-be89acac02e8@shipmail.org>
Date: Mon, 27 Jul 2020 20:19:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-22-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 22/66] drm/i915/gem: Bind the fence async
 for execbuf
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


On 7/15/20 1:51 PM, Chris Wilson wrote:
> It is illegal to wait on an another vma while holding the vm->mutex, as
> that easily leads to ABBA deadlocks (we wait on a second vma that waits
> on us to release the vm->mutex). So while the vm->mutex exists, move the
> waiting outside of the lock into the async binding pipeline.

Why is it we don't just move the fence binding to a separate loop after 
unlocking the vm->mutex in eb_reserve_vm()?

/Thomas

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  21 +--
>   drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  | 137 +++++++++++++++++-
>   drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h  |   5 +
>   3 files changed, 151 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index bdcbb82bfc3d..af2b4aeb6df0 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1056,15 +1056,6 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
>   		return err;
>   
>   pin:
> -	if (unlikely(exec_flags & EXEC_OBJECT_NEEDS_FENCE)) {
> -		err = __i915_vma_pin_fence(vma); /* XXX no waiting */
> -		if (unlikely(err))
> -			return err;
> -
> -		if (vma->fence)
> -			bind->ev->flags |= __EXEC_OBJECT_HAS_FENCE;
> -	}
> -
>   	bind_flags &= ~atomic_read(&vma->flags);
>   	if (bind_flags) {
>   		err = set_bind_fence(vma, work);
> @@ -1095,6 +1086,15 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
>   	bind->ev->flags |= __EXEC_OBJECT_HAS_PIN;
>   	GEM_BUG_ON(eb_vma_misplaced(entry, vma, bind->ev->flags));
>   
> +	if (unlikely(exec_flags & EXEC_OBJECT_NEEDS_FENCE)) {
> +		err = __i915_vma_pin_fence_async(vma, &work->base);
> +		if (unlikely(err))
> +			return err;
> +
> +		if (vma->fence)
> +			bind->ev->flags |= __EXEC_OBJECT_HAS_FENCE;
> +	}
> +
>   	return 0;
>   }
>   
> @@ -1160,6 +1160,9 @@ static void __eb_bind_vma(struct eb_vm_work *work)
>   		struct eb_bind_vma *bind = &work->bind[n];
>   		struct i915_vma *vma = bind->ev->vma;
>   
> +		if (bind->ev->flags & __EXEC_OBJECT_HAS_FENCE)
> +			__i915_vma_apply_fence_async(vma);
> +
>   		if (!bind->bind_flags)
>   			goto put;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> index 7fb36b12fe7a..734b6aa61809 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> @@ -21,10 +21,13 @@
>    * IN THE SOFTWARE.
>    */
>   
> +#include "i915_active.h"
>   #include "i915_drv.h"
>   #include "i915_scatterlist.h"
> +#include "i915_sw_fence_work.h"
>   #include "i915_pvinfo.h"
>   #include "i915_vgpu.h"
> +#include "i915_vma.h"
>   
>   /**
>    * DOC: fence register handling
> @@ -340,19 +343,37 @@ static struct i915_fence_reg *fence_find(struct i915_ggtt *ggtt)
>   	return ERR_PTR(-EDEADLK);
>   }
>   
> +static int fence_wait_bind(struct i915_fence_reg *reg)
> +{
> +	struct dma_fence *fence;
> +	int err = 0;
> +
> +	fence = i915_active_fence_get(&reg->active.excl);
> +	if (fence) {
> +		err = dma_fence_wait(fence, true);
> +		dma_fence_put(fence);
> +	}
> +
> +	return err;
> +}
> +
>   int __i915_vma_pin_fence(struct i915_vma *vma)
>   {
>   	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vma->vm);
> -	struct i915_fence_reg *fence;
> +	struct i915_fence_reg *fence = vma->fence;
>   	struct i915_vma *set = i915_gem_object_is_tiled(vma->obj) ? vma : NULL;
>   	int err;
>   
>   	lockdep_assert_held(&vma->vm->mutex);
>   
>   	/* Just update our place in the LRU if our fence is getting reused. */
> -	if (vma->fence) {
> -		fence = vma->fence;
> +	if (fence) {
>   		GEM_BUG_ON(fence->vma != vma);
> +
> +		err = fence_wait_bind(fence);
> +		if (err)
> +			return err;
> +
>   		atomic_inc(&fence->pin_count);
>   		if (!fence->dirty) {
>   			list_move_tail(&fence->link, &ggtt->fence_list);
> @@ -384,6 +405,116 @@ int __i915_vma_pin_fence(struct i915_vma *vma)
>   	return err;
>   }
>   
> +static int set_bind_fence(struct i915_fence_reg *fence,
> +			  struct dma_fence_work *work)
> +{
> +	struct dma_fence *prev;
> +	int err;
> +
> +	if (rcu_access_pointer(fence->active.excl.fence) == &work->dma)
> +		return 0;
> +
> +	err = i915_sw_fence_await_active(&work->chain,
> +					 &fence->active,
> +					 I915_ACTIVE_AWAIT_ACTIVE);
> +	if (err)
> +		return err;
> +
> +	if (i915_active_acquire(&fence->active))
> +		return -ENOENT;
> +
> +	prev = i915_active_set_exclusive(&fence->active, &work->dma);
> +	if (unlikely(prev)) {
> +		err = i915_sw_fence_await_dma_fence(&work->chain, prev, 0,
> +						    GFP_NOWAIT | __GFP_NOWARN);
> +		dma_fence_put(prev);
> +	}
> +
> +	i915_active_release(&fence->active);
> +	return err < 0 ? err : 0;
> +}
> +
> +int __i915_vma_pin_fence_async(struct i915_vma *vma,
> +			       struct dma_fence_work *work)
> +{
> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vma->vm);
> +	struct i915_vma *set = i915_gem_object_is_tiled(vma->obj) ? vma : NULL;
> +	struct i915_fence_reg *fence = vma->fence;
> +	int err;
> +
> +	lockdep_assert_held(&vma->vm->mutex);
> +
> +	/* Just update our place in the LRU if our fence is getting reused. */
> +	if (fence) {
> +		GEM_BUG_ON(fence->vma != vma);
> +		GEM_BUG_ON(!i915_vma_is_map_and_fenceable(vma));
> +	} else if (set) {
> +		if (!i915_vma_is_map_and_fenceable(vma))
> +			return -EINVAL;
> +
> +		fence = fence_find(ggtt);
> +		if (IS_ERR(fence))
> +			return -ENOSPC;
> +
> +		GEM_BUG_ON(atomic_read(&fence->pin_count));
> +		fence->dirty = true;
> +	} else {
> +		return 0;
> +	}
> +
> +	atomic_inc(&fence->pin_count);
> +	list_move_tail(&fence->link, &ggtt->fence_list);
> +	if (!fence->dirty)
> +		return 0;
> +
> +	if (INTEL_GEN(fence_to_i915(fence)) < 4 &&
> +	    rcu_access_pointer(vma->active.excl.fence) != &work->dma) {
> +		/* implicit 'unfenced' GPU blits */
> +		err = i915_sw_fence_await_active(&work->chain,
> +						 &vma->active,
> +						 I915_ACTIVE_AWAIT_ACTIVE);
> +		if (err)
> +			goto err_unpin;
> +	}
> +
> +	err = set_bind_fence(fence, work);
> +	if (err)
> +		goto err_unpin;
> +
> +	if (set) {
> +		fence->start = vma->node.start;
> +		fence->size  = vma->fence_size;
> +		fence->stride = i915_gem_object_get_stride(vma->obj);
> +		fence->tiling = i915_gem_object_get_tiling(vma->obj);
> +
> +		vma->fence = fence;
> +	} else {
> +		fence->tiling = 0;
> +		vma->fence = NULL;
> +	}
> +
> +	set = xchg(&fence->vma, set);
> +	if (set && set != vma) {
> +		GEM_BUG_ON(set->fence != fence);
> +		WRITE_ONCE(set->fence, NULL);
> +		i915_vma_revoke_mmap(set);
> +	}
> +
> +	return 0;
> +
> +err_unpin:
> +	atomic_dec(&fence->pin_count);
> +	return err;
> +}
> +
> +void __i915_vma_apply_fence_async(struct i915_vma *vma)
> +{
> +	struct i915_fence_reg *fence = vma->fence;
> +
> +	if (fence->dirty)
> +		fence_write(fence);
> +}
> +
>   /**
>    * i915_vma_pin_fence - set up fencing for a vma
>    * @vma: vma to map through a fence reg
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> index 9eef679e1311..d306ac14d47e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> @@ -30,6 +30,7 @@
>   
>   #include "i915_active.h"
>   
> +struct dma_fence_work;
>   struct drm_i915_gem_object;
>   struct i915_ggtt;
>   struct i915_vma;
> @@ -70,6 +71,10 @@ void i915_gem_object_do_bit_17_swizzle(struct drm_i915_gem_object *obj,
>   void i915_gem_object_save_bit_17_swizzle(struct drm_i915_gem_object *obj,
>   					 struct sg_table *pages);
>   
> +int __i915_vma_pin_fence_async(struct i915_vma *vma,
> +			       struct dma_fence_work *work);
> +void __i915_vma_apply_fence_async(struct i915_vma *vma);
> +
>   void intel_ggtt_init_fences(struct i915_ggtt *ggtt);
>   void intel_ggtt_fini_fences(struct i915_ggtt *ggtt);
>   
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
