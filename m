Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C25220C56
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBF3D6EB2A;
	Wed, 15 Jul 2020 11:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2E486EACD
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826139-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:51:13 +0100
Message-Id: <20200715115147.11866-32-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 32/66] drm/i915/gt: Push the wait for the
 context to bound to the request
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

Rather than synchronously wait for the context to be bound, within the
intel_context_pin(), we can track the pending completion of the bind
fence and only submit requests along the context when signaled.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/Makefile              |  1 +
 drivers/gpu/drm/i915/gt/intel_context.c    | 80 +++++++++++++---------
 drivers/gpu/drm/i915/gt/intel_context.h    |  6 ++
 drivers/gpu/drm/i915/i915_active.h         |  1 -
 drivers/gpu/drm/i915/i915_request.c        |  4 ++
 drivers/gpu/drm/i915/i915_sw_fence_await.c | 62 +++++++++++++++++
 drivers/gpu/drm/i915/i915_sw_fence_await.h | 19 +++++
 7 files changed, 140 insertions(+), 33 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_sw_fence_await.c
 create mode 100644 drivers/gpu/drm/i915/i915_sw_fence_await.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index a3a4c8a555ec..2cf54db8b847 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -61,6 +61,7 @@ i915-y += \
 	i915_memcpy.o \
 	i915_mm.o \
 	i915_sw_fence.o \
+	i915_sw_fence_await.o \
 	i915_sw_fence_work.o \
 	i915_syncmap.o \
 	i915_user_extensions.o
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 2f1606365f63..9ba1c15114d7 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -10,6 +10,7 @@
 
 #include "i915_drv.h"
 #include "i915_globals.h"
+#include "i915_sw_fence_await.h"
 
 #include "intel_context.h"
 #include "intel_engine.h"
@@ -94,27 +95,6 @@ static void intel_context_active_release(struct intel_context *ce)
 	i915_active_release(&ce->active);
 }
 
-static int __intel_context_sync(struct intel_context *ce)
-{
-	int err;
-
-	err = i915_vma_wait_for_bind(ce->ring->vma);
-	if (err)
-		return err;
-
-	err = i915_vma_wait_for_bind(ce->timeline->hwsp_ggtt);
-	if (err)
-		return err;
-
-	if (ce->state) {
-		err = i915_vma_wait_for_bind(ce->state);
-		if (err)
-			return err;
-	}
-
-	return 0;
-}
-
 int __intel_context_do_pin(struct intel_context *ce)
 {
 	int err;
@@ -140,10 +120,6 @@ int __intel_context_do_pin(struct intel_context *ce)
 	}
 
 	if (likely(!atomic_add_unless(&ce->pin_count, 1, 0))) {
-		err = __intel_context_sync(ce);
-		if (unlikely(err))
-			goto out_unlock;
-
 		err = intel_context_active_acquire(ce);
 		if (unlikely(err))
 			goto out_unlock;
@@ -301,31 +277,71 @@ intel_context_acquire_lock(struct intel_context *ce,
 	return 0;
 }
 
+static int await_bind(struct dma_fence_await *fence, struct i915_vma *vma)
+{
+	struct dma_fence *bind;
+	int err = 0;
+
+	bind = i915_active_fence_get(&vma->active.excl);
+	if (bind) {
+		err = i915_sw_fence_await_dma_fence(&fence->await, bind,
+						    0, GFP_KERNEL);
+		dma_fence_put(bind);
+	}
+
+	return err;
+}
+
 static int intel_context_active_locked(struct intel_context *ce)
 {
+	struct dma_fence_await *fence;
 	int err;
 
+	fence = dma_fence_await_create(GFP_KERNEL);
+	if (!fence)
+		return -ENOMEM;
+
 	err = __ring_active_locked(ce->ring);
 	if (err)
-		return err;
+		goto out_fence;
+
+	err = await_bind(fence, ce->ring->vma);
+	if (err < 0)
+		goto err_ring;
 
 	err = intel_timeline_pin_locked(ce->timeline);
 	if (err)
 		goto err_ring;
 
-	if (!ce->state)
-		return 0;
-
-	err = __context_active_locked(ce->state);
-	if (err)
+	err = await_bind(fence, ce->timeline->hwsp_ggtt);
+	if (err < 0)
 		goto err_timeline;
 
-	return 0;
+	if (ce->state) {
+		err = __context_active_locked(ce->state);
+		if (err)
+			goto err_timeline;
+
+		err = await_bind(fence, ce->state);
+		if (err < 0)
+			goto err_state;
+	}
+
+	/* Must be the last action as it *releases* the ce->active */
+	if (atomic_read(&fence->await.pending) > 1)
+		i915_active_set_exclusive(&ce->active, &fence->dma);
+
+	err = 0;
+	goto out_fence;
 
+err_state:
+	__context_unpin_state(ce->state);
 err_timeline:
 	intel_timeline_unpin(ce->timeline);
 err_ring:
 	__ring_retire(ce->ring);
+out_fence:
+	i915_sw_fence_commit(&fence->await);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 07be021882cc..f48df2784a6c 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -249,4 +249,10 @@ static inline u64 intel_context_get_avg_runtime_ns(struct intel_context *ce)
 	return mul_u32_u32(ewma_runtime_read(&ce->runtime.avg), period);
 }
 
+static inline int i915_request_await_context(struct i915_request *rq,
+					     struct intel_context *ce)
+{
+	return __i915_request_await_exclusive(rq, &ce->active);
+}
+
 #endif /* __INTEL_CONTEXT_H__ */
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index fb165d3f01cf..4edf4bb92121 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -207,7 +207,6 @@ void i915_active_release(struct i915_active *ref);
 
 static inline void __i915_active_acquire(struct i915_active *ref)
 {
-	GEM_BUG_ON(!atomic_read(&ref->count));
 	atomic_inc(&ref->count);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index f58beff5e859..83696955ddf7 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -847,6 +847,10 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	if (ret)
 		goto err_unwind;
 
+	ret = i915_request_await_context(rq, ce);
+	if (ret)
+		goto err_unwind;
+
 	rq->infix = rq->ring->emit; /* end of header; start of user payload */
 
 	intel_context_mark_active(ce);
diff --git a/drivers/gpu/drm/i915/i915_sw_fence_await.c b/drivers/gpu/drm/i915/i915_sw_fence_await.c
new file mode 100644
index 000000000000..431d324e5591
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_sw_fence_await.c
@@ -0,0 +1,62 @@
+// SPDX-License-Identifier: MIT
+/*
+ * (C) Copyright 2020 Intel Corporation
+ */
+
+#include <linux/slab.h>
+#include <linux/dma-fence.h>
+
+#include "i915_sw_fence_await.h"
+
+static int __i915_sw_fence_call
+fence_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
+{
+	struct dma_fence_await *f = container_of(fence, typeof(*f), await);
+
+	switch (state) {
+	case FENCE_COMPLETE:
+		dma_fence_signal(&f->dma);
+		break;
+
+	case FENCE_FREE:
+		dma_fence_put(&f->dma);
+		break;
+	}
+
+	return NOTIFY_DONE;
+}
+
+static const char *fence_name(struct dma_fence *fence)
+{
+	return "dma-fence-await";
+}
+
+static void fence_release(struct dma_fence *fence)
+{
+	struct dma_fence_await *f = container_of(fence, typeof(*f), dma);
+
+	i915_sw_fence_fini(&f->await);
+
+	BUILD_BUG_ON(offsetof(typeof(*f), dma));
+	dma_fence_free(&f->dma);
+}
+
+static const struct dma_fence_ops fence_ops = {
+	.get_driver_name = fence_name,
+	.get_timeline_name = fence_name,
+	.release = fence_release,
+};
+
+struct dma_fence_await *dma_fence_await_create(gfp_t gfp)
+{
+	struct dma_fence_await *f;
+
+	f = kmalloc(sizeof(*f), gfp);
+	if (!f)
+		return NULL;
+
+	i915_sw_fence_init(&f->await, fence_notify);
+	dma_fence_init(&f->dma, &fence_ops, &f->await.wait.lock, 0, 0);
+
+	return f;
+}
diff --git a/drivers/gpu/drm/i915/i915_sw_fence_await.h b/drivers/gpu/drm/i915/i915_sw_fence_await.h
new file mode 100644
index 000000000000..71882a5ed443
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_sw_fence_await.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * (C) Copyright 2020 Intel Corporation
+ */
+
+#ifndef I915_SW_FENCE_AWAIT_H
+#define I915_SW_FENCE_AWAIT_H
+
+#include <linux/dma-fence.h>
+#include <linux/slab.h>
+
+#include "i915_sw_fence.h"
+
+struct dma_fence_await {
+	struct dma_fence dma;
+	struct i915_sw_fence await;
+} *dma_fence_await_create(gfp_t gfp);
+
+#endif /* I915_SW_FENCE_AWAIT_H */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
