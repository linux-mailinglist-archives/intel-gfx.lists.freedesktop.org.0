Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E64F0213DB8
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 18:47:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C78F66E591;
	Fri,  3 Jul 2020 16:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DD0F6E591
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 16:47:26 +0000 (UTC)
IronPort-SDR: byZjh3hRty80dGnwV3fI4uh999RafSv28yAElgNWOGMB+CY7XmFx4175BASzmnM7B5Oecn3/Vr
 OyVr8C6FWDiQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9671"; a="165236223"
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="165236223"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 09:47:26 -0700
IronPort-SDR: mqxkriQkhs3gvkFukvT2y2/u5+9qgNT6+z67sRGPjOrvVvhoiv22/ZEYpTt3YcA35/5rOTOOne
 Wl8jKza98frw==
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="455944888"
Received: from rbendor-mobl1.ger.corp.intel.com (HELO [10.214.211.147])
 ([10.214.211.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 09:47:24 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-6-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <37f553fb-807a-46a6-aa6c-0abcd75ffd94@linux.intel.com>
Date: Fri, 3 Jul 2020 17:47:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200702083225.20044-6-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/23] drm/i915: Preallocate stashes for vma
 page-directories
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


On 02/07/2020 09:32, Chris Wilson wrote:
> We need to make the DMA allocations used for page directories to be
> performed up front so that we can include those allocations in our
> memory reservation pass. The downside is that we have to assume the
> worst case, even before we know the final layout, and always allocate
> enough page directories for this object, even when there will be overlap.
> 
> It should be noted that the lifetime for the page directories DMA is
> more or less decoupled from individual fences as they will be shared
> across objects across timelines.

Why specifically you are pointing this out?

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_client_blt.c    | 11 +--
>   drivers/gpu/drm/i915/gt/gen6_ppgtt.c          | 38 +++------
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 77 +++++-------------
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          | 45 +++++------
>   drivers/gpu/drm/i915/gt/intel_gtt.h           | 39 ++++++---
>   drivers/gpu/drm/i915/gt/intel_ppgtt.c         | 80 ++++++++++++++++---
>   drivers/gpu/drm/i915/i915_vma.c               | 29 ++++---
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 60 ++++++++------
>   drivers/gpu/drm/i915/selftests/mock_gtt.c     | 22 ++---
>   9 files changed, 224 insertions(+), 177 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> index 278664f831e7..947c8aa8e13e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> @@ -32,12 +32,13 @@ static void vma_clear_pages(struct i915_vma *vma)
>   	vma->pages = NULL;
>   }
>   
> -static int vma_bind(struct i915_address_space *vm,
> -		    struct i915_vma *vma,
> -		    enum i915_cache_level cache_level,
> -		    u32 flags)
> +static void vma_bind(struct i915_address_space *vm,
> +		     struct i915_vm_pt_stash *stash,
> +		     struct i915_vma *vma,
> +		     enum i915_cache_level cache_level,
> +		     u32 flags)
>   {
> -	return vm->vma_ops.bind_vma(vm, vma, cache_level, flags);
> +	vm->vma_ops.bind_vma(vm, stash, vma, cache_level, flags);
>   }
>   
>   static void vma_unbind(struct i915_address_space *vm, struct i915_vma *vma)
> diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> index 05497b50103f..35e2b698f9ed 100644
> --- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> @@ -177,16 +177,16 @@ static void gen6_flush_pd(struct gen6_ppgtt *ppgtt, u64 start, u64 end)
>   	mutex_unlock(&ppgtt->flush);
>   }
>   
> -static int gen6_alloc_va_range(struct i915_address_space *vm,
> -			       u64 start, u64 length)
> +static void gen6_alloc_va_range(struct i915_address_space *vm,
> +				struct i915_vm_pt_stash *stash,
> +				u64 start, u64 length)
>   {
>   	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(i915_vm_to_ppgtt(vm));
>   	struct i915_page_directory * const pd = ppgtt->base.pd;
> -	struct i915_page_table *pt, *alloc = NULL;
> +	struct i915_page_table *pt;
>   	intel_wakeref_t wakeref;
>   	u64 from = start;
>   	unsigned int pde;
> -	int ret = 0;
>   
>   	wakeref = intel_runtime_pm_get(&vm->i915->runtime_pm);
>   
> @@ -197,21 +197,17 @@ static int gen6_alloc_va_range(struct i915_address_space *vm,
>   		if (px_base(pt) == px_base(&vm->scratch[1])) {
>   			spin_unlock(&pd->lock);
>   
> -			pt = fetch_and_zero(&alloc);
> -			if (!pt)
> -				pt = alloc_pt(vm);
> -			if (IS_ERR(pt)) {
> -				ret = PTR_ERR(pt);
> -				goto unwind_out;
> -			}
> +			pt = stash->pt[0];
> +			GEM_BUG_ON(!pt);
>   
>   			fill32_px(pt, vm->scratch[0].encode);
>   
>   			spin_lock(&pd->lock);
>   			if (pd->entry[pde] == &vm->scratch[1]) {
> +				stash->pt[0] = pt->stash;
> +				atomic_set(&pt->used, 0);
>   				pd->entry[pde] = pt;
>   			} else {
> -				alloc = pt;
>   				pt = pd->entry[pde];
>   			}
>   		}
> @@ -223,15 +219,7 @@ static int gen6_alloc_va_range(struct i915_address_space *vm,
>   	if (i915_vma_is_bound(ppgtt->vma, I915_VMA_GLOBAL_BIND))
>   		gen6_flush_pd(ppgtt, from, start);
>   
> -	goto out;
> -
> -unwind_out:
> -	gen6_ppgtt_clear_range(vm, from, start - from);
> -out:
> -	if (alloc)
> -		free_px(vm, alloc);
>   	intel_runtime_pm_put(&vm->i915->runtime_pm, wakeref);
> -	return ret;
>   }
>   
>   static int gen6_ppgtt_init_scratch(struct gen6_ppgtt *ppgtt)
> @@ -299,10 +287,11 @@ static void pd_vma_clear_pages(struct i915_vma *vma)
>   	vma->pages = NULL;
>   }
>   
> -static int pd_vma_bind(struct i915_address_space *vm,
> -		       struct i915_vma *vma,
> -		       enum i915_cache_level cache_level,
> -		       u32 unused)
> +static void pd_vma_bind(struct i915_address_space *vm,
> +			struct i915_vm_pt_stash *stash,
> +			struct i915_vma *vma,
> +			enum i915_cache_level cache_level,
> +			u32 unused)
>   {
>   	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>   	struct gen6_ppgtt *ppgtt = vma->private;
> @@ -312,7 +301,6 @@ static int pd_vma_bind(struct i915_address_space *vm,
>   	ppgtt->pd_addr = (gen6_pte_t __iomem *)ggtt->gsm + ggtt_offset;
>   
>   	gen6_flush_pd(ppgtt, 0, ppgtt->base.vm.total);
> -	return 0;
>   }
>   
>   static void pd_vma_unbind(struct i915_address_space *vm, struct i915_vma *vma)
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index 699125928272..e6f2acd445dd 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -269,14 +269,12 @@ static void gen8_ppgtt_clear(struct i915_address_space *vm,
>   			   start, start + length, vm->top);
>   }
>   
> -static int __gen8_ppgtt_alloc(struct i915_address_space * const vm,
> -			      struct i915_page_directory * const pd,
> -			      u64 * const start, const u64 end, int lvl)
> +static void __gen8_ppgtt_alloc(struct i915_address_space * const vm,
> +			       struct i915_vm_pt_stash *stash,
> +			       struct i915_page_directory * const pd,
> +			       u64 * const start, const u64 end, int lvl)
>   {
> -	const struct i915_page_scratch * const scratch = &vm->scratch[lvl];
> -	struct i915_page_table *alloc = NULL;
>   	unsigned int idx, len;
> -	int ret = 0;
>   
>   	GEM_BUG_ON(end > vm->total >> GEN8_PTE_SHIFT);
>   
> @@ -297,49 +295,30 @@ static int __gen8_ppgtt_alloc(struct i915_address_space * const vm,
>   			DBG("%s(%p):{ lvl:%d, idx:%d } allocating new tree\n",
>   			    __func__, vm, lvl + 1, idx);
>   
> -			pt = fetch_and_zero(&alloc);
> -			if (lvl) {
> -				if (!pt) {
> -					pt = &alloc_pd(vm)->pt;
> -					if (IS_ERR(pt)) {
> -						ret = PTR_ERR(pt);
> -						goto out;
> -					}
> -				}
> +			pt = stash->pt[!!lvl];
> +			GEM_BUG_ON(!pt);
>   
> +			if (lvl ||
> +			    gen8_pt_count(*start, end) < I915_PDES ||
> +			    intel_vgpu_active(vm->i915))
>   				fill_px(pt, vm->scratch[lvl].encode);
> -			} else {
> -				if (!pt) {
> -					pt = alloc_pt(vm);
> -					if (IS_ERR(pt)) {
> -						ret = PTR_ERR(pt);
> -						goto out;
> -					}
> -				}
> -
> -				if (intel_vgpu_active(vm->i915) ||
> -				    gen8_pt_count(*start, end) < I915_PDES)
> -					fill_px(pt, vm->scratch[lvl].encode);
> -			}
>   
>   			spin_lock(&pd->lock);
> -			if (likely(!pd->entry[idx]))
> +			if (likely(!pd->entry[idx])) {
> +				stash->pt[!!lvl] = pt->stash;
> +				atomic_set(&pt->used, 0);
>   				set_pd_entry(pd, idx, pt);
> -			else
> -				alloc = pt, pt = pd->entry[idx];
> +			} else {
> +				pt = pd->entry[idx];
> +			}
>   		}
>   
>   		if (lvl) {
>   			atomic_inc(&pt->used);
>   			spin_unlock(&pd->lock);
>   
> -			ret = __gen8_ppgtt_alloc(vm, as_pd(pt),
> -						 start, end, lvl);
> -			if (unlikely(ret)) {
> -				if (release_pd_entry(pd, idx, pt, scratch))
> -					free_px(vm, pt);
> -				goto out;
> -			}
> +			__gen8_ppgtt_alloc(vm, stash,
> +					   as_pd(pt), start, end, lvl);
>   
>   			spin_lock(&pd->lock);
>   			atomic_dec(&pt->used);
> @@ -359,18 +338,12 @@ static int __gen8_ppgtt_alloc(struct i915_address_space * const vm,
>   		}
>   	} while (idx++, --len);
>   	spin_unlock(&pd->lock);
> -out:
> -	if (alloc)
> -		free_px(vm, alloc);
> -	return ret;
>   }
>   
> -static int gen8_ppgtt_alloc(struct i915_address_space *vm,
> -			    u64 start, u64 length)
> +static void gen8_ppgtt_alloc(struct i915_address_space *vm,
> +			     struct i915_vm_pt_stash *stash,
> +			     u64 start, u64 length)
>   {
> -	u64 from;
> -	int err;
> -
>   	GEM_BUG_ON(!IS_ALIGNED(start, BIT_ULL(GEN8_PTE_SHIFT)));
>   	GEM_BUG_ON(!IS_ALIGNED(length, BIT_ULL(GEN8_PTE_SHIFT)));
>   	GEM_BUG_ON(range_overflows(start, length, vm->total));
> @@ -378,15 +351,9 @@ static int gen8_ppgtt_alloc(struct i915_address_space *vm,
>   	start >>= GEN8_PTE_SHIFT;
>   	length >>= GEN8_PTE_SHIFT;
>   	GEM_BUG_ON(length == 0);
> -	from = start;
> -
> -	err = __gen8_ppgtt_alloc(vm, i915_vm_to_ppgtt(vm)->pd,
> -				 &start, start + length, vm->top);
> -	if (unlikely(err && from != start))
> -		__gen8_ppgtt_clear(vm, i915_vm_to_ppgtt(vm)->pd,
> -				   from, start, vm->top);
>   
> -	return err;
> +	__gen8_ppgtt_alloc(vm, stash, i915_vm_to_ppgtt(vm)->pd,
> +			   &start, start + length, vm->top);
>   }
>   
>   static __always_inline void
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 62979ea591f0..791e4070ef31 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -436,16 +436,17 @@ static void i915_ggtt_clear_range(struct i915_address_space *vm,
>   	intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
>   }
>   
> -static int ggtt_bind_vma(struct i915_address_space *vm,
> -			 struct i915_vma *vma,
> -			 enum i915_cache_level cache_level,
> -			 u32 flags)
> +static void ggtt_bind_vma(struct i915_address_space *vm,
> +			  struct i915_vm_pt_stash *stash,
> +			  struct i915_vma *vma,
> +			  enum i915_cache_level cache_level,
> +			  u32 flags)
>   {
>   	struct drm_i915_gem_object *obj = vma->obj;
>   	u32 pte_flags;
>   
>   	if (i915_vma_is_bound(vma, ~flags & I915_VMA_BIND_MASK))
> -		return 0;
> +		return;
>   
>   	/* Applicable to VLV (gen8+ do not support RO in the GGTT) */
>   	pte_flags = 0;
> @@ -454,8 +455,6 @@ static int ggtt_bind_vma(struct i915_address_space *vm,
>   
>   	vm->insert_entries(vm, vma, cache_level, pte_flags);
>   	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
> -
> -	return 0;
>   }
>   
>   static void ggtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
> @@ -568,31 +567,25 @@ static int init_ggtt(struct i915_ggtt *ggtt)
>   	return ret;
>   }
>   
> -static int aliasing_gtt_bind_vma(struct i915_address_space *vm,
> -				 struct i915_vma *vma,
> -				 enum i915_cache_level cache_level,
> -				 u32 flags)
> +static void aliasing_gtt_bind_vma(struct i915_address_space *vm,
> +				  struct i915_vm_pt_stash *stash,
> +				  struct i915_vma *vma,
> +				  enum i915_cache_level cache_level,
> +				  u32 flags)
>   {
>   	u32 pte_flags;
> -	int ret;
>   
>   	/* Currently applicable only to VLV */
>   	pte_flags = 0;
>   	if (i915_gem_object_is_readonly(vma->obj))
>   		pte_flags |= PTE_READ_ONLY;
>   
> -	if (flags & I915_VMA_LOCAL_BIND) {
> -		struct i915_ppgtt *alias = i915_vm_to_ggtt(vm)->alias;
> -
> -		ret = ppgtt_bind_vma(&alias->vm, vma, cache_level, flags);
> -		if (ret)
> -			return ret;
> -	}
> +	if (flags & I915_VMA_LOCAL_BIND)
> +		ppgtt_bind_vma(&i915_vm_to_ggtt(vm)->alias->vm,
> +			       stash, vma, cache_level, flags);
>   
>   	if (flags & I915_VMA_GLOBAL_BIND)
>   		vm->insert_entries(vm, vma, cache_level, pte_flags);
> -
> -	return 0;
>   }
>   
>   static void aliasing_gtt_unbind_vma(struct i915_address_space *vm,
> @@ -607,6 +600,7 @@ static void aliasing_gtt_unbind_vma(struct i915_address_space *vm,
>   
>   static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
>   {
> +	struct i915_vm_pt_stash stash = {};
>   	struct i915_ppgtt *ppgtt;
>   	int err;
>   
> @@ -619,15 +613,17 @@ static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
>   		goto err_ppgtt;
>   	}
>   
> +	err = i915_vm_alloc_pt_stash(&ppgtt->vm, &stash, ggtt->vm.total);
> +	if (err)
> +		goto err_ppgtt;
> +
>   	/*
>   	 * Note we only pre-allocate as far as the end of the global
>   	 * GTT. On 48b / 4-level page-tables, the difference is very,
>   	 * very significant! We have to preallocate as GVT/vgpu does
>   	 * not like the page directory disappearing.
>   	 */
> -	err = ppgtt->vm.allocate_va_range(&ppgtt->vm, 0, ggtt->vm.total);
> -	if (err)
> -		goto err_ppgtt;
> +	ppgtt->vm.allocate_va_range(&ppgtt->vm, &stash, 0, ggtt->vm.total);
>   
>   	ggtt->alias = ppgtt;
>   	ggtt->vm.bind_async_flags |= ppgtt->vm.bind_async_flags;
> @@ -638,6 +634,7 @@ static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
>   	GEM_BUG_ON(ggtt->vm.vma_ops.unbind_vma != ggtt_unbind_vma);
>   	ggtt->vm.vma_ops.unbind_vma = aliasing_gtt_unbind_vma;
>   
> +	i915_vm_free_pt_stash(&ppgtt->vm, &stash);
>   	return 0;
>   
>   err_ppgtt:
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index f2b75078e05f..8bd462d2fcd9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -159,7 +159,10 @@ struct i915_page_scratch {
>   
>   struct i915_page_table {
>   	struct i915_page_dma base;
> -	atomic_t used;
> +	union {
> +		atomic_t used;
> +		struct i915_page_table *stash;

What it is for?

> +	};
>   };
>   
>   struct i915_page_directory {
> @@ -196,12 +199,18 @@ struct drm_i915_gem_object;
>   struct i915_vma;
>   struct intel_gt;
>   
> +struct i915_vm_pt_stash {
> +	/* preallocated chains of page tables/directories */
> +	struct i915_page_table *pt[2];

How does the chain work, so I don't have to reverse engineer it from the 
code?

> +};
> +
>   struct i915_vma_ops {
>   	/* Map an object into an address space with the given cache flags. */
> -	int (*bind_vma)(struct i915_address_space *vm,
> -			struct i915_vma *vma,
> -			enum i915_cache_level cache_level,
> -			u32 flags);
> +	void (*bind_vma)(struct i915_address_space *vm,
> +			 struct i915_vm_pt_stash *stash,
> +			 struct i915_vma *vma,
> +			 enum i915_cache_level cache_level,
> +			 u32 flags);
>   	/*
>   	 * Unmap an object from an address space. This usually consists of
>   	 * setting the valid PTE entries to a reserved scratch page.
> @@ -281,8 +290,9 @@ struct i915_address_space {
>   			  u32 flags); /* Create a valid PTE */
>   #define PTE_READ_ONLY	BIT(0)
>   
> -	int (*allocate_va_range)(struct i915_address_space *vm,
> -				 u64 start, u64 length);
> +	void (*allocate_va_range)(struct i915_address_space *vm,
> +				  struct i915_vm_pt_stash *stash,
> +				  u64 start, u64 length);
>   	void (*clear_range)(struct i915_address_space *vm,
>   			    u64 start, u64 length);
>   	void (*insert_page)(struct i915_address_space *vm,
> @@ -568,10 +578,11 @@ int ggtt_set_pages(struct i915_vma *vma);
>   int ppgtt_set_pages(struct i915_vma *vma);
>   void clear_pages(struct i915_vma *vma);
>   
> -int ppgtt_bind_vma(struct i915_address_space *vm,
> -		   struct i915_vma *vma,
> -		   enum i915_cache_level cache_level,
> -		   u32 flags);
> +void ppgtt_bind_vma(struct i915_address_space *vm,
> +		    struct i915_vm_pt_stash *stash,
> +		    struct i915_vma *vma,
> +		    enum i915_cache_level cache_level,
> +		    u32 flags);
>   void ppgtt_unbind_vma(struct i915_address_space *vm,
>   		      struct i915_vma *vma);
>   
> @@ -579,6 +590,12 @@ void gtt_write_workarounds(struct intel_gt *gt);
>   
>   void setup_private_pat(struct intel_uncore *uncore);
>   
> +int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
> +			   struct i915_vm_pt_stash *stash,
> +			   u64 size);
> +void i915_vm_free_pt_stash(struct i915_address_space *vm,
> +			   struct i915_vm_pt_stash *stash);
> +
>   static inline struct sgt_dma {
>   	struct scatterlist *sg;
>   	dma_addr_t dma, max;
> diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> index f0862e924d11..9633fd2d294d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> @@ -155,19 +155,16 @@ struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt)
>   	return ppgtt;
>   }
>   
> -int ppgtt_bind_vma(struct i915_address_space *vm,
> -		   struct i915_vma *vma,
> -		   enum i915_cache_level cache_level,
> -		   u32 flags)
> +void ppgtt_bind_vma(struct i915_address_space *vm,
> +		    struct i915_vm_pt_stash *stash,
> +		    struct i915_vma *vma,
> +		    enum i915_cache_level cache_level,
> +		    u32 flags)
>   {
>   	u32 pte_flags;
> -	int err;
>   
>   	if (!test_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma))) {
> -		err = vm->allocate_va_range(vm, vma->node.start, vma->size);
> -		if (err)
> -			return err;
> -
> +		vm->allocate_va_range(vm, stash, vma->node.start, vma->size);
>   		set_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma));
>   	}
>   
> @@ -178,8 +175,6 @@ int ppgtt_bind_vma(struct i915_address_space *vm,
>   
>   	vm->insert_entries(vm, vma, cache_level, pte_flags);
>   	wmb();
> -
> -	return 0;
>   }
>   
>   void ppgtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
> @@ -188,12 +183,73 @@ void ppgtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
>   		vm->clear_range(vm, vma->node.start, vma->size);
>   }
>   
> +static unsigned long pd_count(u64 size, int shift)
> +{
> +	/* Beware later misalignment */
> +	return (size + 2 * (BIT_ULL(shift) - 1)) >> shift;

Beware how and what misalignment? :)

> +}
> +
> +int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
> +			   struct i915_vm_pt_stash *stash,
> +			   u64 size)
> +{
> +	unsigned long count;
> +	int shift = 21;

I wanted to ask what is 21 (2 MiB?) but it probably is overall better if 
Matt or Mika reviewed this one.

Regards,

Tvrtko

> +	int n;
> +
> +	count = pd_count(size, shift);
> +	while (count--) {
> +		struct i915_page_table *pt;
> +
> +		pt = alloc_pt(vm);
> +		if (IS_ERR(pt)) {
> +			i915_vm_free_pt_stash(vm, stash);
> +			return PTR_ERR(pt);
> +		}
> +
> +		pt->stash = stash->pt[0];
> +		stash->pt[0] = pt;
> +	}
> +
> +	for (n = 1; n < vm->top; n++) {
> +		shift += 9;
> +		count = pd_count(size, shift);
> +		while (count--) {
> +			struct i915_page_directory *pd;
> +
> +			pd = alloc_pd(vm);
> +			if (IS_ERR(pd)) {
> +				i915_vm_free_pt_stash(vm, stash);
> +				return PTR_ERR(pd);
> +			}
> +
> +			pd->pt.stash = stash->pt[1];
> +			stash->pt[1] = &pd->pt;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +void i915_vm_free_pt_stash(struct i915_address_space *vm,
> +			   struct i915_vm_pt_stash *stash)
> +{
> +	struct i915_page_table *pt;
> +	int n;
> +
> +	for (n = 0; n < ARRAY_SIZE(stash->pt); n++) {
> +		while ((pt = stash->pt[n])) {
> +			stash->pt[n] = pt->stash;
> +			free_px(vm, pt);
> +		}
> +	}
> +}
> +
>   int ppgtt_set_pages(struct i915_vma *vma)
>   {
>   	GEM_BUG_ON(vma->pages);
>   
>   	vma->pages = vma->obj->mm.pages;
> -
>   	vma->page_sizes = vma->obj->mm.page_sizes;
>   
>   	return 0;
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 627bac2e0252..fc8a083753bd 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -295,6 +295,8 @@ i915_vma_instance(struct drm_i915_gem_object *obj,
>   
>   struct i915_vma_work {
>   	struct dma_fence_work base;
> +	struct i915_address_space *vm;
> +	struct i915_vm_pt_stash stash;
>   	struct i915_vma *vma;
>   	struct drm_i915_gem_object *pinned;
>   	struct i915_sw_dma_fence_cb cb;
> @@ -306,13 +308,10 @@ static int __vma_bind(struct dma_fence_work *work)
>   {
>   	struct i915_vma_work *vw = container_of(work, typeof(*vw), base);
>   	struct i915_vma *vma = vw->vma;
> -	int err;
> -
> -	err = vma->ops->bind_vma(vma->vm, vma, vw->cache_level, vw->flags);
> -	if (err)
> -		atomic_or(I915_VMA_ERROR, &vma->flags);
>   
> -	return err;
> +	vma->ops->bind_vma(vw->vm, &vw->stash,
> +			   vma, vw->cache_level, vw->flags);
> +	return 0;
>   }
>   
>   static void __vma_release(struct dma_fence_work *work)
> @@ -321,6 +320,9 @@ static void __vma_release(struct dma_fence_work *work)
>   
>   	if (vw->pinned)
>   		__i915_gem_object_unpin_pages(vw->pinned);
> +
> +	i915_vm_free_pt_stash(vw->vm, &vw->stash);
> +	i915_vm_put(vw->vm);
>   }
>   
>   static const struct dma_fence_work_ops bind_ops = {
> @@ -380,7 +382,6 @@ int i915_vma_bind(struct i915_vma *vma,
>   {
>   	u32 bind_flags;
>   	u32 vma_flags;
> -	int ret;
>   
>   	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
>   	GEM_BUG_ON(vma->size > vma->node.size);
> @@ -437,9 +438,7 @@ int i915_vma_bind(struct i915_vma *vma,
>   			work->pinned = vma->obj;
>   		}
>   	} else {
> -		ret = vma->ops->bind_vma(vma->vm, vma, cache_level, bind_flags);
> -		if (ret)
> -			return ret;
> +		vma->ops->bind_vma(vma->vm, NULL, vma, cache_level, bind_flags);
>   	}
>   
>   	atomic_or(bind_flags, &vma->flags);
> @@ -878,11 +877,21 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
>   		return err;
>   
>   	if (flags & vma->vm->bind_async_flags) {
> +		u64 max_size;
> +
>   		work = i915_vma_work();
>   		if (!work) {
>   			err = -ENOMEM;
>   			goto err_pages;
>   		}
> +
> +		work->vm = i915_vm_get(vma->vm);
> +
> +		/* Allocate enough page directories to cover worst case */
> +		max_size = max(size, vma->size);
> +		if (flags & PIN_MAPPABLE)
> +			max_size = max_t(u64, max_size, vma->fence_size);
> +		i915_vm_alloc_pt_stash(vma->vm, &work->stash, max_size);
>   	}
>   
>   	if (flags & PIN_GLOBAL)
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index 0016ffc7d914..9b8fc990e9ef 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -172,35 +172,33 @@ static int igt_ppgtt_alloc(void *arg)
>   
>   	/* Check we can allocate the entire range */
>   	for (size = 4096; size <= limit; size <<= 2) {
> -		err = ppgtt->vm.allocate_va_range(&ppgtt->vm, 0, size);
> -		if (err) {
> -			if (err == -ENOMEM) {
> -				pr_info("[1] Ran out of memory for va_range [0 + %llx] [bit %d]\n",
> -					size, ilog2(size));
> -				err = 0; /* virtual space too large! */
> -			}
> +		struct i915_vm_pt_stash stash = {};
> +
> +		err = i915_vm_alloc_pt_stash(&ppgtt->vm, &stash, size);
> +		if (err)
>   			goto err_ppgtt_cleanup;
> -		}
>   
> +		ppgtt->vm.allocate_va_range(&ppgtt->vm, &stash, 0, size);
>   		cond_resched();
>   
>   		ppgtt->vm.clear_range(&ppgtt->vm, 0, size);
> +
> +		i915_vm_free_pt_stash(&ppgtt->vm, &stash);
>   	}
>   
>   	/* Check we can incrementally allocate the entire range */
>   	for (last = 0, size = 4096; size <= limit; last = size, size <<= 2) {
> -		err = ppgtt->vm.allocate_va_range(&ppgtt->vm,
> -						  last, size - last);
> -		if (err) {
> -			if (err == -ENOMEM) {
> -				pr_info("[2] Ran out of memory for va_range [%llx + %llx] [bit %d]\n",
> -					last, size - last, ilog2(size));
> -				err = 0; /* virtual space too large! */
> -			}
> +		struct i915_vm_pt_stash stash = {};
> +
> +		err = i915_vm_alloc_pt_stash(&ppgtt->vm, &stash, size - last);
> +		if (err)
>   			goto err_ppgtt_cleanup;
> -		}
>   
> +		ppgtt->vm.allocate_va_range(&ppgtt->vm, &stash,
> +					    last, size - last);
>   		cond_resched();
> +
> +		i915_vm_free_pt_stash(&ppgtt->vm, &stash);
>   	}
>   
>   err_ppgtt_cleanup:
> @@ -284,9 +282,18 @@ static int lowlevel_hole(struct i915_address_space *vm,
>   				break;
>   			}
>   
> -			if (vm->allocate_va_range &&
> -			    vm->allocate_va_range(vm, addr, BIT_ULL(size)))
> -				break;
> +			if (vm->allocate_va_range) {
> +				struct i915_vm_pt_stash stash = {};
> +
> +				if (i915_vm_alloc_pt_stash(vm, &stash,
> +							   BIT_ULL(size)))
> +					break;
> +
> +				vm->allocate_va_range(vm, &stash,
> +						      addr, BIT_ULL(size));
> +
> +				i915_vm_free_pt_stash(vm, &stash);
> +			}
>   
>   			mock_vma->pages = obj->mm.pages;
>   			mock_vma->node.size = BIT_ULL(size);
> @@ -1881,6 +1888,7 @@ static int igt_cs_tlb(void *arg)
>   			continue;
>   
>   		while (!__igt_timeout(end_time, NULL)) {
> +			struct i915_vm_pt_stash stash = {};
>   			struct i915_request *rq;
>   			u64 offset;
>   
> @@ -1888,10 +1896,6 @@ static int igt_cs_tlb(void *arg)
>   						   0, vm->total - PAGE_SIZE,
>   						   chunk_size, PAGE_SIZE);
>   
> -			err = vm->allocate_va_range(vm, offset, chunk_size);
> -			if (err)
> -				goto end;
> -
>   			memset32(result, STACK_MAGIC, PAGE_SIZE / sizeof(u32));
>   
>   			vma = i915_vma_instance(bbe, vm, NULL);
> @@ -1904,6 +1908,14 @@ static int igt_cs_tlb(void *arg)
>   			if (err)
>   				goto end;
>   
> +			err = i915_vm_alloc_pt_stash(vm, &stash, chunk_size);
> +			if (err)
> +				goto end;
> +
> +			vm->allocate_va_range(vm, &stash, offset, chunk_size);
> +
> +			i915_vm_free_pt_stash(vm, &stash);
> +
>   			/* Prime the TLB with the dummy pages */
>   			for (i = 0; i < count; i++) {
>   				vma->node.start = offset + i * PAGE_SIZE;
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
> index b173086411ef..5e4fb0fba34b 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
> @@ -38,14 +38,14 @@ static void mock_insert_entries(struct i915_address_space *vm,
>   {
>   }
>   
> -static int mock_bind_ppgtt(struct i915_address_space *vm,
> -			   struct i915_vma *vma,
> -			   enum i915_cache_level cache_level,
> -			   u32 flags)
> +static void mock_bind_ppgtt(struct i915_address_space *vm,
> +			    struct i915_vm_pt_stash *stash,
> +			    struct i915_vma *vma,
> +			    enum i915_cache_level cache_level,
> +			    u32 flags)
>   {
>   	GEM_BUG_ON(flags & I915_VMA_GLOBAL_BIND);
>   	set_bit(I915_VMA_LOCAL_BIND_BIT, __i915_vma_flags(vma));
> -	return 0;
>   }
>   
>   static void mock_unbind_ppgtt(struct i915_address_space *vm,
> @@ -74,6 +74,7 @@ struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
>   	ppgtt->vm.i915 = i915;
>   	ppgtt->vm.total = round_down(U64_MAX, PAGE_SIZE);
>   	ppgtt->vm.file = ERR_PTR(-ENODEV);
> +	ppgtt->vm.dma = &i915->drm.pdev->dev;
>   
>   	i915_address_space_init(&ppgtt->vm, VM_CLASS_PPGTT);
>   
> @@ -90,13 +91,12 @@ struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
>   	return ppgtt;
>   }
>   
> -static int mock_bind_ggtt(struct i915_address_space *vm,
> -			  struct i915_vma *vma,
> -			  enum i915_cache_level cache_level,
> -			  u32 flags)
> +static void mock_bind_ggtt(struct i915_address_space *vm,
> +			   struct i915_vm_pt_stash *stash,
> +			   struct i915_vma *vma,
> +			   enum i915_cache_level cache_level,
> +			   u32 flags)
>   {
> -	atomic_or(I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND, &vma->flags);
> -	return 0;
>   }
>   
>   static void mock_unbind_ggtt(struct i915_address_space *vm,
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
