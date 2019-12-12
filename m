Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 966E511CF31
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 15:05:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E1686ED70;
	Thu, 12 Dec 2019 14:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB47A6ED70
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 14:05:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19555654-1500050 
 for multiple; Thu, 12 Dec 2019 14:05:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:04:51 +0000
Message-Id: <20191212140459.1307617-25-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
References: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 25/33] drm/i915/gt: Merge engine init/setup loops
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
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 118 +++++++-----------
 drivers/gpu/drm/i915/gt/intel_gt.c            |   5 -
 drivers/gpu/drm/i915/gt/intel_lrc.c           |   5 -
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   6 -
 4 files changed, 43 insertions(+), 91 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 5a5e75483bbb..9e16d8a9bbf5 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -470,39 +470,6 @@ int intel_engines_init_mmio(struct intel_gt *gt)
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
@@ -614,7 +581,7 @@ static int init_status_page(struct intel_engine_cs *engine)
 	return ret;
 }
 
-static int intel_engine_setup_common(struct intel_engine_cs *engine)
+static int engine_setup_common(struct intel_engine_cs *engine)
 {
 	int err;
 
@@ -644,46 +611,6 @@ static int intel_engine_setup_common(struct intel_engine_cs *engine)
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
@@ -801,7 +728,7 @@ create_kernel_context(struct intel_engine_cs *engine)
  *
  * Returns zero on success or an error code on failure.
  */
-int intel_engine_init_common(struct intel_engine_cs *engine)
+static int engine_init_common(struct intel_engine_cs *engine)
 {
 	struct intel_context *ce;
 	int ret;
@@ -831,6 +758,47 @@ int intel_engine_init_common(struct intel_engine_cs *engine)
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
index fc15acee3984..4a38ca5794d6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -583,10 +583,6 @@ int intel_gt_init(struct intel_gt *gt)
 		goto err_pm;
 	}
 
-	err = intel_engines_setup(gt);
-	if (err)
-		goto err_vm;
-
 	err = intel_engines_init(gt);
 	if (err)
 		goto err_engines;
@@ -616,7 +612,6 @@ int intel_gt_init(struct intel_gt *gt)
 	intel_uc_fini(&gt->uc);
 err_engines:
 	intel_engines_release(gt);
-err_vm:
 	i915_vm_put(fetch_and_zero(&gt->vm));
 err_pm:
 	intel_gt_pm_fini(gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 2922b5c4024e..024a639da787 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3889,11 +3889,6 @@ int intel_execlists_submission_init(struct intel_engine_cs *engine)
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
index 785442923a5c..50f172ece43f 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -2037,16 +2037,10 @@ int intel_ring_submission_init(struct intel_engine_cs *engine)
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
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
