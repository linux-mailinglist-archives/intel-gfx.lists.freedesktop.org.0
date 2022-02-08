Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 563604AD545
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 11:03:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA39510E6B7;
	Tue,  8 Feb 2022 10:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D54310E683;
 Tue,  8 Feb 2022 10:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644314627; x=1675850627;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=bceXopuRcx5RFdyHtNa497Pyw7P0zymgrXjlIhzZ/4A=;
 b=G80pLFhxS7VYRrJEZecszO1me78r1p6i6OMkY4821t3bPMNxRAul5YWQ
 Nu1750ADM7rN1WWOnjxWmb7Y4uOZl8UUbIoHg+8ZjvtFPLQk/NJC/O03D
 Cvc0mGvEm+Q7AidAZk33YgEfJ6U6Exj+UE3CnEXLqULF1FgDdEA79yESc
 3jqlORmm8CopgN3xlpbco8duL7U1Qrrh4u37LuBvT5Ezi4dFIHP6WWY4q
 CjFYm22QZTW6nMQ9uICGVUuog4Lb4+VWEd0oqpk1/2F2DZDtmt2Otkvbn
 5FAHcwVmHvkmAcCAhoxPJmf6pfSGzhPVBXYpMHQjREdn725E+shcA2boU A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="312213423"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="312213423"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 02:03:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="585140783"
Received: from amcgrat2-mobl1.ger.corp.intel.com (HELO [10.252.10.21])
 ([10.252.10.21])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 02:03:10 -0800
Message-ID: <b2b27a05-39e4-29a5-1a3a-117d3e4ae722@intel.com>
Date: Tue, 8 Feb 2022 10:03:08 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: Arunpravin <Arunpravin.PaneerSelvam@amd.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
References: <20220203133234.3350-1-Arunpravin.PaneerSelvam@amd.com>
 <20220203133234.3350-3-Arunpravin.PaneerSelvam@amd.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220203133234.3350-3-Arunpravin.PaneerSelvam@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/selftests: add drm buddy alloc
 range testcase
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
Cc: alexander.deucher@amd.com, tzimmermann@suse.de, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 03/02/2022 13:32, Arunpravin wrote:
> - add a test to check the range allocation
> - export get_buddy() function in drm_buddy.c
> - export drm_prandom_u32_max_state() in lib/drm_random.c
> - include helper functions
> - include prime number header file
> 
> Signed-off-by: Arunpravin <Arunpravin.PaneerSelvam@amd.com>
> ---
>   drivers/gpu/drm/drm_buddy.c                   |  20 +-
>   drivers/gpu/drm/lib/drm_random.c              |   3 +-
>   drivers/gpu/drm/lib/drm_random.h              |   2 +
>   .../gpu/drm/selftests/drm_buddy_selftests.h   |   1 +
>   drivers/gpu/drm/selftests/test-drm_buddy.c    | 390 ++++++++++++++++++
>   include/drm/drm_buddy.h                       |   3 +
>   6 files changed, 414 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_buddy.c b/drivers/gpu/drm/drm_buddy.c
> index 4845ef784b5e..501229d843c4 100644
> --- a/drivers/gpu/drm/drm_buddy.c
> +++ b/drivers/gpu/drm/drm_buddy.c
> @@ -211,7 +211,7 @@ static int split_block(struct drm_buddy *mm,
>   }
>   
>   static struct drm_buddy_block *
> -get_buddy(struct drm_buddy_block *block)
> +__get_buddy(struct drm_buddy_block *block)
>   {
>   	struct drm_buddy_block *parent;
>   
> @@ -225,6 +225,18 @@ get_buddy(struct drm_buddy_block *block)
>   	return parent->left;
>   }
>   
> +/**
> + * drm_get_buddy - get buddy address

Maybe add some more info here:

"Return the corresponding buddy block for @block, or NULL if this is a 
root block and can't be merged further. Requires some kind of locking to 
protect against any concurrent allocate and free operations."

?

Anyway,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>


> + *
> + * @block: DRM buddy block
> + */
> +struct drm_buddy_block *
> +drm_get_buddy(struct drm_buddy_block *block)
> +{
> +	return __get_buddy(block);
> +}
> +EXPORT_SYMBOL(drm_get_buddy);
> +
>   static void __drm_buddy_free(struct drm_buddy *mm,
>   			     struct drm_buddy_block *block)
>   {
> @@ -233,7 +245,7 @@ static void __drm_buddy_free(struct drm_buddy *mm,
>   	while ((parent = block->parent)) {
>   		struct drm_buddy_block *buddy;
>   
> -		buddy = get_buddy(block);
> +		buddy = __get_buddy(block);
>   
>   		if (!drm_buddy_block_is_free(buddy))
>   			break;
> @@ -361,7 +373,7 @@ alloc_range_bias(struct drm_buddy *mm,
>   	 * bigger is better, so make sure we merge everything back before we
>   	 * free the allocated blocks.
>   	 */
> -	buddy = get_buddy(block);
> +	buddy = __get_buddy(block);
>   	if (buddy &&
>   	    (drm_buddy_block_is_free(block) &&
>   	     drm_buddy_block_is_free(buddy)))
> @@ -500,7 +512,7 @@ static int __alloc_range(struct drm_buddy *mm,
>   	 * bigger is better, so make sure we merge everything back before we
>   	 * free the allocated blocks.
>   	 */
> -	buddy = get_buddy(block);
> +	buddy = __get_buddy(block);
>   	if (buddy &&
>   	    (drm_buddy_block_is_free(block) &&
>   	     drm_buddy_block_is_free(buddy)))
> diff --git a/drivers/gpu/drm/lib/drm_random.c b/drivers/gpu/drm/lib/drm_random.c
> index eeb155826d27..31b5a3e21911 100644
> --- a/drivers/gpu/drm/lib/drm_random.c
> +++ b/drivers/gpu/drm/lib/drm_random.c
> @@ -7,10 +7,11 @@
>   
>   #include "drm_random.h"
>   
> -static inline u32 drm_prandom_u32_max_state(u32 ep_ro, struct rnd_state *state)
> +u32 drm_prandom_u32_max_state(u32 ep_ro, struct rnd_state *state)
>   {
>   	return upper_32_bits((u64)prandom_u32_state(state) * ep_ro);
>   }
> +EXPORT_SYMBOL(drm_prandom_u32_max_state);
>   
>   void drm_random_reorder(unsigned int *order, unsigned int count,
>   			struct rnd_state *state)
> diff --git a/drivers/gpu/drm/lib/drm_random.h b/drivers/gpu/drm/lib/drm_random.h
> index 4a3e94dfa0c0..5543bf0474bc 100644
> --- a/drivers/gpu/drm/lib/drm_random.h
> +++ b/drivers/gpu/drm/lib/drm_random.h
> @@ -22,5 +22,7 @@ unsigned int *drm_random_order(unsigned int count,
>   void drm_random_reorder(unsigned int *order,
>   			unsigned int count,
>   			struct rnd_state *state);
> +u32 drm_prandom_u32_max_state(u32 ep_ro,
> +			      struct rnd_state *state);
>   
>   #endif /* !__DRM_RANDOM_H__ */
> diff --git a/drivers/gpu/drm/selftests/drm_buddy_selftests.h b/drivers/gpu/drm/selftests/drm_buddy_selftests.h
> index ebe16162762f..3230bfd2770b 100644
> --- a/drivers/gpu/drm/selftests/drm_buddy_selftests.h
> +++ b/drivers/gpu/drm/selftests/drm_buddy_selftests.h
> @@ -8,3 +8,4 @@
>    */
>   selftest(sanitycheck, igt_sanitycheck) /* keep first (selfcheck for igt) */
>   selftest(buddy_alloc_limit, igt_buddy_alloc_limit)
> +selftest(buddy_alloc_range, igt_buddy_alloc_range)
> diff --git a/drivers/gpu/drm/selftests/test-drm_buddy.c b/drivers/gpu/drm/selftests/test-drm_buddy.c
> index fd7d1a112458..e347060c05a2 100644
> --- a/drivers/gpu/drm/selftests/test-drm_buddy.c
> +++ b/drivers/gpu/drm/selftests/test-drm_buddy.c
> @@ -6,6 +6,7 @@
>   #define pr_fmt(fmt) "drm_buddy: " fmt
>   
>   #include <linux/module.h>
> +#include <linux/prime_numbers.h>
>   
>   #include <drm/drm_buddy.h>
>   
> @@ -16,6 +17,395 @@
>   
>   static unsigned int random_seed;
>   
> +static inline const char *yesno(bool v)
> +{
> +	return v ? "yes" : "no";
> +}
> +
> +static void __igt_dump_block(struct drm_buddy *mm,
> +			     struct drm_buddy_block *block,
> +			     bool buddy)
> +{
> +	pr_err("block info: header=%llx, state=%u, order=%d, offset=%llx size=%llx root=%s buddy=%s\n",
> +	       block->header,
> +	       drm_buddy_block_state(block),
> +	       drm_buddy_block_order(block),
> +	       drm_buddy_block_offset(block),
> +	       drm_buddy_block_size(mm, block),
> +	       yesno(!block->parent),
> +	       yesno(buddy));
> +}
> +
> +static void igt_dump_block(struct drm_buddy *mm,
> +			   struct drm_buddy_block *block)
> +{
> +	struct drm_buddy_block *buddy;
> +
> +	__igt_dump_block(mm, block, false);
> +
> +	buddy = drm_get_buddy(block);
> +	if (buddy)
> +		__igt_dump_block(mm, buddy, true);
> +}
> +
> +static int igt_check_block(struct drm_buddy *mm,
> +			   struct drm_buddy_block *block)
> +{
> +	struct drm_buddy_block *buddy;
> +	unsigned int block_state;
> +	u64 block_size;
> +	u64 offset;
> +	int err = 0;
> +
> +	block_state = drm_buddy_block_state(block);
> +
> +	if (block_state != DRM_BUDDY_ALLOCATED &&
> +	    block_state != DRM_BUDDY_FREE &&
> +	    block_state != DRM_BUDDY_SPLIT) {
> +		pr_err("block state mismatch\n");
> +		err = -EINVAL;
> +	}
> +
> +	block_size = drm_buddy_block_size(mm, block);
> +	offset = drm_buddy_block_offset(block);
> +
> +	if (block_size < mm->chunk_size) {
> +		pr_err("block size smaller than min size\n");
> +		err = -EINVAL;
> +	}
> +
> +	if (!is_power_of_2(block_size)) {
> +		pr_err("block size not power of two\n");
> +		err = -EINVAL;
> +	}
> +
> +	if (!IS_ALIGNED(block_size, mm->chunk_size)) {
> +		pr_err("block size not aligned to min size\n");
> +		err = -EINVAL;
> +	}
> +
> +	if (!IS_ALIGNED(offset, mm->chunk_size)) {
> +		pr_err("block offset not aligned to min size\n");
> +		err = -EINVAL;
> +	}
> +
> +	if (!IS_ALIGNED(offset, block_size)) {
> +		pr_err("block offset not aligned to block size\n");
> +		err = -EINVAL;
> +	}
> +
> +	buddy = drm_get_buddy(block);
> +
> +	if (!buddy && block->parent) {
> +		pr_err("buddy has gone fishing\n");
> +		err = -EINVAL;
> +	}
> +
> +	if (buddy) {
> +		if (drm_buddy_block_offset(buddy) != (offset ^ block_size)) {
> +			pr_err("buddy has wrong offset\n");
> +			err = -EINVAL;
> +		}
> +
> +		if (drm_buddy_block_size(mm, buddy) != block_size) {
> +			pr_err("buddy size mismatch\n");
> +			err = -EINVAL;
> +		}
> +
> +		if (drm_buddy_block_state(buddy) == block_state &&
> +		    block_state == DRM_BUDDY_FREE) {
> +			pr_err("block and its buddy are free\n");
> +			err = -EINVAL;
> +		}
> +	}
> +
> +	return err;
> +}
> +
> +static int igt_check_blocks(struct drm_buddy *mm,
> +			    struct list_head *blocks,
> +			    u64 expected_size,
> +			    bool is_contiguous)
> +{
> +	struct drm_buddy_block *block;
> +	struct drm_buddy_block *prev;
> +	u64 total;
> +	int err = 0;
> +
> +	block = NULL;
> +	prev = NULL;
> +	total = 0;
> +
> +	list_for_each_entry(block, blocks, link) {
> +		err = igt_check_block(mm, block);
> +
> +		if (!drm_buddy_block_is_allocated(block)) {
> +			pr_err("block not allocated\n"),
> +			       err = -EINVAL;
> +		}
> +
> +		if (is_contiguous && prev) {
> +			u64 prev_block_size;
> +			u64 prev_offset;
> +			u64 offset;
> +
> +			prev_offset = drm_buddy_block_offset(prev);
> +			prev_block_size = drm_buddy_block_size(mm, prev);
> +			offset = drm_buddy_block_offset(block);
> +
> +			if (offset != (prev_offset + prev_block_size)) {
> +				pr_err("block offset mismatch\n");
> +				err = -EINVAL;
> +			}
> +		}
> +
> +		if (err)
> +			break;
> +
> +		total += drm_buddy_block_size(mm, block);
> +		prev = block;
> +	}
> +
> +	if (!err) {
> +		if (total != expected_size) {
> +			pr_err("size mismatch, expected=%llx, found=%llx\n",
> +			       expected_size, total);
> +			err = -EINVAL;
> +		}
> +		return err;
> +	}
> +
> +	if (prev) {
> +		pr_err("prev block, dump:\n");
> +		igt_dump_block(mm, prev);
> +	}
> +
> +	pr_err("bad block, dump:\n");
> +	igt_dump_block(mm, block);
> +
> +	return err;
> +}
> +
> +static int igt_check_mm(struct drm_buddy *mm)
> +{
> +	struct drm_buddy_block *root;
> +	struct drm_buddy_block *prev;
> +	unsigned int i;
> +	u64 total;
> +	int err = 0;
> +
> +	if (!mm->n_roots) {
> +		pr_err("n_roots is zero\n");
> +		return -EINVAL;
> +	}
> +
> +	if (mm->n_roots != hweight64(mm->size)) {
> +		pr_err("n_roots mismatch, n_roots=%u, expected=%lu\n",
> +		       mm->n_roots, hweight64(mm->size));
> +		return -EINVAL;
> +	}
> +
> +	root = NULL;
> +	prev = NULL;
> +	total = 0;
> +
> +	for (i = 0; i < mm->n_roots; ++i) {
> +		struct drm_buddy_block *block;
> +		unsigned int order;
> +
> +		root = mm->roots[i];
> +		if (!root) {
> +			pr_err("root(%u) is NULL\n", i);
> +			err = -EINVAL;
> +			break;
> +		}
> +
> +		err = igt_check_block(mm, root);
> +
> +		if (!drm_buddy_block_is_free(root)) {
> +			pr_err("root not free\n");
> +			err = -EINVAL;
> +		}
> +
> +		order = drm_buddy_block_order(root);
> +
> +		if (!i) {
> +			if (order != mm->max_order) {
> +				pr_err("max order root missing\n");
> +				err = -EINVAL;
> +			}
> +		}
> +
> +		if (prev) {
> +			u64 prev_block_size;
> +			u64 prev_offset;
> +			u64 offset;
> +
> +			prev_offset = drm_buddy_block_offset(prev);
> +			prev_block_size = drm_buddy_block_size(mm, prev);
> +			offset = drm_buddy_block_offset(root);
> +
> +			if (offset != (prev_offset + prev_block_size)) {
> +				pr_err("root offset mismatch\n");
> +				err = -EINVAL;
> +			}
> +		}
> +
> +		block = list_first_entry_or_null(&mm->free_list[order],
> +						 struct drm_buddy_block,
> +						 link);
> +		if (block != root) {
> +			pr_err("root mismatch at order=%u\n", order);
> +			err = -EINVAL;
> +		}
> +
> +		if (err)
> +			break;
> +
> +		prev = root;
> +		total += drm_buddy_block_size(mm, root);
> +	}
> +
> +	if (!err) {
> +		if (total != mm->size) {
> +			pr_err("expected mm size=%llx, found=%llx\n", mm->size,
> +			       total);
> +			err = -EINVAL;
> +		}
> +		return err;
> +	}
> +
> +	if (prev) {
> +		pr_err("prev root(%u), dump:\n", i - 1);
> +		igt_dump_block(mm, prev);
> +	}
> +
> +	if (root) {
> +		pr_err("bad root(%u), dump:\n", i);
> +		igt_dump_block(mm, root);
> +	}
> +
> +	return err;
> +}
> +
> +static void igt_mm_config(u64 *size, u64 *chunk_size)
> +{
> +	DRM_RND_STATE(prng, random_seed);
> +	u32 s, ms;
> +
> +	/* Nothing fancy, just try to get an interesting bit pattern */
> +
> +	prandom_seed_state(&prng, random_seed);
> +
> +	/* Let size be a random number of pages up to 8 GB (2M pages) */
> +	s = 1 + drm_prandom_u32_max_state((BIT(33 - 12)) - 1, &prng);
> +	/* Let the chunk size be a random power of 2 less than size */
> +	ms = BIT(drm_prandom_u32_max_state(ilog2(s), &prng));
> +	/* Round size down to the chunk size */
> +	s &= -ms;
> +
> +	/* Convert from pages to bytes */
> +	*chunk_size = (u64)ms << 12;
> +	*size = (u64)s << 12;
> +}
> +
> +static int igt_buddy_alloc_range(void *arg)
> +{
> +	unsigned long flags = DRM_BUDDY_RANGE_ALLOCATION;
> +	u64 offset, size, rem, chunk_size, end;
> +	unsigned long page_num;
> +	struct drm_buddy mm;
> +	LIST_HEAD(blocks);
> +	int err;
> +
> +	igt_mm_config(&size, &chunk_size);
> +
> +	err = drm_buddy_init(&mm, size, chunk_size);
> +	if (err) {
> +		pr_err("buddy_init failed(%d)\n", err);
> +		return err;
> +	}
> +
> +	err = igt_check_mm(&mm);
> +	if (err) {
> +		pr_err("pre-mm check failed, abort, abort, abort!\n");
> +		goto err_fini;
> +	}
> +
> +	rem = mm.size;
> +	offset = 0;
> +
> +	for_each_prime_number_from(page_num, 1, ULONG_MAX - 1) {
> +		struct drm_buddy_block *block;
> +		LIST_HEAD(tmp);
> +
> +		size = min(page_num * mm.chunk_size, rem);
> +		end = offset + size;
> +
> +		err = drm_buddy_alloc_blocks(&mm, offset, end, size, mm.chunk_size, &tmp, flags);
> +		if (err) {
> +			if (err == -ENOMEM) {
> +				pr_info("alloc_range hit -ENOMEM with size=%llx\n",
> +					size);
> +			} else {
> +				pr_err("alloc_range with offset=%llx, size=%llx failed(%d)\n",
> +				       offset, size, err);
> +			}
> +
> +			break;
> +		}
> +
> +		block = list_first_entry_or_null(&tmp,
> +						 struct drm_buddy_block,
> +						 link);
> +		if (!block) {
> +			pr_err("alloc_range has no blocks\n");
> +			err = -EINVAL;
> +			break;
> +		}
> +
> +		if (drm_buddy_block_offset(block) != offset) {
> +			pr_err("alloc_range start offset mismatch, found=%llx, expected=%llx\n",
> +			       drm_buddy_block_offset(block), offset);
> +			err = -EINVAL;
> +		}
> +
> +		if (!err)
> +			err = igt_check_blocks(&mm, &tmp, size, true);
> +
> +		list_splice_tail(&tmp, &blocks);
> +
> +		if (err)
> +			break;
> +
> +		offset += size;
> +
> +		rem -= size;
> +		if (!rem)
> +			break;
> +
> +		cond_resched();
> +	}
> +
> +	if (err == -ENOMEM)
> +		err = 0;
> +
> +	drm_buddy_free_list(&mm, &blocks);
> +
> +	if (!err) {
> +		err = igt_check_mm(&mm);
> +		if (err)
> +			pr_err("post-mm check failed\n");
> +		else
> +			pr_info("%s - succeeded\n", __func__);
> +	}
> +
> +err_fini:
> +	drm_buddy_fini(&mm);
> +
> +	return err;
> +}
> +
>   static int igt_buddy_alloc_limit(void *arg)
>   {
>   	u64 end, size = U64_MAX, start = 0;
> diff --git a/include/drm/drm_buddy.h b/include/drm/drm_buddy.h
> index bd21f9dfd15e..572077ff8ae7 100644
> --- a/include/drm/drm_buddy.h
> +++ b/include/drm/drm_buddy.h
> @@ -134,6 +134,9 @@ int drm_buddy_init(struct drm_buddy *mm, u64 size, u64 chunk_size);
>   
>   void drm_buddy_fini(struct drm_buddy *mm);
>   
> +struct drm_buddy_block *
> +drm_get_buddy(struct drm_buddy_block *block);
> +
>   int drm_buddy_alloc_blocks(struct drm_buddy *mm,
>   			   u64 start, u64 end, u64 size,
>   			   u64 min_page_size,
