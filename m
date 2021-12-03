Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F1246748D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 11:11:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D3B573C91;
	Fri,  3 Dec 2021 10:10:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D05A73C91
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 10:10:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="237176867"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="237176867"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 02:10:57 -0800
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="513651959"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 02:10:55 -0800
Date: Fri, 3 Dec 2021 15:44:10 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <20211203101410.GB25851@intel.com>
References: <20211202092424.4000107-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20211202092424.4000107-2-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211202092424.4000107-2-tejaskumarx.surendrakumar.upadhyay@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH V2 1/3] drm/i915: Wrap all access to
 i915_vma.node.start|size
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-12-02 at 14:54:22 +0530, Tejas Upadhyay wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> We already wrap i915_vma.node.start for use with the GGTT, as there we
> can perform additional sanity checks that the node belongs to the GGTT
> and fits within the 32b registers. In the next couple of patches, we
> will introduce guard pages around the objects _inside_ the drm_mm_node
> allocation. That is we will offset the vma->pages so that the first page
> is at drm_mm_node.start + vma->guard (not 0 as is currently the case).
> All users must then not use i915_vma.node.start directly, but compute
> the guard offset, thus all users are converted to use a
> i915_vma_offset() wrapper.
> 
> The notable exceptions are the selftests that are testing exact
> behaviour of i915_vma_pin/i915_vma_insert.

There is not change log for v2.

Apart from that Looks good to me.

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>

> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpt.c      |  4 +--
>  drivers/gpu/drm/i915/display/intel_fbdev.c    |  6 ++--
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 34 ++++++++++---------
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  4 +--
>  .../gpu/drm/i915/gem/selftests/huge_pages.c   |  2 +-
>  .../i915/gem/selftests/i915_gem_client_blt.c  | 15 ++++----
>  .../drm/i915/gem/selftests/i915_gem_context.c | 19 +++++++----
>  .../drm/i915/gem/selftests/i915_gem_mman.c    |  2 +-
>  .../drm/i915/gem/selftests/igt_gem_utils.c    |  6 ++--
>  drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  2 +-
>  drivers/gpu/drm/i915/gt/gen7_renderclear.c    |  2 +-
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  8 ++---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          |  5 +--
>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  3 +-
>  drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  5 +--
>  drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 +-
>  .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +-
>  drivers/gpu/drm/i915/gt/selftest_engine_cs.c  |  8 ++---
>  drivers/gpu/drm/i915/gt/selftest_execlists.c  | 18 +++++-----
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 15 ++++----
>  drivers/gpu/drm/i915/gt/selftest_lrc.c        | 16 ++++-----
>  .../drm/i915/gt/selftest_ring_submission.c    |  2 +-
>  drivers/gpu/drm/i915/gt/selftest_rps.c        | 12 +++----
>  .../gpu/drm/i915/gt/selftest_workarounds.c    |  8 ++---
>  drivers/gpu/drm/i915/i915_cmd_parser.c        |  4 +--
>  drivers/gpu/drm/i915/i915_debugfs.c           |  2 +-
>  drivers/gpu/drm/i915/i915_perf.c              |  2 +-
>  drivers/gpu/drm/i915/i915_vma.c               | 21 ++++++------
>  drivers/gpu/drm/i915/i915_vma.h               | 23 +++++++++++--
>  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 12 ++++++-
>  drivers/gpu/drm/i915/selftests/i915_request.c | 20 +++++------
>  drivers/gpu/drm/i915/selftests/igt_spinner.c  |  8 ++---
>  34 files changed, 169 insertions(+), 127 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> index 963ca7155b06..1bb99ef4ce2d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -64,7 +64,7 @@ static void dpt_insert_entries(struct i915_address_space *vm,
>  	 * not to allow the user to override access to a read only page.
>  	 */
>  
> -	i = vma->node.start / I915_GTT_PAGE_SIZE;
> +	i = i915_vma_offset(vma) / I915_GTT_PAGE_SIZE;
>  	for_each_sgt_daddr(addr, sgt_iter, vma->pages)
>  		gen8_set_pte(&base[i++], pte_encode | addr);
>  }
> @@ -104,7 +104,7 @@ static void dpt_bind_vma(struct i915_address_space *vm,
>  
>  static void dpt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
>  {
> -	vm->clear_range(vm, vma->node.start, vma->size);
> +	vm->clear_range(vm, i915_vma_offset(vma), vma->size);
>  }
>  
>  static void dpt_cleanup(struct i915_address_space *vm)
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index adc3a81be9f7..0583dcd538ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -261,8 +261,8 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  
>  		/* Our framebuffer is the entirety of fbdev's system memory */
>  		info->fix.smem_start =
> -			(unsigned long)(ggtt->gmadr.start + vma->node.start);
> -		info->fix.smem_len = vma->node.size;
> +			(unsigned long)(ggtt->gmadr.start + i915_ggtt_offset(vma));
> +		info->fix.smem_len = vma->size;
>  	}
>  
>  	vaddr = i915_vma_pin_iomap(vma);
> @@ -273,7 +273,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  		goto out_unpin;
>  	}
>  	info->screen_base = vaddr;
> -	info->screen_size = vma->node.size;
> +	info->screen_size = vma->size;
>  
>  	drm_fb_helper_fill_info(info, &ifbdev->helper, sizes);
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 6a0ed537c199..d024b88da608 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -376,22 +376,24 @@ eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
>  		 const struct i915_vma *vma,
>  		 unsigned int flags)
>  {
> -	if (vma->node.size < entry->pad_to_size)
> +	const u64 start = i915_vma_offset(vma);
> +	const u64 size = i915_vma_size(vma);
> +
> +	if (size < entry->pad_to_size)
>  		return true;
>  
> -	if (entry->alignment && !IS_ALIGNED(vma->node.start, entry->alignment))
> +	if (entry->alignment && !IS_ALIGNED(start, entry->alignment))
>  		return true;
>  
> -	if (flags & EXEC_OBJECT_PINNED &&
> -	    vma->node.start != entry->offset)
> +	if (flags & EXEC_OBJECT_PINNED && start != entry->offset)
>  		return true;
>  
>  	if (flags & __EXEC_OBJECT_NEEDS_BIAS &&
> -	    vma->node.start < BATCH_OFFSET_BIAS)
> +	    start < BATCH_OFFSET_BIAS)
>  		return true;
>  
>  	if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS) &&
> -	    (vma->node.start + vma->node.size + 4095) >> 32)
> +	    (start + size + 4095) >> 32)
>  		return true;
>  
>  	if (flags & __EXEC_OBJECT_NEEDS_MAP &&
> @@ -437,7 +439,7 @@ eb_pin_vma(struct i915_execbuffer *eb,
>  	int err;
>  
>  	if (vma->node.size)
> -		pin_flags = vma->node.start;
> +		pin_flags = __i915_vma_offset(vma);
>  	else
>  		pin_flags = entry->offset & PIN_OFFSET_MASK;
>  
> @@ -677,8 +679,8 @@ static int eb_reserve_vma(struct i915_execbuffer *eb,
>  	if (err)
>  		return err;
>  
> -	if (entry->offset != vma->node.start) {
> -		entry->offset = vma->node.start | UPDATE;
> +	if (entry->offset != i915_vma_offset(vma)) {
> +		entry->offset = i915_vma_offset(vma) | UPDATE;
>  		eb->args->flags |= __EXEC_HAS_RELOC;
>  	}
>  
> @@ -990,8 +992,8 @@ static int eb_validate_vmas(struct i915_execbuffer *eb)
>  			return err;
>  
>  		if (!err) {
> -			if (entry->offset != vma->node.start) {
> -				entry->offset = vma->node.start | UPDATE;
> +			if (entry->offset != i915_vma_offset(vma)) {
> +				entry->offset = i915_vma_offset(vma) | UPDATE;
>  				eb->args->flags |= __EXEC_HAS_RELOC;
>  			}
>  		} else {
> @@ -1073,7 +1075,7 @@ static inline u64
>  relocation_target(const struct drm_i915_gem_relocation_entry *reloc,
>  		  const struct i915_vma *target)
>  {
> -	return gen8_canonical_addr((int)reloc->delta + target->node.start);
> +	return gen8_canonical_addr((int)reloc->delta + i915_vma_offset(target));
>  }
>  
>  static void reloc_cache_init(struct reloc_cache *cache,
> @@ -1229,7 +1231,7 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
>  			if (err) /* no inactive aperture space, use cpu reloc */
>  				return NULL;
>  		} else {
> -			cache->node.start = vma->node.start;
> +			cache->node.start = i915_ggtt_offset(vma);
>  			cache->node.mm = (void *)vma;
>  		}
>  	}
> @@ -1387,7 +1389,7 @@ eb_relocate_entry(struct i915_execbuffer *eb,
>  	 * more work needs to be done.
>  	 */
>  	if (!DBG_FORCE_RELOC &&
> -	    gen8_canonical_addr(target->vma->node.start) == reloc->presumed_offset)
> +	    gen8_canonical_addr(i915_vma_offset(target->vma)) == reloc->presumed_offset)
>  		return 0;
>  
>  	/* Check that the relocation address is valid... */
> @@ -2331,7 +2333,7 @@ static int eb_request_submit(struct i915_execbuffer *eb,
>  	}
>  
>  	err = rq->context->engine->emit_bb_start(rq,
> -						 batch->node.start +
> +						 i915_vma_offset(batch) +
>  						 eb->batch_start_offset,
>  						 batch_len,
>  						 eb->batch_flags);
> @@ -2342,7 +2344,7 @@ static int eb_request_submit(struct i915_execbuffer *eb,
>  		GEM_BUG_ON(intel_context_is_parallel(rq->context));
>  		GEM_BUG_ON(eb->batch_start_offset);
>  		err = rq->context->engine->emit_bb_start(rq,
> -							 eb->trampoline->node.start +
> +							 i915_vma_offset(eb->trampoline) +
>  							 batch_len, 0, 0);
>  		if (err)
>  			return err;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index 65fc6ff5f59d..5d3fa137389e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -378,7 +378,7 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
>  	/* Finally, remap it using the new GTT offset */
>  	ret = remap_io_mapping(area,
>  			       area->vm_start + (vma->ggtt_view.partial.offset << PAGE_SHIFT),
> -			       (ggtt->gmadr.start + vma->node.start) >> PAGE_SHIFT,
> +			       (ggtt->gmadr.start + i915_ggtt_offset(vma)) >> PAGE_SHIFT,
>  			       min_t(u64, vma->size, area->vm_end - area->vm_start),
>  			       &ggtt->iomap);
>  	if (ret)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> index 157a9765f483..7738e97d43b0 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> @@ -406,7 +406,7 @@ i915_gem_shrinker_vmap(struct notifier_block *nb, unsigned long event, void *ptr
>  	mutex_lock(&i915->ggtt.vm.mutex);
>  	list_for_each_entry_safe(vma, next,
>  				 &i915->ggtt.vm.bound_list, vm_link) {
> -		unsigned long count = vma->node.size >> PAGE_SHIFT;
> +		unsigned long count = i915_vma_size(vma) >> PAGE_SHIFT;
>  
>  		if (!vma->iomap || i915_vma_is_active(vma))
>  			continue;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> index ef4d0f7dc118..1e49c7c69d80 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> @@ -166,11 +166,11 @@ static bool i915_vma_fence_prepare(struct i915_vma *vma,
>  		return true;
>  
>  	size = i915_gem_fence_size(i915, vma->size, tiling_mode, stride);
> -	if (vma->node.size < size)
> +	if (i915_vma_size(vma) < size)
>  		return false;
>  
>  	alignment = i915_gem_fence_alignment(i915, vma->size, tiling_mode, stride);
> -	if (!IS_ALIGNED(vma->node.start, alignment))
> +	if (!IS_ALIGNED(i915_ggtt_offset(vma), alignment))
>  		return false;
>  
>  	return true;
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index c69c7d45aabc..c9361ffeb5d4 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -401,7 +401,7 @@ static int igt_check_page_sizes(struct i915_vma *vma)
>  	 * Maintaining alignment is required to utilise huge pages in the ppGGT.
>  	 */
>  	if (i915_gem_object_is_lmem(obj) &&
> -	    IS_ALIGNED(vma->node.start, SZ_2M) &&
> +	    IS_ALIGNED(i915_vma_offset(vma), SZ_2M) &&
>  	    vma->page_sizes.sg & SZ_2M &&
>  	    vma->page_sizes.gtt < SZ_2M) {
>  		pr_err("gtt pages mismatch for LMEM, expected 2M GTT pages, sg(%u), gtt(%u)\n",
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> index 8402ed925a69..d383b9f53a77 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> @@ -94,14 +94,14 @@ static int prepare_blit(const struct tiled_blits *t,
>  	*cs++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | dst_pitch;
>  	*cs++ = 0;
>  	*cs++ = t->height << 16 | t->width;
> -	*cs++ = lower_32_bits(dst->vma->node.start);
> +	*cs++ = lower_32_bits(i915_vma_offset(dst->vma));
>  	if (use_64b_reloc)
> -		*cs++ = upper_32_bits(dst->vma->node.start);
> +		*cs++ = upper_32_bits(i915_vma_offset(dst->vma));
>  	*cs++ = 0;
>  	*cs++ = src_pitch;
> -	*cs++ = lower_32_bits(src->vma->node.start);
> +	*cs++ = lower_32_bits(i915_vma_offset(src->vma));
>  	if (use_64b_reloc)
> -		*cs++ = upper_32_bits(src->vma->node.start);
> +		*cs++ = upper_32_bits(i915_vma_offset(src->vma));
>  
>  	*cs++ = MI_BATCH_BUFFER_END;
>  
> @@ -317,7 +317,7 @@ static int pin_buffer(struct i915_vma *vma, u64 addr)
>  {
>  	int err;
>  
> -	if (drm_mm_node_allocated(&vma->node) && vma->node.start != addr) {
> +	if (drm_mm_node_allocated(&vma->node) && i915_vma_offset(vma) != addr) {
>  		err = i915_vma_unbind(vma);
>  		if (err)
>  			return err;
> @@ -327,6 +327,7 @@ static int pin_buffer(struct i915_vma *vma, u64 addr)
>  	if (err)
>  		return err;
>  
> +	GEM_BUG_ON(i915_vma_offset(vma) != addr);
>  	return 0;
>  }
>  
> @@ -373,8 +374,8 @@ tiled_blit(struct tiled_blits *t,
>  		err = move_to_active(dst->vma, rq, 0);
>  	if (!err)
>  		err = rq->engine->emit_bb_start(rq,
> -						t->batch->node.start,
> -						t->batch->node.size,
> +						i915_vma_offset(t->batch),
> +						i915_vma_size(t->batch),
>  						0);
>  	i915_request_get(rq);
>  	i915_request_add(rq);
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index b32f7fed2d9c..fe01a7d92362 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -895,8 +895,8 @@ static int rpcs_query_batch(struct drm_i915_gem_object *rpcs, struct i915_vma *v
>  
>  	*cmd++ = MI_STORE_REGISTER_MEM_GEN8;
>  	*cmd++ = i915_mmio_reg_offset(GEN8_R_PWR_CLK_STATE);
> -	*cmd++ = lower_32_bits(vma->node.start);
> -	*cmd++ = upper_32_bits(vma->node.start);
> +	*cmd++ = lower_32_bits(i915_vma_offset(vma));
> +	*cmd++ = upper_32_bits(i915_vma_offset(vma));
>  	*cmd = MI_BATCH_BUFFER_END;
>  
>  	__i915_gem_object_flush_map(rpcs, 0, 64);
> @@ -984,7 +984,8 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
>  	}
>  
>  	err = rq->engine->emit_bb_start(rq,
> -					batch->node.start, batch->node.size,
> +					i915_vma_offset(batch),
> +					i915_vma_size(batch),
>  					0);
>  	if (err)
>  		goto skip_request;
> @@ -1553,7 +1554,10 @@ static int write_to_scratch(struct i915_gem_context *ctx,
>  			goto skip_request;
>  	}
>  
> -	err = engine->emit_bb_start(rq, vma->node.start, vma->node.size, 0);
> +	err = engine->emit_bb_start(rq,
> +				    i915_vma_offset(vma),
> +				    i915_vma_size(vma),
> +				    0);
>  	if (err)
>  		goto skip_request;
>  
> @@ -1660,7 +1664,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
>  		*cmd++ = offset;
>  		*cmd++ = MI_STORE_REGISTER_MEM | MI_USE_GGTT;
>  		*cmd++ = reg;
> -		*cmd++ = vma->node.start + result;
> +		*cmd++ = i915_vma_offset(vma) + result;
>  		*cmd = MI_BATCH_BUFFER_END;
>  
>  		i915_gem_object_flush_map(obj);
> @@ -1691,7 +1695,10 @@ static int read_from_scratch(struct i915_gem_context *ctx,
>  			goto skip_request;
>  	}
>  
> -	err = engine->emit_bb_start(rq, vma->node.start, vma->node.size, flags);
> +	err = engine->emit_bb_start(rq,
> +				    i915_vma_offset(vma),
> +				    i915_vma_size(vma),
> +				    flags);
>  	if (err)
>  		goto skip_request;
>  
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 6d30cdfa80f3..762881791e25 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1196,7 +1196,7 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
>  		if (err == 0)
>  			err = i915_vma_move_to_active(vma, rq, 0);
>  
> -		err = engine->emit_bb_start(rq, vma->node.start, 0, 0);
> +		err = engine->emit_bb_start(rq, i915_vma_offset(vma), 0, 0);
>  		i915_request_get(rq);
>  		i915_request_add(rq);
>  
> diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> index b35c1219c852..4390d69bd746 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> @@ -61,8 +61,8 @@ igt_emit_store_dw(struct i915_vma *vma,
>  		goto err;
>  	}
>  
> -	GEM_BUG_ON(offset + (count - 1) * PAGE_SIZE > vma->node.size);
> -	offset += vma->node.start;
> +	GEM_BUG_ON(offset + (count - 1) * PAGE_SIZE > i915_vma_size(vma));
> +	offset += i915_vma_offset(vma);
>  
>  	for (n = 0; n < count; n++) {
>  		if (ver >= 8) {
> @@ -150,7 +150,7 @@ int igt_gpu_fill_dw(struct intel_context *ce,
>  		flags |= I915_DISPATCH_SECURE;
>  
>  	err = rq->engine->emit_bb_start(rq,
> -					batch->node.start, batch->node.size,
> +					i915_vma_offset(batch), i915_vma_size(batch),
>  					flags);
>  
>  skip_request:
> diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> index 4a166d25fe60..72a8725e6f8a 100644
> --- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
> @@ -110,7 +110,7 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
>  {
>  	struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
>  	struct i915_page_directory * const pd = ppgtt->pd;
> -	unsigned int first_entry = vma->node.start / I915_GTT_PAGE_SIZE;
> +	unsigned int first_entry = i915_vma_offset(vma) / I915_GTT_PAGE_SIZE;
>  	unsigned int act_pt = first_entry / GEN6_PTES;
>  	unsigned int act_pte = first_entry % GEN6_PTES;
>  	const u32 pte_encode = vm->pte_encode(0, cache_level, flags);
> diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> index 21f08e53889c..a14f962aaa85 100644
> --- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> +++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> @@ -105,7 +105,7 @@ static u32 batch_offset(const struct batch_chunk *bc, u32 *cs)
>  
>  static u32 batch_addr(const struct batch_chunk *bc)
>  {
> -	return bc->vma->node.start;
> +	return i915_vma_offset(bc->vma);
>  }
>  
>  static void batch_add(struct batch_chunk *bc, const u32 d)
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index 9966e9dc5218..dd2ab23a123c 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -460,7 +460,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
>  {
>  	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
>  	unsigned int rem = sg_dma_len(iter->sg);
> -	u64 start = vma->node.start;
> +	u64 start = i915_vma_offset(vma);
>  
>  	GEM_BUG_ON(!i915_vm_is_4lvl(vma->vm));
>  
> @@ -542,8 +542,8 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
>  		if (maybe_64K != -1 &&
>  		    (index == I915_PDES ||
>  		     (i915_vm_has_scratch_64K(vma->vm) &&
> -		      !iter->sg && IS_ALIGNED(vma->node.start +
> -					      vma->node.size,
> +		      !iter->sg && IS_ALIGNED(i915_vma_offset(vma) +
> +					      i915_vma_size(vma),
>  					      I915_GTT_PAGE_SIZE_2M)))) {
>  			vaddr = px_vaddr(pd);
>  			vaddr[maybe_64K] |= GEN8_PDE_IPS_64K;
> @@ -587,7 +587,7 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
>  	if (vma->page_sizes.sg > I915_GTT_PAGE_SIZE) {
>  		gen8_ppgtt_insert_huge(vma, &iter, cache_level, flags);
>  	} else  {
> -		u64 idx = vma->node.start >> GEN8_PTE_SHIFT;
> +		u64 idx = i915_vma_offset(vma) >> GEN8_PTE_SHIFT;
>  
>  		do {
>  			struct i915_page_directory * const pdp =
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 110d3944f9a2..07133f0c529e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -458,7 +458,8 @@ static void i915_ggtt_insert_entries(struct i915_address_space *vm,
>  	unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>  		AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>  
> -	intel_gtt_insert_sg_entries(vma->pages, vma->node.start >> PAGE_SHIFT,
> +	intel_gtt_insert_sg_entries(vma->pages,
> +				    i915_ggtt_offset(vma) >> PAGE_SHIFT,
>  				    flags);
>  }
>  
> @@ -649,7 +650,7 @@ static void aliasing_gtt_unbind_vma(struct i915_address_space *vm,
>  				    struct i915_vma *vma)
>  {
>  	if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
> -		vm->clear_range(vm, vma->node.start, vma->size);
> +		vm->clear_range(vm, i915_ggtt_offset(vma), vma->size);
>  
>  	if (i915_vma_is_bound(vma, I915_VMA_LOCAL_BIND))
>  		ppgtt_unbind_vma(&i915_vm_to_ggtt(vm)->alias->vm, vma);
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> index f8948de72036..b6fea674e6a5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> @@ -215,7 +215,8 @@ static int fence_update(struct i915_fence_reg *fence,
>  				return ret;
>  		}
>  
> -		fence->start = vma->node.start;
> +		GEM_BUG_ON(vma->fence_size > i915_vma_size(vma));
> +		fence->start = i915_ggtt_offset(vma);
>  		fence->size = vma->fence_size;
>  		fence->stride = i915_gem_object_get_stride(vma->obj);
>  		fence->tiling = i915_gem_object_get_tiling(vma->obj);
> diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> index 4396bfd630d8..4773c95db012 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> @@ -186,7 +186,8 @@ void ppgtt_bind_vma(struct i915_address_space *vm,
>  	u32 pte_flags;
>  
>  	if (!test_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma))) {
> -		vm->allocate_va_range(vm, stash, vma->node.start, vma->size);
> +		GEM_BUG_ON(vma->size > i915_vma_size(vma));
> +		vm->allocate_va_range(vm, stash, i915_vma_offset(vma), vma->size);
>  		set_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma));
>  	}
>  
> @@ -204,7 +205,7 @@ void ppgtt_bind_vma(struct i915_address_space *vm,
>  void ppgtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
>  {
>  	if (test_and_clear_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma)))
> -		vm->clear_range(vm, vma->node.start, vma->size);
> +		vm->clear_range(vm, i915_vma_offset(vma), vma->size);
>  }
>  
>  static unsigned long pd_count(u64 size, int shift)
> diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
> index b575cd6e0b7a..2630fe6c8142 100644
> --- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
> +++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
> @@ -61,7 +61,7 @@ static int render_state_setup(struct intel_renderstate *so,
>  		u32 s = rodata->batch[i];
>  
>  		if (i * 4  == rodata->reloc[reloc_index]) {
> -			u64 r = s + so->vma->node.start;
> +			u64 r = s + i915_vma_offset(so->vma);
>  
>  			s = lower_32_bits(r);
>  			if (HAS_64BIT_RELOC(i915)) {
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 3e6fac0340ef..2c4c5c095c56 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -886,7 +886,7 @@ static int clear_residuals(struct i915_request *rq)
>  	}
>  
>  	ret = engine->emit_bb_start(rq,
> -				    engine->wa_ctx.vma->node.start, 0,
> +				    i915_vma_offset(engine->wa_ctx.vma), 0,
>  				    0);
>  	if (ret)
>  		return ret;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> index 64abf5feabfa..9e28873a7e45 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
> @@ -165,7 +165,7 @@ static int perf_mi_bb_start(void *arg)
>  				goto out;
>  
>  			err = rq->engine->emit_bb_start(rq,
> -							batch->node.start, 8,
> +							i915_vma_offset(batch), 8,
>  							0);
>  			if (err)
>  				goto out;
> @@ -305,7 +305,7 @@ static int perf_mi_noop(void *arg)
>  				goto out;
>  
>  			err = rq->engine->emit_bb_start(rq,
> -							base->node.start, 8,
> +							i915_vma_offset(base), 8,
>  							0);
>  			if (err)
>  				goto out;
> @@ -315,8 +315,8 @@ static int perf_mi_noop(void *arg)
>  				goto out;
>  
>  			err = rq->engine->emit_bb_start(rq,
> -							nop->node.start,
> -							nop->node.size,
> +							i915_vma_offset(nop),
> +							i915_vma_size(nop),
>  							0);
>  			if (err)
>  				goto out;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> index b367ecfa42de..b803123df073 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> @@ -2732,11 +2732,11 @@ static int create_gang(struct intel_engine_cs *engine,
>  		MI_SEMAPHORE_POLL |
>  		MI_SEMAPHORE_SAD_EQ_SDD;
>  	*cs++ = 0;
> -	*cs++ = lower_32_bits(vma->node.start);
> -	*cs++ = upper_32_bits(vma->node.start);
> +	*cs++ = lower_32_bits(i915_vma_offset(vma));
> +	*cs++ = upper_32_bits(i915_vma_offset(vma));
>  
>  	if (*prev) {
> -		u64 offset = (*prev)->batch->node.start;
> +		u64 offset = i915_vma_offset((*prev)->batch);
>  
>  		/* Terminate the spinner in the next lower priority batch. */
>  		*cs++ = MI_STORE_DWORD_IMM_GEN4;
> @@ -2764,7 +2764,7 @@ static int create_gang(struct intel_engine_cs *engine,
>  		err = i915_vma_move_to_active(vma, rq, 0);
>  	if (!err)
>  		err = rq->engine->emit_bb_start(rq,
> -						vma->node.start,
> +						i915_vma_offset(vma),
>  						PAGE_SIZE, 0);
>  	i915_vma_unlock(vma);
>  	i915_request_add(rq);
> @@ -3092,7 +3092,7 @@ create_gpr_user(struct intel_engine_cs *engine,
>  		*cs++ = MI_MATH_ADD;
>  		*cs++ = MI_MATH_STORE(MI_MATH_REG(i), MI_MATH_REG_ACCU);
>  
> -		addr = result->node.start + offset + i * sizeof(*cs);
> +		addr = i915_vma_offset(result) + offset + i * sizeof(*cs);
>  		*cs++ = MI_STORE_REGISTER_MEM_GEN8;
>  		*cs++ = CS_GPR(engine, 2 * i);
>  		*cs++ = lower_32_bits(addr);
> @@ -3102,8 +3102,8 @@ create_gpr_user(struct intel_engine_cs *engine,
>  			MI_SEMAPHORE_POLL |
>  			MI_SEMAPHORE_SAD_GTE_SDD;
>  		*cs++ = i;
> -		*cs++ = lower_32_bits(result->node.start);
> -		*cs++ = upper_32_bits(result->node.start);
> +		*cs++ = lower_32_bits(i915_vma_offset(result));
> +		*cs++ = upper_32_bits(i915_vma_offset(result));
>  	}
>  
>  	*cs++ = MI_BATCH_BUFFER_END;
> @@ -3187,7 +3187,7 @@ create_gpr_client(struct intel_engine_cs *engine,
>  		err = i915_vma_move_to_active(batch, rq, 0);
>  	if (!err)
>  		err = rq->engine->emit_bb_start(rq,
> -						batch->node.start,
> +						i915_vma_offset(batch),
>  						PAGE_SIZE, 0);
>  	i915_vma_unlock(batch);
>  	i915_vma_unpin(batch);
> @@ -3519,7 +3519,7 @@ static int smoke_submit(struct preempt_smoke *smoke,
>  			err = i915_vma_move_to_active(vma, rq, 0);
>  		if (!err)
>  			err = rq->engine->emit_bb_start(rq,
> -							vma->node.start,
> +							i915_vma_offset(vma),
>  							PAGE_SIZE, 0);
>  		i915_vma_unlock(vma);
>  	}
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index e5ad4d5a91c0..b0236c4d615c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -94,7 +94,8 @@ static int hang_init(struct hang *h, struct intel_gt *gt)
>  static u64 hws_address(const struct i915_vma *hws,
>  		       const struct i915_request *rq)
>  {
> -	return hws->node.start + offset_in_page(sizeof(u32)*rq->fence.context);
> +	return i915_vma_offset(hws) +
> +	       offset_in_page(sizeof(u32) * rq->fence.context);
>  }
>  
>  static int move_to_active(struct i915_vma *vma,
> @@ -194,8 +195,8 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
>  
>  		*batch++ = MI_NOOP;
>  		*batch++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
> -		*batch++ = lower_32_bits(vma->node.start);
> -		*batch++ = upper_32_bits(vma->node.start);
> +		*batch++ = lower_32_bits(i915_vma_offset(vma));
> +		*batch++ = upper_32_bits(i915_vma_offset(vma));
>  	} else if (GRAPHICS_VER(gt->i915) >= 6) {
>  		*batch++ = MI_STORE_DWORD_IMM_GEN4;
>  		*batch++ = 0;
> @@ -208,7 +209,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
>  
>  		*batch++ = MI_NOOP;
>  		*batch++ = MI_BATCH_BUFFER_START | 1 << 8;
> -		*batch++ = lower_32_bits(vma->node.start);
> +		*batch++ = lower_32_bits(i915_vma_offset(vma));
>  	} else if (GRAPHICS_VER(gt->i915) >= 4) {
>  		*batch++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
>  		*batch++ = 0;
> @@ -221,7 +222,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
>  
>  		*batch++ = MI_NOOP;
>  		*batch++ = MI_BATCH_BUFFER_START | 2 << 6;
> -		*batch++ = lower_32_bits(vma->node.start);
> +		*batch++ = lower_32_bits(i915_vma_offset(vma));
>  	} else {
>  		*batch++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
>  		*batch++ = lower_32_bits(hws_address(hws, rq));
> @@ -233,7 +234,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
>  
>  		*batch++ = MI_NOOP;
>  		*batch++ = MI_BATCH_BUFFER_START | 2 << 6;
> -		*batch++ = lower_32_bits(vma->node.start);
> +		*batch++ = lower_32_bits(i915_vma_offset(vma));
>  	}
>  	*batch++ = MI_BATCH_BUFFER_END; /* not reached */
>  	intel_gt_chipset_flush(engine->gt);
> @@ -248,7 +249,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
>  	if (GRAPHICS_VER(gt->i915) <= 5)
>  		flags |= I915_DISPATCH_SECURE;
>  
> -	err = rq->engine->emit_bb_start(rq, vma->node.start, PAGE_SIZE, flags);
> +	err = rq->engine->emit_bb_start(rq, i915_vma_offset(vma), PAGE_SIZE, flags);
>  
>  cancel_rq:
>  	if (err) {
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index b0977a3b699b..ca2f2dec7089 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -955,8 +955,8 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
>  		while (len--) {
>  			*cs++ = MI_STORE_REGISTER_MEM_GEN8;
>  			*cs++ = hw[dw];
> -			*cs++ = lower_32_bits(scratch->node.start + x);
> -			*cs++ = upper_32_bits(scratch->node.start + x);
> +			*cs++ = lower_32_bits(i915_vma_offset(scratch) + x);
> +			*cs++ = upper_32_bits(i915_vma_offset(scratch) + x);
>  
>  			dw += 2;
>  			x += 4;
> @@ -1038,8 +1038,8 @@ record_registers(struct intel_context *ce,
>  
>  	*cs++ = MI_ARB_ON_OFF | MI_ARB_DISABLE;
>  	*cs++ = MI_BATCH_BUFFER_START_GEN8 | BIT(8);
> -	*cs++ = lower_32_bits(b_before->node.start);
> -	*cs++ = upper_32_bits(b_before->node.start);
> +	*cs++ = lower_32_bits(i915_vma_offset(b_before));
> +	*cs++ = upper_32_bits(i915_vma_offset(b_before));
>  
>  	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
>  	*cs++ = MI_SEMAPHORE_WAIT |
> @@ -1054,8 +1054,8 @@ record_registers(struct intel_context *ce,
>  
>  	*cs++ = MI_ARB_ON_OFF | MI_ARB_DISABLE;
>  	*cs++ = MI_BATCH_BUFFER_START_GEN8 | BIT(8);
> -	*cs++ = lower_32_bits(b_after->node.start);
> -	*cs++ = upper_32_bits(b_after->node.start);
> +	*cs++ = lower_32_bits(i915_vma_offset(b_after));
> +	*cs++ = upper_32_bits(i915_vma_offset(b_after));
>  
>  	intel_ring_advance(rq, cs);
>  
> @@ -1163,8 +1163,8 @@ static int poison_registers(struct intel_context *ce, u32 poison, u32 *sema)
>  
>  	*cs++ = MI_ARB_ON_OFF | MI_ARB_DISABLE;
>  	*cs++ = MI_BATCH_BUFFER_START_GEN8 | BIT(8);
> -	*cs++ = lower_32_bits(batch->node.start);
> -	*cs++ = upper_32_bits(batch->node.start);
> +	*cs++ = lower_32_bits(i915_vma_offset(batch));
> +	*cs++ = upper_32_bits(i915_vma_offset(batch));
>  
>  	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
>  	*cs++ = i915_ggtt_offset(ce->engine->status_page.vma) +
> diff --git a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
> index 041954408d0f..8d29f6b979bd 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
> @@ -50,7 +50,7 @@ static struct i915_vma *create_wally(struct intel_engine_cs *engine)
>  	} else {
>  		*cs++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
>  	}
> -	*cs++ = vma->node.start + 4000;
> +	*cs++ = i915_vma_offset(vma) + 4000;
>  	*cs++ = STACK_MAGIC;
>  
>  	*cs++ = MI_BATCH_BUFFER_END;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 7ee2513e15f9..d242ed23e609 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -119,14 +119,14 @@ create_spin_counter(struct intel_engine_cs *engine,
>  		if (srm) {
>  			*cs++ = MI_STORE_REGISTER_MEM_GEN8;
>  			*cs++ = i915_mmio_reg_offset(CS_GPR(COUNT));
> -			*cs++ = lower_32_bits(vma->node.start + end * sizeof(*cs));
> -			*cs++ = upper_32_bits(vma->node.start + end * sizeof(*cs));
> +			*cs++ = lower_32_bits(i915_vma_offset(vma) + end * sizeof(*cs));
> +			*cs++ = upper_32_bits(i915_vma_offset(vma) + end * sizeof(*cs));
>  		}
>  	}
>  
>  	*cs++ = MI_BATCH_BUFFER_START_GEN8;
> -	*cs++ = lower_32_bits(vma->node.start + loop * sizeof(*cs));
> -	*cs++ = upper_32_bits(vma->node.start + loop * sizeof(*cs));
> +	*cs++ = lower_32_bits(i915_vma_offset(vma) + loop * sizeof(*cs));
> +	*cs++ = upper_32_bits(i915_vma_offset(vma) + loop * sizeof(*cs));
>  	GEM_BUG_ON(cs - base > end);
>  
>  	i915_gem_object_flush_map(obj);
> @@ -655,7 +655,7 @@ int live_rps_frequency_cs(void *arg)
>  			err = i915_vma_move_to_active(vma, rq, 0);
>  		if (!err)
>  			err = rq->engine->emit_bb_start(rq,
> -							vma->node.start,
> +							i915_vma_offset(vma),
>  							PAGE_SIZE, 0);
>  		i915_request_add(rq);
>  		if (err)
> @@ -796,7 +796,7 @@ int live_rps_frequency_srm(void *arg)
>  			err = i915_vma_move_to_active(vma, rq, 0);
>  		if (!err)
>  			err = rq->engine->emit_bb_start(rq,
> -							vma->node.start,
> +							i915_vma_offset(vma),
>  							PAGE_SIZE, 0);
>  		i915_request_add(rq);
>  		if (err)
> diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> index 962e91ba3be4..cd027e98e409 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
> @@ -521,8 +521,8 @@ static int check_dirty_whitelist(struct intel_context *ce)
>  
>  	for (i = 0; i < engine->whitelist.count; i++) {
>  		u32 reg = i915_mmio_reg_offset(engine->whitelist.list[i].reg);
> +		u64 addr = i915_vma_offset(scratch);
>  		struct i915_gem_ww_ctx ww;
> -		u64 addr = scratch->node.start;
>  		struct i915_request *rq;
>  		u32 srm, lrm, rsvd;
>  		u32 expect;
> @@ -645,7 +645,7 @@ static int check_dirty_whitelist(struct intel_context *ce)
>  			goto err_request;
>  
>  		err = engine->emit_bb_start(rq,
> -					    batch->node.start, PAGE_SIZE,
> +					    i915_vma_offset(batch), PAGE_SIZE,
>  					    0);
>  		if (err)
>  			goto err_request;
> @@ -877,7 +877,7 @@ static int read_whitelisted_registers(struct intel_context *ce,
>  	}
>  
>  	for (i = 0; i < engine->whitelist.count; i++) {
> -		u64 offset = results->node.start + sizeof(u32) * i;
> +		u64 offset = i915_vma_offset(results) + sizeof(u32) * i;
>  		u32 reg = i915_mmio_reg_offset(engine->whitelist.list[i].reg);
>  
>  		/* Clear non priv flags */
> @@ -951,7 +951,7 @@ static int scrub_whitelisted_registers(struct intel_context *ce)
>  		goto err_request;
>  
>  	/* Perform the writes from an unprivileged "user" batch */
> -	err = engine->emit_bb_start(rq, batch->node.start, 0, 0);
> +	err = engine->emit_bb_start(rq, i915_vma_offset(batch), 0, 0);
>  
>  err_request:
>  	err = request_add_sync(rq, err);
> diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> index e0403ce9ce69..c2109006df8b 100644
> --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> @@ -1459,8 +1459,8 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
>  		/* Defer failure until attempted use */
>  		jump_whitelist = alloc_whitelist(batch_length);
>  
> -	shadow_addr = gen8_canonical_addr(shadow->node.start);
> -	batch_addr = gen8_canonical_addr(batch->node.start + batch_offset);
> +	shadow_addr = gen8_canonical_addr(i915_vma_offset(shadow));
> +	batch_addr = gen8_canonical_addr(i915_vma_offset(batch) + batch_offset);
>  
>  	/*
>  	 * We use the batch length as size because the shadow object is as
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 390d541f64ea..b082af695d4e 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -170,7 +170,7 @@ i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
>  
>  		seq_printf(m, " (%s offset: %08llx, size: %08llx, pages: %s",
>  			   stringify_vma_type(vma),
> -			   vma->node.start, vma->node.size,
> +			   i915_vma_offset(vma), i915_vma_size(vma),
>  			   stringify_page_sizes(vma->page_sizes.gtt, NULL, 0));
>  		if (i915_vma_is_ggtt(vma) || i915_vma_is_dpt(vma)) {
>  			switch (vma->ggtt_view.type) {
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 2f01b8c0284c..d6c7d90ce5cc 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2015,7 +2015,7 @@ emit_oa_config(struct i915_perf_stream *stream,
>  		goto err_add_request;
>  
>  	err = rq->engine->emit_bb_start(rq,
> -					vma->node.start, 0,
> +					i915_vma_offset(vma), 0,
>  					I915_DISPATCH_SECURE);
>  	if (err)
>  		goto err_add_request;
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 927f0d4f8e11..10473ce8a047 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -399,7 +399,7 @@ int i915_vma_bind(struct i915_vma *vma,
>  	u32 vma_flags;
>  
>  	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
> -	GEM_BUG_ON(vma->size > vma->node.size);
> +	GEM_BUG_ON(vma->size > i915_vma_size(vma));
>  
>  	if (GEM_DEBUG_WARN_ON(range_overflows(vma->node.start,
>  					      vma->node.size,
> @@ -494,8 +494,8 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
>  							  vma->obj->base.size);
>  		else
>  			ptr = io_mapping_map_wc(&i915_vm_to_ggtt(vma->vm)->iomap,
> -						vma->node.start,
> -						vma->node.size);
> +						i915_vma_offset(vma),
> +						i915_vma_size(vma));
>  		if (ptr == NULL) {
>  			err = -ENOMEM;
>  			goto err;
> @@ -569,22 +569,22 @@ bool i915_vma_misplaced(const struct i915_vma *vma,
>  	if (test_bit(I915_VMA_ERROR_BIT, __i915_vma_flags(vma)))
>  		return true;
>  
> -	if (vma->node.size < size)
> +	if (i915_vma_size(vma) < size)
>  		return true;
>  
>  	GEM_BUG_ON(alignment && !is_power_of_2(alignment));
> -	if (alignment && !IS_ALIGNED(vma->node.start, alignment))
> +	if (alignment && !IS_ALIGNED(i915_vma_offset(vma), alignment))
>  		return true;
>  
>  	if (flags & PIN_MAPPABLE && !i915_vma_is_map_and_fenceable(vma))
>  		return true;
>  
>  	if (flags & PIN_OFFSET_BIAS &&
> -	    vma->node.start < (flags & PIN_OFFSET_MASK))
> +	    i915_vma_offset(vma) < (flags & PIN_OFFSET_MASK))
>  		return true;
>  
>  	if (flags & PIN_OFFSET_FIXED &&
> -	    vma->node.start != (flags & PIN_OFFSET_MASK))
> +	    i915_vma_offset(vma) != (flags & PIN_OFFSET_MASK))
>  		return true;
>  
>  	return false;
> @@ -597,10 +597,11 @@ void __i915_vma_set_map_and_fenceable(struct i915_vma *vma)
>  	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
>  	GEM_BUG_ON(!vma->fence_size);
>  
> -	fenceable = (vma->node.size >= vma->fence_size &&
> -		     IS_ALIGNED(vma->node.start, vma->fence_alignment));
> +	fenceable = (i915_vma_size(vma) >= vma->fence_size &&
> +		     IS_ALIGNED(i915_vma_offset(vma), vma->fence_alignment));
>  
> -	mappable = vma->node.start + vma->fence_size <= i915_vm_to_ggtt(vma->vm)->mappable_end;
> +	mappable = i915_ggtt_offset(vma) + vma->fence_size <=
> +		   i915_vm_to_ggtt(vma->vm)->mappable_end;
>  
>  	if (mappable && fenceable)
>  		set_bit(I915_VMA_CAN_FENCE_BIT, __i915_vma_flags(vma));
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index 4033aa08d5e4..1d13d619ff86 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -125,13 +125,30 @@ static inline bool i915_vma_is_closed(const struct i915_vma *vma)
>  	return !list_empty(&vma->closed_link);
>  }
>  
> +static inline u64 i915_vma_size(const struct i915_vma *vma)
> +{
> +	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
> +	return vma->node.size;
> +}
> +
> +static inline u64 __i915_vma_offset(const struct i915_vma *vma)
> +{
> +	return vma->node.start;
> +}
> +
> +static inline u64 i915_vma_offset(const struct i915_vma *vma)
> +{
> +	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
> +	return __i915_vma_offset(vma);
> +}
> +
>  static inline u32 i915_ggtt_offset(const struct i915_vma *vma)
>  {
>  	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
>  	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
> -	GEM_BUG_ON(upper_32_bits(vma->node.start));
> -	GEM_BUG_ON(upper_32_bits(vma->node.start + vma->node.size - 1));
> -	return lower_32_bits(vma->node.start);
> +	GEM_BUG_ON(upper_32_bits(i915_vma_offset(vma)));
> +	GEM_BUG_ON(upper_32_bits(i915_vma_offset(vma) + i915_vma_size(vma) - 1));
> +	return lower_32_bits(i915_vma_offset(vma));
>  }
>  
>  static inline u32 i915_ggtt_pin_bias(struct i915_vma *vma)
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index 46f4236039a9..89528c0d19f4 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -245,6 +245,10 @@ static int lowlevel_hole(struct i915_address_space *vm,
>  	if (!mock_vma)
>  		return -ENOMEM;
>  
> +	__set_bit(DRM_MM_NODE_ALLOCATED_BIT, &mock_vma->node.flags);
> +	if (i915_is_ggtt(vm))
> +		__set_bit(I915_VMA_GGTT_BIT, __i915_vma_flags(mock_vma));
> +
>  	/* Keep creating larger objects until one cannot fit into the hole */
>  	for (size = 12; (hole_end - hole_start) >> size; size++) {
>  		I915_RND_SUBSTATE(prng, seed_prng);
> @@ -1982,6 +1986,7 @@ static int igt_cs_tlb(void *arg)
>  				goto end;
>  
>  			/* Prime the TLB with the dummy pages */
> +			__set_bit(DRM_MM_NODE_ALLOCATED_BIT, &vma->node.flags);
>  			for (i = 0; i < count; i++) {
>  				vma->node.start = offset + i * PAGE_SIZE;
>  				vm->insert_entries(vm, vma, I915_CACHE_NONE, 0);
> @@ -1995,8 +2000,10 @@ static int igt_cs_tlb(void *arg)
>  			}
>  
>  			vma->ops->clear_pages(vma);
> +			 __clear_bit(DRM_MM_NODE_ALLOCATED_BIT,
> +				     &vma->node.flags);
>  
> -			err = context_sync(ce);
> +			 err = context_sync(ce);
>  			if (err) {
>  				pr_err("%s: dummy setup timed out\n",
>  				       ce->engine->name);
> @@ -2014,6 +2021,7 @@ static int igt_cs_tlb(void *arg)
>  				goto end;
>  
>  			/* Replace the TLB with target batches */
> +			__set_bit(DRM_MM_NODE_ALLOCATED_BIT, &vma->node.flags);
>  			for (i = 0; i < count; i++) {
>  				struct i915_request *rq;
>  				u32 *cs = batch + i * 64 / sizeof(*cs);
> @@ -2048,6 +2056,8 @@ static int igt_cs_tlb(void *arg)
>  			end_spin(batch, count - 1);
>  
>  			vma->ops->clear_pages(vma);
> +			__clear_bit(DRM_MM_NODE_ALLOCATED_BIT,
> +				    &vma->node.flags);
>  
>  			err = context_sync(ce);
>  			if (err) {
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index 9979ef9197cd..737d29bbc3b5 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -879,8 +879,8 @@ empty_request(struct intel_engine_cs *engine,
>  		return request;
>  
>  	err = engine->emit_bb_start(request,
> -				    batch->node.start,
> -				    batch->node.size,
> +				    i915_vma_offset(batch),
> +				    i915_vma_size(batch),
>  				    I915_DISPATCH_SECURE);
>  	if (err)
>  		goto out_request;
> @@ -1000,14 +1000,14 @@ static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
>  
>  	if (ver >= 8) {
>  		*cmd++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
> -		*cmd++ = lower_32_bits(vma->node.start);
> -		*cmd++ = upper_32_bits(vma->node.start);
> +		*cmd++ = lower_32_bits(i915_vma_offset(vma));
> +		*cmd++ = upper_32_bits(i915_vma_offset(vma));
>  	} else if (ver >= 6) {
>  		*cmd++ = MI_BATCH_BUFFER_START | 1 << 8;
> -		*cmd++ = lower_32_bits(vma->node.start);
> +		*cmd++ = lower_32_bits(i915_vma_offset(vma));
>  	} else {
>  		*cmd++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
> -		*cmd++ = lower_32_bits(vma->node.start);
> +		*cmd++ = lower_32_bits(i915_vma_offset(vma));
>  	}
>  	*cmd++ = MI_BATCH_BUFFER_END; /* terminate early in case of error */
>  
> @@ -1091,8 +1091,8 @@ static int live_all_engines(void *arg)
>  		GEM_BUG_ON(err);
>  
>  		err = engine->emit_bb_start(request[idx],
> -					    batch->node.start,
> -					    batch->node.size,
> +					    i915_vma_offset(batch),
> +					    i915_vma_size(batch),
>  					    0);
>  		GEM_BUG_ON(err);
>  		request[idx]->batch = batch;
> @@ -1221,8 +1221,8 @@ static int live_sequential_engines(void *arg)
>  		GEM_BUG_ON(err);
>  
>  		err = engine->emit_bb_start(request[idx],
> -					    batch->node.start,
> -					    batch->node.size,
> +					    i915_vma_offset(batch),
> +					    i915_vma_size(batch),
>  					    0);
>  		GEM_BUG_ON(err);
>  		request[idx]->batch = batch;
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> index 24d87d0fc747..d5939f1f14e4 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -115,7 +115,7 @@ static unsigned int seqno_offset(u64 fence)
>  static u64 hws_address(const struct i915_vma *hws,
>  		       const struct i915_request *rq)
>  {
> -	return hws->node.start + seqno_offset(rq->fence.context);
> +	return i915_vma_offset(hws) + seqno_offset(rq->fence.context);
>  }
>  
>  static int move_to_active(struct i915_vma *vma,
> @@ -202,8 +202,8 @@ igt_spinner_create_request(struct igt_spinner *spin,
>  		*batch++ = MI_BATCH_BUFFER_START;
>  	else
>  		*batch++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
> -	*batch++ = lower_32_bits(vma->node.start);
> -	*batch++ = upper_32_bits(vma->node.start);
> +	*batch++ = lower_32_bits(i915_vma_offset(vma));
> +	*batch++ = upper_32_bits(i915_vma_offset(vma));
>  
>  	*batch++ = MI_BATCH_BUFFER_END; /* not reached */
>  
> @@ -218,7 +218,7 @@ igt_spinner_create_request(struct igt_spinner *spin,
>  	flags = 0;
>  	if (GRAPHICS_VER(rq->engine->i915) <= 5)
>  		flags |= I915_DISPATCH_SECURE;
> -	err = engine->emit_bb_start(rq, vma->node.start, PAGE_SIZE, flags);
> +	err = engine->emit_bb_start(rq, i915_vma_offset(vma), PAGE_SIZE, flags);
>  
>  cancel_rq:
>  	if (err) {
> -- 
> 2.31.1
> 
