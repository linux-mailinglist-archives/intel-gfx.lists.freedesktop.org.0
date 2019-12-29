Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6F512CA5F
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Dec 2019 19:32:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 749F889AEE;
	Sun, 29 Dec 2019 18:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCBFF89AEE
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Dec 2019 18:32:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19720975-1500050 
 for multiple; Sun, 29 Dec 2019 18:31:55 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 29 Dec 2019 18:31:49 +0000
Message-Id: <20191229183153.3719869-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/gt: Avoid using the GPU before
 initialisation
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

Mark the GT as wedged so that we are not tempted to use it prior to
initialisation.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_pm.c        | 8 ++++----
 drivers/gpu/drm/i915/gt/intel_gt_pm.c            | 6 +++++-
 drivers/gpu/drm/i915/gt/intel_reset.c            | 3 +++
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 1 +
 4 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 010620b78202..cd82f0baef49 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -123,16 +123,16 @@ static bool switch_to_kernel_context(struct intel_engine_cs *engine)
 	unsigned long flags;
 	bool result = true;
 
+	/* GPU is pointing to the void, as good as in the kernel context. */
+	if (intel_gt_is_wedged(engine->gt))
+		return true;
+
 	GEM_BUG_ON(!intel_context_is_barrier(ce));
 
 	/* Already inside the kernel context, safe to power down. */
 	if (engine->wakeref_serial == engine->serial)
 		return true;
 
-	/* GPU is pointing to the void, as good as in the kernel context. */
-	if (intel_gt_is_wedged(engine->gt))
-		return true;
-
 	/*
 	 * Note, we do this without taking the timeline->mutex. We cannot
 	 * as we may be called while retiring the kernel context and so
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 3cda837d64c9..9b220c930ebc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -179,7 +179,7 @@ int intel_gt_resume(struct intel_gt *gt)
 	enum intel_engine_id id;
 	int err;
 
-	err = intel_gt_terminally_wedged(gt);
+	err = intel_gt_has_init_error(gt);
 	if (err)
 		return err;
 
@@ -196,6 +196,10 @@ int intel_gt_resume(struct intel_gt *gt)
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 	intel_rc6_sanitize(&gt->rc6);
 	gt_sanitize(gt, true);
+	if (intel_gt_is_wedged(gt)) {
+		err = -EIO;
+		goto out_fw;
+	}
 
 	/* Only when the HW is re-initialised, can we replay the requests */
 	err = intel_gt_init_hw(gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 8af253334f52..fe919a1af904 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1353,6 +1353,9 @@ void intel_gt_init_reset(struct intel_gt *gt)
 	init_waitqueue_head(&gt->reset.queue);
 	mutex_init(&gt->reset.mutex);
 	init_srcu_struct(&gt->reset.backoff_srcu);
+
+	/* no GPU until we are ready! */
+	__set_bit(I915_WEDGED, &gt->reset.flags);
 }
 
 void intel_gt_fini_reset(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index ac641f5360e1..2b01094e4318 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -184,6 +184,7 @@ struct drm_i915_private *mock_gem_device(void)
 	if (mock_engine_init(i915->engine[RCS0]))
 		goto err_context;
 
+	__clear_bit(I915_WEDGED, &i915->gt.reset.flags);
 	intel_engines_driver_register(i915);
 
 	return i915;
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
