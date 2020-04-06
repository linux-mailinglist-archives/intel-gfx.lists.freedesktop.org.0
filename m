Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D67A319F58A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 14:06:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32F616E167;
	Mon,  6 Apr 2020 12:06:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D6046E167
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 12:06:08 +0000 (UTC)
IronPort-SDR: nC9YxITgVVqFQpVfc2bRPFHKlUcJm3wbhELA3jMqn/NYloiHeqk2nmtJS3uJgVdvrx46e8X8vU
 BrZwSYcLK5SA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 05:06:07 -0700
IronPort-SDR: E6O2c0rFLK0QB0pFc1o4Fyp5layhRjCC16Ufyx6F3buG4SaJgxwmE9sRuoAWr5tYMytRtM/h9W
 zoQEOfULx6GA==
X-IronPort-AV: E=Sophos;i="5.72,351,1580803200"; d="scan'208";a="285864879"
Received: from nlevi-mobl.ger.corp.intel.com (HELO [10.251.172.194])
 ([10.251.172.194])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 05:06:06 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200406091254.17675-1-chris@chris-wilson.co.uk>
 <20200406091254.17675-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ea4ee702-3384-6978-cac4-870c85a88a21@linux.intel.com>
Date: Mon, 6 Apr 2020 13:06:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200406091254.17675-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Allow asynchronous waits on
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


On 06/04/2020 10:12, Chris Wilson wrote:
> Allow the caller to also wait upon the barriers stored in i915_active.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_active.c | 60 ++++++++++++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_active.h |  1 +
>   2 files changed, 61 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index d5e24be759f7..048ab9edd2c2 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -542,6 +542,55 @@ static int __await_active(struct i915_active_fence *active,
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
> +	if (i915_active_is_idle(wb->ref)) { /* shared waitqueue, must check! */

Who shares it?

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
> +	if (!i915_active_acquire_if_busy(ref)) {
> +		kfree(wb);
> +		return 0;
> +	}
> +
> +	if (!i915_sw_fence_await(fence)) {
> +		kfree(wb);
> +		i915_active_release(ref);
> +		return -EINVAL;
> +	}
> +
> +	wb->base.flags = 0;
> +	wb->base.func = barrier_wake;
> +	wb->base.private = fence;
> +	wb->ref = ref;
> +
> +	add_wait_queue(__var_waitqueue(ref), &wb->base);
> +
> +	i915_active_release(ref);
> +	return 0;
> +}
> +
>   static int await_active(struct i915_active *ref,
>   			unsigned int flags,
>   			int (*fn)(void *arg, struct dma_fence *fence),
> @@ -570,6 +619,16 @@ static int await_active(struct i915_active *ref,
>   			return err;
>   	}
>   
> +	if (flags & I915_ACTIVE_AWAIT_BARRIER) {
> +		err = flush_lazy_signals(ref);
> +		if (err)
> +			return err;
> +
> +		err = __await_barrier(ref, arg);
> +		if (err)
> +			return err;
>

Could have a single set of active_acquire_if_busy/release over the 
previous and this new block. Not sure if that would help with any 
atomicity concerns, or if there are such.

  +	}
> +
>   	return 0;
>   }
>   
> @@ -582,6 +641,7 @@ int i915_request_await_active(struct i915_request *rq,
>   			      struct i915_active *ref,
>   			      unsigned int flags)
>   {
> +	GEM_BUG_ON(flags & I915_ACTIVE_AWAIT_BARRIER);

Why is this an error?

>   	return await_active(ref, flags, rq_await_fence, rq);
>   }
>   
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

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
