Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B9E22F757
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jul 2020 20:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43F0A89D4F;
	Mon, 27 Jul 2020 18:08:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa1.bahnhof.se (pio-pvt-msa1.bahnhof.se [79.136.2.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 684EA89D4F
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jul 2020 18:08:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 8B3AC3F907;
 Mon, 27 Jul 2020 20:08:49 +0200 (CEST)
Authentication-Results: pio-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="knk6xkJD";
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.442
X-Spam-Level: 
X-Spam-Status: No, score=-2.442 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.343,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JqNjK-3hxYLl; Mon, 27 Jul 2020 20:08:48 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 13FDA3F8C8;
 Mon, 27 Jul 2020 20:08:47 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.137.77])
 by mail1.shipmail.org (Postfix) with ESMTPSA id E2D18360378;
 Mon, 27 Jul 2020 20:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1595873327; bh=GvMX/tXxZ1AdGZQpJeww6ZvI67reXxmj79kYhHK/Dwo=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=knk6xkJDJ5Dh2M/6pzXWY7iC9iqyrTMwNwoiaeazEhD2xXjCfwzHV3BM1q3w6NWf2
 +ehoeLGoBlAMlU8PFpoWBJzrD2JKguDT3c+uN1O1qf5rco7OGUbOHe98NNEObx5JYd
 /+Q4Xv1xqp4biJhaRlv+zhtVNvHW+k+72SvGRsa0=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-27-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <085750e5-35ff-4e7e-da2a-fe312f1d3e00@shipmail.org>
Date: Mon, 27 Jul 2020 20:08:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-27-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 27/66] drm/i915/gem: Pull execbuf dma resv
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


On 7/15/20 1:51 PM, Chris Wilson wrote:
> Acquire all the objects and their backing storage, and page directories,
> as used by execbuf under a single common ww_mutex. Albeit we have to
> restart the critical section a few times in order to handle various
> restrictions (such as avoiding copy_(from|to)_user and mmap_sem).
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 168 +++++++++---------
>   .../i915/gem/selftests/i915_gem_execbuffer.c  |   8 +-
>   2 files changed, 87 insertions(+), 89 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index ebabc0746d50..db433f3f18ec 100644
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
> @@ -244,6 +245,8 @@ struct i915_execbuffer {
>   	struct intel_context *context; /* logical state for the request */
>   	struct i915_gem_context *gem_context; /** caller's context */
>   
> +	struct i915_acquire_ctx acquire; /** lock for _all_ DMA reservations */
> +
>   	struct i915_request *request; /** our request to build */
>   	struct eb_vma *batch; /** identity of the batch obj/vma */
>   
> @@ -389,42 +392,6 @@ static void eb_vma_array_put(struct eb_vma_array *arr)
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
> @@ -668,6 +635,25 @@ eb_add_vma(struct i915_execbuffer *eb,
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
> @@ -1390,7 +1376,15 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
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
> @@ -1416,10 +1410,15 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
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

Couldn't we do a i915_acquire_ctx_rollback() here to avoid losing our 
ticket? That would mean deferring i915_acquire_ctx_done() until all 
potential rollbacks have been performed.

Or even better if we defer _ctx_done(), couldn't we just continue 
locking the pts here instead of dropping and re-acquiring everything?

> +
>   		/*
>   		 * We need to hold one lock as we bind all the vma so that
>   		 * we have a consistent view of the entire vm and can plan
> @@ -1436,6 +1435,11 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
>   		 * beneath it, so we have to stage and preallocate all the
>   		 * resources we may require before taking the mutex.
>   		 */
> +
> +		err = eb_lock_mm(eb);
> +		if (err)
> +			return err;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
