Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9404F56BB6B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 16:01:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 022C510E3C7;
	Fri,  8 Jul 2022 14:01:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA99310E36C;
 Fri,  8 Jul 2022 14:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657288896; x=1688824896;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=T76eLmW2JmR60//YD3FXp0eyv0BMqo+O7qdzKuFCZu4=;
 b=EULO9Nxv6IICXaoiDsfEGYSDQtTxHXDMNBX9sSSuIAjd7bHkRSW/5IhJ
 XFlix5mnzNyn8Cc+BHIOwbAXUFnUX7FWxa2I7QFwliJfnDn2h0A3jK6Gi
 9sxK2QHmRwGJwdDkCPF94Y1/9PuSqeNR8j4Hxv3oa099U6D/BsSiEAidz
 SYcNedC0M6/EQrOrjKGC2ojHivPHRpUzrDQ0nDGRMbD5ylfEGwcRjf1r8
 PUKqEBjxoYq81fnU225fikQfD9t4Fug/hmcxHG8cQpYnUaezNpuKCVcBk
 TrpIvBfHwzn/1kJIhFuqLgr5L4MRxJD5b3XCkyYFgvijvwg+JsZ0VXKvl A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="309855612"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="309855612"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:01:35 -0700
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="770791256"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.2.48])
 ([10.252.2.48])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:01:34 -0700
Message-ID: <c3e2b652-4838-7b87-1bff-e2f82df9500e@linux.intel.com>
Date: Fri, 8 Jul 2022 16:01:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220708074157.557932-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220708074157.557932-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: fix sg_table construction
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/8/2022 9:41 AM, Matthew Auld wrote:
> If we encounter some monster sized local-memory page that exceeds the
> maximum sg length (UINT32_MAX), ensure that don't end up with some
> misaligned address in the entry that follows, leading to fireworks
> later. Also ensure we have some coverage of this in the selftests.
>
> v2(Chris): use round_down consistently to avoid udiv errors
>
> Fixes: f701b16d4cc5 ("drm/i915/ttm: add i915_sg_from_buddy_resource")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6379
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 11 +++++++++--
>   drivers/gpu/drm/i915/i915_scatterlist.c       | 19 +++++++++++++++----
>   drivers/gpu/drm/i915/i915_scatterlist.h       |  6 ++++--
>   drivers/gpu/drm/i915/intel_region_ttm.c       | 10 +++++++---
>   drivers/gpu/drm/i915/intel_region_ttm.h       |  3 ++-
>   .../drm/i915/selftests/intel_memory_region.c  | 17 ++++++++++++++++-
>   drivers/gpu/drm/i915/selftests/mock_region.c  |  3 ++-
>   7 files changed, 55 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 7e1f8b83077f..c5c8aa1f8558 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -602,10 +602,15 @@ i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
>   			 struct ttm_resource *res)
>   {
>   	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
> +	u64 page_alignment;
>   
>   	if (!i915_ttm_gtt_binds_lmem(res))
>   		return i915_ttm_tt_get_st(bo->ttm);
>   
> +	page_alignment = bo->page_alignment << PAGE_SHIFT;
> +	if (!page_alignment)
> +		page_alignment = obj->mm.region->min_page_size;
> +
>   	/*
>   	 * If CPU mapping differs, we need to add the ttm_tt pages to
>   	 * the resulting st. Might make sense for GGTT.
> @@ -616,7 +621,8 @@ i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
>   			struct i915_refct_sgt *rsgt;
>   
>   			rsgt = intel_region_ttm_resource_to_rsgt(obj->mm.region,
> -								 res);
> +								 res,
> +								 page_alignment);
>   			if (IS_ERR(rsgt))
>   				return rsgt;
>   
> @@ -625,7 +631,8 @@ i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
>   		return i915_refct_sgt_get(obj->ttm.cached_io_rsgt);
>   	}
>   
> -	return intel_region_ttm_resource_to_rsgt(obj->mm.region, res);
> +	return intel_region_ttm_resource_to_rsgt(obj->mm.region, res,
> +						 page_alignment);
>   }
>   
>   static int i915_ttm_truncate(struct drm_i915_gem_object *obj)
> diff --git a/drivers/gpu/drm/i915/i915_scatterlist.c b/drivers/gpu/drm/i915/i915_scatterlist.c
> index 159571b9bd24..f63b50b71e10 100644
> --- a/drivers/gpu/drm/i915/i915_scatterlist.c
> +++ b/drivers/gpu/drm/i915/i915_scatterlist.c
> @@ -68,6 +68,7 @@ void i915_refct_sgt_init(struct i915_refct_sgt *rsgt, size_t size)
>    * drm_mm_node
>    * @node: The drm_mm_node.
>    * @region_start: An offset to add to the dma addresses of the sg list.
> + * @page_alignment: Required page alignment for each sg entry. Power of two.
>    *
>    * Create a struct sg_table, initializing it from a struct drm_mm_node,
>    * taking a maximum segment length into account, splitting into segments
> @@ -77,15 +78,18 @@ void i915_refct_sgt_init(struct i915_refct_sgt *rsgt, size_t size)
>    * error code cast to an error pointer on failure.
>    */
>   struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
> -					      u64 region_start)
> +					      u64 region_start,
> +					      u64 page_alignment)
>   {
> -	const u64 max_segment = SZ_1G; /* Do we have a limit on this? */
> +	const u64 max_segment = round_down(UINT_MAX, page_alignment);
>   	u64 segment_pages = max_segment >> PAGE_SHIFT;
>   	u64 block_size, offset, prev_end;
>   	struct i915_refct_sgt *rsgt;
>   	struct sg_table *st;
>   	struct scatterlist *sg;
>   
> +	GEM_BUG_ON(!max_segment);
> +
>   	rsgt = kmalloc(sizeof(*rsgt), GFP_KERNEL);
>   	if (!rsgt)
>   		return ERR_PTR(-ENOMEM);
> @@ -112,6 +116,8 @@ struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
>   				sg = __sg_next(sg);
>   
>   			sg_dma_address(sg) = region_start + offset;
> +			GEM_BUG_ON(!IS_ALIGNED(sg_dma_address(sg),
> +					       page_alignment));
>   			sg_dma_len(sg) = 0;
>   			sg->length = 0;
>   			st->nents++;
> @@ -138,6 +144,7 @@ struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
>    * i915_buddy_block list
>    * @res: The struct i915_ttm_buddy_resource.
>    * @region_start: An offset to add to the dma addresses of the sg list.
> + * @page_alignment: Required page alignment for each sg entry. Power of two.
>    *
>    * Create a struct sg_table, initializing it from struct i915_buddy_block list,
>    * taking a maximum segment length into account, splitting into segments
> @@ -147,11 +154,12 @@ struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
>    * error code cast to an error pointer on failure.
>    */
>   struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
> -						     u64 region_start)
> +						     u64 region_start,
> +						     u64 page_alignment)
>   {
>   	struct i915_ttm_buddy_resource *bman_res = to_ttm_buddy_resource(res);
>   	const u64 size = res->num_pages << PAGE_SHIFT;
> -	const u64 max_segment = rounddown(UINT_MAX, PAGE_SIZE);
> +	const u64 max_segment = round_down(UINT_MAX, page_alignment);
>   	struct drm_buddy *mm = bman_res->mm;
>   	struct list_head *blocks = &bman_res->blocks;
>   	struct drm_buddy_block *block;
> @@ -161,6 +169,7 @@ struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
>   	resource_size_t prev_end;
>   
>   	GEM_BUG_ON(list_empty(blocks));
> +	GEM_BUG_ON(!max_segment);
>   
>   	rsgt = kmalloc(sizeof(*rsgt), GFP_KERNEL);
>   	if (!rsgt)
> @@ -191,6 +200,8 @@ struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
>   					sg = __sg_next(sg);
>   
>   				sg_dma_address(sg) = region_start + offset;
> +				GEM_BUG_ON(!IS_ALIGNED(sg_dma_address(sg),
> +						       page_alignment));
>   				sg_dma_len(sg) = 0;
>   				sg->length = 0;
>   				st->nents++;
> diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
> index 12c6a1684081..b13e4cdea923 100644
> --- a/drivers/gpu/drm/i915/i915_scatterlist.h
> +++ b/drivers/gpu/drm/i915/i915_scatterlist.h
> @@ -213,9 +213,11 @@ static inline void __i915_refct_sgt_init(struct i915_refct_sgt *rsgt,
>   void i915_refct_sgt_init(struct i915_refct_sgt *rsgt, size_t size);
>   
>   struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
> -					      u64 region_start);
> +					      u64 region_start,
> +					      u64 page_alignment);
>   
>   struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
> -						     u64 region_start);
> +						     u64 region_start,
> +						     u64 page_alignment);
>   
>   #endif
> diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i915/intel_region_ttm.c
> index 62ff77445b01..6873808a7015 100644
> --- a/drivers/gpu/drm/i915/intel_region_ttm.c
> +++ b/drivers/gpu/drm/i915/intel_region_ttm.c
> @@ -152,6 +152,7 @@ int intel_region_ttm_fini(struct intel_memory_region *mem)
>    * Convert an opaque TTM resource manager resource to a refcounted sg_table.
>    * @mem: The memory region.
>    * @res: The resource manager resource obtained from the TTM resource manager.
> + * @page_alignment: Required page alignment for each sg entry. Power of two.
>    *
>    * The gem backends typically use sg-tables for operations on the underlying
>    * io_memory. So provide a way for the backends to translate the
> @@ -161,16 +162,19 @@ int intel_region_ttm_fini(struct intel_memory_region *mem)
>    */
>   struct i915_refct_sgt *
>   intel_region_ttm_resource_to_rsgt(struct intel_memory_region *mem,
> -				  struct ttm_resource *res)
> +				  struct ttm_resource *res,
> +				  u64 page_alignment)
>   {
>   	if (mem->is_range_manager) {
>   		struct ttm_range_mgr_node *range_node =
>   			to_ttm_range_mgr_node(res);
>   
>   		return i915_rsgt_from_mm_node(&range_node->mm_nodes[0],
> -					      mem->region.start);
> +					      mem->region.start,
> +					      page_alignment);
>   	} else {
> -		return i915_rsgt_from_buddy_resource(res, mem->region.start);
> +		return i915_rsgt_from_buddy_resource(res, mem->region.start,
> +						     page_alignment);
>   	}
>   }
>   
> diff --git a/drivers/gpu/drm/i915/intel_region_ttm.h b/drivers/gpu/drm/i915/intel_region_ttm.h
> index cf9d86dcf409..98fba5155619 100644
> --- a/drivers/gpu/drm/i915/intel_region_ttm.h
> +++ b/drivers/gpu/drm/i915/intel_region_ttm.h
> @@ -24,7 +24,8 @@ int intel_region_ttm_fini(struct intel_memory_region *mem);
>   
>   struct i915_refct_sgt *
>   intel_region_ttm_resource_to_rsgt(struct intel_memory_region *mem,
> -				  struct ttm_resource *res);
> +				  struct ttm_resource *res,
> +				  u64 page_alignment);
>   
>   void intel_region_ttm_resource_free(struct intel_memory_region *mem,
>   				    struct ttm_resource *res);
> diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> index 73eb53edb8de..4e0069a87f15 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> @@ -460,7 +460,9 @@ static int igt_mock_max_segment(void *arg)
>   	struct drm_buddy *mm;
>   	struct list_head *blocks;
>   	struct scatterlist *sg;
> +	I915_RND_STATE(prng);
>   	LIST_HEAD(objects);
> +	unsigned int ps;
>   	u64 size;
>   	int err = 0;
>   
> @@ -472,7 +474,11 @@ static int igt_mock_max_segment(void *arg)
>   	 */
>   
>   	size = SZ_8G;
> -	mem = mock_region_create(i915, 0, size, PAGE_SIZE, 0, 0);
> +	ps = PAGE_SIZE;
> +	if (i915_prandom_u64_state(&prng) & 1)
> +		ps = SZ_64K; /* For something like DG2 */

Hi Matt,


shouldn't max_segment also need to be adjusted accordingly here?


Nirmoy

> +
> +	mem = mock_region_create(i915, 0, size, ps, 0, 0);
>   	if (IS_ERR(mem))
>   		return PTR_ERR(mem);
>   
> @@ -498,12 +504,21 @@ static int igt_mock_max_segment(void *arg)
>   	}
>   
>   	for (sg = obj->mm.pages->sgl; sg; sg = sg_next(sg)) {
> +		dma_addr_t daddr = sg_dma_address(sg);
> +
>   		if (sg->length > max_segment) {
>   			pr_err("%s: Created an oversized scatterlist entry, %u > %u\n",
>   			       __func__, sg->length, max_segment);
>   			err = -EINVAL;
>   			goto out_close;
>   		}
> +
> +		if (!IS_ALIGNED(daddr, ps)) {
> +			pr_err("%s: Created an unaligned scatterlist entry, addr=%pa, ps=%u\n",
> +			       __func__,  &daddr, ps);
> +			err = -EINVAL;
> +			goto out_close;
> +		}
>   	}
>   
>   out_close:
> diff --git a/drivers/gpu/drm/i915/selftests/mock_region.c b/drivers/gpu/drm/i915/selftests/mock_region.c
> index 670557ce1024..bac21fe84ca5 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_region.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_region.c
> @@ -33,7 +33,8 @@ static int mock_region_get_pages(struct drm_i915_gem_object *obj)
>   		return PTR_ERR(obj->mm.res);
>   
>   	obj->mm.rsgt = intel_region_ttm_resource_to_rsgt(obj->mm.region,
> -							 obj->mm.res);
> +							 obj->mm.res,
> +							 obj->mm.region->min_page_size);
>   	if (IS_ERR(obj->mm.rsgt)) {
>   		err = PTR_ERR(obj->mm.rsgt);
>   		goto err_free_resource;
