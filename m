Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEFE1E5917
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 09:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AB3C6E3E5;
	Thu, 28 May 2020 07:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42F426E3E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 07:41:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21318028-1500050 
 for multiple; Thu, 28 May 2020 08:41:11 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 May 2020 08:41:06 +0100
Message-Id: <20200528074109.28235-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200528074109.28235-1-chris@chris-wilson.co.uk>
References: <20200528074109.28235-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/11] drm/i915/gem: Build the reloc request
 first
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

If we get interrupted in the middle of chaining up the relocation
entries, we will fail to submit the relocation batch. However, we will
report having already completed some of the relocations, and so the
reloc.presumed_offset will no longer match the batch contents, causing
confusion and invalid future batches. If we build the relocation request
packet first, we can always emit as far as we get up in the relocation
chain.

Fixes: 0e97fbb08055 ("drm/i915/gem: Use a single chained reloc batches for a single execbuf")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 45 +++++++++++--------
 .../i915/gem/selftests/i915_gem_execbuffer.c  |  8 ++--
 2 files changed, 31 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 3fb76d222610..673671cff039 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1019,22 +1019,11 @@ static unsigned int reloc_bb_flags(const struct reloc_cache *cache)
 	return cache->gen > 5 ? 0 : I915_DISPATCH_SECURE;
 }
 
-static int reloc_gpu_flush(struct reloc_cache *cache)
+static int reloc_gpu_emit(struct reloc_cache *cache)
 {
 	struct i915_request *rq = cache->rq;
 	int err;
 
-	if (cache->rq_vma) {
-		struct drm_i915_gem_object *obj = cache->rq_vma->obj;
-
-		GEM_BUG_ON(cache->rq_size >= obj->base.size / sizeof(u32));
-		cache->rq_cmd[cache->rq_size++] = MI_BATCH_BUFFER_END;
-
-		__i915_gem_object_flush_map(obj,
-					    0, sizeof(u32) * cache->rq_size);
-		i915_gem_object_unpin_map(obj);
-	}
-
 	err = 0;
 	if (rq->engine->emit_init_breadcrumb)
 		err = rq->engine->emit_init_breadcrumb(rq);
@@ -1046,10 +1035,26 @@ static int reloc_gpu_flush(struct reloc_cache *cache)
 	if (err)
 		i915_request_set_error_once(rq, err);
 
+	return err;
+}
+
+static void reloc_gpu_flush(struct reloc_cache *cache)
+{
+	struct i915_request *rq = cache->rq;
+
+	if (cache->rq_vma) {
+		struct drm_i915_gem_object *obj = cache->rq_vma->obj;
+
+		GEM_BUG_ON(cache->rq_size >= obj->base.size / sizeof(u32));
+		cache->rq_cmd[cache->rq_size++] = MI_BATCH_BUFFER_END;
+
+		__i915_gem_object_flush_map(obj,
+					    0, sizeof(u32) * cache->rq_size);
+		i915_gem_object_unpin_map(obj);
+	}
+
 	intel_gt_chipset_flush(rq->engine->gt);
 	i915_request_add(rq);
-
-	return err;
 }
 
 static int
@@ -1605,7 +1610,7 @@ static int reloc_gpu_alloc(struct i915_execbuffer *eb)
 static int reloc_gpu(struct i915_execbuffer *eb)
 {
 	struct eb_vma *ev;
-	int flush, err;
+	int err;
 
 	err = reloc_gpu_alloc(eb);
 	if (err)
@@ -1613,19 +1618,21 @@ static int reloc_gpu(struct i915_execbuffer *eb)
 	GEM_BUG_ON(!eb->reloc_cache.rq);
 
 	err = lock_relocs(eb);
+	if (err)
+		return err;
+
+	err = reloc_gpu_emit(&eb->reloc_cache);
 	if (err)
 		goto out;
 
 	list_for_each_entry(ev, &eb->relocs, reloc_link) {
 		err = eb_relocate_vma(eb, ev);
 		if (err)
-			goto out;
+			break;
 	}
 
 out:
-	flush = reloc_gpu_flush(&eb->reloc_cache);
-	if (!err)
-		err = flush;
+	reloc_gpu_flush(&eb->reloc_cache);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index d5c1be86b1e6..d14315e04d98 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -46,6 +46,10 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 	if (err)
 		goto unpin_vma;
 
+	err = reloc_gpu_emit(&eb->reloc_cache);
+	if (err)
+		goto unpin_vma;
+
 	/* 8-Byte aligned */
 	err = __reloc_entry_gpu(eb, ev.vma, offsets[0] * sizeof(u32), 0);
 	if (err)
@@ -70,9 +74,7 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 
 	GEM_BUG_ON(!eb->reloc_cache.rq);
 	rq = i915_request_get(eb->reloc_cache.rq);
-	err = reloc_gpu_flush(&eb->reloc_cache);
-	if (err)
-		goto put_rq;
+	reloc_gpu_flush(&eb->reloc_cache);
 
 	err = i915_gem_object_wait(obj, I915_WAIT_INTERRUPTIBLE, HZ / 2);
 	if (err) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
