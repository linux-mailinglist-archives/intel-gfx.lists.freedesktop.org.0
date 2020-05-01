Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 092991C0FD8
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 10:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B70646EC2D;
	Fri,  1 May 2020 08:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FB0D6EC2D
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 08:43:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21079345-1500050 
 for multiple; Fri, 01 May 2020 09:42:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 09:42:53 +0100
Message-Id: <20200501084255.5674-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501084255.5674-1-chris@chris-wilson.co.uk>
References: <20200501084255.5674-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/gem: Use a single chained reloc
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As we can now keep chaining together a relocation batch to process any
number of relocations, we can keep building that relocation batch for
all of the target vma. This avoiding emitting a new request into the
ring for each target, consuming precious ring space and a potential
stall.

Testcase: igt/gem_exec_reloc/basic-wide-active
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 23 +++++++++++--------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 47b1192a159e..9d68d66555b0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -268,6 +268,7 @@ struct i915_execbuffer {
 		bool has_fence : 1;
 		bool needs_unfenced : 1;
 
+		struct i915_vma *target;
 		struct i915_request *rq;
 		u32 *rq_cmd;
 		unsigned int rq_size;
@@ -1070,9 +1071,6 @@ static void reloc_cache_reset(struct reloc_cache *cache)
 {
 	void *vaddr;
 
-	if (cache->rq)
-		reloc_gpu_flush(cache);
-
 	if (!cache->vaddr)
 		return;
 
@@ -1265,7 +1263,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 }
 
 static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
-			     struct i915_vma *vma,
 			     unsigned int len)
 {
 	struct reloc_cache *cache = &eb->reloc_cache;
@@ -1288,7 +1285,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 		goto out_pool;
 	}
 
-	batch = i915_vma_instance(pool->obj, vma->vm, NULL);
+	batch = i915_vma_instance(pool->obj, eb->context->vm, NULL);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
 		goto err_unmap;
@@ -1308,10 +1305,6 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	if (err)
 		goto err_request;
 
-	err = reloc_move_to_gpu(rq, vma);
-	if (err)
-		goto err_request;
-
 	err = eb->engine->emit_bb_start(rq,
 					batch->node.start, PAGE_SIZE,
 					cache->gen > 5 ? 0 : I915_DISPATCH_SECURE);
@@ -1361,9 +1354,17 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 		if (!intel_engine_can_store_dword(eb->engine))
 			return ERR_PTR(-ENODEV);
 
-		err = __reloc_gpu_alloc(eb, vma, len);
+		err = __reloc_gpu_alloc(eb, len);
+		if (unlikely(err))
+			return ERR_PTR(err);
+	}
+
+	if (vma != cache->target) {
+		err = reloc_move_to_gpu(cache->rq, vma);
 		if (unlikely(err))
 			return ERR_PTR(err);
+
+		cache->target = vma;
 	}
 
 	if (unlikely(cache->rq_size > PAGE_SIZE / sizeof(u32) - len - 4)) {
@@ -1680,6 +1681,8 @@ static int eb_relocate(struct i915_execbuffer *eb)
 			if (err)
 				return err;
 		}
+
+		reloc_gpu_flush(&eb->reloc_cache);
 	}
 
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
