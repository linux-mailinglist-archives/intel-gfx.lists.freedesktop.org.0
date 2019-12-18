Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A041249BC
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 15:31:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CB706E4AD;
	Wed, 18 Dec 2019 14:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48CBA6E478
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 14:31:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19622422-1500050 
 for multiple; Wed, 18 Dec 2019 14:31:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 14:31:10 +0000
Message-Id: <20191218143111.3852266-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218143111.3852266-1-chris@chris-wilson.co.uk>
References: <20191218143111.3852266-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/gt: Pull intel_gt_init_hw() into
 intel_gt_resume()
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

Since intel_gt_resume() is always immediately proceeded by init_hw, pull
the call into intel_gt_resume, where we have the rpm and fw already
held.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pm.c | 20 +-------------------
 drivers/gpu/drm/i915/gt/intel_gt.c     |  5 -----
 drivers/gpu/drm/i915/gt/intel_gt_pm.c  | 12 +++++++++++-
 3 files changed, 12 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
index 3671a4e7e1cb..c8264eb036bf 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
@@ -101,28 +101,10 @@ void i915_gem_resume(struct drm_i915_private *i915)
 {
 	GEM_TRACE("%s\n", dev_name(i915->drm.dev));
 
-	intel_uncore_forcewake_get(&i915->uncore, FORCEWAKE_ALL);
-
-	if (intel_gt_init_hw(&i915->gt))
-		goto err_wedged;
-
 	/*
 	 * As we didn't flush the kernel context before suspend, we cannot
 	 * guarantee that the context image is complete. So let's just reset
 	 * it and start again.
 	 */
-	if (intel_gt_resume(&i915->gt))
-		goto err_wedged;
-
-out_unlock:
-	intel_uncore_forcewake_put(&i915->uncore, FORCEWAKE_ALL);
-	return;
-
-err_wedged:
-	if (!intel_gt_is_wedged(&i915->gt)) {
-		dev_err(i915->drm.dev,
-			"Failed to re-initialize GPU, declaring it wedged!\n");
-		intel_gt_set_wedged(&i915->gt);
-	}
-	goto out_unlock;
+	intel_gt_resume(&i915->gt);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index e7f4c1beb3b6..fc15acee3984 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -593,11 +593,6 @@ int intel_gt_init(struct intel_gt *gt)
 
 	intel_uc_init(&gt->uc);
 
-	err = intel_gt_init_hw(gt);
-	if (err)
-		goto err_uc_init;
-
-	/* Only when the HW is re-initialised, can we replay the requests */
 	err = intel_gt_resume(gt);
 	if (err)
 		goto err_uc_init;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index f36ce36dabeb..ddecdfedec6a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -187,7 +187,7 @@ int intel_gt_resume(struct intel_gt *gt)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
-	int err = 0;
+	int err;
 
 	GT_TRACE(gt, "\n");
 
@@ -202,6 +202,15 @@ int intel_gt_resume(struct intel_gt *gt)
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 	intel_rc6_sanitize(&gt->rc6);
 
+	/* Only when the HW is re-initialised, can we replay the requests */
+	err = intel_gt_init_hw(gt);
+	if (err) {
+		dev_err(gt->i915->drm.dev,
+			"Failed to initialize GPU, declaring it wedged!\n");
+		intel_gt_set_wedged(gt);
+		goto err_fw;
+	}
+
 	intel_rps_enable(&gt->rps);
 	intel_llc_enable(&gt->llc);
 
@@ -234,6 +243,7 @@ int intel_gt_resume(struct intel_gt *gt)
 
 	user_forcewake(gt, false);
 
+err_fw:
 	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
 	intel_gt_pm_put(gt);
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
