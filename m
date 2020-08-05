Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C41923CA98
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 14:23:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025096E5BD;
	Wed,  5 Aug 2020 12:23:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 268A46E591
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 12:22:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22039470-1500050 
 for multiple; Wed, 05 Aug 2020 13:22:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 13:22:05 +0100
Message-Id: <20200805122231.23313-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200805122231.23313-1-chris@chris-wilson.co.uk>
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/37] drm/i915/gem: Move the 'cached' info to
 i915_execbuffer
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

The reloc_cache contains some details that are used outside of the
relocation handling, so lift those out of the embeddded struct into the
principle struct i915_execbuffer.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 61 +++++++++++--------
 .../i915/gem/selftests/i915_gem_execbuffer.c  |  6 +-
 2 files changed, 37 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index e7e16c62df1c..e9ef0c287fd9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -261,11 +261,6 @@ struct i915_execbuffer {
 	 */
 	struct reloc_cache {
 		struct drm_mm_node node; /** temporary GTT binding */
-		unsigned int gen; /** Cached value of INTEL_GEN */
-		bool use_64bit_reloc : 1;
-		bool has_llc : 1;
-		bool has_fence : 1;
-		bool needs_unfenced : 1;
 
 		struct intel_context *ce;
 
@@ -283,6 +278,12 @@ struct i915_execbuffer {
 	u32 batch_len; /** Length of batch within object */
 	u32 batch_flags; /** Flags composed for emit_bb_start() */
 
+	unsigned int gen; /** Cached value of INTEL_GEN */
+	bool use_64bit_reloc : 1;
+	bool has_llc : 1;
+	bool has_fence : 1;
+	bool needs_unfenced : 1;
+
 	/**
 	 * Indicate either the size of the hastable used to resolve
 	 * relocation handles, or if negative that we are using a direct
@@ -540,11 +541,11 @@ eb_validate_vma(struct i915_execbuffer *eb,
 	 */
 	entry->offset = gen8_noncanonical_addr(entry->offset);
 
-	if (!eb->reloc_cache.has_fence) {
+	if (!eb->has_fence) {
 		entry->flags &= ~EXEC_OBJECT_NEEDS_FENCE;
 	} else {
 		if ((entry->flags & EXEC_OBJECT_NEEDS_FENCE ||
-		     eb->reloc_cache.needs_unfenced) &&
+		     eb->needs_unfenced) &&
 		    i915_gem_object_is_tiled(vma->obj))
 			entry->flags |= EXEC_OBJECT_NEEDS_GTT | __EXEC_OBJECT_NEEDS_MAP;
 	}
@@ -592,7 +593,7 @@ eb_add_vma(struct i915_execbuffer *eb,
 		if (entry->relocation_count &&
 		    !(ev->flags & EXEC_OBJECT_PINNED))
 			ev->flags |= __EXEC_OBJECT_NEEDS_BIAS;
-		if (eb->reloc_cache.has_fence)
+		if (eb->has_fence)
 			ev->flags |= EXEC_OBJECT_NEEDS_FENCE;
 
 		eb->batch = ev;
@@ -995,15 +996,19 @@ relocation_target(const struct drm_i915_gem_relocation_entry *reloc,
 	return gen8_canonical_addr((int)reloc->delta + target->node.start);
 }
 
-static void reloc_cache_init(struct reloc_cache *cache,
-			     struct drm_i915_private *i915)
+static void eb_info_init(struct i915_execbuffer *eb,
+			 struct drm_i915_private *i915)
 {
 	/* Must be a variable in the struct to allow GCC to unroll. */
-	cache->gen = INTEL_GEN(i915);
-	cache->has_llc = HAS_LLC(i915);
-	cache->use_64bit_reloc = HAS_64BIT_RELOC(i915);
-	cache->has_fence = cache->gen < 4;
-	cache->needs_unfenced = INTEL_INFO(i915)->unfenced_needs_alignment;
+	eb->gen = INTEL_GEN(i915);
+	eb->has_llc = HAS_LLC(i915);
+	eb->use_64bit_reloc = HAS_64BIT_RELOC(i915);
+	eb->has_fence = eb->gen < 4;
+	eb->needs_unfenced = INTEL_INFO(i915)->unfenced_needs_alignment;
+}
+
+static void reloc_cache_init(struct reloc_cache *cache)
+{
 	cache->node.flags = 0;
 	cache->rq = NULL;
 	cache->target = NULL;
@@ -1011,8 +1016,9 @@ static void reloc_cache_init(struct reloc_cache *cache,
 
 #define RELOC_TAIL 4
 
-static int reloc_gpu_chain(struct reloc_cache *cache)
+static int reloc_gpu_chain(struct i915_execbuffer *eb)
 {
+	struct reloc_cache *cache = &eb->reloc_cache;
 	struct intel_gt_buffer_pool_node *pool;
 	struct i915_request *rq = cache->rq;
 	struct i915_vma *batch;
@@ -1036,9 +1042,9 @@ static int reloc_gpu_chain(struct reloc_cache *cache)
 	GEM_BUG_ON(cache->rq_size + RELOC_TAIL > PAGE_SIZE  / sizeof(u32));
 	cmd = cache->rq_cmd + cache->rq_size;
 	*cmd++ = MI_ARB_CHECK;
-	if (cache->gen >= 8)
+	if (eb->gen >= 8)
 		*cmd++ = MI_BATCH_BUFFER_START_GEN8;
-	else if (cache->gen >= 6)
+	else if (eb->gen >= 6)
 		*cmd++ = MI_BATCH_BUFFER_START;
 	else
 		*cmd++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
@@ -1061,7 +1067,7 @@ static int reloc_gpu_chain(struct reloc_cache *cache)
 		goto out_pool;
 
 	cmd = i915_gem_object_pin_map(batch->obj,
-				      cache->has_llc ?
+				      eb->has_llc ?
 				      I915_MAP_FORCE_WB :
 				      I915_MAP_FORCE_WC);
 	if (IS_ERR(cmd)) {
@@ -1110,9 +1116,9 @@ static void __i915_request_add(struct i915_request *rq,
 	__i915_request_queue(rq, attr);
 }
 
-static unsigned int reloc_bb_flags(const struct reloc_cache *cache)
+static unsigned int reloc_bb_flags(const struct i915_execbuffer *eb)
 {
-	return cache->gen > 5 ? 0 : I915_DISPATCH_SECURE;
+	return eb->gen > 5 ? 0 : I915_DISPATCH_SECURE;
 }
 
 static int reloc_gpu_flush(struct i915_execbuffer *eb)
@@ -1143,7 +1149,7 @@ static int reloc_gpu_flush(struct i915_execbuffer *eb)
 		err = rq->engine->emit_bb_start(rq,
 						rq->batch->node.start,
 						PAGE_SIZE,
-						reloc_bb_flags(cache));
+						reloc_bb_flags(eb));
 	if (err)
 		i915_request_set_error_once(rq, err);
 
@@ -1191,7 +1197,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 		return PTR_ERR(pool);
 
 	cmd = i915_gem_object_pin_map(pool->obj,
-				      cache->has_llc ?
+				      eb->has_llc ?
 				      I915_MAP_FORCE_WB :
 				      I915_MAP_FORCE_WC);
 	if (IS_ERR(cmd)) {
@@ -1285,7 +1291,7 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 
 	if (unlikely(cache->rq_size + len >
 		     PAGE_SIZE / sizeof(u32) - RELOC_TAIL)) {
-		err = reloc_gpu_chain(cache);
+		err = reloc_gpu_chain(eb);
 		if (unlikely(err)) {
 			i915_request_set_error_once(cache->rq, err);
 			return ERR_PTR(err);
@@ -1318,7 +1324,7 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 			     u64 offset,
 			     u64 target_addr)
 {
-	const unsigned int gen = eb->reloc_cache.gen;
+	const unsigned int gen = eb->gen;
 	unsigned int len;
 	u32 *batch;
 	u64 addr;
@@ -1465,7 +1471,7 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 
 	/* Check that the relocation address is valid... */
 	if (unlikely(reloc->offset >
-		     ev->vma->size - (eb->reloc_cache.use_64bit_reloc ? 8 : 4))) {
+		     ev->vma->size - (eb->use_64bit_reloc ? 8 : 4))) {
 		drm_dbg(&i915->drm, "Relocation beyond object bounds: "
 			  "target %d offset %d size %d.\n",
 			  reloc->target_handle,
@@ -2676,7 +2682,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	eb.exec = exec;
 
 	eb.invalid_flags = __EXEC_OBJECT_UNKNOWN_FLAGS;
-	reloc_cache_init(&eb.reloc_cache, eb.i915);
+	eb_info_init(&eb, eb.i915);
+	reloc_cache_init(&eb.reloc_cache);
 
 	eb.buffer_count = args->buffer_count;
 	eb.batch_start_offset = args->batch_start_offset;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index d87f572048e8..13f17d6b5c66 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -23,8 +23,7 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 			   struct drm_i915_gem_object *obj)
 {
 	const unsigned int offsets[] = { 8, 3, 0 };
-	const u64 mask =
-		GENMASK_ULL(eb->reloc_cache.use_64bit_reloc ? 63 : 31, 0);
+	const u64 mask = GENMASK_ULL(eb->use_64bit_reloc ? 63 : 31, 0);
 	const u32 *map = page_mask_bits(obj->mm.mapping);
 	struct i915_request *rq;
 	struct i915_vma *vma;
@@ -126,8 +125,9 @@ static int igt_gpu_reloc(void *arg)
 		goto err_scratch;
 	}
 
+	eb_info_init(&eb, eb.i915);
 	for_each_uabi_engine(eb.engine, eb.i915) {
-		reloc_cache_init(&eb.reloc_cache, eb.i915);
+		reloc_cache_init(&eb.reloc_cache);
 		memset(map, POISON_INUSE, 4096);
 
 		intel_engine_pm_get(eb.engine);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
