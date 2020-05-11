Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8401CD36C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 09:58:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB64F6E28B;
	Mon, 11 May 2020 07:58:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF716E25B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 07:57:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21160804-1500050 
 for multiple; Mon, 11 May 2020 08:57:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2020 08:57:22 +0100
Message-Id: <20200511075722.13483-20-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200511075722.13483-1-chris@chris-wilson.co.uk>
References: <20200511075722.13483-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/20] drm/i915/selftests: Always flush before
 unpining after writing
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

Be consistent, and even when we know we had used a WC, flush the mapped
object after writing into it. The flush understands the mapping type and
will only flush the WCB if I915_MAP_WC.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_object_blt.c          | 8 ++++++--
 drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c | 2 ++
 drivers/gpu/drm/i915/gt/selftest_ring_submission.c      | 2 ++
 drivers/gpu/drm/i915/gt/selftest_rps.c                  | 2 ++
 drivers/gpu/drm/i915/selftests/i915_request.c           | 9 +++++++--
 5 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
index 2fc7737ef5f4..f457d7130491 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
@@ -78,10 +78,12 @@ struct i915_vma *intel_emit_vma_fill_blt(struct intel_context *ce,
 	} while (rem);
 
 	*cmd = MI_BATCH_BUFFER_END;
-	intel_gt_chipset_flush(ce->vm->gt);
 
+	i915_gem_object_flush_map(pool->obj);
 	i915_gem_object_unpin_map(pool->obj);
 
+	intel_gt_chipset_flush(ce->vm->gt);
+
 	batch = i915_vma_instance(pool->obj, ce->vm, NULL);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
@@ -289,10 +291,12 @@ struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
 	} while (rem);
 
 	*cmd = MI_BATCH_BUFFER_END;
-	intel_gt_chipset_flush(ce->vm->gt);
 
+	i915_gem_object_flush_map(pool->obj);
 	i915_gem_object_unpin_map(pool->obj);
 
+	intel_gt_chipset_flush(ce->vm->gt);
+
 	batch = i915_vma_instance(pool->obj, ce->vm, NULL);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 3f6079e1dfb6..87d7d8aa080f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -158,6 +158,8 @@ static int wc_set(struct context *ctx, unsigned long offset, u32 v)
 		return PTR_ERR(map);
 
 	map[offset / sizeof(*map)] = v;
+
+	__i915_gem_object_flush_map(ctx->obj, offset, sizeof(*map));
 	i915_gem_object_unpin_map(ctx->obj);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
index 9995faadd7e8..3350e7c995bc 100644
--- a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
@@ -54,6 +54,8 @@ static struct i915_vma *create_wally(struct intel_engine_cs *engine)
 	*cs++ = STACK_MAGIC;
 
 	*cs++ = MI_BATCH_BUFFER_END;
+
+	i915_gem_object_flush_map(obj);
 	i915_gem_object_unpin_map(obj);
 
 	vma->private = intel_context_create(engine); /* dummy residuals */
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index bfa1a15564f7..6275d69aa9cc 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -727,6 +727,7 @@ int live_rps_frequency_cs(void *arg)
 
 err_vma:
 		*cancel = MI_BATCH_BUFFER_END;
+		i915_gem_object_flush_map(vma->obj);
 		i915_gem_object_unpin_map(vma->obj);
 		i915_vma_unpin(vma);
 		i915_vma_put(vma);
@@ -868,6 +869,7 @@ int live_rps_frequency_srm(void *arg)
 
 err_vma:
 		*cancel = MI_BATCH_BUFFER_END;
+		i915_gem_object_flush_map(vma->obj);
 		i915_gem_object_unpin_map(vma->obj);
 		i915_vma_unpin(vma);
 		i915_vma_put(vma);
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index ffdfcb3805b5..6014e8dfcbb1 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -816,10 +816,12 @@ static int recursive_batch_resolve(struct i915_vma *batch)
 		return PTR_ERR(cmd);
 
 	*cmd = MI_BATCH_BUFFER_END;
-	intel_gt_chipset_flush(batch->vm->gt);
 
+	__i915_gem_object_flush_map(batch->obj, 0, sizeof(*cmd));
 	i915_gem_object_unpin_map(batch->obj);
 
+	intel_gt_chipset_flush(batch->vm->gt);
+
 	return 0;
 }
 
@@ -1060,9 +1062,12 @@ static int live_sequential_engines(void *arg)
 					      I915_MAP_WC);
 		if (!IS_ERR(cmd)) {
 			*cmd = MI_BATCH_BUFFER_END;
-			intel_gt_chipset_flush(engine->gt);
 
+			__i915_gem_object_flush_map(request[idx]->batch->obj,
+						    0, sizeof(*cmd));
 			i915_gem_object_unpin_map(request[idx]->batch->obj);
+
+			intel_gt_chipset_flush(engine->gt);
 		}
 
 		i915_vma_put(request[idx]->batch);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
