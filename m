Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3F8203421
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 11:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB0CF6E24D;
	Mon, 22 Jun 2020 09:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B6126E200
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 09:59:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21574666-1500050 
 for multiple; Mon, 22 Jun 2020 10:59:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 10:59:21 +0100
Message-Id: <20200622095921.15530-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200622095921.15530-1-chris@chris-wilson.co.uk>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects under
 reservation_ww_class
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

In order to actually handle eviction and what not, we need to process
all the objects together under a common lock, reservation_ww_class. As
such, do a memory reservation pass after looking up the object/vma,
which then feeds into the rest of execbuf [relocation, cmdparsing,
flushing and ofc execution].

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 91 ++++++++++++++-----
 1 file changed, 70 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 46fcbdf8161c..8db2e013465f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -53,10 +53,9 @@ struct eb_vma_array {
 
 #define __EXEC_OBJECT_HAS_PIN		BIT(31)
 #define __EXEC_OBJECT_HAS_FENCE		BIT(30)
-#define __EXEC_OBJECT_HAS_PAGES		BIT(29)
-#define __EXEC_OBJECT_NEEDS_MAP		BIT(28)
-#define __EXEC_OBJECT_NEEDS_BIAS	BIT(27)
-#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 27) /* all of the above */
+#define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
+#define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
+#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
 
 #define __EXEC_HAS_RELOC	BIT(31)
 #define __EXEC_INTERNAL_FLAGS	(~0u << 31)
@@ -241,6 +240,8 @@ struct i915_execbuffer {
 	struct intel_context *context; /* logical state for the request */
 	struct i915_gem_context *gem_context; /** caller's context */
 
+	struct dma_fence *mm_fence;
+
 	struct i915_request *request; /** our request to build */
 	struct eb_vma *batch; /** identity of the batch obj/vma */
 	struct i915_vma *trampoline; /** trampoline used for chaining */
@@ -331,12 +332,7 @@ static inline void eb_unreserve_vma(struct eb_vma *ev)
 	if (ev->flags & __EXEC_OBJECT_HAS_PIN)
 		__i915_vma_unpin(vma);
 
-	if (ev->flags & __EXEC_OBJECT_HAS_PAGES)
-		i915_gem_object_unpin_pages(vma->obj);
-
-	ev->flags &= ~(__EXEC_OBJECT_HAS_PIN |
-		       __EXEC_OBJECT_HAS_FENCE |
-		       __EXEC_OBJECT_HAS_PAGES);
+	ev->flags &= ~(__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE);
 }
 
 static void eb_vma_array_destroy(struct kref *kref)
@@ -667,6 +663,55 @@ eb_add_vma(struct i915_execbuffer *eb,
 	list_add_tail(&ev->lock_link, &eb->lock);
 }
 
+static int eb_vma_get_pages(struct i915_execbuffer *eb,
+			    struct eb_vma *ev,
+			    u64 idx)
+{
+	struct i915_vma *vma = ev->vma;
+	int err;
+
+	/* XXX also preallocate PD for vma */
+
+	err = ____i915_gem_object_get_pages_async(vma->obj);
+	if (err)
+		return err;
+
+	return i915_active_ref(&vma->obj->mm.active, idx, eb->mm_fence);
+}
+
+static int eb_reserve_mm(struct i915_execbuffer *eb)
+{
+	const u64 idx = eb->context->timeline->fence_context;
+	struct ww_acquire_ctx acquire;
+	struct eb_vma *ev;
+	int err;
+
+	eb->mm_fence = __dma_fence_create_proxy(0, 0);
+	if (!eb->mm_fence)
+		return -ENOMEM;
+
+	ww_acquire_init(&acquire, &reservation_ww_class);
+
+	err = eb_lock_vma(eb, &acquire);
+	if (err)
+		goto out;
+
+	ww_acquire_done(&acquire);
+
+	list_for_each_entry(ev, &eb->lock, lock_link) {
+		struct i915_vma *vma = ev->vma;
+
+		if (err == 0)
+			err = eb_vma_get_pages(eb, ev, idx);
+
+		i915_vma_unlock(vma);
+	}
+
+out:
+	ww_acquire_fini(&acquire);
+	return err;
+}
+
 struct eb_vm_work {
 	struct dma_fence_work base;
 	struct list_head unbound;
@@ -1312,20 +1357,9 @@ static int eb_vm_throttle(struct eb_vm_work *work)
 
 static int eb_prepare_vma(struct eb_vma *ev)
 {
-	struct i915_vma *vma = ev->vma;
-	int err;
-
 	ev->hole.flags = 0;
 	ev->bind_flags = 0;
 
-	if (!(ev->flags &  __EXEC_OBJECT_HAS_PAGES)) {
-		err = i915_gem_object_pin_pages(vma->obj);
-		if (err)
-			return err;
-
-		ev->flags |=  __EXEC_OBJECT_HAS_PAGES;
-	}
-
 	return 0;
 }
 
@@ -2413,6 +2447,10 @@ static int eb_relocate(struct i915_execbuffer *eb)
 	if (err)
 		return err;
 
+	err = eb_reserve_mm(eb);
+	if (err)
+		return err;
+
 	err = eb_reserve_vm(eb);
 	if (err)
 		return err;
@@ -2844,6 +2882,12 @@ static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
 {
 	int err;
 
+	if (eb->mm_fence) {
+		dma_fence_proxy_set_real(eb->mm_fence, &eb->request->fence);
+		dma_fence_put(eb->mm_fence);
+		eb->mm_fence = NULL;
+	}
+
 	if (eb->reloc_cache.fence) {
 		err = i915_request_await_dma_fence(eb->request,
 						   &eb->reloc_cache.rq->fence);
@@ -3339,6 +3383,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	eb.batch_start_offset = args->batch_start_offset;
 	eb.batch_len = args->batch_len;
 	eb.trampoline = NULL;
+	eb.mm_fence = NULL;
 
 	eb.batch_flags = 0;
 	if (args->flags & I915_EXEC_SECURE) {
@@ -3533,6 +3578,10 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		eb_reloc_signal(&eb, eb.reloc_cache.rq);
 	if (eb.trampoline)
 		i915_vma_unpin(eb.trampoline);
+	if (eb.mm_fence) {
+		dma_fence_signal(eb.mm_fence);
+		dma_fence_put(eb.mm_fence);
+	}
 	eb_unpin_engine(&eb);
 err_context:
 	i915_gem_context_put(eb.gem_context);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
