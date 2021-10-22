Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C31EA437B33
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 18:57:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 512E76EDAC;
	Fri, 22 Oct 2021 16:57:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 634AA6ED9E;
 Fri, 22 Oct 2021 16:57:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="292804898"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="292804898"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 09:57:03 -0700
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="445356201"
Received: from bkokkula-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 09:57:01 -0700
To: Ramalingam C <ramalingam.c@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, CQ Tang <cq.tang@intel.com>,
 lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Wilson Chris P <chris.p.wilson@intel.com>
References: <20211021142627.31058-1-ramalingam.c@intel.com>
 <20211021142627.31058-8-ramalingam.c@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <c279111a-7d64-5525-1b0a-d3cc2b3aef1c@intel.com>
Date: Fri, 22 Oct 2021 17:56:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20211021142627.31058-8-ramalingam.c@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 07/17] drm/i915: Add vm min alignment
 support
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

On 21/10/2021 15:26, Ramalingam C wrote:
> From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> 
> Replace the hard coded 4K alignment value with vm->min_alignment.
> 
> Cc: Wilson Chris P <chris.p.wilson@intel.com>
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>

Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Although likely want to squash patch patches 3, 7 and 8, as suggested by 
Chris.

> ---
>   .../i915/gem/selftests/i915_gem_client_blt.c  | 23 ++++++++++++-------
>   drivers/gpu/drm/i915/gt/intel_gtt.c           |  9 ++++++++
>   drivers/gpu/drm/i915/gt/intel_gtt.h           |  9 ++++++++
>   3 files changed, 33 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> index 8402ed925a69..6b9b861e43e5 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> @@ -39,6 +39,7 @@ struct tiled_blits {
>   	struct blit_buffer scratch;
>   	struct i915_vma *batch;
>   	u64 hole;
> +	u64 align;
>   	u32 width;
>   	u32 height;
>   };
> @@ -410,14 +411,21 @@ tiled_blits_create(struct intel_engine_cs *engine, struct rnd_state *prng)
>   		goto err_free;
>   	}
>   
> -	hole_size = 2 * PAGE_ALIGN(WIDTH * HEIGHT * 4);
> +	t->align = I915_GTT_PAGE_SIZE_2M; /* XXX worst case, derive from vm! */
> +	t->align = max(t->align,
> +		       i915_vm_min_alignment(t->ce->vm, INTEL_MEMORY_LOCAL));
> +	t->align = max(t->align,
> +		       i915_vm_min_alignment(t->ce->vm, INTEL_MEMORY_SYSTEM));
> +
> +	hole_size = 2 * round_up(WIDTH * HEIGHT * 4, t->align);
>   	hole_size *= 2; /* room to maneuver */
> -	hole_size += 2 * I915_GTT_MIN_ALIGNMENT;
> +	hole_size += 2 * t->align; /* padding on either side */
>   
>   	mutex_lock(&t->ce->vm->mutex);
>   	memset(&hole, 0, sizeof(hole));
>   	err = drm_mm_insert_node_in_range(&t->ce->vm->mm, &hole,
> -					  hole_size, 0, I915_COLOR_UNEVICTABLE,
> +					  hole_size, t->align,
> +					  I915_COLOR_UNEVICTABLE,
>   					  0, U64_MAX,
>   					  DRM_MM_INSERT_BEST);
>   	if (!err)
> @@ -428,7 +436,7 @@ tiled_blits_create(struct intel_engine_cs *engine, struct rnd_state *prng)
>   		goto err_put;
>   	}
>   
> -	t->hole = hole.start + I915_GTT_MIN_ALIGNMENT;
> +	t->hole = hole.start + t->align;
>   	pr_info("Using hole at %llx\n", t->hole);
>   
>   	err = tiled_blits_create_buffers(t, WIDTH, HEIGHT, prng);
> @@ -455,7 +463,7 @@ static void tiled_blits_destroy(struct tiled_blits *t)
>   static int tiled_blits_prepare(struct tiled_blits *t,
>   			       struct rnd_state *prng)
>   {
> -	u64 offset = PAGE_ALIGN(t->width * t->height * 4);
> +	u64 offset = round_up(t->width * t->height * 4, t->align);
>   	u32 *map;
>   	int err;
>   	int i;
> @@ -486,8 +494,7 @@ static int tiled_blits_prepare(struct tiled_blits *t,
>   
>   static int tiled_blits_bounce(struct tiled_blits *t, struct rnd_state *prng)
>   {
> -	u64 offset =
> -		round_up(t->width * t->height * 4, 2 * I915_GTT_MIN_ALIGNMENT);
> +	u64 offset = round_up(t->width * t->height * 4, 2 * t->align);
>   	int err;
>   
>   	/* We want to check position invariant tiling across GTT eviction */
> @@ -500,7 +507,7 @@ static int tiled_blits_bounce(struct tiled_blits *t, struct rnd_state *prng)
>   
>   	/* Reposition so that we overlap the old addresses, and slightly off */
>   	err = tiled_blit(t,
> -			 &t->buffers[2], t->hole + I915_GTT_MIN_ALIGNMENT,
> +			 &t->buffers[2], t->hole + t->align,
>   			 &t->buffers[1], t->hole + 3 * offset / 2);
>   	if (err)
>   		return err;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 56fbd37a6b54..4743921b7638 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -216,6 +216,15 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
>   
>   	GEM_BUG_ON(!vm->total);
>   	drm_mm_init(&vm->mm, 0, vm->total);
> +
> +	memset64(vm->min_alignment, I915_GTT_MIN_ALIGNMENT,
> +		 ARRAY_SIZE(vm->min_alignment));
> +
> +	if (HAS_64K_PAGES(vm->i915)) {
> +		vm->min_alignment[INTEL_MEMORY_LOCAL] = I915_GTT_PAGE_SIZE_64K;
> +		vm->min_alignment[INTEL_MEMORY_STOLEN_LOCAL] = I915_GTT_PAGE_SIZE_64K;
> +	}
> +
>   	vm->mm.head_node.color = I915_COLOR_UNEVICTABLE;
>   
>   	INIT_LIST_HEAD(&vm->bound_list);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 6d0233ffae17..20101eef4c95 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -28,6 +28,8 @@
>   #include "gt/intel_reset.h"
>   #include "i915_selftest.h"
>   #include "i915_vma_types.h"
> +#include "i915_params.h"
> +#include "intel_memory_region.h"
>   
>   #define I915_GFP_ALLOW_FAIL (GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
>   
> @@ -224,6 +226,7 @@ struct i915_address_space {
>   	struct device *dma;
>   	u64 total;		/* size addr space maps (ex. 2GB for ggtt) */
>   	u64 reserved;		/* size addr space reserved */
> +	u64 min_alignment[INTEL_MEMORY_STOLEN_LOCAL + 1];
>   
>   	unsigned int bind_async_flags;
>   
> @@ -382,6 +385,12 @@ i915_vm_has_scratch_64K(struct i915_address_space *vm)
>   	return vm->scratch_order == get_order(I915_GTT_PAGE_SIZE_64K);
>   }
>   
> +static inline u64 i915_vm_min_alignment(struct i915_address_space *vm,
> +					enum intel_memory_type type)
> +{
> +	return vm->min_alignment[type];
> +}
> +
>   static inline bool
>   i915_vm_has_cache_coloring(struct i915_address_space *vm)
>   {
> 
