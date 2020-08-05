Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2420523CBC6
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 17:42:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E9F389336;
	Wed,  5 Aug 2020 15:42:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0080E89336
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 15:42:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 54FD73F643;
 Wed,  5 Aug 2020 17:42:40 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=EITSjgwh; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -3.559
X-Spam-Level: 
X-Spam-Status: No, score=-3.559 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-1.46,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O5wpkxzLBE3W; Wed,  5 Aug 2020 17:42:39 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 5CF7D3F62F;
 Wed,  5 Aug 2020 17:42:37 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 9C60E361FBC;
 Wed,  5 Aug 2020 17:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596642159; bh=XdHyc9eQKaidvb9tmY/K7bYgw0bSozOu5rS0Y2w6BJY=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=EITSjgwhp5r4vad+nFNW1xHgPP23r5VHpV9EawfHr5v8O5obztVC5bKwtL5Qrv+yM
 /9dWxbTavbVN2/YQsGq4vXNF+JB5swduGZUxUEs8QtlH5QZ7tSB2SdaFijRT49Tt5E
 ugf3kpNDLav17yLS88OHUPC/W7uAWN+n4prm3XDg=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
 <20200805122231.23313-27-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <fdd72b32-a070-eabb-8e11-ddadec88d54d@shipmail.org>
Date: Wed, 5 Aug 2020 17:42:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200805122231.23313-27-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 26/37] drm/i915/gem: Pull execbuf dma resv
 under a single critical section
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

Hi, Chris,

On 8/5/20 2:22 PM, Chris Wilson wrote:
> Acquire all the objects and their backing storage, and page directories,
> as used by execbuf under a single common ww_mutex. Albeit we have to
> restart the critical section a few times in order to handle various
> restrictions (such as avoiding copy_(from|to)_user and mmap_sem).
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 166 +++++++++---------
>   .../i915/gem/selftests/i915_gem_execbuffer.c  |   2 +
>   2 files changed, 84 insertions(+), 84 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 58e40348b551..3a79b6facb02 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -20,6 +20,7 @@
>   #include "gt/intel_gt_pm.h"
>   #include "gt/intel_gt_requests.h"
>   #include "gt/intel_ring.h"
> +#include "mm/i915_acquire_ctx.h"
>   
>   #include "i915_drv.h"
>   #include "i915_gem_clflush.h"
> @@ -267,6 +268,8 @@ struct i915_execbuffer {
>   	struct intel_context *reloc_context; /* distinct context for relocs */
>   	struct i915_gem_context *gem_context; /** caller's context */
>   
> +	struct i915_acquire_ctx acquire; /** lock for _all_ DMA reservations */
> +
>   	struct i915_request *request; /** our request to build */
>   	struct eb_vma *batch; /** identity of the batch obj/vma */
>   
> @@ -392,42 +395,6 @@ static void eb_vma_array_put(struct eb_vma_array *arr)
>   	kref_put(&arr->kref, eb_vma_array_destroy);
>   }
>   
> -static int
> -eb_lock_vma(struct i915_execbuffer *eb, struct ww_acquire_ctx *acquire)
> -{
> -	struct eb_vma *ev;
> -	int err = 0;
> -
> -	list_for_each_entry(ev, &eb->submit_list, submit_link) {
> -		struct i915_vma *vma = ev->vma;
> -
> -		err = ww_mutex_lock_interruptible(&vma->resv->lock, acquire);
> -		if (err == -EDEADLK) {
> -			struct eb_vma *unlock = ev, *en;
> -
> -			list_for_each_entry_safe_continue_reverse(unlock, en,
> -								  &eb->submit_list,
> -								  submit_link) {
> -				ww_mutex_unlock(&unlock->vma->resv->lock);
> -				list_move_tail(&unlock->submit_link, &eb->submit_list);
> -			}
> -
> -			GEM_BUG_ON(!list_is_first(&ev->submit_link, &eb->submit_list));
> -			err = ww_mutex_lock_slow_interruptible(&vma->resv->lock,
> -							       acquire);
> -		}
> -		if (err) {
> -			list_for_each_entry_continue_reverse(ev,
> -							     &eb->submit_list,
> -							     submit_link)
> -				ww_mutex_unlock(&ev->vma->resv->lock);
> -			break;
> -		}
> -	}
> -
> -	return err;
> -}
> -
>   static int eb_create(struct i915_execbuffer *eb)
>   {
>   	/* Allocate an extra slot for use by the sentinel */
> @@ -656,6 +623,25 @@ eb_add_vma(struct i915_execbuffer *eb,
>   	}
>   }
>   
> +static int eb_lock_mm(struct i915_execbuffer *eb)
> +{
> +	struct eb_vma *ev;
> +	int err;
> +
> +	list_for_each_entry(ev, &eb->bind_list, bind_link) {
> +		err = i915_acquire_ctx_lock(&eb->acquire, ev->vma->obj);
> +		if (err)
> +			return err;
> +	}
> +
> +	return 0;
> +}
> +
> +static int eb_acquire_mm(struct i915_execbuffer *eb)
> +{
> +	return i915_acquire_mm(&eb->acquire);
> +}
> +
>   struct eb_vm_work {
>   	struct dma_fence_work base;
>   	struct eb_vma_array *array;
> @@ -1378,7 +1364,15 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
>   	unsigned long count;
>   	struct eb_vma *ev;
>   	unsigned int pass;
> -	int err = 0;
> +	int err;
> +
> +	err = eb_lock_mm(eb);
> +	if (err)
> +		return err;
> +
> +	err = eb_acquire_mm(eb);
> +	if (err)
> +		return err;
>   
>   	count = 0;
>   	INIT_LIST_HEAD(&unbound);
> @@ -1404,10 +1398,15 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
>   	if (count == 0)
>   		return 0;
>   
> +	/* We need to reserve page directories, release all, start over */
> +	i915_acquire_ctx_fini(&eb->acquire);
> +
>   	pass = 0;
>   	do {
>   		struct eb_vm_work *work;
>   
> +		i915_acquire_ctx_init(&eb->acquire);
> +
>   		/*
>   		 * We need to hold one lock as we bind all the vma so that
>   		 * we have a consistent view of the entire vm and can plan
> @@ -1424,6 +1423,11 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
>   		 * beneath it, so we have to stage and preallocate all the
>   		 * resources we may require before taking the mutex.
>   		 */
> +
> +		err = eb_lock_mm(eb);
> +		if (err)
> +			return err;
> +
>   		work = eb_vm_work(eb, count);
>   		if (!work)
>   			return -ENOMEM;
> @@ -1441,6 +1445,10 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
>   			}
>   		}
>   
> +		err = eb_acquire_mm(eb);
> +		if (err)
> +			return eb_vm_work_cancel(work, err);
> +
>   		err = i915_vm_pin_pt_stash(work->vm, &work->stash);
>   		if (err)
>   			return eb_vm_work_cancel(work, err);
> @@ -1531,6 +1539,8 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
>   		if (signal_pending(current))
>   			return -EINTR;
>   
> +		i915_acquire_ctx_fini(&eb->acquire);
> +
>   		/* Now safe to wait with no reservations held */
>   
>   		if (err == -EAGAIN) {
> @@ -1554,8 +1564,10 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
>   		 * total ownership of the vm.
>   		 */
>   		err = wait_for_unbinds(eb, &unbound, pass++);
> -		if (err)
> +		if (err) {
> +			i915_acquire_ctx_init(&eb->acquire);
>   			return err;
> +		}
>   	} while (1);
>   }
>   
> @@ -2008,8 +2020,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
>   	struct drm_i915_gem_object *obj = vma->obj;
>   	int err;
>   
> -	i915_vma_lock(vma);
> -
>   	if (obj->cache_dirty & ~obj->cache_coherent)
>   		i915_gem_clflush_object(obj, 0);
>   	obj->write_domain = 0;
> @@ -2018,8 +2028,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
>   	if (err == 0)
>   		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
>   
> -	i915_vma_unlock(vma);
> -
>   	return err;
>   }
>   
> @@ -2505,6 +2513,7 @@ static int eb_relocate(struct i915_execbuffer *eb)
>   	/* Drop everything before we copy_from_user */
>   	list_for_each_entry(ev, &eb->bind_list, bind_link)
>   		eb_unreserve_vma(ev);
> +	i915_acquire_ctx_fini(&eb->acquire);
>   
>   	/* Pick a single buffer for all relocs, within reason */
>   	bufsz = round_up(eb->relocs_count * sz + sz, SZ_4K);
> @@ -2515,6 +2524,7 @@ static int eb_relocate(struct i915_execbuffer *eb)
>   
>   	/* Copy the user's relocations into plain system memory */
>   	err = eb_relocs_copy_user(eb, &relocs);
> +	i915_acquire_ctx_init(&eb->acquire);
>   	if (err)
>   		goto out_close;
>   
> @@ -2551,17 +2561,8 @@ static int eb_reserve(struct i915_execbuffer *eb)
>   
>   static int eb_move_to_gpu(struct i915_execbuffer *eb)
>   {
> -	struct ww_acquire_ctx acquire;
>   	struct eb_vma *ev;
> -	int err = 0;
> -
> -	ww_acquire_init(&acquire, &reservation_ww_class);
> -
> -	err = eb_lock_vma(eb, &acquire);
> -	if (err)
> -		goto err_fini;
> -
> -	ww_acquire_done(&acquire);
> +	int err;
>   
>   	list_for_each_entry(ev, &eb->submit_list, submit_link) {
>   		struct i915_vma *vma = ev->vma;
> @@ -2600,27 +2601,22 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
>   				flags &= ~EXEC_OBJECT_ASYNC;
>   		}
>   
> -		if (err == 0 && !(flags & EXEC_OBJECT_ASYNC)) {
> +		if (!(flags & EXEC_OBJECT_ASYNC)) {
>   			err = i915_request_await_object
>   				(eb->request, obj, flags & EXEC_OBJECT_WRITE);
> +			if (unlikely(err))
> +				goto err_skip;
>   		}
>   
> -		if (err == 0)
> -			err = i915_vma_move_to_active(vma, eb->request, flags);
> -
> -		i915_vma_unlock(vma);
> +		err = i915_vma_move_to_active(vma, eb->request, flags);
> +		if (unlikely(err))
> +			goto err_skip;
>   	}
> -	ww_acquire_fini(&acquire);
> -
> -	if (unlikely(err))
> -		goto err_skip;
>   
>   	/* Unconditionally flush any chipset caches (for streaming writes). */
>   	intel_gt_chipset_flush(eb->engine->gt);
>   	return 0;
>   
> -err_fini:
> -	ww_acquire_fini(&acquire);
>   err_skip:
>   	i915_request_set_error_once(eb->request, err);
>   	return err;
> @@ -2784,39 +2780,27 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
>   	/* Mark active refs early for this worker, in case we get interrupted */
>   	err = parser_mark_active(pw, eb->context->timeline);
>   	if (err)
> -		goto err_commit;
> -
> -	err = dma_resv_lock_interruptible(pw->batch->resv, NULL);
> -	if (err)
> -		goto err_commit;
> +		goto out;
>   
>   	err = dma_resv_reserve_shared(pw->batch->resv, 1);
>   	if (err)
> -		goto err_commit_unlock;
> +		goto out;
>   
>   	/* Wait for all writes (and relocs) into the batch to complete */
>   	err = i915_sw_fence_await_reservation(&pw->base.chain,
>   					      pw->batch->resv, NULL, false,
>   					      0, I915_FENCE_GFP);
>   	if (err < 0)
> -		goto err_commit_unlock;
> +		goto out;
>   
>   	/* Keep the batch alive and unwritten as we parse */
>   	dma_resv_add_shared_fence(pw->batch->resv, &pw->base.dma);
>   
> -	dma_resv_unlock(pw->batch->resv);
> -
>   	/* Force execution to wait for completion of the parser */
> -	dma_resv_lock(shadow->resv, NULL);
>   	dma_resv_add_excl_fence(shadow->resv, &pw->base.dma);
> -	dma_resv_unlock(shadow->resv);
>   
> -	dma_fence_work_commit_imm(&pw->base);
> -	return 0;
> -
> -err_commit_unlock:
> -	dma_resv_unlock(pw->batch->resv);
> -err_commit:
> +	err = 0;
> +out:
>   	i915_sw_fence_set_error_once(&pw->base.chain, err);
>   	dma_fence_work_commit_imm(&pw->base);
>   	return err;
> @@ -2856,10 +2840,6 @@ static int eb_submit(struct i915_execbuffer *eb)
>   {
>   	int err;
>   
> -	err = eb_move_to_gpu(eb);
> -	if (err)
> -		return err;
> -
>   	if (eb->args->flags & I915_EXEC_GEN7_SOL_RESET) {
>   		err = i915_reset_gen7_sol_offsets(eb->request);
>   		if (err)
> @@ -3636,6 +3616,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>   		goto err_engine;
>   	lockdep_assert_held(&eb.context->timeline->mutex);
>   
> +	/* *** DMA-RESV LOCK *** */
> +	i915_acquire_ctx_init(&eb.acquire);
> +

This is actually inside the timeline lock, which is not consistent with

https://patchwork.freedesktop.org/patch/328266/

/Thomas



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
