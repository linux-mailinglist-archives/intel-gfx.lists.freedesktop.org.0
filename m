Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD6218F54A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 14:09:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97C2B89FD1;
	Mon, 23 Mar 2020 13:09:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DFC889FC0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 13:09:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20660719-1500050 
 for multiple; Mon, 23 Mar 2020 13:09:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Mar 2020 13:09:33 +0000
Message-Id: <20200323130935.13568-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200323130935.13568-1-chris@chris-wilson.co.uk>
References: <20200323130935.13568-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Immediately execute the fenced
 work
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

If the caller allows and we do not have to wait for any signals,
immediately execute the work within the caller's process. By doing so we
avoid the overhead of scheduling a new task, and the latency in
executing it, at the cost of pulling that work back into the immediate
context. (Sometimes we still prefer to offload the task to another cpu,
especially if we plan on executing many such tasks in parallel for this
client.)

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
 drivers/gpu/drm/i915/i915_sw_fence_work.c     |  5 ++-
 drivers/gpu/drm/i915/i915_sw_fence_work.h     | 33 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_vma.c               |  2 +-
 4 files changed, 39 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 6b3013d20851..c643eec4dca0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1822,7 +1822,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	dma_resv_add_excl_fence(shadow->resv, &pw->base.dma);
 	dma_resv_unlock(shadow->resv);
 
-	dma_fence_work_commit(&pw->base);
+	dma_fence_work_commit_imm(&pw->base);
 	return 0;
 
 err_batch_unlock:
diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.c b/drivers/gpu/drm/i915/i915_sw_fence_work.c
index 997b2998f1f2..a3a81bb8f2c3 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence_work.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence_work.c
@@ -38,7 +38,10 @@ fence_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 
 		if (!f->dma.error) {
 			dma_fence_get(&f->dma);
-			queue_work(system_unbound_wq, &f->work);
+			if (test_bit(DMA_FENCE_WORK_IMM, &f->dma.flags))
+				fence_work(&f->work);
+			else
+				queue_work(system_unbound_wq, &f->work);
 		} else {
 			fence_complete(f);
 		}
diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.h b/drivers/gpu/drm/i915/i915_sw_fence_work.h
index 3a22b287e201..1e85ecaba105 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence_work.h
+++ b/drivers/gpu/drm/i915/i915_sw_fence_work.h
@@ -13,6 +13,14 @@
 
 #include "i915_sw_fence.h"
 
+#ifdef CONFIG_DRM_I915_DEBUG_GEM /* placeholder */
+#define __DBG_BUG_ON(expr) BUG_ON(expr)
+#define __DBG_WARN_ON(expr) WARN_ON(expr)
+#else
+#define __DBG_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
+#define __DBG_WARN_ON(expr) ({ unlikely(!!(expr)); })
+#endif
+
 struct dma_fence_work;
 
 struct dma_fence_work_ops {
@@ -32,6 +40,10 @@ struct dma_fence_work {
 	const struct dma_fence_work_ops *ops;
 };
 
+enum {
+	DMA_FENCE_WORK_IMM = DMA_FENCE_FLAG_USER_BITS,
+};
+
 void dma_fence_work_init(struct dma_fence_work *f,
 			 const struct dma_fence_work_ops *ops);
 int dma_fence_work_chain(struct dma_fence_work *f, struct dma_fence *signal);
@@ -41,4 +53,25 @@ static inline void dma_fence_work_commit(struct dma_fence_work *f)
 	i915_sw_fence_commit(&f->chain);
 }
 
+/**
+ * dma_fence_work_commit_imm: Commit the fence, and if possible execute locally.
+ * @f: the fenced worker
+ *
+ * Instead of always scheduling a worker to execute the callback (see
+ * dma_fence_work_commit()), we try to execute the callback immediately in
+ * the local context. It is required that the fence be committed before it
+ * is published, and that no other threads try to tamper with the number
+ * of asynchronous waits on the fence (or else the callback will be
+ * executed in the wrong context, i.e. not the callers).
+ */
+static inline void dma_fence_work_commit_imm(struct dma_fence_work *f)
+{
+	if (atomic_read(&f->chain.pending) <= 1)
+		__set_bit(DMA_FENCE_WORK_IMM, &f->dma.flags);
+
+	dma_fence_work_commit(f);
+	__DBG_BUG_ON(test_bit(DMA_FENCE_WORK_IMM, &f->dma.flags) &&
+		     !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &f->dma.flags));
+}
+
 #endif /* I915_SW_FENCE_WORK_H */
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 08699fa069aa..191577a98390 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -980,7 +980,7 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	mutex_unlock(&vma->vm->mutex);
 err_fence:
 	if (work)
-		dma_fence_work_commit(&work->base);
+		dma_fence_work_commit_imm(&work->base);
 	if (wakeref)
 		intel_runtime_pm_put(&vma->vm->i915->runtime_pm, wakeref);
 err_pages:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
