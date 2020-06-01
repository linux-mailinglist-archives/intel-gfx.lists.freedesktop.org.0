Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 259741E9F1B
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 09:25:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E21036E13F;
	Mon,  1 Jun 2020 07:25:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EEE66E14B
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 07:25:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21356621-1500050 
 for multiple; Mon, 01 Jun 2020 08:24:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jun 2020 08:24:31 +0100
Message-Id: <20200601072446.19548-21-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601072446.19548-1-chris@chris-wilson.co.uk>
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/36] drm/i915/gem: Build the reloc request
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 51 ++++++++++---------
 .../i915/gem/selftests/i915_gem_execbuffer.c  |  8 +--
 2 files changed, 31 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 9537fd87e3a4..c48950d7f1c9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1021,11 +1021,27 @@ static unsigned int reloc_bb_flags(const struct reloc_cache *cache)
 	return cache->gen > 5 ? 0 : I915_DISPATCH_SECURE;
 }
 
-static int reloc_gpu_flush(struct reloc_cache *cache)
+static int reloc_gpu_emit(struct reloc_cache *cache)
 {
 	struct i915_request *rq = cache->rq;
 	int err;
 
+	err = 0;
+	if (rq->engine->emit_init_breadcrumb)
+		err = rq->engine->emit_init_breadcrumb(rq);
+	if (!err)
+		err = rq->engine->emit_bb_start(rq,
+						rq->batch->node.start,
+						PAGE_SIZE,
+						reloc_bb_flags(cache));
+
+	return err;
+}
+
+static void reloc_gpu_flush(struct reloc_cache *cache)
+{
+	struct i915_request *rq = cache->rq;
+
 	if (cache->rq_vma) {
 		struct drm_i915_gem_object *obj = cache->rq_vma->obj;
 
@@ -1037,21 +1053,8 @@ static int reloc_gpu_flush(struct reloc_cache *cache)
 		i915_gem_object_unpin_map(obj);
 	}
 
-	err = 0;
-	if (rq->engine->emit_init_breadcrumb)
-		err = rq->engine->emit_init_breadcrumb(rq);
-	if (!err)
-		err = rq->engine->emit_bb_start(rq,
-						rq->batch->node.start,
-						PAGE_SIZE,
-						reloc_bb_flags(cache));
-	if (err)
-		i915_request_set_error_once(rq, err);
-
 	intel_gt_chipset_flush(rq->engine->gt);
 	i915_request_add(rq);
-
-	return err;
 }
 
 static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
@@ -1139,7 +1142,7 @@ __reloc_gpu_alloc(struct i915_execbuffer *eb, struct intel_engine_cs *engine)
 		err = i915_vma_move_to_active(batch, rq, 0);
 	i915_vma_unlock(batch);
 	if (err)
-		goto skip_request;
+		goto err_request;
 
 	rq->batch = batch;
 	i915_vma_unpin(batch);
@@ -1152,8 +1155,6 @@ __reloc_gpu_alloc(struct i915_execbuffer *eb, struct intel_engine_cs *engine)
 	/* Return with batch mapping (cmd) still pinned */
 	goto out_pool;
 
-skip_request:
-	i915_request_set_error_once(rq, err);
 err_request:
 	i915_request_add(rq);
 err_unpin:
@@ -1186,10 +1187,8 @@ static u32 *reloc_batch_grow(struct i915_execbuffer *eb,
 	if (unlikely(cache->rq_size + len >
 		     PAGE_SIZE / sizeof(u32) - RELOC_TAIL)) {
 		err = reloc_gpu_chain(cache);
-		if (unlikely(err)) {
-			i915_request_set_error_once(cache->rq, err);
+		if (unlikely(err))
 			return ERR_PTR(err);
-		}
 	}
 
 	GEM_BUG_ON(cache->rq_size + len >= PAGE_SIZE  / sizeof(u32));
@@ -1571,23 +1570,25 @@ static int reloc_gpu_alloc(struct i915_execbuffer *eb)
 static int reloc_gpu(struct i915_execbuffer *eb)
 {
 	struct eb_vma *ev;
-	int flush, err;
+	int err;
 
 	err = reloc_gpu_alloc(eb);
 	if (err)
 		return err;
 	GEM_BUG_ON(!eb->reloc_cache.rq);
 
+	err = reloc_gpu_emit(&eb->reloc_cache);
+	if (err)
+		goto out;
+
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
index 50fe22d87ae1..faed6480a792 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -40,6 +40,10 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 	if (err)
 		goto unpin_vma;
 
+	err = reloc_gpu_emit(&eb->reloc_cache);
+	if (err)
+		goto unpin_vma;
+
 	/* 8-Byte aligned */
 	err = __reloc_entry_gpu(eb, vma, offsets[0] * sizeof(u32), 0);
 	if (err)
@@ -64,9 +68,7 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 
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
