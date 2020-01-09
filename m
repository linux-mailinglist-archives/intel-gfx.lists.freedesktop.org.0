Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CF3135502
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 09:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E0466E8E9;
	Thu,  9 Jan 2020 08:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 669AB6E8DF
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 08:59:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19817527-1500050 
 for multiple; Thu, 09 Jan 2020 08:58:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jan 2020 08:58:30 +0000
Message-Id: <20200109085839.873553-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200109085839.873553-1-chris@chris-wilson.co.uk>
References: <20200109085839.873553-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/14] drm/i915: Replace vma parking with a
 clock aging algorithm
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

We cache the user's vma for a brief period of time after they close them
so that if they are immediately reopened we avoid having to unbind and
rebind them. This happens quite frequently for display servers which
only keep a client's frame open for as long as they are copying from it,
and so they open/close every vma about 30 Hz (every other frame for
double buffering).

Our current strategy is to keep the vma alive until the next global idle
point. However this cache should be purely temporal, so switch over from
using the parked notifier to using its own clock based aging algorithm:
if the closed vma is not reused within 2 clock ticks, it is destroyed.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/644
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c            |  3 -
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  1 -
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 -
 drivers/gpu/drm/i915/i915_debugfs.c           |  3 +
 drivers/gpu/drm/i915/i915_drv.c               |  4 +-
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 drivers/gpu/drm/i915/i915_vma.c               | 83 +++++++++++++++----
 drivers/gpu/drm/i915/i915_vma.h               | 11 ++-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  2 +
 9 files changed, 86 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index da2b6e2ae692..63d70cf62ddb 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -23,9 +23,6 @@ void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 
 	spin_lock_init(&gt->irq_lock);
 
-	INIT_LIST_HEAD(&gt->closed_vma);
-	spin_lock_init(&gt->closed_lock);
-
 	intel_gt_init_reset(gt);
 	intel_gt_init_requests(gt);
 	intel_gt_init_timelines(gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index d1c2f034296a..3302f676d12b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -80,7 +80,6 @@ static int __gt_park(struct intel_wakeref *wf)
 
 	intel_gt_park_requests(gt);
 
-	i915_vma_parked(gt);
 	i915_pmu_gt_parked(i915);
 	intel_rps_park(&gt->rps);
 	intel_rc6_park(&gt->rc6);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 96890dd12b5f..4589dea67b8f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -58,9 +58,6 @@ struct intel_gt {
 	struct intel_wakeref wakeref;
 	atomic_t user_wakeref;
 
-	struct list_head closed_vma;
-	spinlock_t closed_lock; /* guards the list of closed_vma */
-
 	struct intel_reset reset;
 
 	/**
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index db184536acef..9e18e10c125f 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -3587,6 +3587,9 @@ i915_drop_caches_set(void *data, u64 val)
 	if (ret)
 		return ret;
 
+	if (val & DROP_IDLE)
+		i915_vma_clock_flush(&i915->vma_clock);
+
 	fs_reclaim_acquire(GFP_KERNEL);
 	if (val & DROP_BOUND)
 		i915_gem_shrink(i915, LONG_MAX, NULL, I915_SHRINK_BOUND);
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index f7385abdd74b..9fde3918094f 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -523,8 +523,8 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	intel_wopcm_init_early(&dev_priv->wopcm);
 
+	i915_vma_clock_init_early(&dev_priv->vma_clock);
 	intel_gt_init_early(&dev_priv->gt, dev_priv);
-
 	i915_gem_init_early(dev_priv);
 
 	/* This must be called before any calls to HAS_PCH_* */
@@ -561,6 +561,8 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 {
+	i915_vma_clock_flush(&dev_priv->vma_clock);
+
 	intel_irq_fini(dev_priv);
 	intel_power_domains_cleanup(dev_priv);
 	i915_gem_cleanup_early(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1025d783f494..49d314bb84c9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1241,6 +1241,7 @@ struct drm_i915_private {
 	struct intel_runtime_pm runtime_pm;
 
 	struct i915_perf perf;
+	struct i915_vma_clock vma_clock;
 
 	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
 	struct intel_gt gt;
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 43d5c270bdb0..4744643edf2d 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -985,8 +985,7 @@ int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags)
 
 void i915_vma_close(struct i915_vma *vma)
 {
-	struct intel_gt *gt = vma->vm->gt;
-	unsigned long flags;
+	struct i915_vma_clock *clock = &vma->vm->i915->vma_clock;
 
 	GEM_BUG_ON(i915_vma_is_closed(vma));
 
@@ -1002,18 +1001,20 @@ void i915_vma_close(struct i915_vma *vma)
 	 * causing us to rebind the VMA once more. This ends up being a lot
 	 * of wasted work for the steady state.
 	 */
-	spin_lock_irqsave(&gt->closed_lock, flags);
-	list_add(&vma->closed_link, &gt->closed_vma);
-	spin_unlock_irqrestore(&gt->closed_lock, flags);
+	spin_lock(&clock->lock);
+	list_add(&vma->closed_link, &clock->age[0]);
+	spin_unlock(&clock->lock);
+
+	schedule_delayed_work(&clock->work, round_jiffies_up_relative(HZ));
 }
 
 static void __i915_vma_remove_closed(struct i915_vma *vma)
 {
-	struct intel_gt *gt = vma->vm->gt;
+	struct i915_vma_clock *clock = &vma->vm->i915->vma_clock;
 
-	spin_lock_irq(&gt->closed_lock);
+	spin_lock(&clock->lock);
 	list_del_init(&vma->closed_link);
-	spin_unlock_irq(&gt->closed_lock);
+	spin_unlock(&clock->lock);
 }
 
 void i915_vma_reopen(struct i915_vma *vma)
@@ -1051,15 +1052,35 @@ void i915_vma_release(struct kref *ref)
 	i915_vma_free(vma);
 }
 
-void i915_vma_parked(struct intel_gt *gt)
+static void i915_vma_clock(struct work_struct *w)
 {
+	struct i915_vma_clock *clock =
+		container_of(w, typeof(*clock), work.work);
 	struct i915_vma *vma, *next;
 
-	spin_lock_irq(&gt->closed_lock);
-	list_for_each_entry_safe(vma, next, &gt->closed_vma, closed_link) {
+	/*
+	 * A very simple clock aging algorithm: we keep the user's closed
+	 * vma alive for a couple of timer ticks before destroying them.
+	 * This serves a shortlived cache so that frequently reused VMA
+	 * are kept alive between frames and we skip having to rebing them.
+	 *
+	 * When closed, we insert the vma into age[0]. Upon completion of
+	 * a timer tick, it is moved to age[1]. At the start of each timer
+	 * tick, we destroy all the old vma that were accumulated into age[1]
+	 * and have not been reused. All destroyed vma have therefore been
+	 * unused for more than 1 tick (at least a second), and at most 2
+	 * ticks (we expect the average to be 1.5 ticks).
+	 */
+
+	spin_lock(&clock->lock);
+
+	list_for_each_entry_safe(vma, next, &clock->age[1], closed_link) {
 		struct drm_i915_gem_object *obj = vma->obj;
 		struct i915_address_space *vm = vma->vm;
 
+		if (i915_vma_is_active(vma))
+			continue;
+
 		/* XXX All to avoid keeping a reference on i915_vma itself */
 
 		if (!kref_get_unless_zero(&obj->base.refcount))
@@ -1072,7 +1093,7 @@ void i915_vma_parked(struct intel_gt *gt)
 			obj = NULL;
 		}
 
-		spin_unlock_irq(&gt->closed_lock);
+		spin_unlock(&clock->lock);
 
 		if (obj) {
 			__i915_vma_put(vma);
@@ -1082,11 +1103,26 @@ void i915_vma_parked(struct intel_gt *gt)
 		i915_vm_close(vm);
 
 		/* Restart after dropping lock */
-		spin_lock_irq(&gt->closed_lock);
-		next = list_first_entry(&gt->closed_vma,
+		spin_lock(&clock->lock);
+		next = list_first_entry(&clock->age[1],
 					typeof(*next), closed_link);
 	}
-	spin_unlock_irq(&gt->closed_lock);
+	list_splice_tail_init(&clock->age[0], &clock->age[1]);
+
+	if (!list_empty(&clock->age[1])) {
+		/* Keep active VMA around until second tick after idling */
+		list_for_each_entry_safe(vma, next,
+					 &clock->age[1], closed_link) {
+			if (i915_vma_is_active(vma))
+				list_move_tail(&vma->closed_link,
+					       &clock->age[0]);
+		}
+
+		schedule_delayed_work(&clock->work,
+				      round_jiffies_up_relative(HZ));
+	}
+
+	spin_unlock(&clock->lock);
 }
 
 static void __i915_vma_iounmap(struct i915_vma *vma)
@@ -1277,6 +1313,23 @@ void i915_vma_make_purgeable(struct i915_vma *vma)
 	i915_gem_object_make_purgeable(vma->obj);
 }
 
+void i915_vma_clock_init_early(struct i915_vma_clock *clock)
+{
+	spin_lock_init(&clock->lock);
+	INIT_LIST_HEAD(&clock->age[0]);
+	INIT_LIST_HEAD(&clock->age[1]);
+
+	INIT_DELAYED_WORK(&clock->work, i915_vma_clock);
+}
+
+void i915_vma_clock_flush(struct i915_vma_clock *clock)
+{
+	do {
+		if (cancel_delayed_work_sync(&clock->work))
+			i915_vma_clock(&clock->work.work);
+	} while (delayed_work_pending(&clock->work));
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftests/i915_vma.c"
 #endif
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 02b31a62951e..7b8a18b72d81 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -351,8 +351,6 @@ i915_vma_unpin_fence(struct i915_vma *vma)
 		__i915_vma_unpin_fence(vma);
 }
 
-void i915_vma_parked(struct intel_gt *gt);
-
 #define for_each_until(cond) if (cond) break; else
 
 /**
@@ -381,4 +379,13 @@ static inline int i915_vma_sync(struct i915_vma *vma)
 	return i915_active_wait(&vma->active);
 }
 
+struct i915_vma_clock {
+	spinlock_t lock;
+	struct list_head age[2];
+	struct delayed_work work;
+};
+
+void i915_vma_clock_init_early(struct i915_vma_clock *clock);
+void i915_vma_clock_flush(struct i915_vma_clock *clock);
+
 #endif
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 3b8986983afc..6c27f43155ea 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -57,6 +57,7 @@ static void mock_device_release(struct drm_device *dev)
 
 	mock_device_flush(i915);
 	intel_gt_driver_remove(&i915->gt);
+	i915_vma_clock_flush(&i915->vma_clock);
 
 	i915_gem_driver_release__contexts(i915);
 
@@ -164,6 +165,7 @@ struct drm_i915_private *mock_gem_device(void)
 	mock_uncore_init(&i915->uncore, i915);
 
 	i915_gem_init__mm(i915);
+	i915_vma_clock_init_early(&i915->vma_clock);
 	intel_gt_init_early(&i915->gt, i915);
 	atomic_inc(&i915->gt.wakeref.count); /* disable; no hw support */
 	i915->gt.awake = -ENODEV;
-- 
2.25.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
