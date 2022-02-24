Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 923104C2A4A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 12:06:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C8DD10FA53;
	Thu, 24 Feb 2022 11:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D92310FA51
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 11:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645700782; x=1677236782;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XF5cXJqm0k2Qtszgireso2nA6oDr7DjhF4vcx86YhGM=;
 b=gqQyVOIiAERR+OWwxWXh/perSMp8TIC5bqMJgGzMkPnJ+KDHFbCgqkVB
 vd5Ylopw09JaKA0yA4ylp2+rMT0MM6CrvBFR/DW/N9HnQ1VYFuNmjordv
 0tqH3034+XUxOGyfRAkPef9kPyfElvo0yqd6ugiNarFR74zUflDeLKP+k
 eDxQtBMZvGspOpg/0AY4CW+ri7VFC+q8Iid+guzmlD+22vgl/2+qIIh/k
 TplARGj1sgwA/DVpMYNQCBCJfZ0NtHpvI7z53eXmrgMH63XPSnpdNoFxs
 9/QVjpeVhLiOHbDMTsGXmE893pQRsPCHXi+XfDllEykPTGfpdqsQF9qc3 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="252401630"
X-IronPort-AV: E=Sophos;i="5.88,393,1635231600"; d="scan'208";a="252401630"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 03:06:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,393,1635231600"; d="scan'208";a="592051701"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga008.fm.intel.com with ESMTP; 24 Feb 2022 03:06:19 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Feb 2022 16:22:44 +0530
Message-Id: <20220224105246.145917-2-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220224105246.145917-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
References: <20220224105246.145917-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V3 1/3] drm/i915: Wrap all access to
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
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

We already wrap i915_vma.node.start for use with the GGTT, as there we
can perform additional sanity checks that the node belongs to the GGTT
and fits within the 32b registers. In the next couple of patches, we
will introduce guard pages around the objects _inside_ the drm_mm_node
allocation. That is we will offset the vma->pages so that the first page
is at drm_mm_node.start + vma->guard (not 0 as is currently the case).
All users must then not use i915_vma.node.start directly, but compute
the guard offset, thus all users are converted to use a
i915_vma_offset() wrapper.

The notable exceptions are the selftests that are testing exact
behaviour of i915_vma_pin/i915_vma_insert.

Changes since V2 :
        - Rebased on drm-tip

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c      |  7 ++--
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  6 ++--
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 33 ++++++++++---------
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  4 +--
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  2 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  | 15 +++++----
 .../drm/i915/gem/selftests/i915_gem_context.c | 15 +++++----
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  2 +-
 .../drm/i915/gem/selftests/igt_gem_utils.c    |  7 ++--
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  4 ++-
 drivers/gpu/drm/i915/gt/gen7_renderclear.c    |  2 +-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 12 ++++---
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  9 +++--
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  3 +-
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         | 12 +++++--
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +-
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c  |  8 ++---
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 18 +++++-----
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 15 +++++----
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 16 ++++-----
 .../drm/i915/gt/selftest_ring_submission.c    |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c        | 12 +++----
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  8 ++---
 drivers/gpu/drm/i915/i915_cmd_parser.c        |  4 +--
 drivers/gpu/drm/i915/i915_debugfs.c           |  2 +-
 drivers/gpu/drm/i915/i915_perf.c              |  2 +-
 drivers/gpu/drm/i915/i915_vma.c               | 21 ++++++------
 drivers/gpu/drm/i915/i915_vma.h               | 24 ++++++++++++--
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 12 ++++++-
 drivers/gpu/drm/i915/selftests/i915_request.c | 20 +++++------
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |  8 ++---
 34 files changed, 186 insertions(+), 127 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 05dd7dba3a5c..b510665df3f2 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -57,6 +57,7 @@ static void dpt_insert_entries(struct i915_address_space *vm,
 	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
 	gen8_pte_t __iomem *base = dpt->iomem;
 	const gen8_pte_t pte_encode = vm->pte_encode(0, level, flags);
+	struct i915_vma *vma = container_of((void *)vma_res, struct i915_vma, resource);
 	struct sgt_iter sgt_iter;
 	dma_addr_t addr;
 	int i;
@@ -66,7 +67,7 @@ static void dpt_insert_entries(struct i915_address_space *vm,
 	 * not to allow the user to override access to a read only page.
 	 */
 
-	i = vma_res->start / I915_GTT_PAGE_SIZE;
+	i = i915_vma_offset(vma) / I915_GTT_PAGE_SIZE;
 	for_each_sgt_daddr(addr, sgt_iter, vma_res->bi.pages)
 		gen8_set_pte(&base[i++], pte_encode | addr);
 }
@@ -109,7 +110,9 @@ static void dpt_bind_vma(struct i915_address_space *vm,
 static void dpt_unbind_vma(struct i915_address_space *vm,
 			   struct i915_vma_resource *vma_res)
 {
-	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
+	struct i915_vma *vma = container_of((void *)vma_res, struct i915_vma, resource);
+
+	vm->clear_range(vm, i915_vma_offset(vma), vma_res->vma_size);
 }
 
 static void dpt_cleanup(struct i915_address_space *vm)
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index fd5bc7acf08d..17f95a482400 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -278,8 +278,8 @@ static int intelfb_create(struct drm_fb_helper *helper,
 
 		/* Our framebuffer is the entirety of fbdev's system memory */
 		info->fix.smem_start =
-			(unsigned long)(ggtt->gmadr.start + vma->node.start);
-		info->fix.smem_len = vma->node.size;
+			(unsigned long)(ggtt->gmadr.start + i915_ggtt_offset(vma));
+		info->fix.smem_len = vma->size;
 	}
 
 	vaddr = i915_vma_pin_iomap(vma);
@@ -290,7 +290,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		goto out_unpin;
 	}
 	info->screen_base = vaddr;
-	info->screen_size = vma->node.size;
+	info->screen_size = vma->size;
 
 	drm_fb_helper_fill_info(info, &ifbdev->helper, sizes);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 89aa0557ade1..210a8b403a0e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -378,22 +378,25 @@ eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
 		 const struct i915_vma *vma,
 		 unsigned int flags)
 {
-	if (vma->node.size < entry->pad_to_size)
+	const u64 start = i915_vma_offset(vma);
+	const u64 size = i915_vma_size(vma);
+
+	if (size < entry->pad_to_size)
 		return true;
 
-	if (entry->alignment && !IS_ALIGNED(vma->node.start, entry->alignment))
+	if (entry->alignment && !IS_ALIGNED(start, entry->alignment))
 		return true;
 
 	if (flags & EXEC_OBJECT_PINNED &&
-	    vma->node.start != entry->offset)
+	    start != entry->offset)
 		return true;
 
 	if (flags & __EXEC_OBJECT_NEEDS_BIAS &&
-	    vma->node.start < BATCH_OFFSET_BIAS)
+	    start < BATCH_OFFSET_BIAS)
 		return true;
 
 	if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS) &&
-	    (vma->node.start + vma->node.size + 4095) >> 32)
+	    (start + size + 4095) >> 32)
 		return true;
 
 	if (flags & __EXEC_OBJECT_NEEDS_MAP &&
@@ -439,7 +442,7 @@ eb_pin_vma(struct i915_execbuffer *eb,
 	int err;
 
 	if (vma->node.size)
-		pin_flags = vma->node.start;
+		pin_flags =  __i915_vma_offset(vma);
 	else
 		pin_flags = entry->offset & PIN_OFFSET_MASK;
 
@@ -673,8 +676,8 @@ static int eb_reserve_vma(struct i915_execbuffer *eb,
 	if (err)
 		return err;
 
-	if (entry->offset != vma->node.start) {
-		entry->offset = vma->node.start | UPDATE;
+	if (entry->offset != i915_vma_offset(vma)) {
+		entry->offset = i915_vma_offset(vma) | UPDATE;
 		eb->args->flags |= __EXEC_HAS_RELOC;
 	}
 
@@ -994,8 +997,8 @@ static int eb_validate_vmas(struct i915_execbuffer *eb)
 			return err;
 
 		if (!err) {
-			if (entry->offset != vma->node.start) {
-				entry->offset = vma->node.start | UPDATE;
+			if (entry->offset != i915_vma_offset(vma)) {
+				entry->offset = i915_vma_offset(vma) | UPDATE;
 				eb->args->flags |= __EXEC_HAS_RELOC;
 			}
 		} else {
@@ -1077,7 +1080,7 @@ static inline u64
 relocation_target(const struct drm_i915_gem_relocation_entry *reloc,
 		  const struct i915_vma *target)
 {
-	return gen8_canonical_addr((int)reloc->delta + target->node.start);
+	return gen8_canonical_addr((int)reloc->delta + i915_vma_offset(target));
 }
 
 static void reloc_cache_init(struct reloc_cache *cache,
@@ -1288,7 +1291,7 @@ static void *reloc_iomap(struct i915_vma *batch,
 			if (err) /* no inactive aperture space, use cpu reloc */
 				return NULL;
 		} else {
-			cache->node.start = vma->node.start;
+			cache->node.start = i915_ggtt_offset(vma);
 			cache->node.mm = (void *)vma;
 		}
 	}
@@ -1453,7 +1456,7 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 	 * more work needs to be done.
 	 */
 	if (!DBG_FORCE_RELOC &&
-	    gen8_canonical_addr(target->vma->node.start) == reloc->presumed_offset)
+	    gen8_canonical_addr(i915_vma_offset(target->vma)) == reloc->presumed_offset)
 		return 0;
 
 	/* Check that the relocation address is valid... */
@@ -2374,7 +2377,7 @@ static int eb_request_submit(struct i915_execbuffer *eb,
 	}
 
 	err = rq->context->engine->emit_bb_start(rq,
-						 batch->node.start +
+						 i915_vma_offset(batch) +
 						 eb->batch_start_offset,
 						 batch_len,
 						 eb->batch_flags);
@@ -2385,7 +2388,7 @@ static int eb_request_submit(struct i915_execbuffer *eb,
 		GEM_BUG_ON(intel_context_is_parallel(rq->context));
 		GEM_BUG_ON(eb->batch_start_offset);
 		err = rq->context->engine->emit_bb_start(rq,
-							 eb->trampoline->node.start +
+							 i915_vma_offset(eb->trampoline) +
 							 batch_len, 0, 0);
 		if (err)
 			return err;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index efe69d6b86f4..dfe5a0aed82d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -395,7 +395,7 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 	/* Finally, remap it using the new GTT offset */
 	ret = remap_io_mapping(area,
 			       area->vm_start + (vma->ggtt_view.partial.offset << PAGE_SHIFT),
-			       (ggtt->gmadr.start + vma->node.start) >> PAGE_SHIFT,
+			       (ggtt->gmadr.start + i915_ggtt_offset(vma)) >> PAGE_SHIFT,
 			       min_t(u64, vma->size, area->vm_end - area->vm_start),
 			       &ggtt->iomap);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 6a6ff98a8746..a215fe5d8623 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -400,7 +400,7 @@ i915_gem_shrinker_vmap(struct notifier_block *nb, unsigned long event, void *ptr
 	mutex_lock(&to_gt(i915)->ggtt->vm.mutex);
 	list_for_each_entry_safe(vma, next,
 				 &to_gt(i915)->ggtt->vm.bound_list, vm_link) {
-		unsigned long count = vma->node.size >> PAGE_SHIFT;
+		unsigned long count = i915_vma_size(vma) >> PAGE_SHIFT;
 		struct drm_i915_gem_object *obj = vma->obj;
 
 		if (!vma->iomap || i915_vma_is_active(vma))
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index d6adda5bf96b..e4762fc4db2e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -168,11 +168,11 @@ static bool i915_vma_fence_prepare(struct i915_vma *vma,
 		return true;
 
 	size = i915_gem_fence_size(i915, vma->size, tiling_mode, stride);
-	if (vma->node.size < size)
+	if (i915_vma_size(vma) < size)
 		return false;
 
 	alignment = i915_gem_fence_alignment(i915, vma->size, tiling_mode, stride);
-	if (!IS_ALIGNED(vma->node.start, alignment))
+	if (!IS_ALIGNED(i915_ggtt_offset(vma), alignment))
 		return false;
 
 	return true;
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 0528fe1fc9b3..449f03af98d8 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -402,7 +402,7 @@ static int igt_check_page_sizes(struct i915_vma *vma)
 	 * Maintaining alignment is required to utilise huge pages in the ppGGT.
 	 */
 	if (i915_gem_object_is_lmem(obj) &&
-	    IS_ALIGNED(vma->node.start, SZ_2M) &&
+	    IS_ALIGNED(i915_vma_offset(vma), SZ_2M) &&
 	    vma->page_sizes.sg & SZ_2M &&
 	    vma->resource->page_sizes_gtt < SZ_2M) {
 		pr_err("gtt pages mismatch for LMEM, expected 2M GTT pages, sg(%u), gtt(%u)\n",
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index ddd0772fd828..65f94ec119e3 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -96,14 +96,14 @@ static int prepare_blit(const struct tiled_blits *t,
 	*cs++ = BLT_DEPTH_32 | BLT_ROP_SRC_COPY | dst_pitch;
 	*cs++ = 0;
 	*cs++ = t->height << 16 | t->width;
-	*cs++ = lower_32_bits(dst->vma->node.start);
+	*cs++ = lower_32_bits(i915_vma_offset(dst->vma));
 	if (use_64b_reloc)
-		*cs++ = upper_32_bits(dst->vma->node.start);
+		*cs++ = upper_32_bits(i915_vma_offset(dst->vma));
 	*cs++ = 0;
 	*cs++ = src_pitch;
-	*cs++ = lower_32_bits(src->vma->node.start);
+	*cs++ = lower_32_bits(i915_vma_offset(src->vma));
 	if (use_64b_reloc)
-		*cs++ = upper_32_bits(src->vma->node.start);
+		*cs++ = upper_32_bits(i915_vma_offset(src->vma));
 
 	*cs++ = MI_BATCH_BUFFER_END;
 
@@ -319,7 +319,7 @@ static int pin_buffer(struct i915_vma *vma, u64 addr)
 {
 	int err;
 
-	if (drm_mm_node_allocated(&vma->node) && vma->node.start != addr) {
+	if (drm_mm_node_allocated(&vma->node) && i915_vma_offset(vma) != addr) {
 		err = i915_vma_unbind_unlocked(vma);
 		if (err)
 			return err;
@@ -329,6 +329,7 @@ static int pin_buffer(struct i915_vma *vma, u64 addr)
 	if (err)
 		return err;
 
+	GEM_BUG_ON(i915_vma_offset(vma) != addr);
 	return 0;
 }
 
@@ -375,8 +376,8 @@ tiled_blit(struct tiled_blits *t,
 		err = move_to_active(dst->vma, rq, 0);
 	if (!err)
 		err = rq->engine->emit_bb_start(rq,
-						t->batch->node.start,
-						t->batch->node.size,
+						i915_vma_offset(t->batch),
+						i915_vma_size(t->batch),
 						0);
 	i915_request_get(rq);
 	i915_request_add(rq);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index bd60d42238fb..16864cc630a9 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -897,8 +897,8 @@ static int rpcs_query_batch(struct drm_i915_gem_object *rpcs, struct i915_vma *v
 
 	*cmd++ = MI_STORE_REGISTER_MEM_GEN8;
 	*cmd++ = i915_mmio_reg_offset(GEN8_R_PWR_CLK_STATE(RENDER_RING_BASE));
-	*cmd++ = lower_32_bits(vma->node.start);
-	*cmd++ = upper_32_bits(vma->node.start);
+	*cmd++ = lower_32_bits(i915_vma_offset(vma));
+	*cmd++ = upper_32_bits(i915_vma_offset(vma));
 	*cmd = MI_BATCH_BUFFER_END;
 
 	__i915_gem_object_flush_map(rpcs, 0, 64);
@@ -986,7 +986,8 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 	}
 
 	err = rq->engine->emit_bb_start(rq,
-					batch->node.start, batch->node.size,
+					i915_vma_offset(batch),
+					i915_vma_size(batch),
 					0);
 	if (err)
 		goto skip_request;
@@ -1549,7 +1550,8 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 			goto skip_request;
 	}
 
-	err = engine->emit_bb_start(rq, vma->node.start, vma->node.size, 0);
+	err = engine->emit_bb_start(rq, i915_vma_offset(vma),
+				    i915_vma_size(vma), 0);
 	if (err)
 		goto skip_request;
 
@@ -1654,7 +1656,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 		*cmd++ = offset;
 		*cmd++ = MI_STORE_REGISTER_MEM | MI_USE_GGTT;
 		*cmd++ = reg;
-		*cmd++ = vma->node.start + result;
+		*cmd++ = i915_vma_offset(vma) + result;
 		*cmd = MI_BATCH_BUFFER_END;
 
 		i915_gem_object_flush_map(obj);
@@ -1685,7 +1687,8 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 			goto skip_request;
 	}
 
-	err = engine->emit_bb_start(rq, vma->node.start, vma->node.size, flags);
+	err = engine->emit_bb_start(rq, i915_vma_offset(vma),
+				    i915_vma_size(vma), flags);
 	if (err)
 		goto skip_request;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 8ae1a1530bd8..ba2eb37874eb 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1205,7 +1205,7 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 		if (err == 0)
 			err = i915_vma_move_to_active(vma, rq, 0);
 
-		err = engine->emit_bb_start(rq, vma->node.start, 0, 0);
+		err = engine->emit_bb_start(rq, i915_vma_offset(vma), 0, 0);
 		i915_request_get(rq);
 		i915_request_add(rq);
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
index 3c55e77b0f1b..c23899646b11 100644
--- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
+++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
@@ -62,8 +62,8 @@ igt_emit_store_dw(struct i915_vma *vma,
 		goto err;
 	}
 
-	GEM_BUG_ON(offset + (count - 1) * PAGE_SIZE > vma->node.size);
-	offset += vma->node.start;
+	GEM_BUG_ON(offset + (count - 1) * PAGE_SIZE > i915_vma_size(vma));
+	offset += i915_vma_offset(vma);
 
 	for (n = 0; n < count; n++) {
 		if (ver >= 8) {
@@ -151,7 +151,8 @@ int igt_gpu_fill_dw(struct intel_context *ce,
 		flags |= I915_DISPATCH_SECURE;
 
 	err = rq->engine->emit_bb_start(rq,
-					batch->node.start, batch->node.size,
+					i915_vma_offset(batch),
+					i915_vma_size(batch),
 					flags);
 
 skip_request:
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 871fe7bda0e0..f8078f3a0a23 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -114,7 +114,9 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
 {
 	struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
 	struct i915_page_directory * const pd = ppgtt->pd;
-	unsigned int first_entry = vma_res->start / I915_GTT_PAGE_SIZE;
+	struct i915_vma *vma = container_of((void *)vma_res, struct i915_vma,
+					    resource);
+	unsigned int first_entry = i915_vma_offset(vma) / I915_GTT_PAGE_SIZE;
 	unsigned int act_pt = first_entry / GEN6_PTES;
 	unsigned int act_pte = first_entry % GEN6_PTES;
 	const u32 pte_encode = vm->pte_encode(0, cache_level, flags);
diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index 317efb145787..d38b914d1206 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -106,7 +106,7 @@ static u32 batch_offset(const struct batch_chunk *bc, u32 *cs)
 
 static u32 batch_addr(const struct batch_chunk *bc)
 {
-	return bc->vma->node.start;
+	return i915_vma_offset(bc->vma);
 }
 
 static void batch_add(struct batch_chunk *bc, const u32 d)
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index f574da00eff1..674a1537eb1c 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -560,7 +560,9 @@ static void gen8_ppgtt_insert_huge(struct i915_address_space *vm,
 {
 	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
 	unsigned int rem = sg_dma_len(iter->sg);
-	u64 start = vma_res->start;
+	struct i915_vma *vma = container_of((void *)vma_res, struct i915_vma,
+					    resource);
+	u64 start = i915_vma_offset(vma);
 
 	GEM_BUG_ON(!i915_vm_is_4lvl(vm));
 
@@ -642,8 +644,8 @@ static void gen8_ppgtt_insert_huge(struct i915_address_space *vm,
 		if (maybe_64K != -1 &&
 		    (index == I915_PDES ||
 		     (i915_vm_has_scratch_64K(vm) &&
-		      !iter->sg && IS_ALIGNED(vma_res->start +
-					      vma_res->node_size,
+		      !iter->sg && IS_ALIGNED(i915_vma_offset(vma) +
+					      i915_vma_size(vma),
 					      I915_GTT_PAGE_SIZE_2M)))) {
 			vaddr = px_vaddr(pd);
 			vaddr[maybe_64K] |= GEN8_PDE_IPS_64K;
@@ -683,6 +685,8 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
 {
 	struct i915_ppgtt * const ppgtt = i915_vm_to_ppgtt(vm);
 	struct sgt_dma iter = sgt_dma(vma_res);
+	struct i915_vma *vma = container_of((void *)vma_res, struct i915_vma,
+					    resource);
 
 	if (vma_res->bi.page_sizes.sg > I915_GTT_PAGE_SIZE) {
 		if (HAS_64K_PAGES(vm->i915))
@@ -690,7 +694,7 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
 		else
 			gen8_ppgtt_insert_huge(vm, vma_res, &iter, cache_level, flags);
 	} else  {
-		u64 idx = vma_res->start >> GEN8_PTE_SHIFT;
+		u64 idx = i915_vma_offset(vma) >> GEN8_PTE_SHIFT;
 
 		do {
 			struct i915_page_directory * const pdp =
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 8850d4e0f9cc..fab220882204 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -484,8 +484,10 @@ static void i915_ggtt_insert_entries(struct i915_address_space *vm,
 {
 	unsigned int flags = (cache_level == I915_CACHE_NONE) ?
 		AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
+	struct i915_vma *vma = container_of((void *)vma_res, struct i915_vma,
+					    resource);
 
-	intel_gtt_insert_sg_entries(vma_res->bi.pages, vma_res->start >> PAGE_SHIFT,
+	intel_gtt_insert_sg_entries(vma_res->bi.pages, i915_ggtt_offset(vma) >> PAGE_SHIFT,
 				    flags);
 }
 
@@ -679,8 +681,11 @@ static void aliasing_gtt_bind_vma(struct i915_address_space *vm,
 static void aliasing_gtt_unbind_vma(struct i915_address_space *vm,
 				    struct i915_vma_resource *vma_res)
 {
+	struct i915_vma *vma = container_of((void *)vma_res, struct i915_vma,
+					    resource);
+
 	if (vma_res->bound_flags & I915_VMA_GLOBAL_BIND)
-		vm->clear_range(vm, vma_res->start, vma_res->vma_size);
+		vm->clear_range(vm, i915_ggtt_offset(vma), vma_res->vma_size);
 
 	if (vma_res->bound_flags & I915_VMA_LOCAL_BIND)
 		ppgtt_unbind_vma(&i915_vm_to_ggtt(vm)->alias->vm, vma_res);
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 76880fb8fc19..c40e812b3397 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -218,7 +218,8 @@ static int fence_update(struct i915_fence_reg *fence,
 				return ret;
 		}
 
-		fence->start = vma->node.start;
+		GEM_BUG_ON(vma->fence_size > i915_vma_size(vma));
+		fence->start = i915_ggtt_offset(vma);
 		fence->size = vma->fence_size;
 		fence->stride = i915_gem_object_get_stride(vma->obj);
 		fence->tiling = i915_gem_object_get_tiling(vma->obj);
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index d91e2beb7517..48013ae0ca6c 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -184,11 +184,14 @@ void ppgtt_bind_vma(struct i915_address_space *vm,
 		    enum i915_cache_level cache_level,
 		    u32 flags)
 {
+	struct i915_vma *vma = container_of((void *)vma_res, struct i915_vma,
+					    resource);
 	u32 pte_flags;
 
 	if (!vma_res->allocated) {
-		vm->allocate_va_range(vm, stash, vma_res->start,
-				      vma_res->vma_size);
+		GEM_BUG_ON(vma->size > i915_vma_size(vma));
+		vm->allocate_va_range(vm, stash, i915_vma_offset(vma),
+				      vma->size);
 		vma_res->allocated = true;
 	}
 
@@ -206,8 +209,11 @@ void ppgtt_bind_vma(struct i915_address_space *vm,
 void ppgtt_unbind_vma(struct i915_address_space *vm,
 		      struct i915_vma_resource *vma_res)
 {
+	struct i915_vma *vma = container_of((void *)vma_res, struct i915_vma,
+					    resource);
+
 	if (vma_res->allocated)
-		vm->clear_range(vm, vma_res->start, vma_res->vma_size);
+		vm->clear_range(vm, i915_vma_offset(vma), vma->size);
 }
 
 static unsigned long pd_count(u64 size, int shift)
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 5121e6dc2fa5..e3af081c4134 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -63,7 +63,7 @@ static int render_state_setup(struct intel_renderstate *so,
 		u32 s = rodata->batch[i];
 
 		if (i * 4  == rodata->reloc[reloc_index]) {
-			u64 r = s + so->vma->node.start;
+			u64 r = s + i915_vma_offset(so->vma);
 
 			s = lower_32_bits(r);
 			if (HAS_64BIT_RELOC(i915)) {
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 6d7ec3bf1f32..4a2d273393c8 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -892,7 +892,7 @@ static int clear_residuals(struct i915_request *rq)
 	}
 
 	ret = engine->emit_bb_start(rq,
-				    engine->wa_ctx.vma->node.start, 0,
+				    i915_vma_offset(engine->wa_ctx.vma), 0,
 				    0);
 	if (ret)
 		return ret;
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
index 1b75f478d1b8..eff147ab3369 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
@@ -165,7 +165,7 @@ static int perf_mi_bb_start(void *arg)
 				goto out;
 
 			err = rq->engine->emit_bb_start(rq,
-							batch->node.start, 8,
+							i915_vma_offset(batch), 8,
 							0);
 			if (err)
 				goto out;
@@ -305,7 +305,7 @@ static int perf_mi_noop(void *arg)
 				goto out;
 
 			err = rq->engine->emit_bb_start(rq,
-							base->node.start, 8,
+							i915_vma_offset(base), 8,
 							0);
 			if (err)
 				goto out;
@@ -315,8 +315,8 @@ static int perf_mi_noop(void *arg)
 				goto out;
 
 			err = rq->engine->emit_bb_start(rq,
-							nop->node.start,
-							nop->node.size,
+							i915_vma_offset(nop),
+							i915_vma_size(nop),
 							0);
 			if (err)
 				goto out;
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 72d5faab8f9a..c3bd9c7dd156 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -2733,11 +2733,11 @@ static int create_gang(struct intel_engine_cs *engine,
 		MI_SEMAPHORE_POLL |
 		MI_SEMAPHORE_SAD_EQ_SDD;
 	*cs++ = 0;
-	*cs++ = lower_32_bits(vma->node.start);
-	*cs++ = upper_32_bits(vma->node.start);
+	*cs++ = lower_32_bits(i915_vma_offset(vma));
+	*cs++ = upper_32_bits(i915_vma_offset(vma));
 
 	if (*prev) {
-		u64 offset = (*prev)->batch->node.start;
+		u64 offset = i915_vma_offset((*prev)->batch);
 
 		/* Terminate the spinner in the next lower priority batch. */
 		*cs++ = MI_STORE_DWORD_IMM_GEN4;
@@ -2765,7 +2765,7 @@ static int create_gang(struct intel_engine_cs *engine,
 		err = i915_vma_move_to_active(vma, rq, 0);
 	if (!err)
 		err = rq->engine->emit_bb_start(rq,
-						vma->node.start,
+						i915_vma_offset(vma),
 						PAGE_SIZE, 0);
 	i915_vma_unlock(vma);
 	i915_request_add(rq);
@@ -3093,7 +3093,7 @@ create_gpr_user(struct intel_engine_cs *engine,
 		*cs++ = MI_MATH_ADD;
 		*cs++ = MI_MATH_STORE(MI_MATH_REG(i), MI_MATH_REG_ACCU);
 
-		addr = result->node.start + offset + i * sizeof(*cs);
+		addr = i915_vma_offset(result) + offset + i * sizeof(*cs);
 		*cs++ = MI_STORE_REGISTER_MEM_GEN8;
 		*cs++ = CS_GPR(engine, 2 * i);
 		*cs++ = lower_32_bits(addr);
@@ -3103,8 +3103,8 @@ create_gpr_user(struct intel_engine_cs *engine,
 			MI_SEMAPHORE_POLL |
 			MI_SEMAPHORE_SAD_GTE_SDD;
 		*cs++ = i;
-		*cs++ = lower_32_bits(result->node.start);
-		*cs++ = upper_32_bits(result->node.start);
+		*cs++ = lower_32_bits(i915_vma_offset(result));
+		*cs++ = upper_32_bits(i915_vma_offset(result));
 	}
 
 	*cs++ = MI_BATCH_BUFFER_END;
@@ -3188,7 +3188,7 @@ create_gpr_client(struct intel_engine_cs *engine,
 		err = i915_vma_move_to_active(batch, rq, 0);
 	if (!err)
 		err = rq->engine->emit_bb_start(rq,
-						batch->node.start,
+						i915_vma_offset(batch),
 						PAGE_SIZE, 0);
 	i915_vma_unlock(batch);
 	i915_vma_unpin(batch);
@@ -3520,7 +3520,7 @@ static int smoke_submit(struct preempt_smoke *smoke,
 			err = i915_vma_move_to_active(vma, rq, 0);
 		if (!err)
 			err = rq->engine->emit_bb_start(rq,
-							vma->node.start,
+							i915_vma_offset(vma),
 							PAGE_SIZE, 0);
 		i915_vma_unlock(vma);
 	}
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 83ff4c2e57c5..b06c23411b61 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -96,7 +96,8 @@ static int hang_init(struct hang *h, struct intel_gt *gt)
 static u64 hws_address(const struct i915_vma *hws,
 		       const struct i915_request *rq)
 {
-	return hws->node.start + offset_in_page(sizeof(u32)*rq->fence.context);
+	return i915_vma_offset(hws) +
+	       offset_in_page(sizeof(u32) * rq->fence.context);
 }
 
 static int move_to_active(struct i915_vma *vma,
@@ -196,8 +197,8 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 
 		*batch++ = MI_NOOP;
 		*batch++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
-		*batch++ = lower_32_bits(vma->node.start);
-		*batch++ = upper_32_bits(vma->node.start);
+		*batch++ = lower_32_bits(i915_vma_offset(vma));
+		*batch++ = upper_32_bits(i915_vma_offset(vma));
 	} else if (GRAPHICS_VER(gt->i915) >= 6) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4;
 		*batch++ = 0;
@@ -210,7 +211,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 
 		*batch++ = MI_NOOP;
 		*batch++ = MI_BATCH_BUFFER_START | 1 << 8;
-		*batch++ = lower_32_bits(vma->node.start);
+		*batch++ = lower_32_bits(i915_vma_offset(vma));
 	} else if (GRAPHICS_VER(gt->i915) >= 4) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 		*batch++ = 0;
@@ -223,7 +224,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 
 		*batch++ = MI_NOOP;
 		*batch++ = MI_BATCH_BUFFER_START | 2 << 6;
-		*batch++ = lower_32_bits(vma->node.start);
+		*batch++ = lower_32_bits(i915_vma_offset(vma));
 	} else {
 		*batch++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
 		*batch++ = lower_32_bits(hws_address(hws, rq));
@@ -235,7 +236,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 
 		*batch++ = MI_NOOP;
 		*batch++ = MI_BATCH_BUFFER_START | 2 << 6;
-		*batch++ = lower_32_bits(vma->node.start);
+		*batch++ = lower_32_bits(i915_vma_offset(vma));
 	}
 	*batch++ = MI_BATCH_BUFFER_END; /* not reached */
 	intel_gt_chipset_flush(engine->gt);
@@ -250,7 +251,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 	if (GRAPHICS_VER(gt->i915) <= 5)
 		flags |= I915_DISPATCH_SECURE;
 
-	err = rq->engine->emit_bb_start(rq, vma->node.start, PAGE_SIZE, flags);
+	err = rq->engine->emit_bb_start(rq, i915_vma_offset(vma), PAGE_SIZE, flags);
 
 cancel_rq:
 	if (err) {
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 21c29d315cc0..80bea1d3f9e6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -957,8 +957,8 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
 		while (len--) {
 			*cs++ = MI_STORE_REGISTER_MEM_GEN8;
 			*cs++ = hw[dw];
-			*cs++ = lower_32_bits(scratch->node.start + x);
-			*cs++ = upper_32_bits(scratch->node.start + x);
+			*cs++ = lower_32_bits(i915_vma_offset(scratch) + x);
+			*cs++ = upper_32_bits(i915_vma_offset(scratch) + x);
 
 			dw += 2;
 			x += 4;
@@ -1040,8 +1040,8 @@ record_registers(struct intel_context *ce,
 
 	*cs++ = MI_ARB_ON_OFF | MI_ARB_DISABLE;
 	*cs++ = MI_BATCH_BUFFER_START_GEN8 | BIT(8);
-	*cs++ = lower_32_bits(b_before->node.start);
-	*cs++ = upper_32_bits(b_before->node.start);
+	*cs++ = lower_32_bits(i915_vma_offset(b_before));
+	*cs++ = upper_32_bits(i915_vma_offset(b_before));
 
 	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
 	*cs++ = MI_SEMAPHORE_WAIT |
@@ -1056,8 +1056,8 @@ record_registers(struct intel_context *ce,
 
 	*cs++ = MI_ARB_ON_OFF | MI_ARB_DISABLE;
 	*cs++ = MI_BATCH_BUFFER_START_GEN8 | BIT(8);
-	*cs++ = lower_32_bits(b_after->node.start);
-	*cs++ = upper_32_bits(b_after->node.start);
+	*cs++ = lower_32_bits(i915_vma_offset(b_after));
+	*cs++ = upper_32_bits(i915_vma_offset(b_after));
 
 	intel_ring_advance(rq, cs);
 
@@ -1165,8 +1165,8 @@ static int poison_registers(struct intel_context *ce, u32 poison, u32 *sema)
 
 	*cs++ = MI_ARB_ON_OFF | MI_ARB_DISABLE;
 	*cs++ = MI_BATCH_BUFFER_START_GEN8 | BIT(8);
-	*cs++ = lower_32_bits(batch->node.start);
-	*cs++ = upper_32_bits(batch->node.start);
+	*cs++ = lower_32_bits(i915_vma_offset(batch));
+	*cs++ = upper_32_bits(i915_vma_offset(batch));
 
 	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 	*cs++ = i915_ggtt_offset(ce->engine->status_page.vma) +
diff --git a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
index 70f9ac1ec2c7..87ceb0f374b6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
@@ -50,7 +50,7 @@ static struct i915_vma *create_wally(struct intel_engine_cs *engine)
 	} else {
 		*cs++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
 	}
-	*cs++ = vma->node.start + 4000;
+	*cs++ = i915_vma_offset(vma) + 4000;
 	*cs++ = STACK_MAGIC;
 
 	*cs++ = MI_BATCH_BUFFER_END;
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 6a69ac0184ad..9a28b559b128 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -122,14 +122,14 @@ create_spin_counter(struct intel_engine_cs *engine,
 		if (srm) {
 			*cs++ = MI_STORE_REGISTER_MEM_GEN8;
 			*cs++ = i915_mmio_reg_offset(CS_GPR(COUNT));
-			*cs++ = lower_32_bits(vma->node.start + end * sizeof(*cs));
-			*cs++ = upper_32_bits(vma->node.start + end * sizeof(*cs));
+			*cs++ = lower_32_bits(i915_vma_offset(vma) + end * sizeof(*cs));
+			*cs++ = upper_32_bits(i915_vma_offset(vma) + end * sizeof(*cs));
 		}
 	}
 
 	*cs++ = MI_BATCH_BUFFER_START_GEN8;
-	*cs++ = lower_32_bits(vma->node.start + loop * sizeof(*cs));
-	*cs++ = upper_32_bits(vma->node.start + loop * sizeof(*cs));
+	*cs++ = lower_32_bits(i915_vma_offset(vma) + loop * sizeof(*cs));
+	*cs++ = upper_32_bits(i915_vma_offset(vma) + loop * sizeof(*cs));
 	GEM_BUG_ON(cs - base > end);
 
 	i915_gem_object_flush_map(obj);
@@ -657,7 +657,7 @@ int live_rps_frequency_cs(void *arg)
 			err = i915_vma_move_to_active(vma, rq, 0);
 		if (!err)
 			err = rq->engine->emit_bb_start(rq,
-							vma->node.start,
+							i915_vma_offset(vma),
 							PAGE_SIZE, 0);
 		i915_request_add(rq);
 		if (err)
@@ -798,7 +798,7 @@ int live_rps_frequency_srm(void *arg)
 			err = i915_vma_move_to_active(vma, rq, 0);
 		if (!err)
 			err = rq->engine->emit_bb_start(rq,
-							vma->node.start,
+							i915_vma_offset(vma),
 							PAGE_SIZE, 0);
 		i915_request_add(rq);
 		if (err)
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 67a9aab801dd..c8e1d98fcb52 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -523,7 +523,7 @@ static int check_dirty_whitelist(struct intel_context *ce)
 	for (i = 0; i < engine->whitelist.count; i++) {
 		u32 reg = i915_mmio_reg_offset(engine->whitelist.list[i].reg);
 		struct i915_gem_ww_ctx ww;
-		u64 addr = scratch->node.start;
+		u64 addr = i915_vma_offset(scratch);
 		struct i915_request *rq;
 		u32 srm, lrm, rsvd;
 		u32 expect;
@@ -646,7 +646,7 @@ static int check_dirty_whitelist(struct intel_context *ce)
 			goto err_request;
 
 		err = engine->emit_bb_start(rq,
-					    batch->node.start, PAGE_SIZE,
+					    i915_vma_offset(batch), PAGE_SIZE,
 					    0);
 		if (err)
 			goto err_request;
@@ -878,7 +878,7 @@ static int read_whitelisted_registers(struct intel_context *ce,
 	}
 
 	for (i = 0; i < engine->whitelist.count; i++) {
-		u64 offset = results->node.start + sizeof(u32) * i;
+		u64 offset = i915_vma_offset(results) + sizeof(u32) * i;
 		u32 reg = i915_mmio_reg_offset(engine->whitelist.list[i].reg);
 
 		/* Clear non priv flags */
@@ -952,7 +952,7 @@ static int scrub_whitelisted_registers(struct intel_context *ce)
 		goto err_request;
 
 	/* Perform the writes from an unprivileged "user" batch */
-	err = engine->emit_bb_start(rq, batch->node.start, 0, 0);
+	err = engine->emit_bb_start(rq, i915_vma_offset(batch), 0, 0);
 
 err_request:
 	err = request_add_sync(rq, err);
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 5f6e41636655..b4ef0a5a9350 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1469,8 +1469,8 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 		/* Defer failure until attempted use */
 		jump_whitelist = alloc_whitelist(batch_length);
 
-	shadow_addr = gen8_canonical_addr(shadow->node.start);
-	batch_addr = gen8_canonical_addr(batch->node.start + batch_offset);
+	shadow_addr = gen8_canonical_addr(i915_vma_offset(shadow));
+	batch_addr = gen8_canonical_addr(i915_vma_offset(batch) + batch_offset);
 
 	/*
 	 * We use the batch length as size because the shadow object is as
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 946bbe57bfe5..6d2a5f25926f 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -182,7 +182,7 @@ i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
 
 		seq_printf(m, " (%s offset: %08llx, size: %08llx, pages: %s",
 			   stringify_vma_type(vma),
-			   vma->node.start, vma->node.size,
+			   i915_vma_offset(vma), i915_vma_size(vma),
 			   stringify_page_sizes(vma->resource->page_sizes_gtt,
 						NULL, 0));
 		if (i915_vma_is_ggtt(vma) || i915_vma_is_dpt(vma)) {
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 0a9c3fcc09b1..da972eaf0f01 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2021,7 +2021,7 @@ emit_oa_config(struct i915_perf_stream *stream,
 		goto err_add_request;
 
 	err = rq->engine->emit_bb_start(rq,
-					vma->node.start, 0,
+					i915_vma_offset(vma), 0,
 					I915_DISPATCH_SECURE);
 	if (err)
 		goto err_add_request;
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 3558b16a929c..447b14778070 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -426,7 +426,7 @@ int i915_vma_bind(struct i915_vma *vma,
 
 	lockdep_assert_held(&vma->vm->mutex);
 	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
-	GEM_BUG_ON(vma->size > vma->node.size);
+	GEM_BUG_ON(vma->size > i915_vma_size(vma));
 
 	if (GEM_DEBUG_WARN_ON(range_overflows(vma->node.start,
 					      vma->node.size,
@@ -564,8 +564,8 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
 							  vma->obj->base.size);
 		else
 			ptr = io_mapping_map_wc(&i915_vm_to_ggtt(vma->vm)->iomap,
-						vma->node.start,
-						vma->node.size);
+						i915_vma_offset(vma),
+						i915_vma_size(vma));
 		if (ptr == NULL) {
 			err = -ENOMEM;
 			goto err;
@@ -639,22 +639,22 @@ bool i915_vma_misplaced(const struct i915_vma *vma,
 	if (test_bit(I915_VMA_ERROR_BIT, __i915_vma_flags(vma)))
 		return true;
 
-	if (vma->node.size < size)
+	if (i915_vma_size(vma) < size)
 		return true;
 
 	GEM_BUG_ON(alignment && !is_power_of_2(alignment));
-	if (alignment && !IS_ALIGNED(vma->node.start, alignment))
+	if (alignment && !IS_ALIGNED(i915_vma_offset(vma), alignment))
 		return true;
 
 	if (flags & PIN_MAPPABLE && !i915_vma_is_map_and_fenceable(vma))
 		return true;
 
 	if (flags & PIN_OFFSET_BIAS &&
-	    vma->node.start < (flags & PIN_OFFSET_MASK))
+	    i915_vma_offset(vma) < (flags & PIN_OFFSET_MASK))
 		return true;
 
 	if (flags & PIN_OFFSET_FIXED &&
-	    vma->node.start != (flags & PIN_OFFSET_MASK))
+	    i915_vma_offset(vma) != (flags & PIN_OFFSET_MASK))
 		return true;
 
 	return false;
@@ -667,10 +667,11 @@ void __i915_vma_set_map_and_fenceable(struct i915_vma *vma)
 	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
 	GEM_BUG_ON(!vma->fence_size);
 
-	fenceable = (vma->node.size >= vma->fence_size &&
-		     IS_ALIGNED(vma->node.start, vma->fence_alignment));
+	fenceable = (i915_vma_size(vma) >= vma->fence_size &&
+		     IS_ALIGNED(i915_vma_offset(vma), vma->fence_alignment));
 
-	mappable = vma->node.start + vma->fence_size <= i915_vm_to_ggtt(vma->vm)->mappable_end;
+	mappable = i915_ggtt_offset(vma) + vma->fence_size <=
+		   i915_vm_to_ggtt(vma->vm)->mappable_end;
 
 	if (mappable && fenceable)
 		set_bit(I915_VMA_CAN_FENCE_BIT, __i915_vma_flags(vma));
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 011af044ad4f..0371c60098c0 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -124,13 +124,31 @@ static inline bool i915_vma_is_closed(const struct i915_vma *vma)
 	return !list_empty(&vma->closed_link);
 }
 
+static inline u64 i915_vma_size(const struct i915_vma *vma)
+{
+	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
+	return vma->node.size;
+}
+
+static inline u64 __i915_vma_offset(const struct i915_vma *vma)
+{
+	return vma->node.start;
+}
+
+static inline u64 i915_vma_offset(const struct i915_vma *vma)
+{
+	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
+	return __i915_vma_offset(vma);
+}
+
 static inline u32 i915_ggtt_offset(const struct i915_vma *vma)
 {
 	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
 	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
-	GEM_BUG_ON(upper_32_bits(vma->node.start));
-	GEM_BUG_ON(upper_32_bits(vma->node.start + vma->node.size - 1));
-	return lower_32_bits(vma->node.start);
+	GEM_BUG_ON(upper_32_bits(i915_vma_offset(vma)));
+	GEM_BUG_ON(upper_32_bits(i915_vma_offset(vma) +
+				 i915_vma_size(vma) - 1));
+	return lower_32_bits(i915_vma_size(vma));
 }
 
 static inline u32 i915_ggtt_pin_bias(struct i915_vma *vma)
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index ab751192eb3b..1febfc8cb000 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -245,11 +245,16 @@ static int lowlevel_hole(struct i915_address_space *vm,
 		i915_vm_min_alignment(vm, INTEL_MEMORY_SYSTEM);
 	I915_RND_STATE(seed_prng);
 	struct i915_vma_resource *mock_vma_res;
+	struct i915_vma *mock_vma;
 	unsigned int size;
 
 	mock_vma_res = kzalloc(sizeof(*mock_vma_res), GFP_KERNEL);
 	if (!mock_vma_res)
 		return -ENOMEM;
+	mock_vma = container_of((void *)mock_vma_res, struct i915_vma, resource);
+	__set_bit(DRM_MM_NODE_ALLOCATED_BIT, &mock_vma->node.flags);
+	if (i915_is_ggtt(vm))
+		__set_bit(I915_VMA_GGTT_BIT, __i915_vma_flags(mock_vma));
 
 	/* Keep creating larger objects until one cannot fit into the hole */
 	for (size = 12; (hole_end - hole_start) >> size; size++) {
@@ -2171,6 +2176,7 @@ static int igt_cs_tlb(void *arg)
 			}
 
 			i915_vma_resource_init_from_vma(vma_res, vma);
+			__set_bit(DRM_MM_NODE_ALLOCATED_BIT, &vma->node.flags);
 			/* Prime the TLB with the dummy pages */
 			for (i = 0; i < count; i++) {
 				vma_res->start = offset + i * PAGE_SIZE;
@@ -2188,7 +2194,8 @@ static int igt_cs_tlb(void *arg)
 			}
 			i915_vma_resource_fini(vma_res);
 			i915_vma_put_pages(vma);
-
+			clear_bit(DRM_MM_NODE_ALLOCATED_BIT,
+				  &vma->node.flags);
 			err = context_sync(ce);
 			if (err) {
 				pr_err("%s: dummy setup timed out\n",
@@ -2213,6 +2220,7 @@ static int igt_cs_tlb(void *arg)
 			}
 
 			i915_vma_resource_init_from_vma(vma_res, vma);
+			__set_bit(DRM_MM_NODE_ALLOCATED_BIT, &vma->node.flags);
 			/* Replace the TLB with target batches */
 			for (i = 0; i < count; i++) {
 				struct i915_request *rq;
@@ -2253,6 +2261,8 @@ static int igt_cs_tlb(void *arg)
 			kfree(vma_res);
 			i915_vma_put_pages(vma);
 
+			clear_bit(DRM_MM_NODE_ALLOCATED_BIT,
+				  &vma->node.flags);
 			err = context_sync(ce);
 			if (err) {
 				pr_err("%s: writes timed out\n",
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index c56a0c2cd2f7..552c490c05fe 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -997,8 +997,8 @@ empty_request(struct intel_engine_cs *engine,
 		return request;
 
 	err = engine->emit_bb_start(request,
-				    batch->node.start,
-				    batch->node.size,
+				    i915_vma_offset(batch),
+				    i915_vma_size(batch),
 				    I915_DISPATCH_SECURE);
 	if (err)
 		goto out_request;
@@ -1118,14 +1118,14 @@ static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
 
 	if (ver >= 8) {
 		*cmd++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
-		*cmd++ = lower_32_bits(vma->node.start);
-		*cmd++ = upper_32_bits(vma->node.start);
+		*cmd++ = lower_32_bits(i915_vma_offset(vma));
+		*cmd++ = upper_32_bits(i915_vma_offset(vma));
 	} else if (ver >= 6) {
 		*cmd++ = MI_BATCH_BUFFER_START | 1 << 8;
-		*cmd++ = lower_32_bits(vma->node.start);
+		*cmd++ = lower_32_bits(i915_vma_offset(vma));
 	} else {
 		*cmd++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
-		*cmd++ = lower_32_bits(vma->node.start);
+		*cmd++ = lower_32_bits(i915_vma_offset(vma));
 	}
 	*cmd++ = MI_BATCH_BUFFER_END; /* terminate early in case of error */
 
@@ -1209,8 +1209,8 @@ static int live_all_engines(void *arg)
 		GEM_BUG_ON(err);
 
 		err = engine->emit_bb_start(request[idx],
-					    batch->node.start,
-					    batch->node.size,
+					    i915_vma_offset(batch),
+					    i915_vma_size(batch),
 					    0);
 		GEM_BUG_ON(err);
 		request[idx]->batch = batch;
@@ -1339,8 +1339,8 @@ static int live_sequential_engines(void *arg)
 		GEM_BUG_ON(err);
 
 		err = engine->emit_bb_start(request[idx],
-					    batch->node.start,
-					    batch->node.size,
+					    i915_vma_offset(batch),
+					    i915_vma_size(batch),
 					    0);
 		GEM_BUG_ON(err);
 		request[idx]->batch = batch;
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 0c22594ae274..4b8dc72d499f 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -116,7 +116,7 @@ static unsigned int seqno_offset(u64 fence)
 static u64 hws_address(const struct i915_vma *hws,
 		       const struct i915_request *rq)
 {
-	return hws->node.start + seqno_offset(rq->fence.context);
+	return i915_vma_offset(hws) + seqno_offset(rq->fence.context);
 }
 
 static int move_to_active(struct i915_vma *vma,
@@ -203,8 +203,8 @@ igt_spinner_create_request(struct igt_spinner *spin,
 		*batch++ = MI_BATCH_BUFFER_START;
 	else
 		*batch++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
-	*batch++ = lower_32_bits(vma->node.start);
-	*batch++ = upper_32_bits(vma->node.start);
+	*batch++ = lower_32_bits(i915_vma_offset(vma));
+	*batch++ = upper_32_bits(i915_vma_offset(vma));
 
 	*batch++ = MI_BATCH_BUFFER_END; /* not reached */
 
@@ -219,7 +219,7 @@ igt_spinner_create_request(struct igt_spinner *spin,
 	flags = 0;
 	if (GRAPHICS_VER(rq->engine->i915) <= 5)
 		flags |= I915_DISPATCH_SECURE;
-	err = engine->emit_bb_start(rq, vma->node.start, PAGE_SIZE, flags);
+	err = engine->emit_bb_start(rq, i915_vma_offset(vma), PAGE_SIZE, flags);
 
 cancel_rq:
 	if (err) {
-- 
2.34.1

