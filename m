Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8159A1C17A3
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 16:23:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 399746ECBB;
	Fri,  1 May 2020 14:23:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 223126ECB1
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 14:23:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21083970-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 May 2020 15:23:22 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 15:23:21 +0100
Message-Id: <20200501142322.17048-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501142322.17048-1-chris@chris-wilson.co.uk>
References: <20200501142322.17048-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915/gem: Use a single chained reloc
 batches for a single execbuf
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

As we can now keep chaining together a relocation batch to process any
number of relocations, we can keep building that relocation batch for
all of the target vma. This avoiding emitting a new request into the
ring for each target, consuming precious ring space and a potential
stall.

v2: Propagate the failure from submitting the relocation batch.

Testcase: igt/gem_exec_reloc/basic-wide-active
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 31 ++++++++++++-------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 0411618d66a9..22992ec80172 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -268,6 +268,7 @@ struct i915_execbuffer {
 		bool has_fence : 1;
 		bool needs_unfenced : 1;
 
+		struct i915_vma *target;
 		struct i915_request *rq;
 		struct i915_vma *rq_vma;
 		u32 *rq_cmd;
@@ -1051,14 +1052,14 @@ static unsigned int reloc_bb_flags(const struct reloc_cache *cache)
 	return cache->gen > 5 ? 0 : I915_DISPATCH_SECURE;
 }
 
-static void reloc_gpu_flush(struct reloc_cache *cache)
+static int reloc_gpu_flush(struct reloc_cache *cache)
 {
 	struct i915_request *rq;
 	int err;
 
 	rq = fetch_and_zero(&cache->rq);
 	if (!rq)
-		return;
+		return 0;
 
 	if (cache->rq_vma) {
 		struct drm_i915_gem_object *obj = cache->rq_vma->obj;
@@ -1084,15 +1085,14 @@ static void reloc_gpu_flush(struct reloc_cache *cache)
 
 	intel_gt_chipset_flush(rq->engine->gt);
 	i915_request_add(rq);
+
+	return err;
 }
 
 static void reloc_cache_reset(struct reloc_cache *cache)
 {
 	void *vaddr;
 
-	if (cache->rq)
-		reloc_gpu_flush(cache);
-
 	if (!cache->vaddr)
 		return;
 
@@ -1285,7 +1285,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 }
 
 static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
-			     struct i915_vma *vma,
 			     unsigned int len)
 {
 	struct reloc_cache *cache = &eb->reloc_cache;
@@ -1308,7 +1307,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 		goto out_pool;
 	}
 
-	batch = i915_vma_instance(pool->obj, vma->vm, NULL);
+	batch = i915_vma_instance(pool->obj, eb->context->vm, NULL);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
 		goto err_unmap;
@@ -1328,10 +1327,6 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	if (err)
 		goto err_request;
 
-	err = reloc_move_to_gpu(rq, vma);
-	if (err)
-		goto err_request;
-
 	i915_vma_lock(batch);
 	err = i915_request_await_object(rq, batch->obj, false);
 	if (err == 0)
@@ -1376,11 +1371,19 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 		if (!intel_engine_can_store_dword(eb->engine))
 			return ERR_PTR(-ENODEV);
 
-		err = __reloc_gpu_alloc(eb, vma, len);
+		err = __reloc_gpu_alloc(eb, len);
 		if (unlikely(err))
 			return ERR_PTR(err);
 	}
 
+	if (vma != cache->target) {
+		err = reloc_move_to_gpu(cache->rq, vma);
+		if (unlikely(err))
+			return ERR_PTR(err);
+
+		cache->target = vma;
+	}
+
 	if (unlikely(cache->rq_size + len >
 		     PAGE_SIZE / sizeof(u32) - RELOC_TAIL)) {
 		err = reloc_gpu_chain(cache);
@@ -1698,6 +1701,10 @@ static int eb_relocate(struct i915_execbuffer *eb)
 			if (err)
 				return err;
 		}
+
+		err = reloc_gpu_flush(&eb->reloc_cache);
+		if (err)
+			return err;
 	}
 
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
