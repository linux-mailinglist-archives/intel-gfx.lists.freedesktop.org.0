Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC1D12ABDF
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 12:18:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5B7889AA2;
	Thu, 26 Dec 2019 11:18:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C6089AA2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 11:18:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19696281-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 11:18:34 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Dec 2019 11:18:34 +0000
Message-Id: <20191226111834.2545953-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Apply sanitiization just before resume
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

Bring sanitization completely underneath the umbrella of intel_gt, and
perform it exclusively after suspend and before the next resume.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt.c        |  6 -----
 drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 31 ++++++++++-------------
 drivers/gpu/drm/i915/gt/intel_gt_pm.h     |  2 --
 drivers/gpu/drm/i915/i915_drv.c           |  2 --
 drivers/gpu/drm/i915/selftests/i915_gem.c |  2 --
 5 files changed, 14 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index e4f7cc7dd88a..8a17abfbb19f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -38,8 +38,6 @@ void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 void intel_gt_init_hw_early(struct intel_gt *gt, struct i915_ggtt *ggtt)
 {
 	gt->ggtt = ggtt;
-
-	intel_gt_sanitize(gt, false);
 }
 
 static void init_unused_ring(struct intel_gt *gt, u32 base)
@@ -77,10 +75,6 @@ int intel_gt_init_hw(struct intel_gt *gt)
 	struct intel_uncore *uncore = gt->uncore;
 	int ret;
 
-	ret = intel_gt_terminally_wedged(gt);
-	if (ret)
-		return ret;
-
 	gt->last_init_time = ktime_get();
 
 	/* Double layer security blanket, see i915_gem_init() */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 45b68a17da4d..3cda837d64c9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -126,17 +126,7 @@ static bool reset_engines(struct intel_gt *gt)
 	return __intel_gt_reset(gt, ALL_ENGINES) == 0;
 }
 
-/**
- * intel_gt_sanitize: called after the GPU has lost power
- * @gt: the i915 GT container
- * @force: ignore a failed reset and sanitize engine state anyway
- *
- * Anytime we reset the GPU, either with an explicit GPU reset or through a
- * PCI power cycle, the GPU loses state and we must reset our state tracking
- * to match. Note that calling intel_gt_sanitize() if the GPU has not
- * been reset results in much confusion!
- */
-void intel_gt_sanitize(struct intel_gt *gt, bool force)
+static void gt_sanitize(struct intel_gt *gt, bool force)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
@@ -189,6 +179,10 @@ int intel_gt_resume(struct intel_gt *gt)
 	enum intel_engine_id id;
 	int err;
 
+	err = intel_gt_terminally_wedged(gt);
+	if (err)
+		return err;
+
 	GT_TRACE(gt, "\n");
 
 	/*
@@ -201,14 +195,14 @@ int intel_gt_resume(struct intel_gt *gt)
 
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 	intel_rc6_sanitize(&gt->rc6);
+	gt_sanitize(gt, true);
 
 	/* Only when the HW is re-initialised, can we replay the requests */
 	err = intel_gt_init_hw(gt);
 	if (err) {
 		dev_err(gt->i915->drm.dev,
 			"Failed to initialize GPU, declaring it wedged!\n");
-		intel_gt_set_wedged(gt);
-		goto err_fw;
+		goto err_wedged;
 	}
 
 	intel_rps_enable(&gt->rps);
@@ -233,7 +227,7 @@ int intel_gt_resume(struct intel_gt *gt)
 			dev_err(gt->i915->drm.dev,
 				"Failed to restart %s (%d)\n",
 				engine->name, err);
-			break;
+			goto err_wedged;
 		}
 	}
 
@@ -243,11 +237,14 @@ int intel_gt_resume(struct intel_gt *gt)
 
 	user_forcewake(gt, false);
 
-err_fw:
+out_fw:
 	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
 	intel_gt_pm_put(gt);
-
 	return err;
+
+err_wedged:
+	intel_gt_set_wedged(gt);
+	goto out_fw;
 }
 
 static void wait_for_suspend(struct intel_gt *gt)
@@ -315,7 +312,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 		intel_llc_disable(&gt->llc);
 	}
 
-	intel_gt_sanitize(gt, false);
+	gt_sanitize(gt, false);
 
 	GT_TRACE(gt, "\n");
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
index 4a9e48c12bd4..60f0e2fbe55c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
@@ -51,8 +51,6 @@ void intel_gt_pm_init_early(struct intel_gt *gt);
 void intel_gt_pm_init(struct intel_gt *gt);
 void intel_gt_pm_fini(struct intel_gt *gt);
 
-void intel_gt_sanitize(struct intel_gt *gt, bool force);
-
 void intel_gt_suspend_prepare(struct intel_gt *gt);
 void intel_gt_suspend_late(struct intel_gt *gt);
 int intel_gt_resume(struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 59525094d0e3..9f75e03368c4 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1817,8 +1817,6 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
-	intel_gt_sanitize(&dev_priv->gt, true);
-
 	ret = i915_ggtt_enable_hw(dev_priv);
 	if (ret)
 		DRM_ERROR("failed to re-enable GGTT\n");
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
index b37fc53973cc..78f36faf2bbe 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
@@ -124,8 +124,6 @@ static void pm_resume(struct drm_i915_private *i915)
 	 * that runtime-pm just works.
 	 */
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
-		intel_gt_sanitize(&i915->gt, false);
-
 		i915_gem_restore_gtt_mappings(i915);
 		i915_gem_restore_fences(&i915->ggtt);
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
