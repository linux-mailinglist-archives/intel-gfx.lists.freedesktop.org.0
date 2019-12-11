Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBCA11A9A0
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 12:04:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF9046EB0F;
	Wed, 11 Dec 2019 11:04:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2554C6EB0C
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 11:04:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19539184-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 11:04:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 11:04:34 +0000
Message-Id: <20191211110437.4082687-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
References: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/5] drm/i915: Remove redundant parameters from
 intel_engine_cmd_parser
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

Declutter the calling interface by reducing the parameters to the
i915_vma and associated offsets.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  33 +-----
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  21 ++++
 drivers/gpu/drm/i915/i915_cmd_parser.c        | 106 +++++++++---------
 drivers/gpu/drm/i915/i915_drv.h               |  10 +-
 4 files changed, 82 insertions(+), 88 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 5003e616a1ad..796ed5340741 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -276,25 +276,6 @@ struct i915_execbuffer {
 
 #define exec_entry(EB, VMA) (&(EB)->exec[(VMA)->exec_flags - (EB)->flags])
 
-/*
- * Used to convert any address to canonical form.
- * Starting from gen8, some commands (e.g. STATE_BASE_ADDRESS,
- * MI_LOAD_REGISTER_MEM and others, see Broadwell PRM Vol2a) require the
- * addresses to be in a canonical form:
- * "GraphicsAddress[63:48] are ignored by the HW and assumed to be in correct
- * canonical form [63:48] == [47]."
- */
-#define GEN8_HIGH_ADDRESS_BIT 47
-static inline u64 gen8_canonical_addr(u64 address)
-{
-	return sign_extend64(address, GEN8_HIGH_ADDRESS_BIT);
-}
-
-static inline u64 gen8_noncanonical_addr(u64 address)
-{
-	return address & GENMASK_ULL(GEN8_HIGH_ADDRESS_BIT, 0);
-}
-
 static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
 {
 	return intel_engine_requires_cmd_parser(eb->engine) ||
@@ -2005,8 +1986,6 @@ static struct i915_vma *eb_parse(struct i915_execbuffer *eb)
 {
 	struct intel_engine_pool_node *pool;
 	struct i915_vma *vma;
-	u64 batch_start;
-	u64 shadow_batch_start;
 	int err;
 
 	pool = intel_engine_get_pool(eb->engine, eb->batch_len);
@@ -2017,19 +1996,11 @@ static struct i915_vma *eb_parse(struct i915_execbuffer *eb)
 	if (IS_ERR(vma))
 		goto err;
 
-	batch_start = gen8_canonical_addr(eb->batch->node.start) +
-		      eb->batch_start_offset;
-
-	shadow_batch_start = gen8_canonical_addr(vma->node.start);
-
 	err = intel_engine_cmd_parser(eb->engine,
-				      eb->batch->obj,
-				      batch_start,
+				      eb->batch,
 				      eb->batch_start_offset,
 				      eb->batch_len,
-				      pool->obj,
-				      shadow_batch_start);
-
+				      vma);
 	if (err) {
 		i915_vma_unpin(vma);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index 4294f146f13c..c68c0e033f30 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -7,6 +7,8 @@
 #ifndef _INTEL_GPU_COMMANDS_H_
 #define _INTEL_GPU_COMMANDS_H_
 
+#include <linux/bitops.h>
+
 /*
  * Target address alignments required for GPU access e.g.
  * MI_STORE_DWORD_IMM.
@@ -319,4 +321,23 @@
 #define COLOR_BLT     ((0x2<<29)|(0x40<<22))
 #define SRC_COPY_BLT  ((0x2<<29)|(0x43<<22))
 
+/*
+ * Used to convert any address to canonical form.
+ * Starting from gen8, some commands (e.g. STATE_BASE_ADDRESS,
+ * MI_LOAD_REGISTER_MEM and others, see Broadwell PRM Vol2a) require the
+ * addresses to be in a canonical form:
+ * "GraphicsAddress[63:48] are ignored by the HW and assumed to be in correct
+ * canonical form [63:48] == [47]."
+ */
+#define GEN8_HIGH_ADDRESS_BIT 47
+static inline u64 gen8_canonical_addr(u64 address)
+{
+	return sign_extend64(address, GEN8_HIGH_ADDRESS_BIT);
+}
+
+static inline u64 gen8_noncanonical_addr(u64 address)
+{
+	return address & GENMASK_ULL(GEN8_HIGH_ADDRESS_BIT, 0);
+}
+
 #endif /* _INTEL_GPU_COMMANDS_H_ */
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 7b7061973c5e..2f5811d3707e 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1127,8 +1127,7 @@ find_reg(const struct intel_engine_cs *engine, u32 addr)
 /* Returns a vmap'd pointer to dst_obj, which the caller must unmap */
 static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 		       struct drm_i915_gem_object *src_obj,
-		       u32 batch_start_offset,
-		       u32 batch_len,
+		       u32 offset, u32 length,
 		       bool *needs_clflush_after)
 {
 	unsigned int src_needs_clflush;
@@ -1153,22 +1152,21 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 
 	src = ERR_PTR(-ENODEV);
 	if (src_needs_clflush &&
-	    i915_can_memcpy_from_wc(NULL, batch_start_offset, 0)) {
+	    i915_can_memcpy_from_wc(NULL, offset, 0)) {
 		src = i915_gem_object_pin_map(src_obj, I915_MAP_WC);
 		if (!IS_ERR(src)) {
 			i915_memcpy_from_wc(dst,
-					    src + batch_start_offset,
-					    ALIGN(batch_len, 16));
+					    src + offset,
+					    ALIGN(length, 16));
 			i915_gem_object_unpin_map(src_obj);
 		}
 	}
 	if (IS_ERR(src)) {
 		void *ptr;
-		int offset, n;
+		int x, n;
 
-		offset = offset_in_page(batch_start_offset);
-
-		/* We can avoid clflushing partial cachelines before the write
+		/*
+		 * We can avoid clflushing partial cachelines before the write
 		 * if we only every write full cache-lines. Since we know that
 		 * both the source and destination are in multiples of
 		 * PAGE_SIZE, we can simply round up to the next cacheline.
@@ -1176,22 +1174,23 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 		 * validate up to the end of the batch.
 		 */
 		if (dst_needs_clflush & CLFLUSH_BEFORE)
-			batch_len = roundup(batch_len,
-					    boot_cpu_data.x86_clflush_size);
+			length = round_up(length,
+					  boot_cpu_data.x86_clflush_size);
 
 		ptr = dst;
-		for (n = batch_start_offset >> PAGE_SHIFT; batch_len; n++) {
-			int len = min_t(int, batch_len, PAGE_SIZE - offset);
+		x = offset_in_page(offset);
+		for (n = offset >> PAGE_SHIFT; length; n++) {
+			int len = min_t(int, length, PAGE_SIZE - x);
 
 			src = kmap_atomic(i915_gem_object_get_page(src_obj, n));
 			if (src_needs_clflush)
-				drm_clflush_virt_range(src + offset, len);
-			memcpy(ptr, src + offset, len);
+				drm_clflush_virt_range(src + x, len);
+			memcpy(ptr, src + x, len);
 			kunmap_atomic(src);
 
 			ptr += len;
-			batch_len -= len;
-			offset = 0;
+			length -= len;
+			x = 0;
 		}
 	}
 
@@ -1307,9 +1306,9 @@ static bool check_cmd(const struct intel_engine_cs *engine,
 }
 
 static int check_bbstart(u32 *cmd, u32 offset, u32 length,
-			 u32 batch_len,
-			 u64 batch_start,
-			 u64 shadow_batch_start,
+			 u32 batch_length,
+			 u64 batch_addr,
+			 u64 shadow_addr,
 			 const unsigned long *jump_whitelist)
 {
 	u64 jump_offset, jump_target;
@@ -1327,14 +1326,14 @@ static int check_bbstart(u32 *cmd, u32 offset, u32 length,
 		return -EINVAL;
 	}
 
-	jump_target = *(u64*)(cmd+1);
-	jump_offset = jump_target - batch_start;
+	jump_target = *(u64 *)(cmd + 1);
+	jump_offset = jump_target - batch_addr;
 
 	/*
 	 * Any underflow of jump_target is guaranteed to be outside the range
 	 * of a u32, so >= test catches both too large and too small
 	 */
-	if (jump_offset >= batch_len) {
+	if (jump_offset >= batch_length) {
 		DRM_DEBUG("CMD: BB_START to 0x%llx jumps out of BB\n",
 			  jump_target);
 		return -EINVAL;
@@ -1342,12 +1341,12 @@ static int check_bbstart(u32 *cmd, u32 offset, u32 length,
 
 	/*
 	 * This cannot overflow a u32 because we already checked jump_offset
-	 * is within the BB, and the batch_len is a u32
+	 * is within the BB, and the batch_length is a u32
 	 */
 	target_cmd_offset = lower_32_bits(jump_offset);
 	target_cmd_index = target_cmd_offset / sizeof(u32);
 
-	*(u64*)(cmd + 1) = shadow_batch_start + target_cmd_offset;
+	*(u64 *)(cmd + 1) = shadow_addr + target_cmd_offset;
 
 	if (target_cmd_index == offset)
 		return 0;
@@ -1365,12 +1364,12 @@ static int check_bbstart(u32 *cmd, u32 offset, u32 length,
 }
 
 static unsigned long *
-alloc_whitelist(struct drm_i915_private *i915, u32 batch_len)
+alloc_whitelist(struct drm_i915_private *i915, u32 batch_length)
 {
 	unsigned long *jmp;
 
 	/*
-	 * We expect batch_len to be less than 256KiB for known users,
+	 * We expect batch_length to be less than 256KiB for known users,
 	 * i.e. we need at most an 8KiB bitmap allocation which should be
 	 * reasonably cheap due to kmalloc caches.
 	 */
@@ -1379,7 +1378,7 @@ alloc_whitelist(struct drm_i915_private *i915, u32 batch_len)
 		return NULL;
 
 	/* Prefer to report transient allocation failure rather than hit oom */
-	jmp = bitmap_zalloc(DIV_ROUND_UP(batch_len, sizeof(u32)),
+	jmp = bitmap_zalloc(DIV_ROUND_UP(batch_length, sizeof(u32)),
 			    GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
 	if (!jmp)
 		return ERR_PTR(-ENOMEM);
@@ -1390,14 +1389,12 @@ alloc_whitelist(struct drm_i915_private *i915, u32 batch_len)
 #define LENGTH_BIAS 2
 
 /**
- * i915_parse_cmds() - parse a submitted batch buffer for privilege violations
+ * intel_engine_cmd_parser() - parse a batch buffer for privilege violations
  * @engine: the engine on which the batch is to execute
- * @batch_obj: the batch buffer in question
- * @batch_start: Canonical base address of batch
- * @batch_start_offset: byte offset in the batch at which execution starts
- * @batch_len: length of the commands in batch_obj
- * @shadow_batch_obj: copy of the batch buffer in question
- * @shadow_batch_start: Canonical base address of shadow_batch_obj
+ * @batch: the batch buffer in question
+ * @batch_offset: byte offset in the batch at which execution starts
+ * @batch_length: length of the commands in batch_obj
+ * @shadow: validated copy of the batch buffer in question
  *
  * Parses the specified batch buffer looking for privilege violations as
  * described in the overview.
@@ -1407,22 +1404,27 @@ alloc_whitelist(struct drm_i915_private *i915, u32 batch_len)
  */
 
 int intel_engine_cmd_parser(struct intel_engine_cs *engine,
-			    struct drm_i915_gem_object *batch_obj,
-			    u64 batch_start,
-			    u32 batch_start_offset,
-			    u32 batch_len,
-			    struct drm_i915_gem_object *shadow_batch_obj,
-			    u64 shadow_batch_start)
+			    struct i915_vma *batch,
+			    u32 batch_offset,
+			    u32 batch_length,
+			    struct i915_vma *shadow)
 {
 	u32 *cmd, *batch_end, offset = 0;
 	struct drm_i915_cmd_descriptor default_desc = noop_desc;
 	const struct drm_i915_cmd_descriptor *desc = &default_desc;
 	bool needs_clflush_after = false;
 	unsigned long *jump_whitelist;
+	u64 batch_addr, shadow_addr;
 	int ret = 0;
 
-	cmd = copy_batch(shadow_batch_obj, batch_obj,
-			 batch_start_offset, batch_len,
+	GEM_BUG_ON(!IS_ALIGNED(batch_offset, sizeof(*cmd)));
+	GEM_BUG_ON(!IS_ALIGNED(batch_length, sizeof(*cmd)));
+	GEM_BUG_ON(range_overflows_t(u64, batch_offset, batch_length,
+				     batch->size));
+	GEM_BUG_ON(!batch_length);
+
+	cmd = copy_batch(shadow->obj, batch->obj,
+			 batch_offset, batch_length,
 			 &needs_clflush_after);
 	if (IS_ERR(cmd)) {
 		DRM_DEBUG("CMD: Failed to copy batch\n");
@@ -1430,14 +1432,17 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 	}
 
 	/* Defer failure until attempted use */
-	jump_whitelist = alloc_whitelist(engine->i915, batch_len);
+	jump_whitelist = alloc_whitelist(engine->i915, batch_length);
+
+	shadow_addr = gen8_canonical_addr(shadow->node.start);
+	batch_addr = gen8_canonical_addr(batch->node.start + batch_offset);
 
 	/*
 	 * We use the batch length as size because the shadow object is as
 	 * large or larger and copy_batch() will write MI_NOPs to the extra
 	 * space. Parsing should be faster in some cases this way.
 	 */
-	batch_end = cmd + (batch_len / sizeof(*batch_end));
+	batch_end = cmd + batch_length / sizeof(*batch_end);
 	do {
 		u32 length;
 
@@ -1454,7 +1459,7 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 		if (desc->flags & CMD_DESC_FIXED)
 			length = desc->length.fixed;
 		else
-			length = ((*cmd & desc->length.mask) + LENGTH_BIAS);
+			length = (*cmd & desc->length.mask) + LENGTH_BIAS;
 
 		if ((batch_end - cmd) < length) {
 			DRM_DEBUG("CMD: Command length exceeds batch length: 0x%08X length=%u batchlen=%td\n",
@@ -1471,9 +1476,8 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 		}
 
 		if (desc->cmd.value == MI_BATCH_BUFFER_START) {
-			ret = check_bbstart(cmd, offset, length,
-					    batch_len, batch_start,
-					    shadow_batch_start,
+			ret = check_bbstart(cmd, offset, length, batch_length,
+					    batch_addr, shadow_addr,
 					    jump_whitelist);
 
 			if (ret)
@@ -1494,7 +1498,7 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 	} while (1);
 
 	if (needs_clflush_after) {
-		void *ptr = page_mask_bits(shadow_batch_obj->mm.mapping);
+		void *ptr = page_mask_bits(shadow->obj->mm.mapping);
 
 		drm_clflush_virt_range(ptr, (void *)(cmd + 1) - ptr);
 	}
@@ -1502,7 +1506,7 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 err:
 	if (!IS_ERR_OR_NULL(jump_whitelist))
 		kfree(jump_whitelist);
-	i915_gem_object_unpin_map(shadow_batch_obj);
+	i915_gem_object_unpin_map(shadow->obj);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ce130e1f1e47..45f31197b390 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1946,12 +1946,10 @@ int i915_cmd_parser_get_version(struct drm_i915_private *dev_priv);
 void intel_engine_init_cmd_parser(struct intel_engine_cs *engine);
 void intel_engine_cleanup_cmd_parser(struct intel_engine_cs *engine);
 int intel_engine_cmd_parser(struct intel_engine_cs *engine,
-			    struct drm_i915_gem_object *batch_obj,
-			    u64 user_batch_start,
-			    u32 batch_start_offset,
-			    u32 batch_len,
-			    struct drm_i915_gem_object *shadow_batch_obj,
-			    u64 shadow_batch_start);
+			    struct i915_vma *batch,
+			    u32 batch_offset,
+			    u32 batch_length,
+			    struct i915_vma *shadow);
 
 /* intel_device_info.c */
 static inline struct intel_device_info *
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
