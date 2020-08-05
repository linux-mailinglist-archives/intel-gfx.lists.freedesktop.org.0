Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AE123CB66
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 16:16:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB7216E48F;
	Wed,  5 Aug 2020 14:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 423FD6E48F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 14:16:50 +0000 (UTC)
IronPort-SDR: SbpQ4UpwkBx8iI/2+1BrKq0QtCZnMAUxLkkiWcal3oDUImnBzFs+VBj8GHobUzcO5um0k/41NF
 O7orGQdNl2/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="132101617"
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="132101617"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 07:16:49 -0700
IronPort-SDR: s5vWMp8329gZRnNzrgLGaHfRfzNoJ5A5wcMN6+IbRhtM2doH9MiNGTmZvVp13+6IPZNkKV+9A1
 bOGX3HhWLVYg==
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="467480094"
Received: from tlevis-mobl1.ger.corp.intel.com (HELO [10.251.167.151])
 ([10.251.167.151])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 07:16:48 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
 <20200805122231.23313-24-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5edc1636-e257-edf7-6067-1a0e2615a22f@linux.intel.com>
Date: Wed, 5 Aug 2020 15:16:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200805122231.23313-24-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 23/37] drm/i915/gem: Manage GTT placement
 bias (starting offset) explicitly
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
> Since we can control placement in the ppGTT explicitly, we can specify
> our desired starting offset exactly on a per-vma basis. This prevents us
> falling down a few corner cases where we confuse the user with our choices.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 67 +++++++++----------
>   1 file changed, 31 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 19cab5541dbc..0839397c7e50 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -36,6 +36,7 @@ struct eb_vma {
>   
>   	/** This vma's place in the execbuf reservation list */
>   	struct drm_i915_gem_exec_object2 *exec;
> +	u32 bias;
>   
>   	struct list_head bind_link;
>   	struct list_head unbound_link;
> @@ -61,15 +62,12 @@ struct eb_vma_array {
>   #define __EXEC_OBJECT_HAS_PIN		BIT(31)
>   #define __EXEC_OBJECT_HAS_FENCE		BIT(30)
>   #define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
> -#define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
> -#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
> +#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 29) /* all of the above */
>   
>   #define __EXEC_HAS_RELOC	BIT(31)
>   #define __EXEC_INTERNAL_FLAGS	(~0u << 31)
>   #define UPDATE			PIN_OFFSET_FIXED
>   
> -#define BATCH_OFFSET_BIAS (256*1024)
> -
>   #define __I915_EXEC_ILLEGAL_FLAGS \
>   	(__I915_EXEC_UNKNOWN_FLAGS | \
>   	 I915_EXEC_CONSTANTS_MASK  | \
> @@ -291,7 +289,7 @@ struct i915_execbuffer {
>   	} parser;
>   
>   	u64 invalid_flags; /** Set of execobj.flags that are invalid */
> -	u32 context_flags; /** Set of execobj.flags to insert from the ctx */
> +	u32 context_bias;
>   
>   	u32 batch_start_offset; /** Location within object of batch */
>   	u32 batch_len; /** Length of batch within object */
> @@ -491,11 +489,12 @@ static int eb_create(struct i915_execbuffer *eb)
>   	return 0;
>   }
>   
> -static bool
> -eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
> -		 const struct i915_vma *vma,
> -		 unsigned int flags)
> +static bool eb_vma_misplaced(const struct eb_vma *ev)
>   {
> +	const struct drm_i915_gem_exec_object2 *entry = ev->exec;
> +	const struct i915_vma *vma = ev->vma;
> +	unsigned int flags = ev->flags;
> +
>   	if (test_bit(I915_VMA_ERROR_BIT, __i915_vma_flags(vma)))
>   		return true;
>   
> @@ -509,8 +508,7 @@ eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
>   	    vma->node.start != entry->offset)
>   		return true;
>   
> -	if (flags & __EXEC_OBJECT_NEEDS_BIAS &&
> -	    vma->node.start < BATCH_OFFSET_BIAS)
> +	if (vma->node.start < ev->bias)
>   		return true;
>   
>   	if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS) &&
> @@ -529,10 +527,7 @@ static bool eb_pin_vma_fence_inplace(struct eb_vma *ev)
>   	return false; /* We need to add some new fence serialisation */
>   }
>   
> -static inline bool
> -eb_pin_vma_inplace(struct i915_execbuffer *eb,
> -		   const struct drm_i915_gem_exec_object2 *entry,
> -		   struct eb_vma *ev)
> +static inline bool eb_pin_vma_inplace(struct eb_vma *ev)
>   {
>   	struct i915_vma *vma = ev->vma;
>   	unsigned int pin_flags;
> @@ -541,7 +536,7 @@ eb_pin_vma_inplace(struct i915_execbuffer *eb,
>   	if (!i915_active_is_idle(&vma->vm->binding))
>   		return false;
>   
> -	if (eb_vma_misplaced(entry, vma, ev->flags))
> +	if (eb_vma_misplaced(ev))
>   		return false;
>   
>   	pin_flags = PIN_USER;
> @@ -559,7 +554,7 @@ eb_pin_vma_inplace(struct i915_execbuffer *eb,
>   		}
>   	}
>   
> -	GEM_BUG_ON(eb_vma_misplaced(entry, vma, ev->flags));
> +	GEM_BUG_ON(eb_vma_misplaced(ev));
>   
>   	ev->flags |= __EXEC_OBJECT_HAS_PIN;
>   	return true;
> @@ -608,9 +603,6 @@ eb_validate_vma(struct i915_execbuffer *eb,
>   			entry->flags |= EXEC_OBJECT_NEEDS_GTT | __EXEC_OBJECT_NEEDS_MAP;
>   	}
>   
> -	if (!(entry->flags & EXEC_OBJECT_PINNED))
> -		entry->flags |= eb->context_flags;
> -
>   	return 0;
>   }
>   
> @@ -627,6 +619,7 @@ eb_add_vma(struct i915_execbuffer *eb,
>   	ev->vma = vma;
>   	ev->exec = entry;
>   	ev->flags = entry->flags;
> +	ev->bias = eb->context_bias;
>   
>   	if (eb->lut_size > 0) {
>   		ev->handle = entry->handle;
> @@ -653,7 +646,8 @@ eb_add_vma(struct i915_execbuffer *eb,
>   	if (i == batch_idx) {
>   		if (entry->relocation_count &&
>   		    !(ev->flags & EXEC_OBJECT_PINNED))
> -			ev->flags |= __EXEC_OBJECT_NEEDS_BIAS;
> +			ev->bias = max_t(u32, ev->bias, SZ_256K);

What dictates the 256KiB border? Wondering if this is too hidden in here 
or not.

Regards,

Tvrtko

> +
>   		if (eb->has_fence)
>   			ev->flags |= EXEC_OBJECT_NEEDS_FENCE;
>   
> @@ -979,8 +973,9 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
>   	const unsigned int exec_flags = bind->ev->flags;
>   	struct i915_vma *vma = bind->ev->vma;
>   	struct i915_address_space *vm = vma->vm;
> -	u64 start = 0, end = vm->total;
>   	u64 align = entry->alignment ?: I915_GTT_MIN_ALIGNMENT;
> +	u64 start = round_up(bind->ev->bias, align);
> +	u64 end = vm->total;
>   	unsigned int bind_flags;
>   	int err;
>   
> @@ -999,7 +994,7 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
>   	GEM_BUG_ON(!vma->size);
>   
>   	/* Reuse old address (if it doesn't conflict with new requirements) */
> -	if (eb_vma_misplaced(entry, vma, exec_flags)) {
> +	if (eb_vma_misplaced(bind->ev)) {
>   		vma->node.start = entry->offset & PIN_OFFSET_MASK;
>   		vma->node.size = max(entry->pad_to_size, vma->size);
>   		vma->node.color = 0;
> @@ -1021,11 +1016,8 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
>   		align = max_t(u64, align, vma->fence_alignment);
>   	}
>   
> -	if (exec_flags & __EXEC_OBJECT_NEEDS_BIAS)
> -		start = BATCH_OFFSET_BIAS;
> -
>   	GEM_BUG_ON(!vma->node.size);
> -	if (vma->node.size > end - start)
> +	if (start > end || vma->node.size > end - start)
>   		return -E2BIG;
>   
>   	/* Try the user's preferred location first (mandatory if soft-pinned) */
> @@ -1108,7 +1100,7 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
>   	}
>   
>   	bind->ev->flags |= __EXEC_OBJECT_HAS_PIN;
> -	GEM_BUG_ON(eb_vma_misplaced(entry, vma, bind->ev->flags));
> +	GEM_BUG_ON(eb_vma_misplaced(bind->ev));
>   
>   	if (unlikely(exec_flags & EXEC_OBJECT_NEEDS_FENCE)) {
>   		err = __i915_vma_pin_fence_async(vma, &work->base);
> @@ -1341,8 +1333,7 @@ static int wait_for_unbinds(struct i915_execbuffer *eb,
>   
>   		GEM_BUG_ON(ev->flags & __EXEC_OBJECT_HAS_PIN);
>   
> -		if (drm_mm_node_allocated(&vma->node) &&
> -		    eb_vma_misplaced(ev->exec, vma, ev->flags)) {
> +		if (drm_mm_node_allocated(&vma->node) && eb_vma_misplaced(ev)) {
>   			err = i915_vma_unbind(vma);
>   			if (err)
>   				return err;
> @@ -1391,10 +1382,10 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
>   	count = 0;
>   	INIT_LIST_HEAD(&unbound);
>   	list_for_each_entry(ev, &eb->bind_list, bind_link) {
> -		struct drm_i915_gem_exec_object2 *entry = ev->exec;
> -		struct i915_vma *vma = ev->vma;
> +		if (eb_pin_vma_inplace(ev)) {
> +			struct drm_i915_gem_exec_object2 *entry = ev->exec;
> +			struct i915_vma *vma = ev->vma;
>   
> -		if (eb_pin_vma_inplace(eb, entry, ev)) {
>   			if (entry != &no_entry &&
>   			    entry->offset != vma->node.start) {
>   				entry->offset = vma->node.start | UPDATE;
> @@ -1478,7 +1469,7 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
>   			 * we cannot handle migrating the vma inside the worker.
>   			 */
>   			if (drm_mm_node_allocated(&vma->node)) {
> -				if (eb_vma_misplaced(ev->exec, vma, ev->flags)) {
> +				if (eb_vma_misplaced(ev)) {
>   					err = -ENOSPC;
>   					break;
>   				}
> @@ -1736,9 +1727,13 @@ static int eb_select_context(struct i915_execbuffer *eb)
>   	if (rcu_access_pointer(ctx->vm))
>   		eb->invalid_flags |= EXEC_OBJECT_NEEDS_GTT;
>   
> -	eb->context_flags = 0;
> +	/*
> +	 * At the user's discretion, ensure that we place no objects at
> +	 * offset 0, allowing them to use 0 as a 'NULL' pointer.
> +	 */
> +	eb->context_bias = 0;
>   	if (test_bit(UCONTEXT_NO_ZEROMAP, &ctx->user_flags))
> -		eb->context_flags |= __EXEC_OBJECT_NEEDS_BIAS;
> +		eb->context_bias = I915_GTT_MIN_ALIGNMENT;
>   
>   	return 0;
>   }
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
