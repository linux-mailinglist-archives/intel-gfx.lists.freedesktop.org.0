Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 020F617F4DF
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 11:18:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59D9C6E862;
	Tue, 10 Mar 2020 10:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A7E16E862
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 10:18:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 03:18:03 -0700
X-IronPort-AV: E=Sophos;i="5.70,536,1574150400"; d="scan'208";a="288994066"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 10 Mar 2020 03:18:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
 <20200306133852.3420322-6-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <18554e6a-722e-8496-f92f-19855c6949d9@linux.intel.com>
Date: Tue, 10 Mar 2020 10:18:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200306133852.3420322-6-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/17] drm/i915: Extend
 i915_request_await_active to use all timelines
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


On 06/03/2020 13:38, Chris Wilson wrote:
> Extend i915_request_await_active() to be able to asynchronously wait on
> all the tracked timelines simultaneously.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_active.c | 51 +++++++++++++++++++++++-------
>   drivers/gpu/drm/i915/i915_active.h |  5 ++-
>   drivers/gpu/drm/i915/i915_vma.c    |  2 +-
>   3 files changed, 45 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index 1826de14d2da..e659688db043 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -518,23 +518,52 @@ int i915_active_wait(struct i915_active *ref)
>   	return 0;
>   }
>   
> -int i915_request_await_active(struct i915_request *rq, struct i915_active *ref)
> +static int await_active(struct i915_request *rq,
> +			struct i915_active_fence *active)
> +{
> +	struct dma_fence *fence;
> +
> +	if (is_barrier(active))
> +		return 0;
> +
> +	fence = i915_active_fence_get(active);
> +	if (fence) {
> +		int err;
> +
> +		err = i915_request_await_dma_fence(rq, fence);
> +		dma_fence_put(fence);
> +		if (err < 0)
> +			return err;
> +	}
> +
> +	return 0;
> +}
> +
> +int i915_request_await_active(struct i915_request *rq,
> +			      struct i915_active *ref,
> +			      unsigned int flags)
>   {
>   	int err = 0;
>   
> +	/* We must always wait for the exclusive fence! */
>   	if (rcu_access_pointer(ref->excl.fence)) {
> -		struct dma_fence *fence;
> -
> -		rcu_read_lock();
> -		fence = dma_fence_get_rcu_safe(&ref->excl.fence);
> -		rcu_read_unlock();
> -		if (fence) {
> -			err = i915_request_await_dma_fence(rq, fence);
> -			dma_fence_put(fence);
> -		}
> +		err = await_active(rq, &ref->excl);
> +		if (err)
> +			return err;
>   	}
>   
> -	/* In the future we may choose to await on all fences */
> +	if (flags & I915_ACTIVE_AWAIT_ALL && i915_active_acquire_if_busy(ref)) {
> +		struct active_node *it, *n;
> +
> +		rbtree_postorder_for_each_entry_safe(it, n, &ref->tree, node) {
> +			err = await_active(rq, &it->base);
> +			if (err)
> +				break;
> +		}
> +		i915_active_release(ref);
> +		if (err)
> +			return err;
> +	}
>   
>   	return err;
>   }
> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> index 7e438501333e..e3c13060c4c7 100644
> --- a/drivers/gpu/drm/i915/i915_active.h
> +++ b/drivers/gpu/drm/i915/i915_active.h
> @@ -183,7 +183,10 @@ static inline bool i915_active_has_exclusive(struct i915_active *ref)
>   
>   int i915_active_wait(struct i915_active *ref);
>   
> -int i915_request_await_active(struct i915_request *rq, struct i915_active *ref);
> +int i915_request_await_active(struct i915_request *rq,
> +			      struct i915_active *ref,
> +			      unsigned int flags);
> +#define I915_ACTIVE_AWAIT_ALL BIT(0)
>   
>   int i915_active_acquire(struct i915_active *ref);
>   bool i915_active_acquire_if_busy(struct i915_active *ref);
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 3dde671145f7..5b3efb43a8ef 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1173,7 +1173,7 @@ int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
>   	GEM_BUG_ON(!i915_vma_is_pinned(vma));
>   
>   	/* Wait for the vma to be bound before we start! */
> -	err = i915_request_await_active(rq, &vma->active);
> +	err = i915_request_await_active(rq, &vma->active, 0);
>   	if (err)
>   		return err;
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
