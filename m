Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D21319C90
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 11:22:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86A366E58B;
	Fri, 12 Feb 2021 10:22:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A95386E58A
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 10:22:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23846943-1500050 
 for multiple; Fri, 12 Feb 2021 10:22:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Feb 2021 10:22:22 +0000
Message-Id: <20210212102224.31060-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Wrap all access to
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

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

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  6 ++--
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 29 ++++++++++---------
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  2 +-
 .../gpu/drm/i915/gem/i915_gem_object_blt.c    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  4 +--
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  2 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  | 11 +++----
 .../drm/i915/gem/selftests/i915_gem_context.c | 16 ++++++----
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  2 +-
 .../drm/i915/gem/selftests/igt_gem_utils.c    |  4 +--
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  2 +-
 drivers/gpu/drm/i915/gt/gen7_renderclear.c    |  2 +-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  8 ++---
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  5 ++--
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  3 +-
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  7 +++--
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  8 ++---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 14 +++++----
 .../drm/i915/gt/selftest_ring_submission.c    |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c        | 12 ++++----
 drivers/gpu/drm/i915/i915_debugfs.c           |  3 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  4 +--
 drivers/gpu/drm/i915/i915_perf.c              |  2 +-
 drivers/gpu/drm/i915/i915_vma.c               | 21 +++++++-------
 drivers/gpu/drm/i915/i915_vma.h               | 18 ++++++++++--
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 12 ++++++--
 drivers/gpu/drm/i915/selftests/i915_request.c |  8 ++---
 .../gpu/drm/i915/selftests/i915_scheduler.c   |  4 +--
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |  9 ++++--
 32 files changed, 134 insertions(+), 94 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 07db8e83f98e..2a72fb3c8416 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -237,8 +237,8 @@ static int intelfb_create(struct drm_fb_helper *helper,
 
 	/* Our framebuffer is the entirety of fbdev's system memory */
 	info->fix.smem_start =
-		(unsigned long)(ggtt->gmadr.start + vma->node.start);
-	info->fix.smem_len = vma->node.size;
+		(unsigned long)(ggtt->gmadr.start + i915_ggtt_offset(vma));
+	info->fix.smem_len = vma->size;
 
 	vaddr = i915_vma_pin_iomap(vma);
 	if (IS_ERR(vaddr)) {
@@ -248,7 +248,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		goto out_unpin;
 	}
 	info->screen_base = vaddr;
-	info->screen_size = vma->node.size;
+	info->screen_size = vma->size;
 
 	drm_fb_helper_fill_info(info, &ifbdev->helper, sizes);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index fe170186dd42..f75f6751cf3f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -368,22 +368,23 @@ eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
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
 
-	if (flags & EXEC_OBJECT_PINNED &&
-	    vma->node.start != entry->offset)
+	if (flags & EXEC_OBJECT_PINNED && start != entry->offset)
 		return true;
 
-	if (flags & __EXEC_OBJECT_NEEDS_BIAS &&
-	    vma->node.start < BATCH_OFFSET_BIAS)
+	if (flags & __EXEC_OBJECT_NEEDS_BIAS && start < BATCH_OFFSET_BIAS)
 		return true;
 
 	if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS) &&
-	    (vma->node.start + vma->node.size + 4095) >> 32)
+	    (start + size + 4095) >> 32)
 		return true;
 
 	if (flags & __EXEC_OBJECT_NEEDS_MAP &&
@@ -607,8 +608,8 @@ static int eb_reserve_vma(struct i915_execbuffer *eb,
 	if (err)
 		return err;
 
-	if (entry->offset != vma->node.start) {
-		entry->offset = vma->node.start | UPDATE;
+	if (entry->offset != i915_vma_offset(vma)) {
+		entry->offset = i915_vma_offset(vma) | UPDATE;
 		eb->args->flags |= __EXEC_HAS_RELOC;
 	}
 
@@ -899,8 +900,8 @@ static int eb_validate_vmas(struct i915_execbuffer *eb)
 			return err;
 
 		if (eb_pin_vma(eb, entry, ev)) {
-			if (entry->offset != vma->node.start) {
-				entry->offset = vma->node.start | UPDATE;
+			if (entry->offset != i915_vma_offset(vma)) {
+				entry->offset = i915_vma_offset(vma) | UPDATE;
 				eb->args->flags |= __EXEC_HAS_RELOC;
 			}
 		} else {
@@ -1173,7 +1174,7 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
 			if (err) /* no inactive aperture space, use cpu reloc */
 				return NULL;
 		} else {
-			cache->node.start = vma->node.start;
+			cache->node.start = i915_ggtt_offset(vma);
 			cache->node.mm = (void *)vma;
 		}
 	}
@@ -1458,7 +1459,7 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 	else if (IS_ERR(batch))
 		return false;
 
-	addr = gen8_canonical_addr(vma->node.start + offset);
+	addr = gen8_canonical_addr(i915_vma_offset(vma) + offset);
 	if (gen >= 8) {
 		if (offset & 7) {
 			*batch++ = MI_STORE_DWORD_IMM_GEN4;
@@ -1622,7 +1623,7 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 	 * more work needs to be done.
 	 */
 	if (!DBG_FORCE_RELOC &&
-	    gen8_canonical_addr(target->vma->node.start) == reloc->presumed_offset)
+	    gen8_canonical_addr(i915_vma_offset(target->vma)) == reloc->presumed_offset)
 		return 0;
 
 	/* Check that the relocation address is valid... */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index ec28a6cde49b..02cb84285dbb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -365,7 +365,7 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 	/* Finally, remap it using the new GTT offset */
 	ret = remap_io_mapping(area,
 			       area->vm_start + (vma->ggtt_view.partial.offset << PAGE_SHIFT),
-			       (ggtt->gmadr.start + vma->node.start) >> PAGE_SHIFT,
+			       (ggtt->gmadr.start + i915_ggtt_offset(vma)) >> PAGE_SHIFT,
 			       min_t(u64, vma->size, area->vm_end - area->vm_start),
 			       &ggtt->iomap);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
index d6dac21fce0b..c6222a99d89b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
@@ -62,7 +62,7 @@ struct i915_vma *intel_emit_vma_fill_blt(struct intel_context *ce,
 	}
 
 	rem = vma->size;
-	offset = vma->node.start;
+	offset = i915_vma_offset(vma);
 
 	do {
 		u32 size = min_t(u64, rem, block_size);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index b64a0788381f..7a1a90cd8bcd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -376,7 +376,7 @@ i915_gem_shrinker_vmap(struct notifier_block *nb, unsigned long event, void *ptr
 	mutex_lock(&i915->ggtt.vm.mutex);
 	list_for_each_entry_safe(vma, next,
 				 &i915->ggtt.vm.bound_list, vm_link) {
-		unsigned long count = vma->node.size >> PAGE_SHIFT;
+		unsigned long count = i915_vma_size(vma) >> PAGE_SHIFT;
 
 		if (!vma->iomap || i915_vma_is_active(vma))
 			continue;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index d589d3d81085..b92bcb04f563 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -166,11 +166,11 @@ static bool i915_vma_fence_prepare(struct i915_vma *vma,
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
index 10ee24b252dd..4b50af149cfc 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -377,7 +377,7 @@ static int igt_check_page_sizes(struct i915_vma *vma)
 	 * Maintaining alignment is required to utilise huge pages in the ppGGT.
 	 */
 	if (i915_gem_object_is_lmem(obj) &&
-	    IS_ALIGNED(vma->node.start, SZ_2M) &&
+	    IS_ALIGNED(i915_vma_offset(vma), SZ_2M) &&
 	    vma->page_sizes.sg & SZ_2M &&
 	    vma->page_sizes.gtt < SZ_2M) {
 		pr_err("gtt pages mismatch for LMEM, expected 2M GTT pages, sg(%u), gtt(%u)\n",
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 175581724d44..586b57b8d957 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -212,14 +212,14 @@ static int prepare_blit(const struct tiled_blits *t,
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
 
@@ -435,7 +435,7 @@ static int pin_buffer(struct i915_vma *vma, u64 addr)
 {
 	int err;
 
-	if (drm_mm_node_allocated(&vma->node) && vma->node.start != addr) {
+	if (drm_mm_node_allocated(&vma->node) && i915_vma_offset(vma) != addr) {
 		err = i915_vma_unbind(vma);
 		if (err)
 			return err;
@@ -445,6 +445,7 @@ static int pin_buffer(struct i915_vma *vma, u64 addr)
 	if (err)
 		return err;
 
+	GEM_BUG_ON(i915_vma_offset(vma) != addr);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index df949320f2b5..39fc548d927a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -905,8 +905,8 @@ static int rpcs_query_batch(struct drm_i915_gem_object *rpcs, struct i915_vma *v
 
 	*cmd++ = MI_STORE_REGISTER_MEM_GEN8;
 	*cmd++ = i915_mmio_reg_offset(GEN8_R_PWR_CLK_STATE);
-	*cmd++ = lower_32_bits(vma->node.start);
-	*cmd++ = upper_32_bits(vma->node.start);
+	*cmd++ = lower_32_bits(i915_vma_offset(vma));
+	*cmd++ = upper_32_bits(i915_vma_offset(vma));
 	*cmd = MI_BATCH_BUFFER_END;
 
 	__i915_gem_object_flush_map(rpcs, 0, 64);
@@ -1561,7 +1561,10 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 			goto skip_request;
 	}
 
-	err = engine->emit_bb_start(rq, vma->node.start, vma->node.size, 0);
+	err = engine->emit_bb_start(rq,
+				    i915_vma_offset(vma),
+				    i915_vma_size(vma),
+				    0);
 	if (err)
 		goto skip_request;
 
@@ -1668,7 +1671,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 		*cmd++ = offset;
 		*cmd++ = MI_STORE_REGISTER_MEM | MI_USE_GGTT;
 		*cmd++ = reg;
-		*cmd++ = vma->node.start + result;
+		*cmd++ = i915_vma_offset(vma) + result;
 		*cmd = MI_BATCH_BUFFER_END;
 
 		i915_gem_object_flush_map(obj);
@@ -1699,7 +1702,10 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 			goto skip_request;
 	}
 
-	err = engine->emit_bb_start(rq, vma->node.start, vma->node.size, flags);
+	err = engine->emit_bb_start(rq,
+				    i915_vma_offset(vma),
+				    i915_vma_size(vma),
+				    flags);
 	if (err)
 		goto skip_request;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 39293d98f34d..d37706807703 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1145,7 +1145,7 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 		if (err == 0)
 			err = i915_vma_move_to_active(vma, rq, 0);
 
-		err = engine->emit_bb_start(rq, vma->node.start, 0, 0);
+		err = engine->emit_bb_start(rq, i915_vma_offset(vma), 0, 0);
 		i915_request_get(rq);
 		i915_request_add(rq);
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
index b7e064667d39..e967e0fb79c5 100644
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
 		if (gen >= 8) {
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index e08dff376339..d16cfa75c03a 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -111,7 +111,7 @@ static void gen6_ppgtt_insert_entries(struct i915_address_space *vm,
 {
 	struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
 	struct i915_page_directory * const pd = ppgtt->pd;
-	unsigned int first_entry = vma->node.start / I915_GTT_PAGE_SIZE;
+	unsigned int first_entry = i915_vma_offset(vma) / I915_GTT_PAGE_SIZE;
 	unsigned int act_pt = first_entry / GEN6_PTES;
 	unsigned int act_pte = first_entry % GEN6_PTES;
 	const u32 pte_encode = vm->pte_encode(0, cache_level, flags);
diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index de575fdb033f..52e6f08d0ced 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -105,7 +105,7 @@ static u32 batch_offset(const struct batch_chunk *bc, u32 *cs)
 
 static u32 batch_addr(const struct batch_chunk *bc)
 {
-	return bc->vma->node.start;
+	return i915_vma_offset(bc->vma);
 }
 
 static void batch_add(struct batch_chunk *bc, const u32 d)
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 176c19633412..9d88d81c30d2 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -419,7 +419,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 {
 	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
 	unsigned int rem = sg_dma_len(iter->sg);
-	u64 start = vma->node.start;
+	u64 start = i915_vma_offset(vma);
 
 	GEM_BUG_ON(!i915_vm_is_4lvl(vma->vm));
 
@@ -502,8 +502,8 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 		if (maybe_64K != -1 &&
 		    (index == I915_PDES ||
 		     (i915_vm_has_scratch_64K(vma->vm) &&
-		      !iter->sg && IS_ALIGNED(vma->node.start +
-					      vma->node.size,
+		      !iter->sg && IS_ALIGNED(i915_vma_offset(vma) +
+					      i915_vma_size(vma),
 					      I915_GTT_PAGE_SIZE_2M)))) {
 			vaddr = kmap_atomic_px(pd);
 			vaddr[maybe_64K] |= GEN8_PDE_IPS_64K;
@@ -547,7 +547,7 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
 	if (vma->page_sizes.sg > I915_GTT_PAGE_SIZE) {
 		gen8_ppgtt_insert_huge(vma, &iter, cache_level, flags);
 	} else  {
-		u64 idx = vma->node.start >> GEN8_PTE_SHIFT;
+		u64 idx = i915_vma_offset(vma) >> GEN8_PTE_SHIFT;
 
 		do {
 			struct i915_page_directory * const pdp =
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index b0b8ded834f0..c5803c434d33 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -440,7 +440,8 @@ static void i915_ggtt_insert_entries(struct i915_address_space *vm,
 	unsigned int flags = (cache_level == I915_CACHE_NONE) ?
 		AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
 
-	intel_gtt_insert_sg_entries(vma->pages, vma->node.start >> PAGE_SHIFT,
+	intel_gtt_insert_sg_entries(vma->pages,
+				    i915_ggtt_offset(vma) >> PAGE_SHIFT,
 				    flags);
 }
 
@@ -631,7 +632,7 @@ static void aliasing_gtt_unbind_vma(struct i915_address_space *vm,
 				    struct i915_vma *vma)
 {
 	if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
-		vm->clear_range(vm, vma->node.start, vma->size);
+		vm->clear_range(vm, i915_ggtt_offset(vma), vma->size);
 
 	if (i915_vma_is_bound(vma, I915_VMA_LOCAL_BIND))
 		ppgtt_unbind_vma(&i915_vm_to_ggtt(vm)->alias->vm, vma);
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index e891552611d5..87160e3fed37 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -215,7 +215,8 @@ static int fence_update(struct i915_fence_reg *fence,
 				return ret;
 		}
 
-		fence->start = vma->node.start;
+		GEM_BUG_ON(vma->fence_size > i915_vma_size(vma));
+		fence->start = i915_ggtt_offset(vma);
 		fence->size = vma->fence_size;
 		fence->stride = i915_gem_object_get_stride(vma->obj);
 		fence->tiling = i915_gem_object_get_tiling(vma->obj);
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index a91955af50a6..0d11894aa848 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -186,7 +186,10 @@ void ppgtt_bind_vma(struct i915_address_space *vm,
 	u32 pte_flags;
 
 	if (!test_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma))) {
-		vm->allocate_va_range(vm, stash, vma->node.start, vma->size);
+		GEM_BUG_ON(vma->size > i915_vma_size(vma));
+		vm->allocate_va_range(vm, stash,
+				      i915_vma_offset(vma),
+				      vma->size);
 		set_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma));
 	}
 
@@ -204,7 +207,7 @@ void ppgtt_bind_vma(struct i915_address_space *vm,
 void ppgtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
 {
 	if (test_and_clear_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma)))
-		vm->clear_range(vm, vma->node.start, vma->size);
+		vm->clear_range(vm, i915_vma_offset(vma), vma->size);
 }
 
 static unsigned long pd_count(u64 size, int shift)
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 0f7c0a148b80..214a154665b5 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -61,7 +61,7 @@ static int render_state_setup(struct intel_renderstate *so,
 		u32 s = rodata->batch[i];
 
 		if (i * 4  == rodata->reloc[reloc_index]) {
-			u64 r = s + so->vma->node.start;
+			u64 r = s + i915_vma_offset(so->vma);
 
 			s = lower_32_bits(r);
 			if (HAS_64BIT_RELOC(i915)) {
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 282089d64789..2c75e3fa6350 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -824,7 +824,7 @@ static int clear_residuals(struct i915_request *rq)
 	}
 
 	ret = engine->emit_bb_start(rq,
-				    engine->wa_ctx.vma->node.start, 0,
+				    i915_vma_offset(engine->wa_ctx.vma), 0,
 				    0);
 	if (ret)
 		return ret;
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index f625c29023ea..5c8a6ccdf024 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -2704,8 +2704,8 @@ static int create_gang(struct intel_engine_cs *engine,
 		MI_SEMAPHORE_POLL |
 		MI_SEMAPHORE_SAD_EQ_SDD;
 	*cs++ = 0;
-	*cs++ = lower_32_bits(vma->node.start);
-	*cs++ = upper_32_bits(vma->node.start);
+	*cs++ = lower_32_bits(i915_vma_offset(vma));
+	*cs++ = upper_32_bits(i915_vma_offset(vma));
 
 	if (*prev) {
 		u64 offset = (*prev)->batch->node.start;
@@ -2736,7 +2736,7 @@ static int create_gang(struct intel_engine_cs *engine,
 		err = i915_vma_move_to_active(vma, rq, 0);
 	if (!err)
 		err = rq->engine->emit_bb_start(rq,
-						vma->node.start,
+						i915_vma_offset(vma),
 						PAGE_SIZE, 0);
 	i915_vma_unlock(vma);
 	i915_request_add(rq);
@@ -3486,7 +3486,7 @@ static int smoke_submit(struct preempt_smoke *smoke,
 			err = i915_vma_move_to_active(vma, rq, 0);
 		if (!err)
 			err = rq->engine->emit_bb_start(rq,
-							vma->node.start,
+							i915_vma_offset(vma),
 							PAGE_SIZE, 0);
 		i915_vma_unlock(vma);
 	}
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index cdb0ceff3be1..8540011c39cc 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -192,8 +192,8 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 
 		*batch++ = MI_NOOP;
 		*batch++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
-		*batch++ = lower_32_bits(vma->node.start);
-		*batch++ = upper_32_bits(vma->node.start);
+		*batch++ = lower_32_bits(i915_vma_offset(vma));
+		*batch++ = upper_32_bits(i915_vma_offset(vma));
 	} else if (INTEL_GEN(gt->i915) >= 6) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4;
 		*batch++ = 0;
@@ -206,7 +206,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 
 		*batch++ = MI_NOOP;
 		*batch++ = MI_BATCH_BUFFER_START | 1 << 8;
-		*batch++ = lower_32_bits(vma->node.start);
+		*batch++ = lower_32_bits(i915_vma_offset(vma));
 	} else if (INTEL_GEN(gt->i915) >= 4) {
 		*batch++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 		*batch++ = 0;
@@ -219,7 +219,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 
 		*batch++ = MI_NOOP;
 		*batch++ = MI_BATCH_BUFFER_START | 2 << 6;
-		*batch++ = lower_32_bits(vma->node.start);
+		*batch++ = lower_32_bits(i915_vma_offset(vma));
 	} else {
 		*batch++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
 		*batch++ = lower_32_bits(hws_address(hws, rq));
@@ -231,7 +231,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 
 		*batch++ = MI_NOOP;
 		*batch++ = MI_BATCH_BUFFER_START | 2 << 6;
-		*batch++ = lower_32_bits(vma->node.start);
+		*batch++ = lower_32_bits(i915_vma_offset(vma));
 	}
 	*batch++ = MI_BATCH_BUFFER_END; /* not reached */
 	intel_gt_chipset_flush(engine->gt);
@@ -246,7 +246,9 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 	if (INTEL_GEN(gt->i915) <= 5)
 		flags |= I915_DISPATCH_SECURE;
 
-	err = rq->engine->emit_bb_start(rq, vma->node.start, PAGE_SIZE, flags);
+	err = rq->engine->emit_bb_start(rq,
+					i915_vma_offset(vma),
+					PAGE_SIZE, flags);
 
 cancel_rq:
 	if (err) {
diff --git a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
index 6cd9f6bc240c..92d0dc0ab68b 100644
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
index 967641fee42a..1f58db52670c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -119,14 +119,14 @@ create_spin_counter(struct intel_engine_cs *engine,
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
@@ -655,7 +655,7 @@ int live_rps_frequency_cs(void *arg)
 			err = i915_vma_move_to_active(vma, rq, 0);
 		if (!err)
 			err = rq->engine->emit_bb_start(rq,
-							vma->node.start,
+							i915_vma_offset(vma),
 							PAGE_SIZE, 0);
 		i915_request_add(rq);
 		if (err)
@@ -796,7 +796,7 @@ int live_rps_frequency_srm(void *arg)
 			err = i915_vma_move_to_active(vma, rq, 0);
 		if (!err)
 			err = rq->engine->emit_bb_start(rq,
-							vma->node.start,
+							i915_vma_offset(vma),
 							PAGE_SIZE, 0);
 		i915_request_add(rq);
 		if (err)
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 51133b8fabb4..a65a99fa5331 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -158,7 +158,8 @@ i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
 
 		seq_printf(m, " (%sgtt offset: %08llx, size: %08llx, pages: %s",
 			   i915_vma_is_ggtt(vma) ? "g" : "pp",
-			   vma->node.start, vma->node.size,
+			   i915_vma_offset(vma),
+			   i915_vma_size(vma),
 			   stringify_page_sizes(vma->page_sizes.gtt, NULL, 0));
 		if (i915_vma_is_ggtt(vma)) {
 			switch (vma->ggtt_view.type) {
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 291f5b818925..c7abe4ee61be 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1011,8 +1011,8 @@ i915_vma_coredump_create(const struct intel_gt *gt,
 	strcpy(dst->name, name);
 	dst->next = NULL;
 
-	dst->gtt_offset = vma->node.start;
-	dst->gtt_size = vma->node.size;
+	dst->gtt_offset = i915_vma_offset(vma);
+	dst->gtt_size = i915_vma_size(vma);
 	dst->gtt_page_sizes = vma->page_sizes.gtt;
 	dst->num_pages = num_pages;
 	dst->page_count = 0;
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 93f3e2c5c89a..3e1421755aa6 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1985,7 +1985,7 @@ emit_oa_config(struct i915_perf_stream *stream,
 		goto err_add_request;
 
 	err = rq->engine->emit_bb_start(rq,
-					vma->node.start, 0,
+					i915_vma_offset(vma), 0,
 					I915_DISPATCH_SECURE);
 	if (err)
 		goto err_add_request;
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index caa9b041616b..17fe455bd770 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -382,7 +382,7 @@ int i915_vma_bind(struct i915_vma *vma,
 	u32 vma_flags;
 
 	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
-	GEM_BUG_ON(vma->size > vma->node.size);
+	GEM_BUG_ON(vma->size > i915_vma_size(vma));
 
 	if (GEM_DEBUG_WARN_ON(range_overflows(vma->node.start,
 					      vma->node.size,
@@ -459,8 +459,8 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
 	ptr = READ_ONCE(vma->iomap);
 	if (ptr == NULL) {
 		ptr = io_mapping_map_wc(&i915_vm_to_ggtt(vma->vm)->iomap,
-					vma->node.start,
-					vma->node.size);
+					i915_vma_offset(vma),
+					i915_vma_size(vma));
 		if (ptr == NULL) {
 			err = -ENOMEM;
 			goto err;
@@ -534,22 +534,22 @@ bool i915_vma_misplaced(const struct i915_vma *vma,
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
@@ -562,10 +562,11 @@ void __i915_vma_set_map_and_fenceable(struct i915_vma *vma)
 	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
 	GEM_BUG_ON(!vma->fence_size);
 
-	fenceable = (vma->node.size >= vma->fence_size &&
-		     IS_ALIGNED(vma->node.start, vma->fence_alignment));
+	fenceable = (i915_vma_size(vma) >= vma->fence_size &&
+		     IS_ALIGNED(i915_vma_offset(vma), vma->fence_alignment));
 
-	mappable = vma->node.start + vma->fence_size <= i915_vm_to_ggtt(vma->vm)->mappable_end;
+	mappable = (i915_vma_offset(vma) + vma->fence_size <=
+		    i915_vm_to_ggtt(vma->vm)->mappable_end);
 
 	if (mappable && fenceable)
 		set_bit(I915_VMA_CAN_FENCE_BIT, __i915_vma_flags(vma));
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index a64adc8c883b..5049655a24c1 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -110,13 +110,25 @@ static inline bool i915_vma_is_closed(const struct i915_vma *vma)
 	return !list_empty(&vma->closed_link);
 }
 
+static inline u64 i915_vma_size(const struct i915_vma *vma)
+{
+       GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
+       return vma->node.size;
+}
+
+static inline u64 i915_vma_offset(const struct i915_vma *vma)
+{
+       GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
+       return vma->node.start;
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
+	GEM_BUG_ON(upper_32_bits(i915_vma_offset(vma) + i915_vma_size(vma) - 1));
+	return lower_32_bits(i915_vma_offset(vma));
 }
 
 static inline u32 i915_ggtt_pin_bias(struct i915_vma *vma)
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index c1adea8765a9..d33ef0cc02ea 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -231,6 +231,10 @@ static int lowlevel_hole(struct i915_address_space *vm,
 	if (!mock_vma)
 		return -ENOMEM;
 
+	__set_bit(DRM_MM_NODE_ALLOCATED_BIT, &mock_vma->node.flags);
+	if (i915_is_ggtt(vm))
+		__set_bit(I915_VMA_GGTT_BIT, __i915_vma_flags(mock_vma));
+
 	/* Keep creating larger objects until one cannot fit into the hole */
 	for (size = 12; (hole_end - hole_start) >> size; size++) {
 		I915_RND_SUBSTATE(prng, seed_prng);
@@ -1941,6 +1945,7 @@ static int igt_cs_tlb(void *arg)
 			i915_vm_free_pt_stash(vm, &stash);
 
 			/* Prime the TLB with the dummy pages */
+			__set_bit(DRM_MM_NODE_ALLOCATED_BIT, &vma->node.flags);
 			for (i = 0; i < count; i++) {
 				vma->node.start = offset + i * PAGE_SIZE;
 				vm->insert_entries(vm, vma, I915_CACHE_NONE, 0);
@@ -1952,8 +1957,9 @@ static int igt_cs_tlb(void *arg)
 				}
 				i915_request_put(rq);
 			}
-
 			vma->ops->clear_pages(vma);
+			__clear_bit(DRM_MM_NODE_ALLOCATED_BIT,
+				    &vma->node.flags);
 
 			err = context_sync(ce);
 			if (err) {
@@ -1973,6 +1979,7 @@ static int igt_cs_tlb(void *arg)
 				goto end;
 
 			/* Replace the TLB with target batches */
+			__set_bit(DRM_MM_NODE_ALLOCATED_BIT, &vma->node.flags);
 			for (i = 0; i < count; i++) {
 				struct i915_request *rq;
 				u32 *cs = batch + i * 64 / sizeof(*cs);
@@ -2005,8 +2012,9 @@ static int igt_cs_tlb(void *arg)
 				i915_request_put(rq);
 			}
 			end_spin(batch, count - 1);
-
 			vma->ops->clear_pages(vma);
+			__clear_bit(DRM_MM_NODE_ALLOCATED_BIT,
+				    &vma->node.flags);
 
 			err = context_sync(ce);
 			if (err) {
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 8035ea7565ed..70278be5711b 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -789,14 +789,14 @@ static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
 
 	if (gen >= 8) {
 		*cmd++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
-		*cmd++ = lower_32_bits(vma->node.start);
-		*cmd++ = upper_32_bits(vma->node.start);
+		*cmd++ = lower_32_bits(i915_vma_offset(vma));
+		*cmd++ = upper_32_bits(i915_vma_offset(vma));
 	} else if (gen >= 6) {
 		*cmd++ = MI_BATCH_BUFFER_START | 1 << 8;
-		*cmd++ = lower_32_bits(vma->node.start);
+		*cmd++ = lower_32_bits(i915_vma_offset(vma));
 	} else {
 		*cmd++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
-		*cmd++ = lower_32_bits(vma->node.start);
+		*cmd++ = lower_32_bits(i915_vma_offset(vma));
 	}
 	*cmd++ = MI_BATCH_BUFFER_END; /* terminate early in case of error */
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_scheduler.c b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
index f54bdbeaa48b..6ed27896391b 100644
--- a/drivers/gpu/drm/i915/selftests/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
@@ -568,8 +568,8 @@ __write_timestamp(struct intel_engine_cs *engine,
 
 	*cs++ = MI_STORE_REGISTER_MEM + use_64b;
 	*cs++ = i915_mmio_reg_offset(RING_TIMESTAMP(engine->mmio_base));
-	*cs++ = lower_32_bits(vma->node.start) + sizeof(u32) * slot;
-	*cs++ = upper_32_bits(vma->node.start);
+	*cs++ = lower_32_bits(i915_vma_offset(vma)) + sizeof(u32) * slot;
+	*cs++ = upper_32_bits(i915_vma_offset(vma));
 	intel_ring_advance(rq, cs);
 
 	i915_request_get(rq);
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index 0e6c1ea0082a..28469743de1c 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -163,8 +163,8 @@ igt_spinner_create_request(struct igt_spinner *spin,
 		*batch++ = MI_BATCH_BUFFER_START;
 	else
 		*batch++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
-	*batch++ = lower_32_bits(vma->node.start);
-	*batch++ = upper_32_bits(vma->node.start);
+	*batch++ = lower_32_bits(i915_vma_offset(vma));
+	*batch++ = upper_32_bits(i915_vma_offset(vma));
 
 	*batch++ = MI_BATCH_BUFFER_END; /* not reached */
 
@@ -179,7 +179,10 @@ igt_spinner_create_request(struct igt_spinner *spin,
 	flags = 0;
 	if (INTEL_GEN(rq->engine->i915) <= 5)
 		flags |= I915_DISPATCH_SECURE;
-	err = engine->emit_bb_start(rq, vma->node.start, PAGE_SIZE, flags);
+	err = engine->emit_bb_start(rq,
+				    i915_vma_offset(vma),
+				    PAGE_SIZE,
+				    flags);
 
 cancel_rq:
 	if (err) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
