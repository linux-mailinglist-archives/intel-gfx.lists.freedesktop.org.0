Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A8D19F91D
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 17:44:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E10DF6E42C;
	Mon,  6 Apr 2020 15:44:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 496C56E42C
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 15:44:39 +0000 (UTC)
IronPort-SDR: sdgzsJZ4rsHTHqlzUG9CgygzspDl7V3zREPvCQyGNDKGQivROwHTKhsksHjRUAUPSJszdAOszP
 jGrWjWtOBlfQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 08:44:38 -0700
IronPort-SDR: HlaZ3EYLCX/Wq9cvb0m6r3/FD3Iuac+3NJ65FCA1FEW/Y//nx/hoG2/riY/o3QJxV+muTD9Fr4
 +mg61AeyJW1g==
X-IronPort-AV: E=Sophos;i="5.72,351,1580803200"; d="scan'208";a="285927408"
Received: from nlevi-mobl.ger.corp.intel.com (HELO [10.251.172.194])
 ([10.251.172.194])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 08:44:37 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200406091254.17675-2-chris@chris-wilson.co.uk>
 <20200406132140.2128-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f43407ba-2abf-723b-04ae-a8b69b3dcf68@linux.intel.com>
Date: Mon, 6 Apr 2020 16:44:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200406132140.2128-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Allow asynchronous waits on
 the i915_active barriers
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


On 06/04/2020 14:21, Chris Wilson wrote:
> Allow the caller to also wait upon the barriers stored in i915_active.
> 
> v2: Hook up i915_request_await_active(I915_ACTIVE_AWAIT_BARRIER) as well
> for completeness, and avoid the lazy GEM_BUG_ON()!
> 
> v3: Pull flush_lazy_signals() under the active-ref protection as it too
> walks the rbtree and so we must be careful that we do not free it as we
> iterate.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_active.c | 73 ++++++++++++++++++++++++++----
>   drivers/gpu/drm/i915/i915_active.h |  1 +
>   2 files changed, 64 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index d5e24be759f7..d960d0be5bd2 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -542,35 +542,88 @@ static int __await_active(struct i915_active_fence *active,
>   	return 0;
>   }
>   
> +struct wait_barrier {
> +	struct wait_queue_entry base;
> +	struct i915_active *ref;
> +};
> +
> +static int
> +barrier_wake(wait_queue_entry_t *wq, unsigned int mode, int flags, void *key)
> +{
> +	struct wait_barrier *wb = container_of(wq, typeof(*wb), base);
> +
> +	if (i915_active_is_idle(wb->ref)) {
> +		list_del(&wq->entry);
> +		i915_sw_fence_complete(wq->private);
> +		kfree(wq);
> +	}
> +
> +	return 0;
> +}
> +
> +static int __await_barrier(struct i915_active *ref, struct i915_sw_fence *fence)
> +{
> +	struct wait_barrier *wb;
> +
> +	wb = kmalloc(sizeof(*wb), GFP_KERNEL);
> +	if (unlikely(!wb))
> +		return -ENOMEM;
> +
> +	GEM_BUG_ON(i915_active_is_idle(ref));
> +	if (!i915_sw_fence_await(fence)) {
> +		kfree(wb);
> +		return -EINVAL;
> +	}
> +
> +	wb->base.flags = 0;
> +	wb->base.func = barrier_wake;
> +	wb->base.private = fence;
> +	wb->ref = ref;
> +
> +	add_wait_queue(__var_waitqueue(ref), &wb->base);
> +	return 0;
> +}
> +
>   static int await_active(struct i915_active *ref,
>   			unsigned int flags,
>   			int (*fn)(void *arg, struct dma_fence *fence),
> -			void *arg)
> +			void *arg, struct i915_sw_fence *barrier)
>   {
>   	int err = 0;
>   
> +	if (!i915_active_acquire_if_busy(ref))
> +		return 0;
> +
>   	if (flags & I915_ACTIVE_AWAIT_EXCL &&
>   	    rcu_access_pointer(ref->excl.fence)) {
>   		err = __await_active(&ref->excl, fn, arg);
>   		if (err)
> -			return err;
> +			goto out;
>   	}
>   
> -	if (flags & I915_ACTIVE_AWAIT_ACTIVE &&
> -	    i915_active_acquire_if_busy(ref)) {
> +	if (flags & I915_ACTIVE_AWAIT_ACTIVE) {
>   		struct active_node *it, *n;
>   
>   		rbtree_postorder_for_each_entry_safe(it, n, &ref->tree, node) {
>   			err = __await_active(&it->base, fn, arg);
>   			if (err)
> -				break;
> +				goto out;
>   		}
> -		i915_active_release(ref);
> +	}
> +
> +	if (flags & I915_ACTIVE_AWAIT_BARRIER) {
> +		err = flush_lazy_signals(ref);
>   		if (err)
> -			return err;
> +			goto out;
> +
> +		err = __await_barrier(ref, barrier);
> +		if (err)
> +			goto out;
>   	}
>   
> -	return 0;
> +out:
> +	i915_active_release(ref);
> +	return err;
>   }
>   
>   static int rq_await_fence(void *arg, struct dma_fence *fence)
> @@ -582,7 +635,7 @@ int i915_request_await_active(struct i915_request *rq,
>   			      struct i915_active *ref,
>   			      unsigned int flags)
>   {
> -	return await_active(ref, flags, rq_await_fence, rq);
> +	return await_active(ref, flags, rq_await_fence, rq, &rq->submit);
>   }
>   
>   static int sw_await_fence(void *arg, struct dma_fence *fence)
> @@ -595,7 +648,7 @@ int i915_sw_fence_await_active(struct i915_sw_fence *fence,
>   			       struct i915_active *ref,
>   			       unsigned int flags)
>   {
> -	return await_active(ref, flags, sw_await_fence, fence);
> +	return await_active(ref, flags, sw_await_fence, fence, fence);
>   }
>   
>   #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> index ffafaa78c494..cf4058150966 100644
> --- a/drivers/gpu/drm/i915/i915_active.h
> +++ b/drivers/gpu/drm/i915/i915_active.h
> @@ -195,6 +195,7 @@ int i915_request_await_active(struct i915_request *rq,
>   			      unsigned int flags);
>   #define I915_ACTIVE_AWAIT_EXCL BIT(0)
>   #define I915_ACTIVE_AWAIT_ACTIVE BIT(1)
> +#define I915_ACTIVE_AWAIT_BARRIER BIT(2)
>   
>   int i915_active_acquire(struct i915_active *ref);
>   bool i915_active_acquire_if_busy(struct i915_active *ref);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
