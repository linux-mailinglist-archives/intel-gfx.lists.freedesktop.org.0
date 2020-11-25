Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B112C3E05
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 11:40:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 326346E8FF;
	Wed, 25 Nov 2020 10:40:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66CB66E8A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 10:40:24 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Nov 2020 11:39:10 +0100
Message-Id: <20201125104011.606641-3-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8
In-Reply-To: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
References: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 02/63] drm/i915: Pin timeline map after first
 timeline pin, v3.
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

We're starting to require the reservation lock for pinning,
so wait until we have that.

Update the selftests to handle this correctly, and ensure pin is
called in live_hwsp_rollover_user() and mock_hwsp_freelist().

Changes since v1:
- Fix NULL + XX arithmatic, use casts. (kbuild)
Changes since v2:
- Clear entire cacheline when pinning.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reported-by: kernel test robot <lkp@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_timeline.c    | 40 +++++++++----
 drivers/gpu/drm/i915/gt/intel_timeline.h    |  2 +
 drivers/gpu/drm/i915/gt/mock_engine.c       | 22 ++++++-
 drivers/gpu/drm/i915/gt/selftest_timeline.c | 63 +++++++++++----------
 drivers/gpu/drm/i915/i915_selftest.h        |  2 +
 5 files changed, 84 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 789530a6115f..d1f67c58ac78 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -53,14 +53,29 @@ static int __timeline_active(struct i915_active *active)
 	return 0;
 }
 
+I915_SELFTEST_EXPORT int
+intel_timeline_pin_map(struct intel_timeline *timeline)
+{
+	struct drm_i915_gem_object *obj = timeline->hwsp_ggtt->obj;
+	u32 ofs = offset_in_page(timeline->hwsp_offset);
+	void *vaddr;
+
+	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	if (IS_ERR(vaddr))
+		return PTR_ERR(vaddr);
+
+	timeline->hwsp_map = vaddr;
+	timeline->hwsp_seqno = memset(vaddr + ofs, 0, CACHELINE_BYTES);
+	clflush(vaddr + ofs);
+
+	return 0;
+}
+
 static int intel_timeline_init(struct intel_timeline *timeline,
 			       struct intel_gt *gt,
 			       struct i915_vma *hwsp,
 			       unsigned int offset)
 {
-	void *vaddr;
-	u32 *seqno;
-
 	kref_init(&timeline->kref);
 	atomic_set(&timeline->pin_count, 0);
 
@@ -77,14 +92,8 @@ static int intel_timeline_init(struct intel_timeline *timeline,
 		timeline->hwsp_ggtt = hwsp;
 	}
 
-	vaddr = i915_gem_object_pin_map(hwsp->obj, I915_MAP_WB);
-	if (IS_ERR(vaddr))
-		return PTR_ERR(vaddr);
-
-	timeline->hwsp_map = vaddr;
-	seqno = vaddr + timeline->hwsp_offset;
-	WRITE_ONCE(*seqno, 0);
-	timeline->hwsp_seqno = seqno;
+	timeline->hwsp_map = NULL;
+	timeline->hwsp_seqno = (void *)(long)timeline->hwsp_offset;
 
 	GEM_BUG_ON(timeline->hwsp_offset >= hwsp->size);
 
@@ -115,7 +124,8 @@ static void intel_timeline_fini(struct intel_timeline *timeline)
 	GEM_BUG_ON(!list_empty(&timeline->requests));
 	GEM_BUG_ON(timeline->retire);
 
-	i915_gem_object_unpin_map(timeline->hwsp_ggtt->obj);
+	if (timeline->hwsp_map)
+		i915_gem_object_unpin_map(timeline->hwsp_ggtt->obj);
 
 	i915_vma_put(timeline->hwsp_ggtt);
 	i915_active_fini(&timeline->active);
@@ -155,6 +165,12 @@ int intel_timeline_pin(struct intel_timeline *tl, struct i915_gem_ww_ctx *ww)
 	if (atomic_add_unless(&tl->pin_count, 1, 0))
 		return 0;
 
+	if (!tl->hwsp_map) {
+		err = intel_timeline_pin_map(tl);
+		if (err)
+			return err;
+	}
+
 	err = i915_ggtt_pin(tl->hwsp_ggtt, ww, 0, PIN_HIGH);
 	if (err)
 		return err;
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
index 634acebd0c4b..6cbd17677005 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
@@ -115,4 +115,6 @@ void intel_gt_show_timelines(struct intel_gt *gt,
 						  const char *prefix,
 						  int indent));
 
+I915_SELFTEST_DECLARE(int intel_timeline_pin_map(struct intel_timeline *tl));
+
 #endif
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index 2f830017c51d..effbac877eec 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -32,9 +32,20 @@
 #include "mock_engine.h"
 #include "selftests/mock_request.h"
 
-static void mock_timeline_pin(struct intel_timeline *tl)
+static int mock_timeline_pin(struct intel_timeline *tl)
 {
+	int err;
+
+	if (WARN_ON(!i915_gem_object_trylock(tl->hwsp_ggtt->obj)))
+		return -EBUSY;
+
+	err = intel_timeline_pin_map(tl);
+	i915_gem_object_unlock(tl->hwsp_ggtt->obj);
+	if (err)
+		return err;
+
 	atomic_inc(&tl->pin_count);
+	return 0;
 }
 
 static void mock_timeline_unpin(struct intel_timeline *tl)
@@ -152,6 +163,8 @@ static void mock_context_destroy(struct kref *ref)
 
 static int mock_context_alloc(struct intel_context *ce)
 {
+	int err;
+
 	ce->ring = mock_ring(ce->engine);
 	if (!ce->ring)
 		return -ENOMEM;
@@ -162,7 +175,12 @@ static int mock_context_alloc(struct intel_context *ce)
 		return PTR_ERR(ce->timeline);
 	}
 
-	mock_timeline_pin(ce->timeline);
+	err = mock_timeline_pin(ce->timeline);
+	if (err) {
+		intel_timeline_put(ce->timeline);
+		ce->timeline = NULL;
+		return err;
+	}
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index 365ba1d088ba..c8d7552501a7 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -34,7 +34,7 @@ static unsigned long hwsp_cacheline(struct intel_timeline *tl)
 {
 	unsigned long address = (unsigned long)page_address(hwsp_page(tl));
 
-	return (address + tl->hwsp_offset) / CACHELINE_BYTES;
+	return (address + offset_in_page(tl->hwsp_offset)) / CACHELINE_BYTES;
 }
 
 #define CACHELINES_PER_PAGE (PAGE_SIZE / CACHELINE_BYTES)
@@ -58,6 +58,7 @@ static void __mock_hwsp_record(struct mock_hwsp_freelist *state,
 	tl = xchg(&state->history[idx], tl);
 	if (tl) {
 		radix_tree_delete(&state->cachelines, hwsp_cacheline(tl));
+		intel_timeline_unpin(tl);
 		intel_timeline_put(tl);
 	}
 }
@@ -77,6 +78,12 @@ static int __mock_hwsp_timeline(struct mock_hwsp_freelist *state,
 		if (IS_ERR(tl))
 			return PTR_ERR(tl);
 
+		err = intel_timeline_pin(tl, NULL);
+		if (err) {
+			intel_timeline_put(tl);
+			return err;
+		}
+
 		cacheline = hwsp_cacheline(tl);
 		err = radix_tree_insert(&state->cachelines, cacheline, tl);
 		if (err) {
@@ -84,6 +91,7 @@ static int __mock_hwsp_timeline(struct mock_hwsp_freelist *state,
 				pr_err("HWSP cacheline %lu already used; duplicate allocation!\n",
 				       cacheline);
 			}
+			intel_timeline_unpin(tl);
 			intel_timeline_put(tl);
 			return err;
 		}
@@ -451,7 +459,7 @@ static int emit_ggtt_store_dw(struct i915_request *rq, u32 addr, u32 value)
 }
 
 static struct i915_request *
-tl_write(struct intel_timeline *tl, struct intel_engine_cs *engine, u32 value)
+checked_tl_write(struct intel_timeline *tl, struct intel_engine_cs *engine, u32 value)
 {
 	struct i915_request *rq;
 	int err;
@@ -462,6 +470,13 @@ tl_write(struct intel_timeline *tl, struct intel_engine_cs *engine, u32 value)
 		goto out;
 	}
 
+	if (READ_ONCE(*tl->hwsp_seqno) != tl->seqno) {
+		pr_err("Timeline created with incorrect breadcrumb, found %x, expected %x\n",
+		       *tl->hwsp_seqno, tl->seqno);
+		intel_timeline_unpin(tl);
+		return ERR_PTR(-EINVAL);
+	}
+
 	rq = intel_engine_create_kernel_request(engine);
 	if (IS_ERR(rq))
 		goto out_unpin;
@@ -483,25 +498,6 @@ tl_write(struct intel_timeline *tl, struct intel_engine_cs *engine, u32 value)
 	return rq;
 }
 
-static struct intel_timeline *
-checked_intel_timeline_create(struct intel_gt *gt)
-{
-	struct intel_timeline *tl;
-
-	tl = intel_timeline_create(gt);
-	if (IS_ERR(tl))
-		return tl;
-
-	if (READ_ONCE(*tl->hwsp_seqno) != tl->seqno) {
-		pr_err("Timeline created with incorrect breadcrumb, found %x, expected %x\n",
-		       *tl->hwsp_seqno, tl->seqno);
-		intel_timeline_put(tl);
-		return ERR_PTR(-EINVAL);
-	}
-
-	return tl;
-}
-
 static int live_hwsp_engine(void *arg)
 {
 #define NUM_TIMELINES 4096
@@ -534,13 +530,13 @@ static int live_hwsp_engine(void *arg)
 			struct intel_timeline *tl;
 			struct i915_request *rq;
 
-			tl = checked_intel_timeline_create(gt);
+			tl = intel_timeline_create(gt);
 			if (IS_ERR(tl)) {
 				err = PTR_ERR(tl);
 				break;
 			}
 
-			rq = tl_write(tl, engine, count);
+			rq = checked_tl_write(tl, engine, count);
 			if (IS_ERR(rq)) {
 				intel_timeline_put(tl);
 				err = PTR_ERR(rq);
@@ -607,14 +603,14 @@ static int live_hwsp_alternate(void *arg)
 			if (!intel_engine_can_store_dword(engine))
 				continue;
 
-			tl = checked_intel_timeline_create(gt);
+			tl = intel_timeline_create(gt);
 			if (IS_ERR(tl)) {
 				err = PTR_ERR(tl);
 				goto out;
 			}
 
 			intel_engine_pm_get(engine);
-			rq = tl_write(tl, engine, count);
+			rq = checked_tl_write(tl, engine, count);
 			intel_engine_pm_put(engine);
 			if (IS_ERR(rq)) {
 				intel_timeline_put(tl);
@@ -1257,6 +1253,10 @@ static int live_hwsp_rollover_user(void *arg)
 		if (!tl->has_initial_breadcrumb)
 			goto out;
 
+		err = intel_context_pin(ce);
+		if (err)
+			goto out;
+
 		tl->seqno = -4u;
 		WRITE_ONCE(*(u32 *)tl->hwsp_seqno, tl->seqno);
 
@@ -1266,7 +1266,7 @@ static int live_hwsp_rollover_user(void *arg)
 			this = intel_context_create_request(ce);
 			if (IS_ERR(this)) {
 				err = PTR_ERR(this);
-				goto out;
+				goto out_unpin;
 			}
 
 			pr_debug("%s: create fence.seqnp:%d\n",
@@ -1285,17 +1285,18 @@ static int live_hwsp_rollover_user(void *arg)
 		if (i915_request_wait(rq[2], 0, HZ / 5) < 0) {
 			pr_err("Wait for timeline wrap timed out!\n");
 			err = -EIO;
-			goto out;
+			goto out_unpin;
 		}
 
 		for (i = 0; i < ARRAY_SIZE(rq); i++) {
 			if (!i915_request_completed(rq[i])) {
 				pr_err("Pre-wrap request not completed!\n");
 				err = -EINVAL;
-				goto out;
+				goto out_unpin;
 			}
 		}
-
+out_unpin:
+		intel_context_unpin(ce);
 out:
 		for (i = 0; i < ARRAY_SIZE(rq); i++)
 			i915_request_put(rq[i]);
@@ -1337,13 +1338,13 @@ static int live_hwsp_recycle(void *arg)
 			struct intel_timeline *tl;
 			struct i915_request *rq;
 
-			tl = checked_intel_timeline_create(gt);
+			tl = intel_timeline_create(gt);
 			if (IS_ERR(tl)) {
 				err = PTR_ERR(tl);
 				break;
 			}
 
-			rq = tl_write(tl, engine, count);
+			rq = checked_tl_write(tl, engine, count);
 			if (IS_ERR(rq)) {
 				intel_timeline_put(tl);
 				err = PTR_ERR(rq);
diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
index d53d207ab6eb..f54de0499be7 100644
--- a/drivers/gpu/drm/i915/i915_selftest.h
+++ b/drivers/gpu/drm/i915/i915_selftest.h
@@ -107,6 +107,7 @@ int __i915_subtests(const char *caller,
 
 #define I915_SELFTEST_DECLARE(x) x
 #define I915_SELFTEST_ONLY(x) unlikely(x)
+#define I915_SELFTEST_EXPORT
 
 #else /* !IS_ENABLED(CONFIG_DRM_I915_SELFTEST) */
 
@@ -116,6 +117,7 @@ static inline int i915_perf_selftests(struct pci_dev *pdev) { return 0; }
 
 #define I915_SELFTEST_DECLARE(x)
 #define I915_SELFTEST_ONLY(x) 0
+#define I915_SELFTEST_EXPORT static
 
 #endif
 
-- 
2.29.2.222.g5d2a92d10f8

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
