Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E4F47568C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Dec 2021 11:37:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5B9510E1CE;
	Wed, 15 Dec 2021 10:36:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9789E10E265;
 Wed, 15 Dec 2021 10:36:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="219214538"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="219214538"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 02:36:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="682442137"
Received: from asparren-mobl2.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.165])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 02:36:38 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 15 Dec 2021 11:36:11 +0100
Message-Id: <20211215103611.777665-8-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211215103611.777665-1-thomas.hellstrom@linux.intel.com>
References: <20211215103611.777665-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: Use struct vma_resource instead
 of struct vma_snapshot
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There is always a struct vma_resource guaranteed to be alive when we
access a corresponding struct vma_snapshot.

So ditch the latter and instead of allocating vma_snapshots, reference
the already existning vma_resource.

This requires a couple of extra members in struct vma_resource but that's
a small price to pay for the simplification.

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 -
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  15 +--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   9 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  87 ++++++------
 drivers/gpu/drm/i915/i915_request.c           |  12 +-
 drivers/gpu/drm/i915/i915_request.h           |   6 +-
 drivers/gpu/drm/i915/i915_vma.c               |  14 +-
 drivers/gpu/drm/i915/i915_vma_resource.c      |   2 +
 drivers/gpu/drm/i915/i915_vma_resource.h      |  26 +++-
 drivers/gpu/drm/i915/i915_vma_snapshot.c      | 125 ------------------
 drivers/gpu/drm/i915/i915_vma_snapshot.h      | 101 --------------
 11 files changed, 85 insertions(+), 313 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/i915_vma_snapshot.c
 delete mode 100644 drivers/gpu/drm/i915/i915_vma_snapshot.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 98433ad74194..aa86ac33effc 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -175,7 +175,6 @@ i915-y += \
 	  i915_ttm_buddy_manager.o \
 	  i915_vma.o \
 	  i915_vma_resource.o \
-	  i915_vma_snapshot.o \
 	  intel_wopcm.o
 
 # general-purpose microcontroller (GuC) support
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index b6faae1f9081..51649bbb8cc3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -29,7 +29,6 @@
 #include "i915_gem_ioctls.h"
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
-#include "i915_vma_snapshot.h"
 
 struct eb_vma {
 	struct i915_vma *vma;
@@ -1952,7 +1951,6 @@ static void eb_capture_stage(struct i915_execbuffer *eb)
 {
 	const unsigned int count = eb->buffer_count;
 	unsigned int i = count, j;
-	struct i915_vma_snapshot *vsnap;
 
 	while (i--) {
 		struct eb_vma *ev = &eb->vma[i];
@@ -1962,11 +1960,6 @@ static void eb_capture_stage(struct i915_execbuffer *eb)
 		if (!(flags & EXEC_OBJECT_CAPTURE))
 			continue;
 
-		vsnap = i915_vma_snapshot_alloc(GFP_KERNEL);
-		if (!vsnap)
-			continue;
-
-		i915_vma_snapshot_init(vsnap, vma, "user");
 		for_each_batch_create_order(eb, j) {
 			struct i915_capture_list *capture;
 
@@ -1975,10 +1968,9 @@ static void eb_capture_stage(struct i915_execbuffer *eb)
 				continue;
 
 			capture->next = eb->capture_lists[j];
-			capture->vma_snapshot = i915_vma_snapshot_get(vsnap);
+			capture->vma_res = i915_vma_resource_get(vma->resource);
 			eb->capture_lists[j] = capture;
 		}
-		i915_vma_snapshot_put(vsnap);
 	}
 }
 
@@ -3281,9 +3273,8 @@ eb_requests_create(struct i915_execbuffer *eb, struct dma_fence *in_fence,
 		 * _onstack interface.
 		 */
 		if (eb->batches[i]->vma)
-			i915_vma_snapshot_init_onstack(&eb->requests[i]->batch_snapshot,
-						       eb->batches[i]->vma,
-						       "batch");
+			eb->requests[i]->batch_res =
+				i915_vma_resource_get(eb->batches[i]->vma->resource);
 		if (eb->batch_pool) {
 			GEM_BUG_ON(intel_context_is_parallel(eb->context));
 			intel_gt_buffer_pool_mark_active(eb->batch_pool,
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 74aa90587061..d1daa4cc2895 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1708,18 +1708,15 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 
 static void print_request_ring(struct drm_printer *m, struct i915_request *rq)
 {
-	struct i915_vma_snapshot *vsnap = &rq->batch_snapshot;
+	struct i915_vma_resource *vma_res = rq->batch_res;
 	void *ring;
 	int size;
 
-	if (!i915_vma_snapshot_present(vsnap))
-		vsnap = NULL;
-
 	drm_printf(m,
 		   "[head %04x, postfix %04x, tail %04x, batch 0x%08x_%08x]:\n",
 		   rq->head, rq->postfix, rq->tail,
-		   vsnap ? upper_32_bits(vsnap->vma_resource->start) : ~0u,
-		   vsnap ? lower_32_bits(vsnap->vma_resource->start) : ~0u);
+		   vma_res ? upper_32_bits(vma_res->start) : ~0u,
+		   vma_res ? lower_32_bits(vma_res->start) : ~0u);
 
 	size = rq->tail - rq->head;
 	if (rq->tail < rq->head)
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index e5bb6ecf1202..e07802eadfd0 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -48,7 +48,6 @@
 #include "i915_gpu_error.h"
 #include "i915_memcpy.h"
 #include "i915_scatterlist.h"
-#include "i915_vma_snapshot.h"
 
 #define ALLOW_FAIL (__GFP_KSWAPD_RECLAIM | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
 #define ATOMIC_MAYFAIL (GFP_ATOMIC | __GFP_NOWARN)
@@ -1013,8 +1012,10 @@ void __i915_gpu_coredump_free(struct kref *error_ref)
 
 static struct i915_vma_coredump *
 i915_vma_coredump_create(const struct intel_gt *gt,
-			 const struct i915_vma_snapshot *vsnap,
-			 struct i915_vma_compress *compress)
+			 const struct i915_vma_resource *vma_res,
+			 struct i915_vma_compress *compress,
+			 const char *name)
+
 {
 	struct i915_ggtt *ggtt = gt->ggtt;
 	const u64 slot = ggtt->error_capture.start;
@@ -1024,7 +1025,7 @@ i915_vma_coredump_create(const struct intel_gt *gt,
 
 	might_sleep();
 
-	if (!vsnap || !vsnap->pages || !compress)
+	if (!vma_res || !vma_res->bi.pages || !compress)
 		return NULL;
 
 	dst = kmalloc(sizeof(*dst), ALLOW_FAIL);
@@ -1037,12 +1038,12 @@ i915_vma_coredump_create(const struct intel_gt *gt,
 	}
 
 	INIT_LIST_HEAD(&dst->page_list);
-	strcpy(dst->name, vsnap->name);
+	strcpy(dst->name, name);
 	dst->next = NULL;
 
-	dst->gtt_offset = vsnap->vma_resource->start;
-	dst->gtt_size = vsnap->vma_resource->node_size;
-	dst->gtt_page_sizes = vsnap->vma_resource->page_sizes_gtt;
+	dst->gtt_offset = vma_res->start;
+	dst->gtt_size = vma_res->node_size;
+	dst->gtt_page_sizes = vma_res->page_sizes_gtt;
 	dst->unused = 0;
 
 	ret = -EINVAL;
@@ -1050,7 +1051,7 @@ i915_vma_coredump_create(const struct intel_gt *gt,
 		void __iomem *s;
 		dma_addr_t dma;
 
-		for_each_sgt_daddr(dma, iter, vsnap->pages) {
+		for_each_sgt_daddr(dma, iter, vma_res->bi.pages) {
 			mutex_lock(&ggtt->error_mutex);
 			ggtt->vm.insert_page(&ggtt->vm, dma, slot,
 					     I915_CACHE_NONE, 0);
@@ -1068,11 +1069,11 @@ i915_vma_coredump_create(const struct intel_gt *gt,
 			if (ret)
 				break;
 		}
-	} else if (vsnap->mr && vsnap->mr->type != INTEL_MEMORY_SYSTEM) {
-		struct intel_memory_region *mem = vsnap->mr;
+	} else if (vma_res->bi.lmem) {
+		struct intel_memory_region *mem = vma_res->mr;
 		dma_addr_t dma;
 
-		for_each_sgt_daddr(dma, iter, vsnap->pages) {
+		for_each_sgt_daddr(dma, iter, vma_res->bi.pages) {
 			void __iomem *s;
 
 			s = io_mapping_map_wc(&mem->iomap,
@@ -1088,7 +1089,7 @@ i915_vma_coredump_create(const struct intel_gt *gt,
 	} else {
 		struct page *page;
 
-		for_each_sgt_page(page, iter, vsnap->pages) {
+		for_each_sgt_page(page, iter, vma_res->bi.pages) {
 			void *s;
 
 			drm_clflush_pages(&page, 1);
@@ -1324,33 +1325,32 @@ static bool record_context(struct i915_gem_context_coredump *e,
 
 struct intel_engine_capture_vma {
 	struct intel_engine_capture_vma *next;
-	struct i915_vma_snapshot *vsnap;
+	struct i915_vma_resource *vma_res;
 	char name[16];
 	bool lockdep_cookie;
 };
 
 static struct intel_engine_capture_vma *
 capture_vma_snapshot(struct intel_engine_capture_vma *next,
-		     struct i915_vma_snapshot *vsnap,
-		     gfp_t gfp)
+		     struct i915_vma_resource *vma_res,
+		     gfp_t gfp, const char *name)
 {
 	struct intel_engine_capture_vma *c;
 
-	if (!i915_vma_snapshot_present(vsnap))
+	if (!vma_res)
 		return next;
 
 	c = kmalloc(sizeof(*c), gfp);
 	if (!c)
 		return next;
 
-	if (!i915_vma_snapshot_resource_pin(vsnap, &c->lockdep_cookie)) {
+	if (!i915_vma_resource_hold(vma_res, &c->lockdep_cookie)) {
 		kfree(c);
 		return next;
 	}
 
-	strcpy(c->name, vsnap->name);
-	c->vsnap = vsnap;
-	i915_vma_snapshot_get(vsnap);
+	strcpy(c->name, name);
+	c->vma_res = i915_vma_resource_get(vma_res);
 
 	c->next = next;
 	return c;
@@ -1362,8 +1362,6 @@ capture_vma(struct intel_engine_capture_vma *next,
 	    const char *name,
 	    gfp_t gfp)
 {
-	struct i915_vma_snapshot *vsnap;
-
 	if (!vma)
 		return next;
 
@@ -1372,19 +1370,10 @@ capture_vma(struct intel_engine_capture_vma *next,
 	 * to a struct i915_vma_snapshot at command submission time.
 	 * Not here.
 	 */
-	GEM_WARN_ON(!i915_vma_is_pinned(vma));
-	if (!i915_vma_is_pinned(vma))
-		return next;
-
-	vsnap = i915_vma_snapshot_alloc(gfp);
-	if (!vsnap)
+	if (GEM_WARN_ON(!i915_vma_is_pinned(vma)))
 		return next;
 
-	i915_vma_snapshot_init(vsnap, vma, name);
-	next = capture_vma_snapshot(next, vsnap, gfp);
-
-	/* FIXME: Replace on async unbind. */
-	i915_vma_snapshot_put(vsnap);
+	next = capture_vma_snapshot(next, vma->resource, gfp, name);
 
 	return next;
 }
@@ -1397,7 +1386,8 @@ capture_user(struct intel_engine_capture_vma *capture,
 	struct i915_capture_list *c;
 
 	for (c = rq->capture_list; c; c = c->next)
-		capture = capture_vma_snapshot(capture, c->vma_snapshot, gfp);
+		capture = capture_vma_snapshot(capture, c->vma_res, gfp,
+					       "user");
 
 	return capture;
 }
@@ -1415,16 +1405,19 @@ static struct i915_vma_coredump *
 create_vma_coredump(const struct intel_gt *gt, struct i915_vma *vma,
 		    const char *name, struct i915_vma_compress *compress)
 {
-	struct i915_vma_coredump *ret;
-	struct i915_vma_snapshot tmp;
+	struct i915_vma_coredump *ret = NULL;
+	struct i915_vma_resource *vma_res;
+	bool lockdep_cookie;
 
 	if (!vma)
 		return NULL;
 
-	GEM_WARN_ON(!i915_vma_is_pinned(vma));
-	i915_vma_snapshot_init_onstack(&tmp, vma, name);
-	ret = i915_vma_coredump_create(gt, &tmp, compress);
-	i915_vma_snapshot_put_onstack(&tmp);
+	vma_res = vma->resource;
+
+	if (i915_vma_resource_hold(vma_res, &lockdep_cookie)) {
+		ret = i915_vma_coredump_create(gt, vma_res, compress, name);
+		i915_vma_resource_unhold(vma_res, lockdep_cookie);
+	}
 
 	return ret;
 }
@@ -1471,7 +1464,7 @@ intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
 	 * as the simplest method to avoid being overwritten
 	 * by userspace.
 	 */
-	vma = capture_vma_snapshot(vma, &rq->batch_snapshot, gfp);
+	vma = capture_vma_snapshot(vma, rq->batch_res, gfp, "batch");
 	vma = capture_user(vma, rq, gfp);
 	vma = capture_vma(vma, rq->ring->vma, "ring", gfp);
 	vma = capture_vma(vma, rq->context->state, "HW context", gfp);
@@ -1492,14 +1485,14 @@ intel_engine_coredump_add_vma(struct intel_engine_coredump *ee,
 
 	while (capture) {
 		struct intel_engine_capture_vma *this = capture;
-		struct i915_vma_snapshot *vsnap = this->vsnap;
+		struct i915_vma_resource *vma_res = this->vma_res;
 
 		add_vma(ee,
-			i915_vma_coredump_create(engine->gt,
-						 vsnap, compress));
+			i915_vma_coredump_create(engine->gt, vma_res,
+						 compress, this->name));
 
-		i915_vma_snapshot_resource_unpin(vsnap, this->lockdep_cookie);
-		i915_vma_snapshot_put(vsnap);
+		i915_vma_resource_unhold(vma_res, this->lockdep_cookie);
+		i915_vma_resource_put(vma_res);
 
 		capture = this->next;
 		kfree(this);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 76cf5ac91e94..ba3a70b2cc57 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -116,8 +116,10 @@ static void i915_fence_release(struct dma_fence *fence)
 		   rq->guc_prio != GUC_PRIO_FINI);
 
 	i915_request_free_capture_list(fetch_and_zero(&rq->capture_list));
-	if (i915_vma_snapshot_present(&rq->batch_snapshot))
-		i915_vma_snapshot_put_onstack(&rq->batch_snapshot);
+	if (rq->batch_res) {
+		i915_vma_resource_put(rq->batch_res);
+		rq->batch_res = NULL;
+	}
 
 	/*
 	 * The request is put onto a RCU freelist (i.e. the address
@@ -308,7 +310,7 @@ void i915_request_free_capture_list(struct i915_capture_list *capture)
 	while (capture) {
 		struct i915_capture_list *next = capture->next;
 
-		i915_vma_snapshot_put(capture->vma_snapshot);
+		i915_vma_resource_put(capture->vma_res);
 		kfree(capture);
 		capture = next;
 	}
@@ -854,7 +856,7 @@ static void __i915_request_ctor(void *arg)
 	i915_sw_fence_init(&rq->semaphore, semaphore_notify);
 
 	clear_capture_list(rq);
-	rq->batch_snapshot.present = false;
+	rq->batch_res = NULL;
 
 	init_llist_head(&rq->execute_cb);
 }
@@ -960,7 +962,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	__rq_init_watchdog(rq);
 	assert_capture_list_is_null(rq);
 	GEM_BUG_ON(!llist_empty(&rq->execute_cb));
-	GEM_BUG_ON(i915_vma_snapshot_present(&rq->batch_snapshot));
+	GEM_BUG_ON(rq->batch_res);
 
 	/*
 	 * Reserve space in the ring buffer for all the commands required to
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 170ee78c2858..28b1f9db5487 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -40,7 +40,7 @@
 #include "i915_scheduler.h"
 #include "i915_selftest.h"
 #include "i915_sw_fence.h"
-#include "i915_vma_snapshot.h"
+#include "i915_vma_resource.h"
 
 #include <uapi/drm/i915_drm.h>
 
@@ -52,7 +52,7 @@ struct i915_request;
 
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 struct i915_capture_list {
-	struct i915_vma_snapshot *vma_snapshot;
+	struct i915_vma_resource *vma_res;
 	struct i915_capture_list *next;
 };
 
@@ -300,7 +300,7 @@ struct i915_request {
 	/** Batch buffer pointer for selftest internal use. */
 	I915_SELFTEST_DECLARE(struct i915_vma *batch);
 
-	struct i915_vma_snapshot batch_snapshot;
+	struct i915_vma_resource *batch_res;
 
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 	/**
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index fdc5093a28de..40a4966abdeb 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -289,7 +289,6 @@ struct i915_vma_work {
 	struct i915_vma_resource *vma_res;
 	struct drm_i915_gem_object *pinned;
 	struct i915_sw_dma_fence_cb cb;
-	struct i915_refct_sgt *rsgt;
 	enum i915_cache_level cache_level;
 	unsigned int flags;
 };
@@ -317,8 +316,6 @@ static void __vma_release(struct dma_fence_work *work)
 	i915_vm_put(vw->vm);
 	if (vw->vma_res)
 		i915_vma_resource_put(vw->vma_res);
-	if (vw->rsgt)
-		i915_refct_sgt_put(vw->rsgt);
 }
 
 static const struct dma_fence_work_ops bind_ops = {
@@ -393,8 +390,8 @@ i915_vma_resource_init_from_vma(struct i915_vma_resource *vma_res,
 	struct drm_i915_gem_object *obj = vma->obj;
 
 	i915_vma_resource_init(vma_res, vma->vm, vma->pages, &vma->page_sizes,
-			       i915_gem_object_is_readonly(obj),
-			       i915_gem_object_is_lmem(obj),
+			       obj->mm.rsgt, i915_gem_object_is_readonly(obj),
+			       i915_gem_object_is_lmem(obj), obj->mm.region,
 			       vma->ops, vma->private, vma->node.start,
 			       vma->node.size, vma->size);
 }
@@ -485,8 +482,6 @@ int i915_vma_bind(struct i915_vma *vma,
 		work->vma_res = i915_vma_resource_get(vma->resource);
 		work->cache_level = cache_level;
 		work->flags = bind_flags;
-		if (vma->obj->mm.rsgt)
-			work->rsgt = i915_refct_sgt_get(vma->obj->mm.rsgt);
 
 		/*
 		 * Note we only want to chain up to the migration fence on
@@ -1421,7 +1416,7 @@ struct dma_fence *__i915_vma_evict(struct i915_vma *vma, bool async)
 	GEM_BUG_ON(i915_vma_has_userfault(vma));
 
 	/* Object backend must be async capable. */
-	GEM_WARN_ON(async && !vma->obj->mm.rsgt);
+	GEM_WARN_ON(async && !vma->resource->bi.pages_rsgt);
 
 	if (likely(atomic_read(&vma->vm->open))) {
 		trace_i915_vma_unbind(vma);
@@ -1436,9 +1431,6 @@ struct dma_fence *__i915_vma_evict(struct i915_vma *vma, bool async)
 	atomic_and(~(I915_VMA_BIND_MASK | I915_VMA_ERROR | I915_VMA_GGTT_WRITE),
 		   &vma->flags);
 
-	/* Object backend must be async capable. */
-	GEM_WARN_ON(async && !vma->obj->mm.rsgt);
-
 	i915_vma_detach(vma);
 
 	if (!async && unbind_fence) {
diff --git a/drivers/gpu/drm/i915/i915_vma_resource.c b/drivers/gpu/drm/i915/i915_vma_resource.c
index 2b8ade254c70..d6794f62e2a2 100644
--- a/drivers/gpu/drm/i915/i915_vma_resource.c
+++ b/drivers/gpu/drm/i915/i915_vma_resource.c
@@ -89,6 +89,8 @@ static void __i915_vma_resource_unhold(struct i915_vma_resource *vma_res)
 		return;
 
 	dma_fence_signal(&vma_res->unbind_fence);
+	if (vma_res->bi.pages_rsgt)
+		i915_refct_sgt_put(vma_res->bi.pages_rsgt);
 	vma_res->vm = NULL;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_vma_resource.h b/drivers/gpu/drm/i915/i915_vma_resource.h
index 3bb26ae6932d..7850c2c83c78 100644
--- a/drivers/gpu/drm/i915/i915_vma_resource.h
+++ b/drivers/gpu/drm/i915/i915_vma_resource.h
@@ -10,6 +10,7 @@
 #include <linux/refcount.h>
 
 #include "i915_gem.h"
+#include "i915_scatterlist.h"
 #include "i915_sw_fence.h"
 
 struct i915_page_sizes {
@@ -45,6 +46,7 @@ struct i915_page_sizes {
  * @rb: Rb node for the vm's pending unbind interval tree.
  * @__subtree_last: Interval tree private member.
  * @vm: non-refcounted pointer to the vm.
+ * @mr: The memory region of the object pointed to by the vma.
  * @ops: Pointer to the backend i915_vma_ops.
  * @private: Bind backend private info.
  * @start: Offset into the address space of bind range start.
@@ -53,8 +55,10 @@ struct i915_page_sizes {
  * @page_sizes_gtt: Resulting page sizes from the bind operation.
  * @bound_flags: Flags indicating binding status.
  * @allocated: Backend private data. TODO: Should move into @private.
- * @immediate_unbind: Unbind can be done immediately and don't need to be
- * deferred to a work item awaiting unsignaled fences.
+ * @immediate_unbind: Unbind can be done immediately and doesn't need to be
+ * deferred to a work item awaiting unsignaled fences. This is a hack.
+ * (dma_fence_work uses a fence flag for this, but this seems slightly
+ * cleaner).
  *
  * The lifetime of a struct i915_vma_resource is from a binding request to
  * the actual possible asynchronous unbind has completed.
@@ -78,16 +82,22 @@ struct i915_vma_resource {
 	 * and flags
 	 * @pages: The pages sg-table.
 	 * @page_sizes: Page sizes of the pages.
+	 * @pages_rsgt: Refcounted sg-table when delayed object destruction
+	 * is supported. May be NULL.
 	 * @readonly: Whether the vma should be bound read-only.
 	 * @lmem: Whether the vma points to lmem.
 	 */
 	struct i915_vma_bindinfo {
 		struct sg_table *pages;
 		struct i915_page_sizes page_sizes;
+		struct i915_refct_sgt *pages_rsgt;
 		bool readonly:1;
 		bool lmem:1;
 	} bi;
 
+#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
+	struct intel_memory_region *mr;
+#endif
 	const struct i915_vma_ops *ops;
 	void *private;
 	unsigned long start;
@@ -140,8 +150,11 @@ static inline void i915_vma_resource_put(struct i915_vma_resource *vma_res)
  * @vm: Pointer to the vm.
  * @pages: The pages sg-table.
  * @page_sizes: Page sizes of the pages.
+ * @pages_rsgt: Pointer to a struct i915_refct_sgt of an object with
+ * delayed destruction.
  * @readonly: Whether the vma should be bound read-only.
  * @lmem: Whether the vma points to lmem.
+ * @mr: The memory region of the object the vma points to.
  * @ops: The backend ops.
  * @private: Bind backend private info.
  * @start: Offset into the address space of bind range start.
@@ -157,8 +170,10 @@ static inline void i915_vma_resource_init(struct i915_vma_resource *vma_res,
 					  struct i915_address_space *vm,
 					  struct sg_table *pages,
 					  const struct i915_page_sizes *page_sizes,
+					  struct i915_refct_sgt *pages_rsgt,
 					  bool readonly,
 					  bool lmem,
+					  struct intel_memory_region *mr,
 					  const struct i915_vma_ops *ops,
 					  void *private,
 					  unsigned long start,
@@ -169,8 +184,13 @@ static inline void i915_vma_resource_init(struct i915_vma_resource *vma_res,
 	vma_res->vm = vm;
 	vma_res->bi.pages = pages;
 	vma_res->bi.page_sizes = *page_sizes;
+	if (pages_rsgt)
+		vma_res->bi.pages_rsgt = i915_refct_sgt_get(pages_rsgt);
 	vma_res->bi.readonly = readonly;
 	vma_res->bi.lmem = lmem;
+#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
+	vma_res->mr = mr;
+#endif
 	vma_res->ops = ops;
 	vma_res->private = private;
 	vma_res->start = start;
@@ -181,6 +201,8 @@ static inline void i915_vma_resource_init(struct i915_vma_resource *vma_res,
 static inline void i915_vma_resource_fini(struct i915_vma_resource *vma_res)
 {
 	GEM_BUG_ON(refcount_read(&vma_res->hold_count) != 1);
+	if (vma_res->bi.pages_rsgt)
+		i915_refct_sgt_put(vma_res->bi.pages_rsgt);
 	i915_sw_fence_fini(&vma_res->chain);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_vma_snapshot.c b/drivers/gpu/drm/i915/i915_vma_snapshot.c
deleted file mode 100644
index 69f62c1ca967..000000000000
--- a/drivers/gpu/drm/i915/i915_vma_snapshot.c
+++ /dev/null
@@ -1,125 +0,0 @@
-// SPDX-License-Identifier: MIT
-/*
- * Copyright © 2021 Intel Corporation
- */
-
-#include "i915_vma_resource.h"
-#include "i915_vma_snapshot.h"
-#include "i915_vma_types.h"
-#include "i915_vma.h"
-
-/**
- * i915_vma_snapshot_init - Initialize a struct i915_vma_snapshot from
- * a struct i915_vma.
- * @vsnap: The i915_vma_snapshot to init.
- * @vma: A struct i915_vma used to initialize @vsnap.
- * @name: Name associated with the snapshot. The character pointer needs to
- * stay alive over the lifitime of the shapsot
- */
-void i915_vma_snapshot_init(struct i915_vma_snapshot *vsnap,
-			    struct i915_vma *vma,
-			    const char *name)
-{
-	if (!i915_vma_is_pinned(vma))
-		assert_object_held(vma->obj);
-
-	vsnap->name = name;
-	vsnap->obj_size = vma->obj->base.size;
-	vsnap->pages = vma->pages;
-	vsnap->pages_rsgt = NULL;
-	vsnap->mr = NULL;
-	if (vma->obj->mm.rsgt)
-		vsnap->pages_rsgt = i915_refct_sgt_get(vma->obj->mm.rsgt);
-	vsnap->mr = vma->obj->mm.region;
-	kref_init(&vsnap->kref);
-	vsnap->vma_resource = i915_vma_get_current_resource(vma);
-	vsnap->onstack = false;
-	vsnap->present = true;
-}
-
-/**
- * i915_vma_snapshot_init_onstack - Initialize a struct i915_vma_snapshot from
- * a struct i915_vma, but avoid kfreeing it on last put.
- * @vsnap: The i915_vma_snapshot to init.
- * @vma: A struct i915_vma used to initialize @vsnap.
- * @name: Name associated with the snapshot. The character pointer needs to
- * stay alive over the lifitime of the shapsot
- */
-void i915_vma_snapshot_init_onstack(struct i915_vma_snapshot *vsnap,
-				    struct i915_vma *vma,
-				    const char *name)
-{
-	i915_vma_snapshot_init(vsnap, vma, name);
-	vsnap->onstack = true;
-}
-
-static void vma_snapshot_release(struct kref *ref)
-{
-	struct i915_vma_snapshot *vsnap =
-		container_of(ref, typeof(*vsnap), kref);
-
-	vsnap->present = false;
-	i915_vma_resource_put(vsnap->vma_resource);
-	if (vsnap->pages_rsgt)
-		i915_refct_sgt_put(vsnap->pages_rsgt);
-	if (!vsnap->onstack)
-		kfree(vsnap);
-}
-
-/**
- * i915_vma_snapshot_put - Put an i915_vma_snapshot pointer reference
- * @vsnap: The pointer reference
- */
-void i915_vma_snapshot_put(struct i915_vma_snapshot *vsnap)
-{
-	kref_put(&vsnap->kref, vma_snapshot_release);
-}
-
-/**
- * i915_vma_snapshot_put_onstack - Put an onstcak i915_vma_snapshot pointer
- * reference and varify that the structure is released
- * @vsnap: The pointer reference
- *
- * This function is intended to be paired with a i915_vma_init_onstack()
- * and should be called before exiting the scope that declared or
- * freeing the structure that embedded @vsnap to verify that all references
- * have been released.
- */
-void i915_vma_snapshot_put_onstack(struct i915_vma_snapshot *vsnap)
-{
-	if (!kref_put(&vsnap->kref, vma_snapshot_release))
-		GEM_BUG_ON(1);
-}
-
-/**
- * i915_vma_snapshot_resource_pin - Temporarily block the memory the
- * vma snapshot is pointing to from being released.
- * @vsnap: The vma snapshot.
- * @lockdep_cookie: Pointer to bool needed for lockdep support. This needs
- * to be passed to the paired i915_vma_snapshot_resource_unpin.
- *
- * This function will temporarily try to hold up a fence or similar structure
- * and will therefore enter a fence signaling critical section.
- *
- * Return: true if we succeeded in blocking the memory from being released,
- * false otherwise.
- */
-bool i915_vma_snapshot_resource_pin(struct i915_vma_snapshot *vsnap,
-				    bool *lockdep_cookie)
-{
-	return i915_vma_resource_hold(vsnap->vma_resource, lockdep_cookie);
-}
-
-/**
- * i915_vma_snapshot_resource_unpin - Unblock vma snapshot memory from
- * being released.
- * @vsnap: The vma snapshot.
- * @lockdep_cookie: Cookie returned from matching i915_vma_resource_pin().
- *
- * Might leave a fence signalling critical section and signal a fence.
- */
-void i915_vma_snapshot_resource_unpin(struct i915_vma_snapshot *vsnap,
-				      bool lockdep_cookie)
-{
-	i915_vma_resource_unhold(vsnap->vma_resource, lockdep_cookie);
-}
diff --git a/drivers/gpu/drm/i915/i915_vma_snapshot.h b/drivers/gpu/drm/i915/i915_vma_snapshot.h
deleted file mode 100644
index 1b08ce9f8576..000000000000
--- a/drivers/gpu/drm/i915/i915_vma_snapshot.h
+++ /dev/null
@@ -1,101 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2021 Intel Corporation
- */
-#ifndef _I915_VMA_SNAPSHOT_H_
-#define _I915_VMA_SNAPSHOT_H_
-
-#include <linux/kref.h>
-#include <linux/slab.h>
-#include <linux/types.h>
-
-struct i915_active;
-struct i915_refct_sgt;
-struct i915_vma;
-struct intel_memory_region;
-struct sg_table;
-
-/**
- * DOC: Simple utilities for snapshotting GPU vma metadata, later used for
- * error capture. Vi use a separate header for this to avoid issues due to
- * recursive header includes.
- */
-
-/**
- * struct i915_vma_snapshot - Snapshot of vma metadata.
- * @obj_size: The size of the underlying object in bytes.
- * @pages: The struct sg_table pointing to the pages bound.
- * @pages_rsgt: The refcounted sg_table holding the reference for @pages if any.
- * @mr: The memory region pointed for the pages bound.
- * @kref: Reference for this structure.
- * @vma_resource: Pointer to the vma resource representing the vma binding.
- * @onstack: Whether the structure shouldn't be freed on final put.
- * @present: Whether the structure is present and initialized.
- */
-struct i915_vma_snapshot {
-	const char *name;
-	size_t obj_size;
-	struct sg_table *pages;
-	struct i915_refct_sgt *pages_rsgt;
-	struct intel_memory_region *mr;
-	struct kref kref;
-	struct i915_vma_resource *vma_resource;
-	bool onstack:1;
-	bool present:1;
-};
-
-void i915_vma_snapshot_init(struct i915_vma_snapshot *vsnap,
-			    struct i915_vma *vma,
-			    const char *name);
-
-void i915_vma_snapshot_init_onstack(struct i915_vma_snapshot *vsnap,
-				    struct i915_vma *vma,
-				    const char *name);
-
-void i915_vma_snapshot_put(struct i915_vma_snapshot *vsnap);
-
-void i915_vma_snapshot_put_onstack(struct i915_vma_snapshot *vsnap);
-
-bool i915_vma_snapshot_resource_pin(struct i915_vma_snapshot *vsnap,
-				    bool *lockdep_cookie);
-
-void i915_vma_snapshot_resource_unpin(struct i915_vma_snapshot *vsnap,
-				      bool lockdep_cookie);
-
-/**
- * i915_vma_snapshot_alloc - Allocate a struct i915_vma_snapshot
- * @gfp: Allocation mode.
- *
- * Return: A pointer to a struct i915_vma_snapshot if successful.
- * NULL otherwise.
- */
-static inline struct i915_vma_snapshot *i915_vma_snapshot_alloc(gfp_t gfp)
-{
-	return kmalloc(sizeof(struct i915_vma_snapshot), gfp);
-}
-
-/**
- * i915_vma_snapshot_get - Take a reference on a struct i915_vma_snapshot
- *
- * Return: A pointer to a struct i915_vma_snapshot.
- */
-static inline struct i915_vma_snapshot *
-i915_vma_snapshot_get(struct i915_vma_snapshot *vsnap)
-{
-	kref_get(&vsnap->kref);
-	return vsnap;
-}
-
-/**
- * i915_vma_snapshot_present - Whether a struct i915_vma_snapshot is
- * present and initialized.
- *
- * Return: true if present and initialized; false otherwise.
- */
-static inline bool
-i915_vma_snapshot_present(const struct i915_vma_snapshot *vsnap)
-{
-	return vsnap && vsnap->present;
-}
-
-#endif
-- 
2.31.1

