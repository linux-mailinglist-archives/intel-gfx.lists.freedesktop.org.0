Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C45A7486730
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 17:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B55910F102;
	Thu,  6 Jan 2022 16:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9EF110F102;
 Thu,  6 Jan 2022 16:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641484875; x=1673020875;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=YqvOyOJxRpUmfVCNzu+SusEVIrobeEjwp6eAKh6vcG4=;
 b=kffaBeN2EK/+OsXrfeLBqqENyqPYszmICQblIvsePr9xRh/TcPXNrUDv
 g3+sfTAiK/dY+W8BEH+yO2BLRY60mHMZoqzJtwFNubNHBfbPzig/9ORJ+
 2TsQiCwARBiAusJlXp5SjzOk+fwsD7PjFsToPm4sfNcqENIfTYVGTMV+h
 spY1ObnX68AVCWh30QQZQ3+sPcdicO0KoK+aIHQQMpAnP2zhIsldC9m18
 Gi2CmMfEMi6V8c80nGJQyog+7piRtNRoMFg36TWcJLzl4BGSqrRqOVgJ1
 EYK6ApSpKXeGoGs20iSzUnYsvm66oW/rC6FnQrygR3Kkcv56n0kSWbzlp Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="229492085"
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="229492085"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 08:01:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="761194929"
Received: from lsgoh-mobl1.gar.corp.intel.com (HELO [10.249.65.184])
 ([10.249.65.184])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 08:01:09 -0800
Message-ID: <52feaa00-65bf-426a-40a9-62c3d0d190b4@intel.com>
Date: Thu, 6 Jan 2022 16:01:04 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-GB
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20220104125132.35179-1-thomas.hellstrom@linux.intel.com>
 <20220104125132.35179-3-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220104125132.35179-3-thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v5 2/6] drm/i915: Use the vma resource as
 argument for gtt binding / unbinding
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 04/01/2022 12:51, Thomas Hellström wrote:
> When introducing asynchronous unbinding, the vma itself may no longer
> be alive when the actual binding or unbinding takes place.
> 
> Update the gtt i915_vma_ops accordingly to take a struct i915_vma_resource
> instead of a struct i915_vma for the bind_vma() and unbind_vma() ops.
> Similarly change the insert_entries() op for struct i915_address_space.
> 
> Replace a couple of i915_vma_snapshot members with their newly introduced
> i915_vma_resource counterparts, since they have the same lifetime.
> 
> Also make sure to avoid changing the struct i915_vma_flags (in particular
> the bind flags) async. That should now only be done sync under the
> vm mutex.
> 
> v2:
> - Update the vma_res::bound_flags when binding to the aliased ggtt
> 
> Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dpt.c      | 27 ++---
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  | 27 +----
>   .../gpu/drm/i915/gem/selftests/huge_pages.c   | 37 +++----
>   drivers/gpu/drm/i915/gt/gen6_ppgtt.c          | 19 ++--
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 37 +++----
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  4 +-
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          | 70 ++++++-------
>   drivers/gpu/drm/i915/gt/intel_gtt.h           | 16 +--
>   drivers/gpu/drm/i915/gt/intel_ppgtt.c         | 22 +++--
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      | 13 ++-
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      |  2 +-
>   drivers/gpu/drm/i915/i915_debugfs.c           |  3 +-
>   drivers/gpu/drm/i915/i915_gpu_error.c         |  6 +-
>   drivers/gpu/drm/i915/i915_vma.c               | 24 ++++-
>   drivers/gpu/drm/i915/i915_vma.h               | 11 +--
>   drivers/gpu/drm/i915/i915_vma_resource.c      |  9 +-
>   drivers/gpu/drm/i915/i915_vma_resource.h      | 99 ++++++++++++++++++-
>   drivers/gpu/drm/i915/i915_vma_snapshot.c      |  4 -
>   drivers/gpu/drm/i915/i915_vma_snapshot.h      |  8 --
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 64 ++++++++----
>   drivers/gpu/drm/i915/selftests/mock_gtt.c     | 12 +--
>   21 files changed, 308 insertions(+), 206 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> index 8f674745e7e0..63a83d5f85a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -48,7 +48,7 @@ static void dpt_insert_page(struct i915_address_space *vm,
>   }
>   
>   static void dpt_insert_entries(struct i915_address_space *vm,
> -			       struct i915_vma *vma,
> +			       struct i915_vma_resource *vma_res,
>   			       enum i915_cache_level level,
>   			       u32 flags)
>   {
> @@ -64,8 +64,8 @@ static void dpt_insert_entries(struct i915_address_space *vm,
>   	 * not to allow the user to override access to a read only page.
>   	 */
>   
> -	i = vma->node.start / I915_GTT_PAGE_SIZE;
> -	for_each_sgt_daddr(addr, sgt_iter, vma->pages)
> +	i = vma_res->start / I915_GTT_PAGE_SIZE;
> +	for_each_sgt_daddr(addr, sgt_iter, vma_res->bi.pages)
>   		gen8_set_pte(&base[i++], pte_encode | addr);
>   }
>   
> @@ -76,35 +76,38 @@ static void dpt_clear_range(struct i915_address_space *vm,
>   
>   static void dpt_bind_vma(struct i915_address_space *vm,
>   			 struct i915_vm_pt_stash *stash,
> -			 struct i915_vma *vma,
> +			 struct i915_vma_resource *vma_res,
>   			 enum i915_cache_level cache_level,
>   			 u32 flags)
>   {
> -	struct drm_i915_gem_object *obj = vma->obj;
>   	u32 pte_flags;
>   
> +	if (vma_res->bound_flags)
> +		return;
> +
>   	/* Applicable to VLV (gen8+ do not support RO in the GGTT) */
>   	pte_flags = 0;
> -	if (vma->vm->has_read_only && i915_gem_object_is_readonly(obj))
> +	if (vm->has_read_only && vma_res->bi.readonly)
>   		pte_flags |= PTE_READ_ONLY;
> -	if (i915_gem_object_is_lmem(obj))
> +	if (vma_res->bi.lmem)
>   		pte_flags |= PTE_LM;
>   
> -	vma->vm->insert_entries(vma->vm, vma, cache_level, pte_flags);
> +	vm->insert_entries(vm, vma_res, cache_level, pte_flags);
>   
> -	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
> +	vma_res->page_sizes_gtt = I915_GTT_PAGE_SIZE;
>   
>   	/*
>   	 * Without aliasing PPGTT there's no difference between
>   	 * GLOBAL/LOCAL_BIND, it's all the same ptes. Hence unconditionally
>   	 * upgrade to both bound if we bind either to avoid double-binding.
>   	 */
> -	atomic_or(I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND, &vma->flags);
> +	vma_res->bound_flags = I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
>   }
>   
> -static void dpt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
> +static void dpt_unbind_vma(struct i915_address_space *vm,
> +			   struct i915_vma_resource *vma_res)
>   {
> -	vm->clear_range(vm, vma->node.start, vma->size);
> +	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
>   }
>   
>   static void dpt_cleanup(struct i915_address_space *vm)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index f9f7e44099fe..f99d260e0684 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -15,6 +15,7 @@
>   
>   #include "i915_active.h"
>   #include "i915_selftest.h"
> +#include "i915_vma_resource.h"
>   
>   struct drm_i915_gem_object;
>   struct intel_fronbuffer;
> @@ -549,31 +550,7 @@ struct drm_i915_gem_object {
>   		struct sg_table *pages;
>   		void *mapping;
>   
> -		struct i915_page_sizes {
> -			/**
> -			 * The sg mask of the pages sg_table. i.e the mask of
> -			 * of the lengths for each sg entry.
> -			 */
> -			unsigned int phys;
> -
> -			/**
> -			 * The gtt page sizes we are allowed to use given the
> -			 * sg mask and the supported page sizes. This will
> -			 * express the smallest unit we can use for the whole
> -			 * object, as well as the larger sizes we may be able
> -			 * to use opportunistically.
> -			 */
> -			unsigned int sg;
> -
> -			/**
> -			 * The actual gtt page size usage. Since we can have
> -			 * multiple vma associated with this object we need to
> -			 * prevent any trampling of state, hence a copy of this
> -			 * struct also lives in each vma, therefore the gtt
> -			 * value here should only be read/write through the vma.
> -			 */
> -			unsigned int gtt;
> -		} page_sizes;
> +		struct i915_page_sizes page_sizes;
>   
>   		I915_SELFTEST_DECLARE(unsigned int page_mask);
>   
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index 11f0aa65f8a3..26f997c376a2 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -370,9 +370,9 @@ static int igt_check_page_sizes(struct i915_vma *vma)
>   		err = -EINVAL;
>   	}
>   
> -	if (!HAS_PAGE_SIZES(i915, vma->page_sizes.gtt)) {
> +	if (!HAS_PAGE_SIZES(i915, vma->resource->page_sizes_gtt)) {
>   		pr_err("unsupported page_sizes.gtt=%u, supported=%u\n",
> -		       vma->page_sizes.gtt & ~supported, supported);
> +		       vma->resource->page_sizes_gtt & ~supported, supported);
>   		err = -EINVAL;
>   	}
>   
> @@ -403,15 +403,9 @@ static int igt_check_page_sizes(struct i915_vma *vma)
>   	if (i915_gem_object_is_lmem(obj) &&
>   	    IS_ALIGNED(vma->node.start, SZ_2M) &&
>   	    vma->page_sizes.sg & SZ_2M &&
> -	    vma->page_sizes.gtt < SZ_2M) {
> +	    vma->resource->page_sizes_gtt < SZ_2M) {
>   		pr_err("gtt pages mismatch for LMEM, expected 2M GTT pages, sg(%u), gtt(%u)\n",
> -		       vma->page_sizes.sg, vma->page_sizes.gtt);
> -		err = -EINVAL;
> -	}
> -
> -	if (obj->mm.page_sizes.gtt) {
> -		pr_err("obj->page_sizes.gtt(%u) should never be set\n",
> -		       obj->mm.page_sizes.gtt);
> +		       vma->page_sizes.sg, vma->resource->page_sizes_gtt);
>   		err = -EINVAL;
>   	}
>   
> @@ -547,9 +541,9 @@ static int igt_mock_memory_region_huge_pages(void *arg)
>   				goto out_unpin;
>   			}
>   
> -			if (vma->page_sizes.gtt != page_size) {
> +			if (vma->resource->page_sizes_gtt != page_size) {
>   				pr_err("%s page_sizes.gtt=%u, expected=%u\n",
> -				       __func__, vma->page_sizes.gtt,
> +				       __func__, vma->resource->page_sizes_gtt,
>   				       page_size);
>   				err = -EINVAL;
>   				goto out_unpin;
> @@ -630,9 +624,9 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
>   
>   		err = igt_check_page_sizes(vma);
>   
> -		if (vma->page_sizes.gtt != page_size) {
> +		if (vma->resource->page_sizes_gtt != page_size) {
>   			pr_err("page_sizes.gtt=%u, expected %u\n",
> -			       vma->page_sizes.gtt, page_size);
> +			       vma->resource->page_sizes_gtt, page_size);
>   			err = -EINVAL;
>   		}
>   
> @@ -657,9 +651,10 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
>   
>   			err = igt_check_page_sizes(vma);
>   
> -			if (vma->page_sizes.gtt != I915_GTT_PAGE_SIZE_4K) {
> +			if (vma->resource->page_sizes_gtt != I915_GTT_PAGE_SIZE_4K) {
>   				pr_err("page_sizes.gtt=%u, expected %llu\n",
> -				       vma->page_sizes.gtt, I915_GTT_PAGE_SIZE_4K);
> +				       vma->resource->page_sizes_gtt,
> +				       I915_GTT_PAGE_SIZE_4K);
>   				err = -EINVAL;
>   			}
>   
> @@ -805,9 +800,9 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
>   			}
>   		}
>   
> -		if (vma->page_sizes.gtt != expected_gtt) {
> +		if (vma->resource->page_sizes_gtt != expected_gtt) {
>   			pr_err("gtt=%u, expected=%u, size=%zd, single=%s\n",
> -			       vma->page_sizes.gtt, expected_gtt,
> +			       vma->resource->page_sizes_gtt, expected_gtt,
>   			       obj->base.size, yesno(!!single));
>   			err = -EINVAL;
>   			break;
> @@ -961,10 +956,10 @@ static int igt_mock_ppgtt_64K(void *arg)
>   				}
>   			}
>   
> -			if (vma->page_sizes.gtt != expected_gtt) {
> +			if (vma->resource->page_sizes_gtt != expected_gtt) {
>   				pr_err("gtt=%u, expected=%u, i=%d, single=%s\n",
> -				       vma->page_sizes.gtt, expected_gtt, i,
> -				       yesno(!!single));
> +				       vma->resource->page_sizes_gtt,
> +				       expected_gtt, i, yesno(!!single));
>   				err = -EINVAL;
>   				goto out_vma_unpin;
>   			}
> diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> index 6e9292918bfc..d657ffd6c86a 100644
> --- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> @@ -104,17 +104,17 @@ static void gen6_ppgtt_clear_range(struct i915_address_space *vm,
>   }
>   
>   static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
> -				      struct i915_vma *vma,
> +				      struct i915_vma_resource *vma_res,
>   				      enum i915_cache_level cache_level,
>   				      u32 flags)
>   {
>   	struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
>   	struct i915_page_directory * const pd = ppgtt->pd;
> -	unsigned int first_entry = vma->node.start / I915_GTT_PAGE_SIZE;
> +	unsigned int first_entry = vma_res->start / I915_GTT_PAGE_SIZE;
>   	unsigned int act_pt = first_entry / GEN6_PTES;
>   	unsigned int act_pte = first_entry % GEN6_PTES;
>   	const u32 pte_encode = vm->pte_encode(0, cache_level, flags);
> -	struct sgt_dma iter = sgt_dma(vma);
> +	struct sgt_dma iter = sgt_dma(vma_res);
>   	gen6_pte_t *vaddr;
>   
>   	GEM_BUG_ON(!pd->entry[act_pt]);
> @@ -140,7 +140,7 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
>   		}
>   	} while (1);
>   
> -	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
> +	vma_res->page_sizes_gtt = I915_GTT_PAGE_SIZE;
>   }
>   
>   static void gen6_flush_pd(struct gen6_ppgtt *ppgtt, u64 start, u64 end)
> @@ -271,13 +271,13 @@ static void gen6_ppgtt_cleanup(struct i915_address_space *vm)
>   
>   static void pd_vma_bind(struct i915_address_space *vm,
>   			struct i915_vm_pt_stash *stash,
> -			struct i915_vma *vma,
> +			struct i915_vma_resource *vma_res,
>   			enum i915_cache_level cache_level,
>   			u32 unused)
>   {
>   	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> -	struct gen6_ppgtt *ppgtt = vma->private;
> -	u32 ggtt_offset = i915_ggtt_offset(vma) / I915_GTT_PAGE_SIZE;
> +	struct gen6_ppgtt *ppgtt = vma_res->private;
> +	u32 ggtt_offset = vma_res->start / I915_GTT_PAGE_SIZE;
>   
>   	ppgtt->pp_dir = ggtt_offset * sizeof(gen6_pte_t) << 10;
>   	ppgtt->pd_addr = (gen6_pte_t __iomem *)ggtt->gsm + ggtt_offset;
> @@ -285,9 +285,10 @@ static void pd_vma_bind(struct i915_address_space *vm,
>   	gen6_flush_pd(ppgtt, 0, ppgtt->base.vm.total);
>   }
>   
> -static void pd_vma_unbind(struct i915_address_space *vm, struct i915_vma *vma)
> +static void pd_vma_unbind(struct i915_address_space *vm,
> +			  struct i915_vma_resource *vma_res)
>   {
> -	struct gen6_ppgtt *ppgtt = vma->private;
> +	struct gen6_ppgtt *ppgtt = vma_res->private;
>   	struct i915_page_directory * const pd = ppgtt->base.pd;
>   	struct i915_page_table *pt;
>   	unsigned int pde;
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index b012c50f7ce7..c43e724afa9f 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -453,20 +453,21 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
>   	return idx;
>   }
>   
> -static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
> +static void gen8_ppgtt_insert_huge(struct i915_address_space *vm,
> +				   struct i915_vma_resource *vma_res,
>   				   struct sgt_dma *iter,
>   				   enum i915_cache_level cache_level,
>   				   u32 flags)
>   {
>   	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
>   	unsigned int rem = sg_dma_len(iter->sg);
> -	u64 start = vma->node.start;
> +	u64 start = vma_res->start;
>   
> -	GEM_BUG_ON(!i915_vm_is_4lvl(vma->vm));
> +	GEM_BUG_ON(!i915_vm_is_4lvl(vm));
>   
>   	do {
>   		struct i915_page_directory * const pdp =
> -			gen8_pdp_for_page_address(vma->vm, start);
> +			gen8_pdp_for_page_address(vm, start);
>   		struct i915_page_directory * const pd =
>   			i915_pd_entry(pdp, __gen8_pte_index(start, 2));
>   		gen8_pte_t encode = pte_encode;
> @@ -475,7 +476,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
>   		gen8_pte_t *vaddr;
>   		u16 index;
>   
> -		if (vma->page_sizes.sg & I915_GTT_PAGE_SIZE_2M &&
> +		if (vma_res->bi.page_sizes.sg & I915_GTT_PAGE_SIZE_2M &&
>   		    IS_ALIGNED(iter->dma, I915_GTT_PAGE_SIZE_2M) &&
>   		    rem >= I915_GTT_PAGE_SIZE_2M &&
>   		    !__gen8_pte_index(start, 0)) {
> @@ -492,7 +493,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
>   			page_size = I915_GTT_PAGE_SIZE;
>   
>   			if (!index &&
> -			    vma->page_sizes.sg & I915_GTT_PAGE_SIZE_64K &&
> +			    vma_res->bi.page_sizes.sg & I915_GTT_PAGE_SIZE_64K &&
>   			    IS_ALIGNED(iter->dma, I915_GTT_PAGE_SIZE_64K) &&
>   			    (IS_ALIGNED(rem, I915_GTT_PAGE_SIZE_64K) ||
>   			     rem >= (I915_PDES - index) * I915_GTT_PAGE_SIZE))
> @@ -541,9 +542,9 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
>   		 */
>   		if (maybe_64K != -1 &&
>   		    (index == I915_PDES ||
> -		     (i915_vm_has_scratch_64K(vma->vm) &&
> -		      !iter->sg && IS_ALIGNED(vma->node.start +
> -					      vma->node.size,
> +		     (i915_vm_has_scratch_64K(vm) &&
> +		      !iter->sg && IS_ALIGNED(vma_res->start +
> +					      vma_res->node_size,
>   					      I915_GTT_PAGE_SIZE_2M)))) {
>   			vaddr = px_vaddr(pd);
>   			vaddr[maybe_64K] |= GEN8_PDE_IPS_64K;
> @@ -559,10 +560,10 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
>   			 * instead - which we detect as missing results during
>   			 * selftests.
>   			 */
> -			if (I915_SELFTEST_ONLY(vma->vm->scrub_64K)) {
> +			if (I915_SELFTEST_ONLY(vm->scrub_64K)) {
>   				u16 i;
>   
> -				encode = vma->vm->scratch[0]->encode;
> +				encode = vm->scratch[0]->encode;
>   				vaddr = px_vaddr(i915_pt_entry(pd, maybe_64K));
>   
>   				for (i = 1; i < index; i += 16)
> @@ -572,22 +573,22 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
>   			}
>   		}
>   
> -		vma->page_sizes.gtt |= page_size;
> +		vma_res->page_sizes_gtt |= page_size;
>   	} while (iter->sg && sg_dma_len(iter->sg));
>   }
>   
>   static void gen8_ppgtt_insert(struct i915_address_space *vm,
> -			      struct i915_vma *vma,
> +			      struct i915_vma_resource *vma_res,
>   			      enum i915_cache_level cache_level,
>   			      u32 flags)
>   {
>   	struct i915_ppgtt * const ppgtt = i915_vm_to_ppgtt(vm);
> -	struct sgt_dma iter = sgt_dma(vma);
> +	struct sgt_dma iter = sgt_dma(vma_res);
>   
> -	if (vma->page_sizes.sg > I915_GTT_PAGE_SIZE) {
> -		gen8_ppgtt_insert_huge(vma, &iter, cache_level, flags);
> +	if (vma_res->bi.page_sizes.sg > I915_GTT_PAGE_SIZE) {
> +		gen8_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
>   	} else  {
> -		u64 idx = vma->node.start >> GEN8_PTE_SHIFT;
> +		u64 idx = vma_res->start >> GEN8_PTE_SHIFT;
>   
>   		do {
>   			struct i915_page_directory * const pdp =
> @@ -597,7 +598,7 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
>   						    cache_level, flags);
>   		} while (idx);
>   
> -		vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
> +		vma_res->page_sizes_gtt = I915_GTT_PAGE_SIZE;
>   	}
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 352254e001b4..74aa90587061 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1718,8 +1718,8 @@ static void print_request_ring(struct drm_printer *m, struct i915_request *rq)
>   	drm_printf(m,
>   		   "[head %04x, postfix %04x, tail %04x, batch 0x%08x_%08x]:\n",
>   		   rq->head, rq->postfix, rq->tail,
> -		   vsnap ? upper_32_bits(vsnap->gtt_offset) : ~0u,
> -		   vsnap ? lower_32_bits(vsnap->gtt_offset) : ~0u);
> +		   vsnap ? upper_32_bits(vsnap->vma_resource->start) : ~0u,
> +		   vsnap ? lower_32_bits(vsnap->vma_resource->start) : ~0u);
>   
>   	size = rq->tail - rq->head;
>   	if (rq->tail < rq->head)
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 5263dda7f8d5..0137b6af0973 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -235,7 +235,7 @@ static void gen8_ggtt_insert_page(struct i915_address_space *vm,
>   }
>   
>   static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
> -				     struct i915_vma *vma,
> +				     struct i915_vma_resource *vma_res,
>   				     enum i915_cache_level level,
>   				     u32 flags)
>   {
> @@ -252,10 +252,10 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>   	 */
>   
>   	gte = (gen8_pte_t __iomem *)ggtt->gsm;
> -	gte += vma->node.start / I915_GTT_PAGE_SIZE;
> -	end = gte + vma->node.size / I915_GTT_PAGE_SIZE;
> +	gte += vma_res->start / I915_GTT_PAGE_SIZE;
> +	end = gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
>   
> -	for_each_sgt_daddr(addr, iter, vma->pages)
> +	for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
>   		gen8_set_pte(gte++, pte_encode | addr);
>   	GEM_BUG_ON(gte > end);
>   
> @@ -292,7 +292,7 @@ static void gen6_ggtt_insert_page(struct i915_address_space *vm,
>    * through the GMADR mapped BAR (i915->mm.gtt->gtt).
>    */
>   static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
> -				     struct i915_vma *vma,
> +				     struct i915_vma_resource *vma_res,
>   				     enum i915_cache_level level,
>   				     u32 flags)
>   {
> @@ -303,10 +303,10 @@ static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
>   	dma_addr_t addr;
>   
>   	gte = (gen6_pte_t __iomem *)ggtt->gsm;
> -	gte += vma->node.start / I915_GTT_PAGE_SIZE;
> -	end = gte + vma->node.size / I915_GTT_PAGE_SIZE;
> +	gte += vma_res->start / I915_GTT_PAGE_SIZE;
> +	end = gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
>   
> -	for_each_sgt_daddr(addr, iter, vma->pages)
> +	for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
>   		iowrite32(vm->pte_encode(addr, level, flags), gte++);
>   	GEM_BUG_ON(gte > end);
>   
> @@ -389,7 +389,7 @@ static void bxt_vtd_ggtt_insert_page__BKL(struct i915_address_space *vm,
>   
>   struct insert_entries {
>   	struct i915_address_space *vm;
> -	struct i915_vma *vma;
> +	struct i915_vma_resource *vma_res;
>   	enum i915_cache_level level;
>   	u32 flags;
>   };
> @@ -398,18 +398,18 @@ static int bxt_vtd_ggtt_insert_entries__cb(void *_arg)
>   {
>   	struct insert_entries *arg = _arg;
>   
> -	gen8_ggtt_insert_entries(arg->vm, arg->vma, arg->level, arg->flags);
> +	gen8_ggtt_insert_entries(arg->vm, arg->vma_res, arg->level, arg->flags);
>   	bxt_vtd_ggtt_wa(arg->vm);
>   
>   	return 0;
>   }
>   
>   static void bxt_vtd_ggtt_insert_entries__BKL(struct i915_address_space *vm,
> -					     struct i915_vma *vma,
> +					     struct i915_vma_resource *vma_res,
>   					     enum i915_cache_level level,
>   					     u32 flags)
>   {
> -	struct insert_entries arg = { vm, vma, level, flags };
> +	struct insert_entries arg = { vm, vma_res, level, flags };
>   
>   	stop_machine(bxt_vtd_ggtt_insert_entries__cb, &arg, NULL);
>   }
> @@ -448,14 +448,14 @@ static void i915_ggtt_insert_page(struct i915_address_space *vm,
>   }
>   
>   static void i915_ggtt_insert_entries(struct i915_address_space *vm,
> -				     struct i915_vma *vma,
> +				     struct i915_vma_resource *vma_res,
>   				     enum i915_cache_level cache_level,
>   				     u32 unused)
>   {
>   	unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>   		AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>   
> -	intel_gtt_insert_sg_entries(vma->pages, vma->node.start >> PAGE_SHIFT,
> +	intel_gtt_insert_sg_entries(vma_res->bi.pages, vma_res->start >> PAGE_SHIFT,
>   				    flags);
>   }
>   
> @@ -467,30 +467,32 @@ static void i915_ggtt_clear_range(struct i915_address_space *vm,
>   
>   static void ggtt_bind_vma(struct i915_address_space *vm,
>   			  struct i915_vm_pt_stash *stash,
> -			  struct i915_vma *vma,
> +			  struct i915_vma_resource *vma_res,
>   			  enum i915_cache_level cache_level,
>   			  u32 flags)
>   {
> -	struct drm_i915_gem_object *obj = vma->obj;
>   	u32 pte_flags;
>   
> -	if (i915_vma_is_bound(vma, ~flags & I915_VMA_BIND_MASK))
> +	if (vma_res->bound_flags & (~flags & I915_VMA_BIND_MASK))
>   		return;
>   
> +	vma_res->bound_flags |= flags;
> +
>   	/* Applicable to VLV (gen8+ do not support RO in the GGTT) */
>   	pte_flags = 0;
> -	if (i915_gem_object_is_readonly(obj))
> +	if (vma_res->bi.readonly)
>   		pte_flags |= PTE_READ_ONLY;
> -	if (i915_gem_object_is_lmem(obj))
> +	if (vma_res->bi.lmem)
>   		pte_flags |= PTE_LM;
>   
> -	vm->insert_entries(vm, vma, cache_level, pte_flags);
> -	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
> +	vm->insert_entries(vm, vma_res, cache_level, pte_flags);
> +	vma_res->page_sizes_gtt = I915_GTT_PAGE_SIZE;
>   }
>   
> -static void ggtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
> +static void ggtt_unbind_vma(struct i915_address_space *vm,
> +			    struct i915_vma_resource *vma_res)
>   {
> -	vm->clear_range(vm, vma->node.start, vma->size);
> +	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
>   }
>   
>   static int ggtt_reserve_guc_top(struct i915_ggtt *ggtt)
> @@ -623,7 +625,7 @@ static int init_ggtt(struct i915_ggtt *ggtt)
>   
>   static void aliasing_gtt_bind_vma(struct i915_address_space *vm,
>   				  struct i915_vm_pt_stash *stash,
> -				  struct i915_vma *vma,
> +				  struct i915_vma_resource *vma_res,
>   				  enum i915_cache_level cache_level,
>   				  u32 flags)
>   {
> @@ -631,25 +633,27 @@ static void aliasing_gtt_bind_vma(struct i915_address_space *vm,
>   
>   	/* Currently applicable only to VLV */
>   	pte_flags = 0;
> -	if (i915_gem_object_is_readonly(vma->obj))
> +	if (vma_res->bi.readonly)
>   		pte_flags |= PTE_READ_ONLY;
>   
>   	if (flags & I915_VMA_LOCAL_BIND)
>   		ppgtt_bind_vma(&i915_vm_to_ggtt(vm)->alias->vm,
> -			       stash, vma, cache_level, flags);
> +			       stash, vma_res, cache_level, flags);
>   
>   	if (flags & I915_VMA_GLOBAL_BIND)
> -		vm->insert_entries(vm, vma, cache_level, pte_flags);
> +		vm->insert_entries(vm, vma_res, cache_level, pte_flags);
> +
> +	vma_res->bound_flags |= flags;
>   }
>   
>   static void aliasing_gtt_unbind_vma(struct i915_address_space *vm,
> -				    struct i915_vma *vma)
> +				    struct i915_vma_resource *vma_res)
>   {
> -	if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
> -		vm->clear_range(vm, vma->node.start, vma->size);
> +	if (vma_res->bound_flags & I915_VMA_GLOBAL_BIND)
> +		vm->clear_range(vm, vma_res->start, vma_res->vma_size);
>   
> -	if (i915_vma_is_bound(vma, I915_VMA_LOCAL_BIND))
> -		ppgtt_unbind_vma(&i915_vm_to_ggtt(vm)->alias->vm, vma);
> +	if (vma_res->bound_flags & I915_VMA_LOCAL_BIND)
> +		ppgtt_unbind_vma(&i915_vm_to_ggtt(vm)->alias->vm, vma_res);
>   }
>   
>   static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
> @@ -1280,7 +1284,7 @@ bool i915_ggtt_resume_vm(struct i915_address_space *vm)
>   			atomic_read(&vma->flags) & I915_VMA_BIND_MASK;
>   
>   		GEM_BUG_ON(!was_bound);
> -		vma->ops->bind_vma(vm, NULL, vma,
> +		vma->ops->bind_vma(vm, NULL, vma->resource,
>   				   obj ? obj->cache_level : 0,
>   				   was_bound);
>   		if (obj) { /* only used during resume => exclusive access */
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 177b42b935a1..676b839d1a34 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -27,6 +27,7 @@
>   
>   #include "gt/intel_reset.h"
>   #include "i915_selftest.h"
> +#include "i915_vma_resource.h"
>   #include "i915_vma_types.h"
>   
>   #define I915_GFP_ALLOW_FAIL (GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
> @@ -200,7 +201,7 @@ struct i915_vma_ops {
>   	/* Map an object into an address space with the given cache flags. */
>   	void (*bind_vma)(struct i915_address_space *vm,
>   			 struct i915_vm_pt_stash *stash,
> -			 struct i915_vma *vma,
> +			 struct i915_vma_resource *vma_res,
>   			 enum i915_cache_level cache_level,
>   			 u32 flags);
>   	/*
> @@ -208,7 +209,8 @@ struct i915_vma_ops {
>   	 * setting the valid PTE entries to a reserved scratch page.
>   	 */
>   	void (*unbind_vma)(struct i915_address_space *vm,
> -			   struct i915_vma *vma);
> +			   struct i915_vma_resource *vma_res);
> +
>   };
>   
>   struct i915_address_space {
> @@ -285,7 +287,7 @@ struct i915_address_space {
>   			    enum i915_cache_level cache_level,
>   			    u32 flags);
>   	void (*insert_entries)(struct i915_address_space *vm,
> -			       struct i915_vma *vma,
> +			       struct i915_vma_resource *vma_res,
>   			       enum i915_cache_level cache_level,
>   			       u32 flags);
>   	void (*cleanup)(struct i915_address_space *vm);
> @@ -600,11 +602,11 @@ void gen6_ggtt_invalidate(struct i915_ggtt *ggtt);
>   
>   void ppgtt_bind_vma(struct i915_address_space *vm,
>   		    struct i915_vm_pt_stash *stash,
> -		    struct i915_vma *vma,
> +		    struct i915_vma_resource *vma_res,
>   		    enum i915_cache_level cache_level,
>   		    u32 flags);
>   void ppgtt_unbind_vma(struct i915_address_space *vm,
> -		      struct i915_vma *vma);
> +		      struct i915_vma_resource *vma_res);
>   
>   void gtt_write_workarounds(struct intel_gt *gt);
>   
> @@ -627,8 +629,8 @@ __vm_create_scratch_for_read_pinned(struct i915_address_space *vm, unsigned long
>   static inline struct sgt_dma {
>   	struct scatterlist *sg;
>   	dma_addr_t dma, max;
> -} sgt_dma(struct i915_vma *vma) {
> -	struct scatterlist *sg = vma->pages->sgl;
> +} sgt_dma(struct i915_vma_resource *vma_res) {
> +	struct scatterlist *sg = vma_res->bi.pages->sgl;
>   	dma_addr_t addr = sg_dma_address(sg);
>   
>   	return (struct sgt_dma){ sg, addr, addr + sg_dma_len(sg) };
> diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> index 083b3090c69c..48e6e2f87700 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> @@ -179,32 +179,34 @@ struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt,
>   
>   void ppgtt_bind_vma(struct i915_address_space *vm,
>   		    struct i915_vm_pt_stash *stash,
> -		    struct i915_vma *vma,
> +		    struct i915_vma_resource *vma_res,
>   		    enum i915_cache_level cache_level,
>   		    u32 flags)
>   {
>   	u32 pte_flags;
>   
> -	if (!test_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma))) {
> -		vm->allocate_va_range(vm, stash, vma->node.start, vma->size);
> -		set_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma));
> +	if (!vma_res->allocated) {
> +		vm->allocate_va_range(vm, stash, vma_res->start,
> +				      vma_res->vma_size);
> +		vma_res->allocated = true;
>   	}
>   
>   	/* Applicable to VLV, and gen8+ */
>   	pte_flags = 0;
> -	if (i915_gem_object_is_readonly(vma->obj))
> +	if (vma_res->bi.readonly)
>   		pte_flags |= PTE_READ_ONLY;
> -	if (i915_gem_object_is_lmem(vma->obj))
> +	if (vma_res->bi.lmem)
>   		pte_flags |= PTE_LM;
>   
> -	vm->insert_entries(vm, vma, cache_level, pte_flags);
> +	vm->insert_entries(vm, vma_res, cache_level, pte_flags);
>   	wmb();
>   }
>   
> -void ppgtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
> +void ppgtt_unbind_vma(struct i915_address_space *vm,
> +		      struct i915_vma_resource *vma_res)
>   {
> -	if (test_and_clear_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma)))

Can we remove ALLOC_BIT? Or are there still users?

> -		vm->clear_range(vm, vma->node.start, vma->size);
> +	if (vma_res->allocated)
> +		vm->clear_range(vm, vma_res->start, vma_res->vma_size);
>   }
>   
>   static unsigned long pd_count(u64 size, int shift)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index a5af05bde6f2..777fc6f0ceff 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -448,20 +448,19 @@ static void uc_fw_bind_ggtt(struct intel_uc_fw *uc_fw)
>   {
>   	struct drm_i915_gem_object *obj = uc_fw->obj;
>   	struct i915_ggtt *ggtt = __uc_fw_to_gt(uc_fw)->ggtt;
> -	struct i915_vma *dummy = &uc_fw->dummy;
> +	struct i915_vma_resource *dummy = &uc_fw->dummy;
>   	u32 pte_flags = 0;
>   
> -	dummy->node.start = uc_fw_ggtt_offset(uc_fw);
> -	dummy->node.size = obj->base.size;
> -	dummy->pages = obj->mm.pages;
> -	dummy->vm = &ggtt->vm;
> +	dummy->start = uc_fw_ggtt_offset(uc_fw);
> +	dummy->node_size = obj->base.size;
> +	dummy->bi.pages = obj->mm.pages;
>   
>   	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
> -	GEM_BUG_ON(dummy->node.size > ggtt->uc_fw.size);
> +	GEM_BUG_ON(dummy->node_size > ggtt->uc_fw.size);
>   
>   	/* uc_fw->obj cache domains were not controlled across suspend */
>   	if (i915_gem_object_has_struct_page(obj))
> -		drm_clflush_sg(dummy->pages);
> +		drm_clflush_sg(dummy->bi.pages);
>   
>   	if (i915_gem_object_is_lmem(obj))
>   		pte_flags |= PTE_LM;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> index d9d1dc0b4cbb..3229018877d3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> @@ -85,7 +85,7 @@ struct intel_uc_fw {
>   	 * threaded as it done during driver load (inherently single threaded)
>   	 * or during a GT reset (mutex guarantees single threaded).
>   	 */
> -	struct i915_vma dummy;
> +	struct i915_vma_resource dummy;
>   	struct i915_vma *rsa_data;
>   
>   	/*
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index e0e052cdf8b8..f7d1feba5aa4 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -170,7 +170,8 @@ i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
>   		seq_printf(m, " (%s offset: %08llx, size: %08llx, pages: %s",
>   			   stringify_vma_type(vma),
>   			   vma->node.start, vma->node.size,
> -			   stringify_page_sizes(vma->page_sizes.gtt, NULL, 0));
> +			   stringify_page_sizes(vma->resource->page_sizes_gtt,
> +						NULL, 0));
>   		if (i915_vma_is_ggtt(vma) || i915_vma_is_dpt(vma)) {
>   			switch (vma->ggtt_view.type) {
>   			case I915_GGTT_VIEW_NORMAL:
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 5ae812d60abe..1af54ff374f9 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1040,9 +1040,9 @@ i915_vma_coredump_create(const struct intel_gt *gt,
>   	strcpy(dst->name, vsnap->name);
>   	dst->next = NULL;
>   
> -	dst->gtt_offset = vsnap->gtt_offset;
> -	dst->gtt_size = vsnap->gtt_size;
> -	dst->gtt_page_sizes = vsnap->page_sizes;
> +	dst->gtt_offset = vsnap->vma_resource->start;
> +	dst->gtt_size = vsnap->vma_resource->node_size;
> +	dst->gtt_page_sizes = vsnap->vma_resource->page_sizes_gtt;
>   	dst->unused = 0;
>   
>   	ret = -EINVAL;
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 7097c5016431..1d4e448d22d9 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -298,7 +298,7 @@ static void __vma_bind(struct dma_fence_work *work)
>   	struct i915_vma *vma = vw->vma;
>   
>   	vma->ops->bind_vma(vw->vm, &vw->stash,
> -			   vma, vw->cache_level, vw->flags);
> +			   vma->resource, vw->cache_level, vw->flags);
>   }
>   
>   static void __vma_release(struct dma_fence_work *work)
> @@ -375,6 +375,21 @@ static int i915_vma_verify_bind_complete(struct i915_vma *vma)
>   #define i915_vma_verify_bind_complete(_vma) 0
>   #endif
>   
> +I915_SELFTEST_EXPORT void
> +i915_vma_resource_init_from_vma(struct i915_vma_resource *vma_res,
> +				struct i915_vma *vma)
> +{
> +	struct drm_i915_gem_object *obj = vma->obj;
> +
> +	i915_vma_resource_init(vma_res, vma->pages, &vma->page_sizes,
> +			       i915_gem_object_is_readonly(obj),
> +			       i915_gem_object_is_lmem(obj),
> +			       vma->private,
> +			       vma->node.start,
> +			       vma->node.size,
> +			       vma->size);
> +}
> +
>   /**
>    * i915_vma_bind - Sets up PTEs for an VMA in it's corresponding address space.
>    * @vma: VMA to map
> @@ -432,7 +447,7 @@ int i915_vma_bind(struct i915_vma *vma,
>   		GEM_WARN_ON(!vma_flags);
>   		kfree(vma_res);
>   	} else {
> -		i915_vma_resource_init(vma_res);
> +		i915_vma_resource_init_from_vma(vma_res, vma);
>   		vma->resource = vma_res;
>   	}
>   	trace_i915_vma_bind(vma, bind_flags);
> @@ -472,7 +487,8 @@ int i915_vma_bind(struct i915_vma *vma,
>   			if (ret)
>   				return ret;
>   		}
> -		vma->ops->bind_vma(vma->vm, NULL, vma, cache_level, bind_flags);
> +		vma->ops->bind_vma(vma->vm, NULL, vma->resource, cache_level,
> +				   bind_flags);
>   	}
>   
>   	atomic_or(bind_flags, &vma->flags);
> @@ -1778,7 +1794,7 @@ void __i915_vma_evict(struct i915_vma *vma)
>   
>   	if (likely(atomic_read(&vma->vm->open))) {
>   		trace_i915_vma_unbind(vma);
> -		vma->ops->unbind_vma(vma->vm, vma);
> +		vma->ops->unbind_vma(vma->vm, vma->resource);
>   	}
>   	atomic_and(~(I915_VMA_BIND_MASK | I915_VMA_ERROR | I915_VMA_GGTT_WRITE),
>   		   &vma->flags);
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index de0f3e44cdfa..1df57ec832bd 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -339,12 +339,6 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma);
>    */
>   void i915_vma_unpin_iomap(struct i915_vma *vma);
>   
> -static inline struct page *i915_vma_first_page(struct i915_vma *vma)
> -{
> -	GEM_BUG_ON(!vma->pages);
> -	return sg_page(vma->pages->sgl);
> -}
> -
>   /**
>    * i915_vma_pin_fence - pin fencing state
>    * @vma: vma to pin fencing for
> @@ -445,6 +439,11 @@ i915_vma_get_current_resource(struct i915_vma *vma)
>   	return i915_vma_resource_get(vma->resource);
>   }
>   
> +#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> +void i915_vma_resource_init_from_vma(struct i915_vma_resource *vma_res,
> +				     struct i915_vma *vma);
> +#endif
> +
>   void i915_vma_module_exit(void);
>   int i915_vma_module_init(void);
>   
> diff --git a/drivers/gpu/drm/i915/i915_vma_resource.c b/drivers/gpu/drm/i915/i915_vma_resource.c
> index 833e987bed2a..c86db89ab5d2 100644
> --- a/drivers/gpu/drm/i915/i915_vma_resource.c
> +++ b/drivers/gpu/drm/i915/i915_vma_resource.c
> @@ -23,15 +23,12 @@ static struct dma_fence_ops unbind_fence_ops = {
>   };
>   
>   /**
> - * i915_vma_resource_init - Initialize a vma resource.
> + * __i915_vma_resource_init - Initialize a vma resource.
>    * @vma_res: The vma resource to initialize
>    *
> - * Initializes a vma resource allocated using i915_vma_resource_alloc().
> - * The reason for having separate allocate and initialize function is that
> - * initialization may need to be performed from under a lock where
> - * allocation is not allowed.
> + * Initializes the private members of a vma resource.
>    */
> -void i915_vma_resource_init(struct i915_vma_resource *vma_res)
> +void __i915_vma_resource_init(struct i915_vma_resource *vma_res)
>   {
>   	spin_lock_init(&vma_res->lock);
>   	dma_fence_init(&vma_res->unbind_fence, &unbind_fence_ops,
> diff --git a/drivers/gpu/drm/i915/i915_vma_resource.h b/drivers/gpu/drm/i915/i915_vma_resource.h
> index 34744da23072..9872de58268b 100644
> --- a/drivers/gpu/drm/i915/i915_vma_resource.h
> +++ b/drivers/gpu/drm/i915/i915_vma_resource.h
> @@ -9,6 +9,25 @@
>   #include <linux/dma-fence.h>
>   #include <linux/refcount.h>
>   
> +#include "i915_gem.h"
> +
> +struct i915_page_sizes {
> +	/**
> +	 * The sg mask of the pages sg_table. i.e the mask of
> +	 * the lengths for each sg entry.
> +	 */
> +	unsigned int phys;
> +
> +	/**
> +	 * The gtt page sizes we are allowed to use given the
> +	 * sg mask and the supported page sizes. This will
> +	 * express the smallest unit we can use for the whole
> +	 * object, as well as the larger sizes we may be able
> +	 * to use opportunistically.
> +	 */
> +	unsigned int sg;
> +};
> +
>   /**
>    * struct i915_vma_resource - Snapshotted unbind information.
>    * @unbind_fence: Fence to mark unbinding complete. Note that this fence
> @@ -20,6 +39,13 @@
>    * @hold_count: Number of holders blocking the fence from finishing.
>    * The vma itself is keeping a hold, which is released when unbind
>    * is scheduled.
> + * @private: Bind backend private info.
> + * @start: Offset into the address space of bind range start.
> + * @node_size: Size of the allocated range manager node.
> + * @vma_size: Bind size.
> + * @page_sizes_gtt: Resulting page sizes from the bind operation.
> + * @bound_flags: Flags indicating binding status.
> + * @allocated: Backend private data. TODO: Should move into @private.
>    *
>    * The lifetime of a struct i915_vma_resource is from a binding request to
>    * the actual possible asynchronous unbind has completed.
> @@ -29,6 +55,32 @@ struct i915_vma_resource {
>   	/* See above for description of the lock. */
>   	spinlock_t lock;
>   	refcount_t hold_count;
> +
> +	/**
> +	 * struct i915_vma_bindinfo - Information needed for async bind
> +	 * only but that can be dropped after the bind has taken place.
> +	 * Consider making this a separate argument to the bind_vma
> +	 * op, coalescing with other arguments like vm, stash, cache_level
> +	 * and flags
> +	 * @pages: The pages sg-table.
> +	 * @page_sizes: Page sizes of the pages.
> +	 * @readonly: Whether the vma should be bound read-only.
> +	 * @lmem: Whether the vma points to lmem.
> +	 */
> +	struct i915_vma_bindinfo {
> +		struct sg_table *pages;
> +		struct i915_page_sizes page_sizes;
> +		bool readonly:1;
> +		bool lmem:1;
> +	} bi;
> +
> +	void *private;
> +	unsigned long start;
> +	unsigned long node_size;
> +	unsigned long vma_size;

AFAIK these need to be u64, or at least the node_size & start.

Otherwise,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> +	u32 page_sizes_gtt;
> +	u32 bound_flags;
> +	bool allocated:1;
>   };
>   
>   bool i915_vma_resource_hold(struct i915_vma_resource *vma_res,
> @@ -41,6 +93,8 @@ struct i915_vma_resource *i915_vma_resource_alloc(void);
>   
>   struct dma_fence *i915_vma_resource_unbind(struct i915_vma_resource *vma_res);
>   
> +void __i915_vma_resource_init(struct i915_vma_resource *vma_res);
> +
>   /**
>    * i915_vma_resource_get - Take a reference on a vma resource
>    * @vma_res: The vma resource on which to take a reference.
> @@ -63,8 +117,47 @@ static inline void i915_vma_resource_put(struct i915_vma_resource *vma_res)
>   	dma_fence_put(&vma_res->unbind_fence);
>   }
>   
> -#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> -void i915_vma_resource_init(struct i915_vma_resource *vma_res);
> -#endif
> +/**
> + * i915_vma_resource_init - Initialize a vma resource.
> + * @vma_res: The vma resource to initialize
> + * @pages: The pages sg-table.
> + * @page_sizes: Page sizes of the pages.
> + * @readonly: Whether the vma should be bound read-only.
> + * @lmem: Whether the vma points to lmem.
> + * @private: Bind backend private info.
> + * @start: Offset into the address space of bind range start.
> + * @node_size: Size of the allocated range manager node.
> + * @size: Bind size.
> + *
> + * Initializes a vma resource allocated using i915_vma_resource_alloc().
> + * The reason for having separate allocate and initialize function is that
> + * initialization may need to be performed from under a lock where
> + * allocation is not allowed.
> + */
> +static inline void i915_vma_resource_init(struct i915_vma_resource *vma_res,
> +					  struct sg_table *pages,
> +					  const struct i915_page_sizes *page_sizes,
> +					  bool readonly,
> +					  bool lmem,
> +					  void *private,
> +					  unsigned long start,
> +					  unsigned long node_size,
> +					  unsigned long size)
> +{
> +	__i915_vma_resource_init(vma_res);
> +	vma_res->bi.pages = pages;
> +	vma_res->bi.page_sizes = *page_sizes;
> +	vma_res->bi.readonly = readonly;
> +	vma_res->bi.lmem = lmem;
> +	vma_res->private = private;
> +	vma_res->start = start;
> +	vma_res->node_size = node_size;
> +	vma_res->vma_size = size;
> +}
> +
> +static inline void i915_vma_resource_fini(struct i915_vma_resource *vma_res)
> +{
> +	GEM_BUG_ON(refcount_read(&vma_res->hold_count) != 1);
> +}
>   
>   #endif
> diff --git a/drivers/gpu/drm/i915/i915_vma_snapshot.c b/drivers/gpu/drm/i915/i915_vma_snapshot.c
> index f7333c7a2f5e..69f62c1ca967 100644
> --- a/drivers/gpu/drm/i915/i915_vma_snapshot.c
> +++ b/drivers/gpu/drm/i915/i915_vma_snapshot.c
> @@ -24,11 +24,7 @@ void i915_vma_snapshot_init(struct i915_vma_snapshot *vsnap,
>   		assert_object_held(vma->obj);
>   
>   	vsnap->name = name;
> -	vsnap->size = vma->size;
>   	vsnap->obj_size = vma->obj->base.size;
> -	vsnap->gtt_offset = vma->node.start;
> -	vsnap->gtt_size = vma->node.size;
> -	vsnap->page_sizes = vma->page_sizes.gtt;
>   	vsnap->pages = vma->pages;
>   	vsnap->pages_rsgt = NULL;
>   	vsnap->mr = NULL;
> diff --git a/drivers/gpu/drm/i915/i915_vma_snapshot.h b/drivers/gpu/drm/i915/i915_vma_snapshot.h
> index e74588dd676b..1b08ce9f8576 100644
> --- a/drivers/gpu/drm/i915/i915_vma_snapshot.h
> +++ b/drivers/gpu/drm/i915/i915_vma_snapshot.h
> @@ -23,31 +23,23 @@ struct sg_table;
>   
>   /**
>    * struct i915_vma_snapshot - Snapshot of vma metadata.
> - * @size: The vma size in bytes.
>    * @obj_size: The size of the underlying object in bytes.
> - * @gtt_offset: The gtt offset the vma is bound to.
> - * @gtt_size: The size in bytes allocated for the vma in the GTT.
>    * @pages: The struct sg_table pointing to the pages bound.
>    * @pages_rsgt: The refcounted sg_table holding the reference for @pages if any.
>    * @mr: The memory region pointed for the pages bound.
>    * @kref: Reference for this structure.
>    * @vma_resource: Pointer to the vma resource representing the vma binding.
> - * @page_sizes: The vma GTT page sizes information.
>    * @onstack: Whether the structure shouldn't be freed on final put.
>    * @present: Whether the structure is present and initialized.
>    */
>   struct i915_vma_snapshot {
>   	const char *name;
> -	size_t size;
>   	size_t obj_size;
> -	size_t gtt_offset;
> -	size_t gtt_size;
>   	struct sg_table *pages;
>   	struct i915_refct_sgt *pages_rsgt;
>   	struct intel_memory_region *mr;
>   	struct kref kref;
>   	struct i915_vma_resource *vma_resource;
> -	u32 page_sizes;
>   	bool onstack:1;
>   	bool present:1;
>   };
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index 54be880e55c3..70b5c47890b9 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -239,11 +239,11 @@ static int lowlevel_hole(struct i915_address_space *vm,
>   			 unsigned long end_time)
>   {
>   	I915_RND_STATE(seed_prng);
> -	struct i915_vma *mock_vma;
> +	struct i915_vma_resource *mock_vma_res;
>   	unsigned int size;
>   
> -	mock_vma = kzalloc(sizeof(*mock_vma), GFP_KERNEL);
> -	if (!mock_vma)
> +	mock_vma_res = kzalloc(sizeof(*mock_vma_res), GFP_KERNEL);
> +	if (!mock_vma_res)
>   		return -ENOMEM;
>   
>   	/* Keep creating larger objects until one cannot fit into the hole */
> @@ -269,7 +269,7 @@ static int lowlevel_hole(struct i915_address_space *vm,
>   				break;
>   		} while (count >>= 1);
>   		if (!count) {
> -			kfree(mock_vma);
> +			kfree(mock_vma_res);
>   			return -ENOMEM;
>   		}
>   		GEM_BUG_ON(!order);
> @@ -343,12 +343,12 @@ static int lowlevel_hole(struct i915_address_space *vm,
>   					break;
>   			}
>   
> -			mock_vma->pages = obj->mm.pages;
> -			mock_vma->node.size = BIT_ULL(size);
> -			mock_vma->node.start = addr;
> +			mock_vma_res->bi.pages = obj->mm.pages;
> +			mock_vma_res->node_size = BIT_ULL(size);
> +			mock_vma_res->start = addr;
>   
>   			with_intel_runtime_pm(vm->gt->uncore->rpm, wakeref)
> -				vm->insert_entries(vm, mock_vma,
> +			  vm->insert_entries(vm, mock_vma_res,
>   						   I915_CACHE_NONE, 0);
>   		}
>   		count = n;
> @@ -371,7 +371,7 @@ static int lowlevel_hole(struct i915_address_space *vm,
>   		cleanup_freed_objects(vm->i915);
>   	}
>   
> -	kfree(mock_vma);
> +	kfree(mock_vma_res);
>   	return 0;
>   }
>   
> @@ -1280,6 +1280,7 @@ static void track_vma_bind(struct i915_vma *vma)
>   	atomic_set(&vma->pages_count, I915_VMA_PAGES_ACTIVE);
>   	__i915_gem_object_pin_pages(obj);
>   	vma->pages = obj->mm.pages;
> +	vma->resource->bi.pages = vma->pages;
>   
>   	mutex_lock(&vma->vm->mutex);
>   	list_add_tail(&vma->vm_link, &vma->vm->bound_list);
> @@ -1354,7 +1355,7 @@ static int reserve_gtt_with_resource(struct i915_vma *vma, u64 offset)
>   				   obj->cache_level,
>   				   0);
>   	if (!err) {
> -		i915_vma_resource_init(vma_res);
> +		i915_vma_resource_init_from_vma(vma_res, vma);
>   		vma->resource = vma_res;
>   	} else {
>   		kfree(vma_res);
> @@ -1533,7 +1534,7 @@ static int insert_gtt_with_resource(struct i915_vma *vma)
>   	err = i915_gem_gtt_insert(vm, &vma->node, obj->base.size, 0,
>   				  obj->cache_level, 0, vm->total, 0);
>   	if (!err) {
> -		i915_vma_resource_init(vma_res);
> +		i915_vma_resource_init_from_vma(vma_res, vma);
>   		vma->resource = vma_res;
>   	} else {
>   		kfree(vma_res);
> @@ -1958,6 +1959,7 @@ static int igt_cs_tlb(void *arg)
>   			struct i915_vm_pt_stash stash = {};
>   			struct i915_request *rq;
>   			struct i915_gem_ww_ctx ww;
> +			struct i915_vma_resource *vma_res;
>   			u64 offset;
>   
>   			offset = igt_random_offset(&prng,
> @@ -1978,6 +1980,13 @@ static int igt_cs_tlb(void *arg)
>   			if (err)
>   				goto end;
>   
> +			vma_res = i915_vma_resource_alloc();
> +			if (IS_ERR(vma_res)) {
> +				i915_vma_put_pages(vma);
> +				err = PTR_ERR(vma_res);
> +				goto end;
> +			}
> +
>   			i915_gem_ww_ctx_init(&ww, false);
>   retry:
>   			err = i915_vm_lock_objects(vm, &ww);
> @@ -1999,33 +2008,41 @@ static int igt_cs_tlb(void *arg)
>   					goto retry;
>   			}
>   			i915_gem_ww_ctx_fini(&ww);
> -			if (err)
> +			if (err) {
> +				kfree(vma_res);
>   				goto end;
> +			}
>   
> +			i915_vma_resource_init_from_vma(vma_res, vma);
>   			/* Prime the TLB with the dummy pages */
>   			for (i = 0; i < count; i++) {
> -				vma->node.start = offset + i * PAGE_SIZE;
> -				vm->insert_entries(vm, vma, I915_CACHE_NONE, 0);
> +				vma_res->start = offset + i * PAGE_SIZE;
> +				vm->insert_entries(vm, vma_res, I915_CACHE_NONE,
> +						   0);
>   
> -				rq = submit_batch(ce, vma->node.start);
> +				rq = submit_batch(ce, vma_res->start);
>   				if (IS_ERR(rq)) {
>   					err = PTR_ERR(rq);
> +					i915_vma_resource_fini(vma_res);
> +					kfree(vma_res);
>   					goto end;
>   				}
>   				i915_request_put(rq);
>   			}
> -
> +			i915_vma_resource_fini(vma_res);
>   			i915_vma_put_pages(vma);
>   
>   			err = context_sync(ce);
>   			if (err) {
>   				pr_err("%s: dummy setup timed out\n",
>   				       ce->engine->name);
> +				kfree(vma_res);
>   				goto end;
>   			}
>   
>   			vma = i915_vma_instance(act, vm, NULL);
>   			if (IS_ERR(vma)) {
> +				kfree(vma_res);
>   				err = PTR_ERR(vma);
>   				goto end;
>   			}
> @@ -2033,19 +2050,22 @@ static int igt_cs_tlb(void *arg)
>   			i915_gem_object_lock(act, NULL);
>   			err = i915_vma_get_pages(vma);
>   			i915_gem_object_unlock(act);
> -			if (err)
> +			if (err) {
> +				kfree(vma_res);
>   				goto end;
> +			}
>   
> +			i915_vma_resource_init_from_vma(vma_res, vma);
>   			/* Replace the TLB with target batches */
>   			for (i = 0; i < count; i++) {
>   				struct i915_request *rq;
>   				u32 *cs = batch + i * 64 / sizeof(*cs);
>   				u64 addr;
>   
> -				vma->node.start = offset + i * PAGE_SIZE;
> -				vm->insert_entries(vm, vma, I915_CACHE_NONE, 0);
> +				vma_res->start = offset + i * PAGE_SIZE;
> +				vm->insert_entries(vm, vma_res, I915_CACHE_NONE, 0);
>   
> -				addr = vma->node.start + i * 64;
> +				addr = vma_res->start + i * 64;
>   				cs[4] = MI_NOOP;
>   				cs[6] = lower_32_bits(addr);
>   				cs[7] = upper_32_bits(addr);
> @@ -2054,6 +2074,8 @@ static int igt_cs_tlb(void *arg)
>   				rq = submit_batch(ce, addr);
>   				if (IS_ERR(rq)) {
>   					err = PTR_ERR(rq);
> +					i915_vma_resource_fini(vma_res);
> +					kfree(vma_res);
>   					goto end;
>   				}
>   
> @@ -2070,6 +2092,8 @@ static int igt_cs_tlb(void *arg)
>   			}
>   			end_spin(batch, count - 1);
>   
> +			i915_vma_resource_fini(vma_res);
> +			kfree(vma_res);
>   			i915_vma_put_pages(vma);
>   
>   			err = context_sync(ce);
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
> index 1802baf80a17..d40519e3ca38 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
> @@ -33,23 +33,23 @@ static void mock_insert_page(struct i915_address_space *vm,
>   }
>   
>   static void mock_insert_entries(struct i915_address_space *vm,
> -				struct i915_vma *vma,
> +				struct i915_vma_resource *vma_res,
>   				enum i915_cache_level level, u32 flags)
>   {
>   }
>   
>   static void mock_bind_ppgtt(struct i915_address_space *vm,
>   			    struct i915_vm_pt_stash *stash,
> -			    struct i915_vma *vma,
> +			    struct i915_vma_resource *vma_res,
>   			    enum i915_cache_level cache_level,
>   			    u32 flags)
>   {
>   	GEM_BUG_ON(flags & I915_VMA_GLOBAL_BIND);
> -	set_bit(I915_VMA_LOCAL_BIND_BIT, __i915_vma_flags(vma));
> +	vma_res->bound_flags |= flags;
>   }
>   
>   static void mock_unbind_ppgtt(struct i915_address_space *vm,
> -			      struct i915_vma *vma)
> +			      struct i915_vma_resource *vma_res)
>   {
>   }
>   
> @@ -93,14 +93,14 @@ struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
>   
>   static void mock_bind_ggtt(struct i915_address_space *vm,
>   			   struct i915_vm_pt_stash *stash,
> -			   struct i915_vma *vma,
> +			   struct i915_vma_resource *vma_res,
>   			   enum i915_cache_level cache_level,
>   			   u32 flags)
>   {
>   }
>   
>   static void mock_unbind_ggtt(struct i915_address_space *vm,
> -			     struct i915_vma *vma)
> +			     struct i915_vma_resource *vma_res)
>   {
>   }
>   
> 
