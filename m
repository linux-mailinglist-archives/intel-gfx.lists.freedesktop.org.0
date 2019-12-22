Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A12A6128E8C
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 15:40:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01CFC6E0E3;
	Sun, 22 Dec 2019 14:40:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9923F6E0E3
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Dec 2019 14:40:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19663602-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Dec 2019 14:40:47 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Dec 2019 14:40:45 +0000
Message-Id: <20191222144046.1674865-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191222144046.1674865-1-chris@chris-wilson.co.uk>
References: <20191222144046.1674865-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915/gt: Merge engine init/setup loops
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

Now that we don't need to create GEM contexts in the middle of engine
construction, we can pull the engine init/setup loops together.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h        |   2 -
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 108 ++++++------------
 drivers/gpu/drm/i915/gt/intel_gt.c            |   5 -
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  20 +---
 drivers/gpu/drm/i915/gt/intel_lrc.h           |   1 -
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  19 +--
 6 files changed, 42 insertions(+), 113 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 428ec76b49d0..79ecac5ac0ab 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -184,7 +184,6 @@ void intel_engine_stop(struct intel_engine_cs *engine);
 void intel_engine_cleanup(struct intel_engine_cs *engine);
 
 int intel_engines_init_mmio(struct intel_gt *gt);
-int intel_engines_setup(struct intel_gt *gt);
 int intel_engines_init(struct intel_gt *gt);
 
 void intel_engines_release(struct intel_gt *gt);
@@ -194,7 +193,6 @@ int intel_engine_init_common(struct intel_engine_cs *engine);
 void intel_engine_cleanup_common(struct intel_engine_cs *engine);
 
 int intel_ring_submission_setup(struct intel_engine_cs *engine);
-int intel_ring_submission_init(struct intel_engine_cs *engine);
 
 int intel_engine_stop_cs(struct intel_engine_cs *engine);
 void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 909614f581ac..ddf9543b1261 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -471,39 +471,6 @@ int intel_engines_init_mmio(struct intel_gt *gt)
 	return err;
 }
 
-/**
- * intel_engines_init() - init the Engine Command Streamers
- * @gt: pointer to struct intel_gt
- *
- * Return: non-zero if the initialization failed.
- */
-int intel_engines_init(struct intel_gt *gt)
-{
-	int (*init)(struct intel_engine_cs *engine);
-	struct intel_engine_cs *engine;
-	enum intel_engine_id id;
-	int err;
-
-	if (HAS_EXECLISTS(gt->i915))
-		init = intel_execlists_submission_init;
-	else
-		init = intel_ring_submission_init;
-
-	for_each_engine(engine, gt, id) {
-		err = init(engine);
-		if (err)
-			goto cleanup;
-
-		intel_engine_add_user(engine);
-	}
-
-	return 0;
-
-cleanup:
-	intel_engines_release(gt);
-	return err;
-}
-
 void intel_engine_init_execlists(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
@@ -615,7 +582,7 @@ static int init_status_page(struct intel_engine_cs *engine)
 	return ret;
 }
 
-static int intel_engine_setup_common(struct intel_engine_cs *engine)
+static int engine_setup_common(struct intel_engine_cs *engine)
 {
 	int err;
 
@@ -645,46 +612,6 @@ static int intel_engine_setup_common(struct intel_engine_cs *engine)
 	return 0;
 }
 
-/**
- * intel_engines_setup- setup engine state not requiring hw access
- * @gt: pointer to struct intel_gt
- *
- * Initializes engine structure members shared between legacy and execlists
- * submission modes which do not require hardware access.
- *
- * Typically done early in the submission mode specific engine setup stage.
- */
-int intel_engines_setup(struct intel_gt *gt)
-{
-	int (*setup)(struct intel_engine_cs *engine);
-	struct intel_engine_cs *engine;
-	enum intel_engine_id id;
-	int err;
-
-	if (HAS_EXECLISTS(gt->i915))
-		setup = intel_execlists_submission_setup;
-	else
-		setup = intel_ring_submission_setup;
-
-	for_each_engine(engine, gt, id) {
-		err = intel_engine_setup_common(engine);
-		if (err)
-			goto cleanup;
-
-		err = setup(engine);
-		if (err)
-			goto cleanup;
-
-		GEM_BUG_ON(!engine->cops);
-	}
-
-	return 0;
-
-cleanup:
-	intel_engines_release(gt);
-	return err;
-}
-
 struct measure_breadcrumb {
 	struct i915_request rq;
 	struct intel_timeline timeline;
@@ -802,7 +729,7 @@ create_kernel_context(struct intel_engine_cs *engine)
  *
  * Returns zero on success or an error code on failure.
  */
-int intel_engine_init_common(struct intel_engine_cs *engine)
+static int engine_init_common(struct intel_engine_cs *engine)
 {
 	struct intel_context *ce;
 	int ret;
@@ -832,6 +759,37 @@ int intel_engine_init_common(struct intel_engine_cs *engine)
 	return 0;
 }
 
+int intel_engines_init(struct intel_gt *gt)
+{
+	int (*setup)(struct intel_engine_cs *engine);
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	int err;
+
+	if (HAS_EXECLISTS(gt->i915))
+		setup = intel_execlists_submission_setup;
+	else
+		setup = intel_ring_submission_setup;
+
+	for_each_engine(engine, gt, id) {
+		err = engine_setup_common(engine);
+		if (err)
+			return err;
+
+		err = setup(engine);
+		if (err)
+			return err;
+
+		err = engine_init_common(engine);
+		if (err)
+			return err;
+
+		intel_engine_add_user(engine);
+	}
+
+	return 0;
+}
+
 /**
  * intel_engines_cleanup_common - cleans up the engine state created by
  *                                the common initiailizers.
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 4a2d0eb05663..172102a6c5fb 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -584,10 +584,6 @@ int intel_gt_init(struct intel_gt *gt)
 		goto err_pm;
 	}
 
-	err = intel_engines_setup(gt);
-	if (err)
-		goto err_vm;
-
 	err = intel_engines_init(gt);
 	if (err)
 		goto err_engines;
@@ -618,7 +614,6 @@ int intel_gt_init(struct intel_gt *gt)
 	intel_uc_fini(&gt->uc);
 err_engines:
 	intel_engines_release(gt);
-err_vm:
 	i915_vm_put(fetch_and_zero(&gt->vm));
 err_pm:
 	intel_gt_pm_fini(gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 36e24d987c88..4fb70a7716e3 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3863,6 +3863,11 @@ static void rcs_submission_override(struct intel_engine_cs *engine)
 
 int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 {
+	struct intel_engine_execlists * const execlists = &engine->execlists;
+	struct drm_i915_private *i915 = engine->i915;
+	struct intel_uncore *uncore = engine->uncore;
+	u32 base = engine->mmio_base;
+
 	tasklet_init(&engine->execlists.tasklet,
 		     execlists_submission_tasklet, (unsigned long)engine);
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
@@ -3874,21 +3879,6 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	if (engine->class == RENDER_CLASS)
 		rcs_submission_override(engine);
 
-	return 0;
-}
-
-int intel_execlists_submission_init(struct intel_engine_cs *engine)
-{
-	struct intel_engine_execlists * const execlists = &engine->execlists;
-	struct drm_i915_private *i915 = engine->i915;
-	struct intel_uncore *uncore = engine->uncore;
-	u32 base = engine->mmio_base;
-	int ret;
-
-	ret = intel_engine_init_common(engine);
-	if (ret)
-		return ret;
-
 	if (intel_init_workaround_bb(engine))
 		/*
 		 * We continue even if we fail to initialize WA batch
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
index 081521f17c74..dfbc214e14f5 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
@@ -83,7 +83,6 @@ enum {
 void intel_logical_ring_cleanup(struct intel_engine_cs *engine);
 
 int intel_execlists_submission_setup(struct intel_engine_cs *engine);
-int intel_execlists_submission_init(struct intel_engine_cs *engine);
 
 /* Logical Ring Contexts */
 /* At the start of the context image is its per-process HWS page */
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 13bd649c261e..118170eb51b4 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1958,6 +1958,10 @@ static void setup_vecs(struct intel_engine_cs *engine)
 
 int intel_ring_submission_setup(struct intel_engine_cs *engine)
 {
+	struct intel_timeline *timeline;
+	struct intel_ring *ring;
+	int err;
+
 	setup_common(engine);
 
 	switch (engine->class) {
@@ -1978,15 +1982,6 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine)
 		return -ENODEV;
 	}
 
-	return 0;
-}
-
-int intel_ring_submission_init(struct intel_engine_cs *engine)
-{
-	struct intel_timeline *timeline;
-	struct intel_ring *ring;
-	int err;
-
 	timeline = intel_timeline_create(engine->gt, engine->status_page.vma);
 	if (IS_ERR(timeline)) {
 		err = PTR_ERR(timeline);
@@ -2012,16 +2007,10 @@ int intel_ring_submission_init(struct intel_engine_cs *engine)
 	engine->legacy.ring = ring;
 	engine->legacy.timeline = timeline;
 
-	err = intel_engine_init_common(engine);
-	if (err)
-		goto err_ring_unpin;
-
 	GEM_BUG_ON(timeline->hwsp_ggtt != engine->status_page.vma);
 
 	return 0;
 
-err_ring_unpin:
-	intel_ring_unpin(ring);
 err_ring:
 	intel_ring_put(ring);
 err_timeline_unpin:
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
