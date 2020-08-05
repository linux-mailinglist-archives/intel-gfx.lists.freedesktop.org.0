Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C757323CB4B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 15:56:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A36289D5C;
	Wed,  5 Aug 2020 13:56:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7D1589D5C
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 13:56:12 +0000 (UTC)
IronPort-SDR: +M0KokeNWXBAQdKwfmRNIKvjMuF4B92qW6obDbcZx87qgH9GF5ev1bFfEyFZ/m5gMahIwh2qy8
 nDoPYtQfuGTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="150301408"
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="150301408"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 06:56:12 -0700
IronPort-SDR: 4OQKv6dncgT9idjkSpJclU620YTrMdLp30OlH1GSTz81GWV7FFP9Ki4fxrpANpBc/AAQ06tlmx
 OIeJKtzgbfPA==
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="467472786"
Received: from tlevis-mobl1.ger.corp.intel.com (HELO [10.251.167.151])
 ([10.251.167.151])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 06:56:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
 <20200805122231.23313-15-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <96633474-a602-5c1d-3ad7-593ca6015e66@linux.intel.com>
Date: Wed, 5 Aug 2020 14:56:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200805122231.23313-15-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 14/37] drm/i915: Serialise
 i915_vma_pin_inplace() with i915_vma_unbind()
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


On 05/08/2020 13:22, Chris Wilson wrote:
> Directly seralise the atomic pinning with evicting the vma from unbind
> with a pair of coupled cmpxchg to avoid fighting over vm->mutex.

Assumption being bind/unbind should never contend and create a 
busy-spinny section? And motivation being.. ?

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_vma.c | 45 ++++++++++-----------------------
>   1 file changed, 14 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index dbe11b349175..17ce0bce318e 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -742,12 +742,10 @@ i915_vma_detach(struct i915_vma *vma)
>   
>   bool i915_vma_pin_inplace(struct i915_vma *vma, unsigned int flags)
>   {
> -	unsigned int bound;
> -	bool pinned = true;
> +	unsigned int bound = atomic_read(&vma->flags);
>   
>   	GEM_BUG_ON(flags & ~I915_VMA_BIND_MASK);
>   
> -	bound = atomic_read(&vma->flags);
>   	do {
>   		if (unlikely(flags & ~bound))
>   			return false;
> @@ -755,34 +753,10 @@ bool i915_vma_pin_inplace(struct i915_vma *vma, unsigned int flags)
>   		if (unlikely(bound & (I915_VMA_OVERFLOW | I915_VMA_ERROR)))
>   			return false;
>   
> -		if (!(bound & I915_VMA_PIN_MASK))
> -			goto unpinned;
> -
>   		GEM_BUG_ON(((bound + 1) & I915_VMA_PIN_MASK) == 0);
>   	} while (!atomic_try_cmpxchg(&vma->flags, &bound, bound + 1));
>   
>   	return true;
> -
> -unpinned:
> -	/*
> -	 * If pin_count==0, but we are bound, check under the lock to avoid
> -	 * racing with a concurrent i915_vma_unbind().
> -	 */
> -	mutex_lock(&vma->vm->mutex);
> -	do {
> -		if (unlikely(bound & (I915_VMA_OVERFLOW | I915_VMA_ERROR))) {
> -			pinned = false;
> -			break;
> -		}
> -
> -		if (unlikely(flags & ~bound)) {
> -			pinned = false;
> -			break;
> -		}
> -	} while (!atomic_try_cmpxchg(&vma->flags, &bound, bound + 1));
> -	mutex_unlock(&vma->vm->mutex);
> -
> -	return pinned;
>   }
>   
>   static int vma_get_pages(struct i915_vma *vma)
> @@ -1292,6 +1266,7 @@ void __i915_vma_evict(struct i915_vma *vma)
>   
>   int __i915_vma_unbind(struct i915_vma *vma)
>   {
> +	unsigned int bound;
>   	int ret;
>   
>   	lockdep_assert_held(&vma->vm->mutex);
> @@ -1299,10 +1274,18 @@ int __i915_vma_unbind(struct i915_vma *vma)
>   	if (!drm_mm_node_allocated(&vma->node))
>   		return 0;
>   
> -	if (i915_vma_is_pinned(vma)) {
> -		vma_print_allocator(vma, "is pinned");
> -		return -EAGAIN;
> -	}
> +	/* Serialise with i915_vma_pin_inplace() */
> +	bound = atomic_read(&vma->flags);
> +	do {
> +		if (unlikely(bound & I915_VMA_PIN_MASK)) {
> +			vma_print_allocator(vma, "is pinned");
> +			return -EAGAIN;
> +		}
> +
> +		if (unlikely(bound & I915_VMA_ERROR))
> +			break;
> +	} while (!atomic_try_cmpxchg(&vma->flags,
> +				     &bound, bound | I915_VMA_ERROR));
Using the error flag is somehow critical for this scheme to work? Can 
you please explain in the comment and/or commit message?

>   
>   	/*
>   	 * After confirming that no one else is pinning this vma, wait for
> 

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
