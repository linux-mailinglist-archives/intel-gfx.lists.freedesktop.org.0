Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C190A1F1034
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 00:21:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 588426E448;
	Sun,  7 Jun 2020 22:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6FB56E213
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2020 22:21:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21425599-1500050 
 for multiple; Sun, 07 Jun 2020 23:21:11 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jun 2020 23:20:51 +0100
Message-Id: <20200607222108.14401-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200607222108.14401-1-chris@chris-wilson.co.uk>
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/28] drm/i915/gem: Lift GPU relocation
 allocation
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

Since we have reduced the relocations paths to just use the async GPU,
we can lift the request allocation to the start of the relocations.
Knowing that we use one request for all relocations will simplify
tracking the relocation fence.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 100 ++++++++++--------
 .../i915/gem/selftests/i915_gem_execbuffer.c  |   5 +-
 2 files changed, 57 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 01ab1e15a142..e012857be129 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -900,8 +900,6 @@ eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
 
 static void eb_destroy(const struct i915_execbuffer *eb)
 {
-	GEM_BUG_ON(eb->reloc_cache.rq);
-
 	if (eb->array)
 		eb_vma_array_put(eb->array);
 
@@ -926,7 +924,6 @@ static void reloc_cache_init(struct reloc_cache *cache,
 	cache->has_fence = cache->gen < 4;
 	cache->needs_unfenced = INTEL_INFO(i915)->unfenced_needs_alignment;
 	cache->node.flags = 0;
-	cache->rq = NULL;
 	cache->target = NULL;
 }
 
@@ -1007,13 +1004,9 @@ static unsigned int reloc_bb_flags(const struct reloc_cache *cache)
 
 static int reloc_gpu_flush(struct reloc_cache *cache)
 {
-	struct i915_request *rq;
+	struct i915_request *rq = cache->rq;
 	int err;
 
-	rq = fetch_and_zero(&cache->rq);
-	if (!rq)
-		return 0;
-
 	if (cache->rq_vma) {
 		struct drm_i915_gem_object *obj = cache->rq_vma->obj;
 
@@ -1062,9 +1055,8 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 	return err;
 }
 
-static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
-			     struct intel_engine_cs *engine,
-			     unsigned int len)
+static int
+__reloc_gpu_alloc(struct i915_execbuffer *eb, struct intel_engine_cs *engine)
 {
 	struct reloc_cache *cache = &eb->reloc_cache;
 	struct intel_gt_buffer_pool_node *pool;
@@ -1154,33 +1146,14 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	return err;
 }
 
-static bool reloc_can_use_engine(const struct intel_engine_cs *engine)
-{
-	return engine->class != VIDEO_DECODE_CLASS || !IS_GEN(engine->i915, 6);
-}
-
-static u32 *reloc_gpu(struct i915_execbuffer *eb,
-		      struct i915_vma *vma,
-		      unsigned int len)
+static u32 *reloc_batch_grow(struct i915_execbuffer *eb,
+			     struct i915_vma *vma,
+			     unsigned int len)
 {
 	struct reloc_cache *cache = &eb->reloc_cache;
 	u32 *cmd;
 	int err;
 
-	if (unlikely(!cache->rq)) {
-		struct intel_engine_cs *engine = eb->engine;
-
-		if (!reloc_can_use_engine(engine)) {
-			engine = engine->gt->engine_class[COPY_ENGINE_CLASS][0];
-			if (!engine)
-				return ERR_PTR(-ENODEV);
-		}
-
-		err = __reloc_gpu_alloc(eb, engine, len);
-		if (unlikely(err))
-			return ERR_PTR(err);
-	}
-
 	if (vma != cache->target) {
 		err = reloc_move_to_gpu(cache->rq, vma);
 		if (unlikely(err)) {
@@ -1238,7 +1211,7 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 	else
 		len = 3;
 
-	batch = reloc_gpu(eb, vma, len);
+	batch = reloc_batch_grow(eb, vma, len);
 	if (IS_ERR(batch))
 		return PTR_ERR(batch);
 
@@ -1499,6 +1472,47 @@ static long eb_reloc_vma(struct i915_execbuffer *eb, struct eb_vma *ev,
 	return required;
 }
 
+static bool reloc_can_use_engine(const struct intel_engine_cs *engine)
+{
+	return engine->class != VIDEO_DECODE_CLASS || !IS_GEN(engine->i915, 6);
+}
+
+static int reloc_gpu_alloc(struct i915_execbuffer *eb)
+{
+	struct intel_engine_cs *engine = eb->engine;
+
+	if (!reloc_can_use_engine(engine)) {
+		engine = engine->gt->engine_class[COPY_ENGINE_CLASS][0];
+		if (!engine)
+			return -ENODEV;
+	}
+
+	return __reloc_gpu_alloc(eb, engine);
+}
+
+static int reloc_gpu(struct i915_execbuffer *eb)
+{
+	struct eb_vma *ev;
+	int flush, err;
+
+	err = reloc_gpu_alloc(eb);
+	if (err)
+		return err;
+	GEM_BUG_ON(!eb->reloc_cache.rq);
+
+	list_for_each_entry(ev, &eb->relocs, reloc_link) {
+		err = eb_reloc_vma(eb, ev, eb_reloc_entry);
+		if (err < 0)
+			goto out;
+	}
+
+out:
+	flush = reloc_gpu_flush(&eb->reloc_cache);
+	if (!err)
+		err = flush;
+	return err;
+}
+
 static int eb_relocate(struct i915_execbuffer *eb)
 {
 	int err;
@@ -1516,7 +1530,6 @@ static int eb_relocate(struct i915_execbuffer *eb)
 	/* The objects are in their final locations, apply the relocations. */
 	if (eb->args->flags & __EXEC_HAS_RELOC) {
 		struct eb_vma *ev, *en;
-		int flush;
 
 		list_for_each_entry_safe(ev, en, &eb->relocs, reloc_link) {
 			err = eb_reloc_vma(eb, ev, eb_reloc_prepare);
@@ -1527,18 +1540,14 @@ static int eb_relocate(struct i915_execbuffer *eb)
 				list_del_init(&ev->reloc_link);
 		}
 
-		list_for_each_entry(ev, &eb->relocs, reloc_link) {
-			err = eb_reloc_vma(eb, ev, eb_reloc_entry);
-			if (err < 0)
-				break;
+		if (!list_empty(&eb->relocs)) {
+			err = reloc_gpu(eb);
+			if (err)
+				return err;
 		}
-
-		flush = reloc_gpu_flush(&eb->reloc_cache);
-		if (!err)
-			err = flush;
 	}
 
-	return err;
+	return 0;
 }
 
 static int eb_move_to_gpu(struct i915_execbuffer *eb)
@@ -2538,9 +2547,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		batch = vma;
 	}
 
-	/* All GPU relocation batches must be submitted prior to the user rq */
-	GEM_BUG_ON(eb.reloc_cache.rq);
-
 	/* Allocate a request for this batch buffer nice and early. */
 	eb.request = i915_request_create(eb.context);
 	if (IS_ERR(eb.request)) {
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index 57c14d3340cd..50fe22d87ae1 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -36,6 +36,10 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 	if (err)
 		return err;
 
+	err = reloc_gpu_alloc(eb);
+	if (err)
+		goto unpin_vma;
+
 	/* 8-Byte aligned */
 	err = __reloc_entry_gpu(eb, vma, offsets[0] * sizeof(u32), 0);
 	if (err)
@@ -63,7 +67,6 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 	err = reloc_gpu_flush(&eb->reloc_cache);
 	if (err)
 		goto put_rq;
-	GEM_BUG_ON(eb->reloc_cache.rq);
 
 	err = i915_gem_object_wait(obj, I915_WAIT_INTERRUPTIBLE, HZ / 2);
 	if (err) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
