Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD289128AA2
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 18:31:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FF896E110;
	Sat, 21 Dec 2019 17:31:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F8A46E110
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 17:31:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19657536-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 17:31:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 21 Dec 2019 17:31:13 +0000
Message-Id: <20191221173113.1153688-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191221173113.1153688-1-chris@chris-wilson.co.uk>
References: <20191221173113.1153688-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/4] drm/i915/gt: Merge engine init/setup loops
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
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 118 +++++++-----------
 drivers/gpu/drm/i915/gt/intel_gt.c            |   5 -
 drivers/gpu/drm/i915/gt/intel_lrc.c           |   5 -
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   6 -
 4 files changed, 43 insertions(+), 91 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index ee0eebe9a9d3..127a9880df6d 100644
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
@@ -832,6 +759,47 @@ int intel_engine_init_common(struct intel_engine_cs *engine)
 	return 0;
 }
 
+int intel_engines_init(struct intel_gt *gt)
+{
+	int (*init)(struct intel_engine_cs *engine);
+	int (*setup)(struct intel_engine_cs *engine);
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	int err;
+
+	if (HAS_EXECLISTS(gt->i915)) {
+		setup = intel_execlists_submission_setup;
+		init = intel_execlists_submission_init;
+	} else {
+		setup = intel_ring_submission_setup;
+		init = intel_ring_submission_init;
+	}
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
+		GEM_BUG_ON(!engine->cops);
+
+		err = init(engine);
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
index ca4d757cc64d..c16d2b6112b6 100644
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
@@ -617,7 +613,6 @@ int intel_gt_init(struct intel_gt *gt)
 	intel_uc_fini(&gt->uc);
 err_engines:
 	intel_engines_release(gt);
-err_vm:
 	i915_vm_put(fetch_and_zero(&gt->vm));
 err_pm:
 	intel_gt_pm_fini(gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 36e24d987c88..672a6f182b4f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3883,11 +3883,6 @@ int intel_execlists_submission_init(struct intel_engine_cs *engine)
 	struct drm_i915_private *i915 = engine->i915;
 	struct intel_uncore *uncore = engine->uncore;
 	u32 base = engine->mmio_base;
-	int ret;
-
-	ret = intel_engine_init_common(engine);
-	if (ret)
-		return ret;
 
 	if (intel_init_workaround_bb(engine))
 		/*
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 13bd649c261e..f548fffb0c6a 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -2012,16 +2012,10 @@ int intel_ring_submission_init(struct intel_engine_cs *engine)
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
