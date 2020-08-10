Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE112404C7
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 12:33:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 247BA6E3F2;
	Mon, 10 Aug 2020 10:33:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 899FB89C3B
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 10:33:26 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Aug 2020 12:30:40 +0200
Message-Id: <20200810103103.303818-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/24] Revert "drm/i915/gem: Async GPU
 relocations only"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 9e0f9464e2ab36b864359a59b0e9058fdef0ce47,
and related commit 7ac2d2536dfa7 ("drm/i915/gem: Delete unused code").

Async GPU relocations are not the path forward, we want to remove
GPU accelerated relocation support eventually when userspace is fixed
to use VM_BIND, and this is the first step towards that. We will keep
async gpu relocations around for now, until userspace is fixed.

Relocation support will be disabled completely on platforms where there
was never any userspace that depends on it, as the hardware doesn't
require it from at least gen9+ onward. For older platforms, the plan
is to use cpu relocations only.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 319 ++++++++++++++++--
 .../i915/gem/selftests/i915_gem_execbuffer.c  |  21 +-
 2 files changed, 313 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 24a1486d2dc5..c6a613d92a13 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -46,6 +46,13 @@ struct eb_vma_array {
 	struct eb_vma vma[];
 };
 
+enum {
+	FORCE_CPU_RELOC = 1,
+	FORCE_GTT_RELOC,
+	FORCE_GPU_RELOC,
+#define DBG_FORCE_RELOC 0 /* choose one of the above! */
+};
+
 #define __EXEC_OBJECT_HAS_PIN		BIT(31)
 #define __EXEC_OBJECT_HAS_FENCE		BIT(30)
 #define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
@@ -261,6 +268,8 @@ struct i915_execbuffer {
 	 */
 	struct reloc_cache {
 		struct drm_mm_node node; /** temporary GTT binding */
+		unsigned long vaddr; /** Current kmap address */
+		unsigned long page; /** Currently mapped page index */
 		unsigned int gen; /** Cached value of INTEL_GEN */
 		bool use_64bit_reloc : 1;
 		bool has_llc : 1;
@@ -607,6 +616,23 @@ eb_add_vma(struct i915_execbuffer *eb,
 	}
 }
 
+static inline int use_cpu_reloc(const struct reloc_cache *cache,
+				const struct drm_i915_gem_object *obj)
+{
+	if (!i915_gem_object_has_struct_page(obj))
+		return false;
+
+	if (DBG_FORCE_RELOC == FORCE_CPU_RELOC)
+		return true;
+
+	if (DBG_FORCE_RELOC == FORCE_GTT_RELOC)
+		return false;
+
+	return (cache->has_llc ||
+		obj->cache_dirty ||
+		obj->cache_level != I915_CACHE_NONE);
+}
+
 static int eb_reserve_vma(const struct i915_execbuffer *eb,
 			  struct eb_vma *ev,
 			  u64 pin_flags)
@@ -937,6 +963,8 @@ relocation_target(const struct drm_i915_gem_relocation_entry *reloc,
 static void reloc_cache_init(struct reloc_cache *cache,
 			     struct drm_i915_private *i915)
 {
+	cache->page = -1;
+	cache->vaddr = 0;
 	/* Must be a variable in the struct to allow GCC to unroll. */
 	cache->gen = INTEL_GEN(i915);
 	cache->has_llc = HAS_LLC(i915);
@@ -948,6 +976,25 @@ static void reloc_cache_init(struct reloc_cache *cache,
 	cache->target = NULL;
 }
 
+static inline void *unmask_page(unsigned long p)
+{
+	return (void *)(uintptr_t)(p & PAGE_MASK);
+}
+
+static inline unsigned int unmask_flags(unsigned long p)
+{
+	return p & ~PAGE_MASK;
+}
+
+#define KMAP 0x4 /* after CLFLUSH_FLAGS */
+
+static inline struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)
+{
+	struct drm_i915_private *i915 =
+		container_of(cache, struct i915_execbuffer, reloc_cache)->i915;
+	return &i915->ggtt;
+}
+
 #define RELOC_TAIL 4
 
 static int reloc_gpu_chain(struct reloc_cache *cache)
@@ -1060,6 +1107,186 @@ static int reloc_gpu_flush(struct reloc_cache *cache)
 	return err;
 }
 
+static void reloc_cache_reset(struct reloc_cache *cache)
+{
+	void *vaddr;
+
+	if (!cache->vaddr)
+		return;
+
+	vaddr = unmask_page(cache->vaddr);
+	if (cache->vaddr & KMAP) {
+		if (cache->vaddr & CLFLUSH_AFTER)
+			mb();
+
+		kunmap_atomic(vaddr);
+		i915_gem_object_finish_access((struct drm_i915_gem_object *)cache->node.mm);
+	} else {
+		struct i915_ggtt *ggtt = cache_to_ggtt(cache);
+
+		intel_gt_flush_ggtt_writes(ggtt->vm.gt);
+		io_mapping_unmap_atomic((void __iomem *)vaddr);
+
+		if (drm_mm_node_allocated(&cache->node)) {
+			ggtt->vm.clear_range(&ggtt->vm,
+					     cache->node.start,
+					     cache->node.size);
+			mutex_lock(&ggtt->vm.mutex);
+			drm_mm_remove_node(&cache->node);
+			mutex_unlock(&ggtt->vm.mutex);
+		} else {
+			i915_vma_unpin((struct i915_vma *)cache->node.mm);
+		}
+	}
+
+	cache->vaddr = 0;
+	cache->page = -1;
+}
+
+static void *reloc_kmap(struct drm_i915_gem_object *obj,
+			struct reloc_cache *cache,
+			unsigned long pageno)
+{
+	void *vaddr;
+	struct page *page;
+
+	if (cache->vaddr) {
+		kunmap_atomic(unmask_page(cache->vaddr));
+	} else {
+		unsigned int flushes;
+		int err;
+
+		err = i915_gem_object_prepare_write(obj, &flushes);
+		if (err)
+			return ERR_PTR(err);
+
+		BUILD_BUG_ON(KMAP & CLFLUSH_FLAGS);
+		BUILD_BUG_ON((KMAP | CLFLUSH_FLAGS) & PAGE_MASK);
+
+		cache->vaddr = flushes | KMAP;
+		cache->node.mm = (void *)obj;
+		if (flushes)
+			mb();
+	}
+
+	page = i915_gem_object_get_page(obj, pageno);
+	if (!obj->mm.dirty)
+		set_page_dirty(page);
+
+	vaddr = kmap_atomic(page);
+	cache->vaddr = unmask_flags(cache->vaddr) | (unsigned long)vaddr;
+	cache->page = pageno;
+
+	return vaddr;
+}
+
+static void *reloc_iomap(struct drm_i915_gem_object *obj,
+			 struct reloc_cache *cache,
+			 unsigned long page)
+{
+	struct i915_ggtt *ggtt = cache_to_ggtt(cache);
+	unsigned long offset;
+	void *vaddr;
+
+	if (cache->vaddr) {
+		intel_gt_flush_ggtt_writes(ggtt->vm.gt);
+		io_mapping_unmap_atomic((void __force __iomem *) unmask_page(cache->vaddr));
+	} else {
+		struct i915_vma *vma;
+		int err;
+
+		if (i915_gem_object_is_tiled(obj))
+			return ERR_PTR(-EINVAL);
+
+		if (use_cpu_reloc(cache, obj))
+			return NULL;
+
+		i915_gem_object_lock(obj);
+		err = i915_gem_object_set_to_gtt_domain(obj, true);
+		i915_gem_object_unlock(obj);
+		if (err)
+			return ERR_PTR(err);
+
+		vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0,
+					       PIN_MAPPABLE |
+					       PIN_NONBLOCK /* NOWARN */ |
+					       PIN_NOEVICT);
+		if (IS_ERR(vma)) {
+			memset(&cache->node, 0, sizeof(cache->node));
+			mutex_lock(&ggtt->vm.mutex);
+			err = drm_mm_insert_node_in_range
+				(&ggtt->vm.mm, &cache->node,
+				 PAGE_SIZE, 0, I915_COLOR_UNEVICTABLE,
+				 0, ggtt->mappable_end,
+				 DRM_MM_INSERT_LOW);
+			mutex_unlock(&ggtt->vm.mutex);
+			if (err) /* no inactive aperture space, use cpu reloc */
+				return NULL;
+		} else {
+			cache->node.start = vma->node.start;
+			cache->node.mm = (void *)vma;
+		}
+	}
+
+	offset = cache->node.start;
+	if (drm_mm_node_allocated(&cache->node)) {
+		ggtt->vm.insert_page(&ggtt->vm,
+				     i915_gem_object_get_dma_address(obj, page),
+				     offset, I915_CACHE_NONE, 0);
+	} else {
+		offset += page << PAGE_SHIFT;
+	}
+
+	vaddr = (void __force *)io_mapping_map_atomic_wc(&ggtt->iomap,
+							 offset);
+	cache->page = page;
+	cache->vaddr = (unsigned long)vaddr;
+
+	return vaddr;
+}
+
+static void *reloc_vaddr(struct drm_i915_gem_object *obj,
+			 struct reloc_cache *cache,
+			 unsigned long page)
+{
+	void *vaddr;
+
+	if (cache->page == page) {
+		vaddr = unmask_page(cache->vaddr);
+	} else {
+		vaddr = NULL;
+		if ((cache->vaddr & KMAP) == 0)
+			vaddr = reloc_iomap(obj, cache, page);
+		if (!vaddr)
+			vaddr = reloc_kmap(obj, cache, page);
+	}
+
+	return vaddr;
+}
+
+static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)
+{
+	if (unlikely(flushes & (CLFLUSH_BEFORE | CLFLUSH_AFTER))) {
+		if (flushes & CLFLUSH_BEFORE) {
+			clflushopt(addr);
+			mb();
+		}
+
+		*addr = value;
+
+		/*
+		 * Writes to the same cacheline are serialised by the CPU
+		 * (including clflush). On the write path, we only require
+		 * that it hits memory in an orderly fashion and place
+		 * mb barriers at the start and end of the relocation phase
+		 * to ensure ordering of clflush wrt to the system.
+		 */
+		if (flushes & CLFLUSH_AFTER)
+			clflushopt(addr);
+	} else
+		*addr = value;
+}
+
 static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 {
 	struct drm_i915_gem_object *obj = vma->obj;
@@ -1225,6 +1452,17 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 	return cmd;
 }
 
+static inline bool use_reloc_gpu(struct i915_vma *vma)
+{
+	if (DBG_FORCE_RELOC == FORCE_GPU_RELOC)
+		return true;
+
+	if (DBG_FORCE_RELOC)
+		return false;
+
+	return !dma_resv_test_signaled_rcu(vma->resv, true);
+}
+
 static unsigned long vma_phys_addr(struct i915_vma *vma, u32 offset)
 {
 	struct page *page;
@@ -1239,10 +1477,10 @@ static unsigned long vma_phys_addr(struct i915_vma *vma, u32 offset)
 	return addr + offset_in_page(offset);
 }
 
-static int __reloc_entry_gpu(struct i915_execbuffer *eb,
-			     struct i915_vma *vma,
-			     u64 offset,
-			     u64 target_addr)
+static bool __reloc_entry_gpu(struct i915_execbuffer *eb,
+			      struct i915_vma *vma,
+			      u64 offset,
+			      u64 target_addr)
 {
 	const unsigned int gen = eb->reloc_cache.gen;
 	unsigned int len;
@@ -1258,7 +1496,7 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 
 	batch = reloc_gpu(eb, vma, len);
 	if (IS_ERR(batch))
-		return PTR_ERR(batch);
+		return false;
 
 	addr = gen8_canonical_addr(vma->node.start + offset);
 	if (gen >= 8) {
@@ -1307,21 +1545,55 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 		*batch++ = target_addr;
 	}
 
-	return 0;
+	return true;
+}
+
+static bool reloc_entry_gpu(struct i915_execbuffer *eb,
+			    struct i915_vma *vma,
+			    u64 offset,
+			    u64 target_addr)
+{
+	if (eb->reloc_cache.vaddr)
+		return false;
+
+	if (!use_reloc_gpu(vma))
+		return false;
+
+	return __reloc_entry_gpu(eb, vma, offset, target_addr);
 }
 
 static u64
-relocate_entry(struct i915_execbuffer *eb,
-	       struct i915_vma *vma,
+relocate_entry(struct i915_vma *vma,
 	       const struct drm_i915_gem_relocation_entry *reloc,
+	       struct i915_execbuffer *eb,
 	       const struct i915_vma *target)
 {
 	u64 target_addr = relocation_target(reloc, target);
-	int err;
-
-	err = __reloc_entry_gpu(eb, vma, reloc->offset, target_addr);
-	if (err)
-		return err;
+	u64 offset = reloc->offset;
+
+	if (!reloc_entry_gpu(eb, vma, offset, target_addr)) {
+		bool wide = eb->reloc_cache.use_64bit_reloc;
+		void *vaddr;
+
+repeat:
+		vaddr = reloc_vaddr(vma->obj,
+				    &eb->reloc_cache,
+				    offset >> PAGE_SHIFT);
+		if (IS_ERR(vaddr))
+			return PTR_ERR(vaddr);
+
+		GEM_BUG_ON(!IS_ALIGNED(offset, sizeof(u32)));
+		clflush_write32(vaddr + offset_in_page(offset),
+				lower_32_bits(target_addr),
+				eb->reloc_cache.vaddr);
+
+		if (wide) {
+			offset += sizeof(u32);
+			target_addr >>= 32;
+			wide = false;
+			goto repeat;
+		}
+	}
 
 	return target->node.start | UPDATE;
 }
@@ -1386,7 +1658,8 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 	 * If the relocation already has the right value in it, no
 	 * more work needs to be done.
 	 */
-	if (gen8_canonical_addr(target->vma->node.start) == reloc->presumed_offset)
+	if (!DBG_FORCE_RELOC &&
+	    gen8_canonical_addr(target->vma->node.start) == reloc->presumed_offset)
 		return 0;
 
 	/* Check that the relocation address is valid... */
@@ -1418,7 +1691,7 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 	ev->flags &= ~EXEC_OBJECT_ASYNC;
 
 	/* and update the user's relocation entry */
-	return relocate_entry(eb, ev->vma, reloc, target->vma);
+	return relocate_entry(ev->vma, reloc, eb, target->vma);
 }
 
 static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
@@ -1456,8 +1729,10 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 		 * this is bad and so lockdep complains vehemently.
 		 */
 		copied = __copy_from_user(r, urelocs, count * sizeof(r[0]));
-		if (unlikely(copied))
-			return -EFAULT;
+		if (unlikely(copied)) {
+			remain = -EFAULT;
+			goto out;
+		}
 
 		remain -= count;
 		do {
@@ -1465,7 +1740,8 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 
 			if (likely(offset == 0)) {
 			} else if ((s64)offset < 0) {
-				return (int)offset;
+				remain = (int)offset;
+				goto out;
 			} else {
 				/*
 				 * Note that reporting an error now
@@ -1495,8 +1771,9 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 		} while (r++, --count);
 		urelocs += ARRAY_SIZE(stack);
 	} while (remain);
-
-	return 0;
+out:
+	reloc_cache_reset(&eb->reloc_cache);
+	return remain;
 }
 
 static int eb_relocate(struct i915_execbuffer *eb)
@@ -2573,7 +2850,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	eb.i915 = i915;
 	eb.file = file;
 	eb.args = args;
-	if (!(args->flags & I915_EXEC_NO_RELOC))
+	if (DBG_FORCE_RELOC || !(args->flags & I915_EXEC_NO_RELOC))
 		args->flags |= __EXEC_HAS_RELOC;
 
 	eb.exec = exec;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index 57c14d3340cd..a49016f8ee0d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -37,14 +37,20 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 		return err;
 
 	/* 8-Byte aligned */
-	err = __reloc_entry_gpu(eb, vma, offsets[0] * sizeof(u32), 0);
-	if (err)
+	if (!__reloc_entry_gpu(eb, vma,
+			       offsets[0] * sizeof(u32),
+			       0)) {
+		err = -EIO;
 		goto unpin_vma;
+	}
 
 	/* !8-Byte aligned */
-	err = __reloc_entry_gpu(eb, vma, offsets[1] * sizeof(u32), 1);
-	if (err)
+	if (!__reloc_entry_gpu(eb, vma,
+			       offsets[1] * sizeof(u32),
+			       1)) {
+		err = -EIO;
 		goto unpin_vma;
+	}
 
 	/* Skip to the end of the cmd page */
 	i = PAGE_SIZE / sizeof(u32) - RELOC_TAIL - 1;
@@ -54,9 +60,12 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 	eb->reloc_cache.rq_size += i;
 
 	/* Force batch chaining */
-	err = __reloc_entry_gpu(eb, vma, offsets[2] * sizeof(u32), 2);
-	if (err)
+	if (!__reloc_entry_gpu(eb, vma,
+			       offsets[2] * sizeof(u32),
+			       2)) {
+		err = -EIO;
 		goto unpin_vma;
+	}
 
 	GEM_BUG_ON(!eb->reloc_cache.rq);
 	rq = i915_request_get(eb->reloc_cache.rq);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
