Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8753A223E1C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 16:36:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEDDD6E137;
	Fri, 17 Jul 2020 14:36:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 847266E137
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 14:36:08 +0000 (UTC)
IronPort-SDR: Abzql5aihE+aQn6qaBdIXupY7nKJ5EL8PRnQK8rIlLZdt8YVxppWcLsXGTgQav+iiAd04KUs3M
 Bd6uQ/GdOLTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="129679594"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="129679594"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 07:36:07 -0700
IronPort-SDR: ei2sewcujTmGm9GnO8v27qItitv3kE36uyiob6PjmGtE9s8+Vee0/afEIyeWl9aeIx368xEnne
 njZd8R+vCowg==
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="460865213"
Received: from gpanagop-mobl.ger.corp.intel.com (HELO [10.249.33.238])
 ([10.249.33.238])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 07:36:06 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-16-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e17b728a-2e7b-4010-47d8-f0e18024b4e5@linux.intel.com>
Date: Fri, 17 Jul 2020 15:36:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-16-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 16/66] drm/i915/gem: Remove the call for
 no-evict i915_vma_pin
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


On 15/07/2020 12:50, Chris Wilson wrote:
> Remove the stub i915_vma_pin() used for incrementally pining objects for
> execbuf (under the severe restriction that they must not wait on a
> resource as we may have already pinned it) and replace it with a
> i915_vma_pin_inplace() that is only allowed to reclaim the currently
> bound location for the vma (and will never wait for a pinned resource).
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 69 +++++++++++--------
>   drivers/gpu/drm/i915/i915_vma.c               |  6 +-
>   drivers/gpu/drm/i915/i915_vma.h               |  2 +
>   3 files changed, 45 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 28cf28fcf80a..0b8a26da26e5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -452,49 +452,55 @@ static u64 eb_pin_flags(const struct drm_i915_gem_exec_object2 *entry,
>   	return pin_flags;
>   }
>   
> +static bool eb_pin_vma_fence_inplace(struct eb_vma *ev)
> +{
> +	struct i915_vma *vma = ev->vma;
> +	struct i915_fence_reg *reg = vma->fence;
> +
> +	if (reg) {
> +		if (READ_ONCE(reg->dirty))
> +			return false;
> +
> +		atomic_inc(&reg->pin_count);

Why is this safe outside the vm->mutex? It otherwise seems to be 
protecting this pin count.

Regards,

Tvrtko

> +		ev->flags |= __EXEC_OBJECT_HAS_FENCE;
> +	} else {
> +		if (i915_gem_object_is_tiled(vma->obj))
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
>   static inline bool
> -eb_pin_vma(struct i915_execbuffer *eb,
> -	   const struct drm_i915_gem_exec_object2 *entry,
> -	   struct eb_vma *ev)
> +eb_pin_vma_inplace(struct i915_execbuffer *eb,
> +		   const struct drm_i915_gem_exec_object2 *entry,
> +		   struct eb_vma *ev)
>   {
>   	struct i915_vma *vma = ev->vma;
> -	u64 pin_flags;
> +	unsigned int pin_flags;
>   
> -	if (vma->node.size)
> -		pin_flags = vma->node.start;
> -	else
> -		pin_flags = entry->offset & PIN_OFFSET_MASK;
> +	if (eb_vma_misplaced(entry, vma, ev->flags))
> +		return false;
>   
> -	pin_flags |= PIN_USER | PIN_NOEVICT | PIN_OFFSET_FIXED;
> +	pin_flags = PIN_USER;
>   	if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_GTT))
>   		pin_flags |= PIN_GLOBAL;
>   
>   	/* Attempt to reuse the current location if available */
> -	if (unlikely(i915_vma_pin(vma, 0, 0, pin_flags))) {
> -		if (entry->flags & EXEC_OBJECT_PINNED)
> -			return false;
> -
> -		/* Failing that pick any _free_ space if suitable */
> -		if (unlikely(i915_vma_pin(vma,
> -					  entry->pad_to_size,
> -					  entry->alignment,
> -					  eb_pin_flags(entry, ev->flags) |
> -					  PIN_USER | PIN_NOEVICT)))
> -			return false;
> -	}
> +	if (!i915_vma_pin_inplace(vma, pin_flags))
> +		return false;
>   
>   	if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_FENCE)) {
> -		if (unlikely(i915_vma_pin_fence(vma))) {
> -			i915_vma_unpin(vma);
> +		if (!eb_pin_vma_fence_inplace(ev)) {
> +			__i915_vma_unpin(vma);
>   			return false;
>   		}
> -
> -		if (vma->fence)
> -			ev->flags |= __EXEC_OBJECT_HAS_FENCE;
>   	}
>   
> +	GEM_BUG_ON(eb_vma_misplaced(entry, vma, ev->flags));
> +
>   	ev->flags |= __EXEC_OBJECT_HAS_PIN;
> -	return !eb_vma_misplaced(entry, vma, ev->flags);
> +	return true;
>   }
>   
>   static int
> @@ -676,14 +682,17 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
>   		struct drm_i915_gem_exec_object2 *entry = ev->exec;
>   		struct i915_vma *vma = ev->vma;
>   
> -		if (eb_pin_vma(eb, entry, ev)) {
> +		if (eb_pin_vma_inplace(eb, entry, ev)) {
>   			if (entry->offset != vma->node.start) {
>   				entry->offset = vma->node.start | UPDATE;
>   				eb->args->flags |= __EXEC_HAS_RELOC;
>   			}
>   		} else {
> -			eb_unreserve_vma(ev);
> -			list_add_tail(&ev->unbound_link, &unbound);
> +			/* Lightly sort user placed objects to the fore */
> +			if (ev->flags & EXEC_OBJECT_PINNED)
> +				list_add(&ev->unbound_link, &unbound);
> +			else
> +				list_add_tail(&ev->unbound_link, &unbound);
>   		}
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index c6bf04ca2032..dbe11b349175 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -740,11 +740,13 @@ i915_vma_detach(struct i915_vma *vma)
>   	list_del(&vma->vm_link);
>   }
>   
> -static bool try_qad_pin(struct i915_vma *vma, unsigned int flags)
> +bool i915_vma_pin_inplace(struct i915_vma *vma, unsigned int flags)
>   {
>   	unsigned int bound;
>   	bool pinned = true;
>   
> +	GEM_BUG_ON(flags & ~I915_VMA_BIND_MASK);
> +
>   	bound = atomic_read(&vma->flags);
>   	do {
>   		if (unlikely(flags & ~bound))
> @@ -865,7 +867,7 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
>   	GEM_BUG_ON(!(flags & (PIN_USER | PIN_GLOBAL)));
>   
>   	/* First try and grab the pin without rebinding the vma */
> -	if (try_qad_pin(vma, flags & I915_VMA_BIND_MASK))
> +	if (i915_vma_pin_inplace(vma, flags & I915_VMA_BIND_MASK))
>   		return 0;
>   
>   	err = vma_get_pages(vma);
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index d0d01f909548..03fea54fd573 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -236,6 +236,8 @@ static inline void i915_vma_unlock(struct i915_vma *vma)
>   	dma_resv_unlock(vma->resv);
>   }
>   
> +bool i915_vma_pin_inplace(struct i915_vma *vma, unsigned int flags);
> +
>   int __must_check
>   i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags);
>   int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
