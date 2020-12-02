Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EB22CBAA7
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 11:38:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C396E9C7;
	Wed,  2 Dec 2020 10:38:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E4316E9C7
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 10:37:58 +0000 (UTC)
IronPort-SDR: TdoltD2cPhQNe8/pHeCgGFFjIh2CB2ib5eQSkwsmQwetjOwV1jnMzOAqKZalLRQ2x3n2c+wFC4
 dNO/dlRQ0rnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="160049953"
X-IronPort-AV: E=Sophos;i="5.78,386,1599548400"; d="scan'208";a="160049953"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 02:37:57 -0800
IronPort-SDR: VGWFVE9GPYF4OssM7iU9TDLr81mLLDGey0Mq59kUIPW1yqT6CE6DTG7AH9fmt6DZo7y9/HWr33
 2M29hpuCLJIA==
X-IronPort-AV: E=Sophos;i="5.78,386,1599548400"; d="scan'208";a="365248789"
Received: from jmbalfe-mobl.ger.corp.intel.com (HELO [10.252.22.175])
 ([10.252.22.175])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 02:37:56 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201201235847.1860-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <5414576b-1c48-fd69-62b6-0d90459d3e03@intel.com>
Date: Wed, 2 Dec 2020 10:37:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201201235847.1860-1-chris@chris-wilson.co.uk>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Limit lmem scatterlist
 elements to UINT_MAX
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

On 01/12/2020 23:58, Chris Wilson wrote:
> Adhere to the i915_sg_max_segment() limit on the lengths of individual
> scatterlist elements, and in doing so split up very large chunks of lmem
> into managable pieces for the dma-mapping backend.
> 
> Reported-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> Suggested-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_region.c | 42 ++++++++++++----------
>   1 file changed, 24 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> index e72d78074c9e..edb84072f979 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> @@ -22,6 +22,7 @@ i915_gem_object_put_pages_buddy(struct drm_i915_gem_object *obj,
>   int
>   i915_gem_object_get_pages_buddy(struct drm_i915_gem_object *obj)
>   {
> +	const u64 max_segment = i915_sg_segment_size();

I think we just need to add:

@@ -150,8 +150,8 @@ static int igt_mock_contiguous(void *arg)
         if (IS_ERR(obj))
                 return PTR_ERR(obj);

-       if (obj->mm.pages->nents != 1) {
-               pr_err("%s min object spans multiple sg entries\n", 
__func__);
+       if (!list_is_singular(&obj->mm.blocks)) {
+               pr_err("%s min object spans multiple blocks\n", __func__);
                 err = -EINVAL;
                 goto err_close_objects;
         }
@@ -163,8 +163,8 @@ static int igt_mock_contiguous(void *arg)
         if (IS_ERR(obj))
                 return PTR_ERR(obj);

-       if (obj->mm.pages->nents != 1) {
-               pr_err("%s max object spans multiple sg entries\n", 
__func__);
+       if (!list_is_singular(&obj->mm.blocks)) {
+               pr_err("%s max object spans multiple blocks\n", __func__);
                 err = -EINVAL;
                 goto err_close_objects;
         }
@@ -189,8 +189,8 @@ static int igt_mock_contiguous(void *arg)
                 goto err_close_objects;
         }

-       if (obj->mm.pages->nents != 1) {
-               pr_err("%s object spans multiple sg entries\n", __func__);
+       if (!list_is_singular(&obj->mm.blocks)) {
+               pr_err("%s object spans multiple blocks\n", __func__);
                 err = -EINVAL;
                 goto err_close_objects;
         }


Thanks for fixing this,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>


>   	struct intel_memory_region *mem = obj->mm.region;
>   	struct list_head *blocks = &obj->mm.blocks;
>   	resource_size_t size = obj->base.size;
> @@ -37,7 +38,7 @@ i915_gem_object_get_pages_buddy(struct drm_i915_gem_object *obj)
>   	if (!st)
>   		return -ENOMEM;
>   
> -	if (sg_alloc_table(st, size >> ilog2(mem->mm.chunk_size), GFP_KERNEL)) {
> +	if (sg_alloc_table(st, size >> PAGE_SHIFT, GFP_KERNEL)) {
>   		kfree(st);
>   		return -ENOMEM;
>   	}
> @@ -58,33 +59,38 @@ i915_gem_object_get_pages_buddy(struct drm_i915_gem_object *obj)
>   	prev_end = (resource_size_t)-1;
>   
>   	list_for_each_entry(block, blocks, link) {
> -		u64 block_size, offset;
> +		u64 block_size, offset, len;
>   
>   		block_size = min_t(u64, size,
>   				   i915_buddy_block_size(&mem->mm, block));
>   		offset = i915_buddy_block_offset(block);
>   
> -		GEM_BUG_ON(overflows_type(block_size, sg->length));
> +		while (block_size) {
> +			if (offset != prev_end || sg->length >= max_segment) {
> +				if (st->nents) {
> +					sg_page_sizes |= sg->length;
> +					sg = __sg_next(sg);
> +				}
>   
> -		if (offset != prev_end ||
> -		    add_overflows_t(typeof(sg->length), sg->length, block_size)) {
> -			if (st->nents) {
> -				sg_page_sizes |= sg->length;
> -				sg = __sg_next(sg);
> -			}
> +				len = min(block_size, max_segment);
>   
> -			sg_dma_address(sg) = mem->region.start + offset;
> -			sg_dma_len(sg) = block_size;
> +				sg_dma_address(sg) = mem->region.start + offset;
> +				sg_dma_len(sg) = len;
>   
> -			sg->length = block_size;
> +				sg->length = len;
>   
> -			st->nents++;
> -		} else {
> -			sg->length += block_size;
> -			sg_dma_len(sg) += block_size;
> -		}
> +				st->nents++;
> +			} else {
> +				len = min(block_size, max_segment - sg->length);
> +				sg->length += len;
> +				sg_dma_len(sg) += len;
> +			}
>   
> -		prev_end = offset + block_size;
> +			offset += len;
> +			block_size -= len;
> +
> +			prev_end = offset;
> +		}
>   	}
>   
>   	sg_page_sizes |= sg->length;
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
