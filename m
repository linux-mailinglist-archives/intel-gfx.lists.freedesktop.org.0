Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F483233886
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 20:39:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FA5F6E2A9;
	Thu, 30 Jul 2020 18:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99A296E2A9
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 18:39:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21985744-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 19:39:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jul 2020 19:39:06 +0100
Message-Id: <20200730183906.25422-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Support multiple pinned timelines
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

We may need to allocate more than one pinned context/timeline for each
engine which can utilise the per-engine HWSP, so we need to give each
a different offset within it.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20200730165231.545-1-chris@chris-wilson.co.uk
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 18 +++++++++++++---
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 20 +++++++++++-------
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  3 ++-
 drivers/gpu/drm/i915/gt/intel_timeline.c      | 12 ++++++-----
 drivers/gpu/drm/i915/gt/intel_timeline.h      | 21 +++++++++++++++++--
 drivers/gpu/drm/i915/gt/mock_engine.c         |  2 +-
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |  6 +++---
 8 files changed, 61 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index efc4ba34c06e..d8cccbab7a51 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -886,7 +886,7 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
 	if (flags & I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE) {
 		struct intel_timeline *timeline;
 
-		timeline = intel_timeline_create(&i915->gt, NULL);
+		timeline = intel_timeline_create(&i915->gt);
 		if (IS_ERR(timeline)) {
 			context_close(ctx);
 			return ERR_CAST(timeline);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index dd1a42c4d344..86651bbef3a0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -785,9 +785,11 @@ intel_engine_init_active(struct intel_engine_cs *engine, unsigned int subclass)
 }
 
 static struct intel_context *
-create_kernel_context(struct intel_engine_cs *engine)
+create_pinned_context(struct intel_engine_cs *engine,
+		      unsigned int hwsp,
+		      struct lock_class_key *key,
+		      const char *name)
 {
-	static struct lock_class_key kernel;
 	struct intel_context *ce;
 	int err;
 
@@ -796,6 +798,7 @@ create_kernel_context(struct intel_engine_cs *engine)
 		return ce;
 
 	__set_bit(CONTEXT_BARRIER_BIT, &ce->flags);
+	ce->timeline = page_pack_bits(NULL, hwsp);
 
 	err = intel_context_pin(ce); /* perma-pin so it is always available */
 	if (err) {
@@ -809,11 +812,20 @@ create_kernel_context(struct intel_engine_cs *engine)
 	 * should we need to inject GPU operations during their request
 	 * construction.
 	 */
-	lockdep_set_class(&ce->timeline->mutex, &kernel);
+	lockdep_set_class_and_name(&ce->timeline->mutex, key, name);
 
 	return ce;
 }
 
+static struct intel_context *
+create_kernel_context(struct intel_engine_cs *engine)
+{
+	static struct lock_class_key kernel;
+
+	return create_pinned_context(engine, I915_GEM_HWS_SEQNO_ADDR,
+				     &kernel, "kernel_context");
+}
+
 /**
  * intel_engines_init_common - initialize cengine state which might require hw access
  * @engine: Engine to initialize.
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 353b1717fe84..0508347dca49 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -5313,6 +5313,14 @@ populate_lr_context(struct intel_context *ce,
 	return 0;
 }
 
+static struct intel_timeline *pinned_timeline(struct intel_context *ce)
+{
+	struct intel_timeline *tl = fetch_and_zero(&ce->timeline);
+
+	return intel_timeline_create_from_engine(ce->engine,
+						 page_unmask_bits(tl));
+}
+
 static int __execlists_context_alloc(struct intel_context *ce,
 				     struct intel_engine_cs *engine)
 {
@@ -5343,19 +5351,17 @@ static int __execlists_context_alloc(struct intel_context *ce,
 		goto error_deref_obj;
 	}
 
-	if (!ce->timeline) {
+	if (!page_mask_bits(ce->timeline)) {
 		struct intel_timeline *tl;
-		struct i915_vma *hwsp;
 
 		/*
 		 * Use the static global HWSP for the kernel context, and
 		 * a dynamically allocated cacheline for everyone else.
 		 */
-		hwsp = NULL;
-		if (unlikely(intel_context_is_barrier(ce)))
-			hwsp = engine->status_page.vma;
-
-		tl = intel_timeline_create(engine->gt, hwsp);
+		if (unlikely(ce->timeline))
+			tl = pinned_timeline(ce);
+		else
+			tl = intel_timeline_create(engine->gt);
 		if (IS_ERR(tl)) {
 			ret = PTR_ERR(tl);
 			goto error_deref_obj;
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 94915f668715..87cef6d01141 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1250,7 +1250,8 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine)
 		return -ENODEV;
 	}
 
-	timeline = intel_timeline_create(engine->gt, engine->status_page.vma);
+	timeline = intel_timeline_create_from_engine(engine,
+						     I915_GEM_HWS_SEQNO_ADDR);
 	if (IS_ERR(timeline)) {
 		err = PTR_ERR(timeline);
 		goto err;
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 46d20f5f3ddc..4f446534bad0 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -215,7 +215,8 @@ static void cacheline_free(struct intel_timeline_cacheline *cl)
 
 static int intel_timeline_init(struct intel_timeline *timeline,
 			       struct intel_gt *gt,
-			       struct i915_vma *hwsp)
+			       struct i915_vma *hwsp,
+			       unsigned int offset)
 {
 	void *vaddr;
 
@@ -246,8 +247,7 @@ static int intel_timeline_init(struct intel_timeline *timeline,
 
 		vaddr = page_mask_bits(cl->vaddr);
 	} else {
-		timeline->hwsp_offset = I915_GEM_HWS_SEQNO_ADDR;
-
+		timeline->hwsp_offset = offset;
 		vaddr = i915_gem_object_pin_map(hwsp->obj, I915_MAP_WB);
 		if (IS_ERR(vaddr))
 			return PTR_ERR(vaddr);
@@ -297,7 +297,9 @@ static void intel_timeline_fini(struct intel_timeline *timeline)
 }
 
 struct intel_timeline *
-intel_timeline_create(struct intel_gt *gt, struct i915_vma *global_hwsp)
+__intel_timeline_create(struct intel_gt *gt,
+			struct i915_vma *global_hwsp,
+			unsigned int offset)
 {
 	struct intel_timeline *timeline;
 	int err;
@@ -306,7 +308,7 @@ intel_timeline_create(struct intel_gt *gt, struct i915_vma *global_hwsp)
 	if (!timeline)
 		return ERR_PTR(-ENOMEM);
 
-	err = intel_timeline_init(timeline, gt, global_hwsp);
+	err = intel_timeline_init(timeline, gt, global_hwsp, offset);
 	if (err) {
 		kfree(timeline);
 		return ERR_PTR(err);
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
index 4298b9ac7327..06bd06c6595f 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
@@ -29,10 +29,27 @@
 
 #include "i915_active.h"
 #include "i915_syncmap.h"
-#include "gt/intel_timeline_types.h"
+#include "intel_timeline_types.h"
 
 struct intel_timeline *
-intel_timeline_create(struct intel_gt *gt, struct i915_vma *global_hwsp);
+__intel_timeline_create(struct intel_gt *gt,
+			struct i915_vma *global_hwsp,
+			unsigned int offset);
+
+static inline struct intel_timeline *
+intel_timeline_create(struct intel_gt *gt)
+{
+	return __intel_timeline_create(gt, NULL, 0);
+}
+
+static inline struct intel_timeline *
+intel_timeline_create_from_engine(struct intel_engine_cs *engine,
+				  unsigned int offset)
+{
+	return __intel_timeline_create(engine->gt,
+				       engine->status_page.vma,
+				       offset);
+}
 
 static inline struct intel_timeline *
 intel_timeline_get(struct intel_timeline *timeline)
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index 06303ba98c19..d5beb116261f 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -153,7 +153,7 @@ static int mock_context_alloc(struct intel_context *ce)
 		return -ENOMEM;
 
 	GEM_BUG_ON(ce->timeline);
-	ce->timeline = intel_timeline_create(ce->engine->gt, NULL);
+	ce->timeline = intel_timeline_create(ce->engine->gt);
 	if (IS_ERR(ce->timeline)) {
 		kfree(ce->engine);
 		return PTR_ERR(ce->timeline);
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index 6564c989dbee..98ceac2fb77d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -72,7 +72,7 @@ static int __mock_hwsp_timeline(struct mock_hwsp_freelist *state,
 		unsigned long cacheline;
 		int err;
 
-		tl = intel_timeline_create(state->gt, NULL);
+		tl = intel_timeline_create(state->gt);
 		if (IS_ERR(tl))
 			return PTR_ERR(tl);
 
@@ -487,7 +487,7 @@ checked_intel_timeline_create(struct intel_gt *gt)
 {
 	struct intel_timeline *tl;
 
-	tl = intel_timeline_create(gt, NULL);
+	tl = intel_timeline_create(gt);
 	if (IS_ERR(tl))
 		return tl;
 
@@ -660,7 +660,7 @@ static int live_hwsp_wrap(void *arg)
 	 * foreign GPU references.
 	 */
 
-	tl = intel_timeline_create(gt, NULL);
+	tl = intel_timeline_create(gt);
 	if (IS_ERR(tl))
 		return PTR_ERR(tl);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
