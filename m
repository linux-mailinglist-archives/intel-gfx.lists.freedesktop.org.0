Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3541C10BE
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 12:19:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3523C6EC3C;
	Fri,  1 May 2020 10:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 188776E03B
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 10:19:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21080515-1500050 
 for multiple; Fri, 01 May 2020 11:19:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 11:18:59 +0100
Message-Id: <20200501101900.22543-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501101900.22543-1-chris@chris-wilson.co.uk>
References: <20200501101900.22543-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gem: Use a single chained reloc
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
index 293bf06b65b2..b224a453e2a3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -268,6 +268,7 @@ struct i915_execbuffer {
 		bool has_fence : 1;
 		bool needs_unfenced : 1;
 
+		struct i915_vma *target;
 		struct i915_request *rq;
 		u32 *rq_cmd;
 		unsigned int rq_size;
@@ -1087,9 +1088,6 @@ static void reloc_cache_reset(struct reloc_cache *cache)
 {
 	void *vaddr;
 
-	if (cache->rq)
-		reloc_gpu_flush(cache);
-
 	if (!cache->vaddr)
 		return;
 
@@ -1282,7 +1280,6 @@ static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
 }
 
 static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
-			     struct i915_vma *vma,
 			     unsigned int len)
 {
 	struct reloc_cache *cache = &eb->reloc_cache;
@@ -1305,7 +1302,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 		goto out_pool;
 	}
 
-	batch = i915_vma_instance(pool->obj, vma->vm, NULL);
+	batch = i915_vma_instance(pool->obj, eb->context->vm, NULL);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
 		goto err_unmap;
@@ -1325,10 +1322,6 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	if (err)
 		goto err_request;
 
-	err = reloc_move_to_gpu(rq, vma);
-	if (err)
-		goto err_request;
-
 	i915_vma_lock(batch);
 	err = i915_request_await_object(rq, batch->obj, false);
 	if (err == 0)
@@ -1373,9 +1366,17 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
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
 
 	if (unlikely(cache->rq_size + len > PAGE_SIZE / sizeof(u32) - 4)) {
@@ -1694,6 +1695,8 @@ static int eb_relocate(struct i915_execbuffer *eb)
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
