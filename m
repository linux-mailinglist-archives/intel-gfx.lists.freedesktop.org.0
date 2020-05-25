Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0FA1E083E
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 09:54:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 417F7899DB;
	Mon, 25 May 2020 07:54:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91A12899DB
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 07:53:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21284205-1500050 
 for multiple; Mon, 25 May 2020 08:53:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 May 2020 08:53:45 +0100
Message-Id: <20200525075347.582-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525075347.582-1-chris@chris-wilson.co.uk>
References: <20200525075347.582-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/12] drm/i915/gem: Lift GPU relocation
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 53 +++++++++----------
 .../i915/gem/selftests/i915_gem_execbuffer.c  |  4 ++
 2 files changed, 29 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index e840b2a85284..903805455af1 100644
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
 
@@ -1081,9 +1078,8 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
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
@@ -1173,11 +1169,6 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	return err;
 }
 
-static bool reloc_can_use_engine(const struct intel_engine_cs *engine)
-{
-	return engine->class != VIDEO_DECODE_CLASS || !IS_GEN(engine->i915, 6);
-}
-
 static u32 *reloc_gpu(struct i915_execbuffer *eb,
 		      struct i915_vma *vma,
 		      unsigned int len)
@@ -1186,20 +1177,6 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
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
@@ -1500,6 +1477,24 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	return 0;
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
 static int eb_relocate(struct i915_execbuffer *eb)
 {
 	int err;
@@ -1519,6 +1514,11 @@ static int eb_relocate(struct i915_execbuffer *eb)
 		struct eb_vma *ev;
 		int flush;
 
+		err = reloc_gpu_alloc(eb);
+		if (err)
+			return err;
+		GEM_BUG_ON(!eb->reloc_cache.rq);
+
 		list_for_each_entry(ev, &eb->relocs, reloc_link) {
 			err = eb_relocate_vma(eb, ev);
 			if (err)
@@ -2490,9 +2490,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		batch = vma;
 	}
 
-	/* All GPU relocation batches must be submitted prior to the user rq */
-	GEM_BUG_ON(eb.reloc_cache.rq);
-
 	/* Allocate a request for this batch buffer nice and early. */
 	eb.request = i915_request_create(eb.context);
 	if (IS_ERR(eb.request)) {
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index 57c14d3340cd..f0ec23632a78 100644
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
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
