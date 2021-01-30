Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D41309675
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Jan 2021 17:00:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F08FC6E0F3;
	Sat, 30 Jan 2021 16:00:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF49D6E0F3
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Jan 2021 16:00:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23747060-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Jan 2021 16:00:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 30 Jan 2021 16:00:40 +0000
Message-Id: <20210130160041.16897-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/gt: Reduce GT runtime stats from
 seqlock to a latch
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

Since we can compute the elapsed time to add to the total, during the
PMU sample we only need to have a consistent view of the (start, total,
active) tuple to be able to locally determine the runtime. That can be
arrange by a pair of memory bariiers and carefully sequencing of the
writes and reads.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c    | 51 +++++++++---------------
 drivers/gpu/drm/i915/gt/intel_gt_types.h |  7 ----
 2 files changed, 18 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index aef3084e8b16..0bd303d2823e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -40,24 +40,20 @@ static void user_forcewake(struct intel_gt *gt, bool suspend)
 
 static void runtime_begin(struct intel_gt *gt)
 {
-	local_irq_disable();
-	write_seqcount_begin(&gt->stats.lock);
-	gt->stats.start = ktime_get();
-	gt->stats.active = true;
-	write_seqcount_end(&gt->stats.lock);
-	local_irq_enable();
+	smp_wmb(); /* pairs with intel_gt_get_busy_time() */
+	WRITE_ONCE(gt->stats.start, ktime_get());
 }
 
 static void runtime_end(struct intel_gt *gt)
 {
-	local_irq_disable();
-	write_seqcount_begin(&gt->stats.lock);
-	gt->stats.active = false;
-	gt->stats.total =
-		ktime_add(gt->stats.total,
-			  ktime_sub(ktime_get(), gt->stats.start));
-	write_seqcount_end(&gt->stats.lock);
-	local_irq_enable();
+	ktime_t total;
+
+	total = ktime_sub(ktime_get(), gt->stats.start);
+	total = ktime_add(gt->stats.total, total);
+
+	WRITE_ONCE(gt->stats.start, 0);
+	smp_wmb(); /* pairs with intel_gt_get_busy_time() */
+	gt->stats.total = total;
 }
 
 static int __gt_unpark(struct intel_wakeref *wf)
@@ -129,7 +125,6 @@ static const struct intel_wakeref_ops wf_ops = {
 void intel_gt_pm_init_early(struct intel_gt *gt)
 {
 	intel_wakeref_init(&gt->wakeref, gt->uncore->rpm, &wf_ops);
-	seqcount_mutex_init(&gt->stats.lock, &gt->wakeref.mutex);
 }
 
 void intel_gt_pm_init(struct intel_gt *gt)
@@ -363,28 +358,18 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
 	return intel_uc_runtime_resume(&gt->uc);
 }
 
-static ktime_t __intel_gt_get_awake_time(const struct intel_gt *gt)
-{
-	ktime_t total = gt->stats.total;
-
-	if (gt->stats.active)
-		total = ktime_add(total,
-				  ktime_sub(ktime_get(), gt->stats.start));
-
-	return total;
-}
-
 ktime_t intel_gt_get_awake_time(const struct intel_gt *gt)
 {
-	unsigned int seq;
-	ktime_t total;
+	ktime_t total = gt->stats.total;
+	ktime_t start;
 
-	do {
-		seq = read_seqcount_begin(&gt->stats.lock);
-		total = __intel_gt_get_awake_time(gt);
-	} while (read_seqcount_retry(&gt->stats.lock, seq));
+	start = READ_ONCE(gt->stats.start);
+	if (start) {
+		smp_rmb(); /* pairs with runtime_begin/end */
+		start = ktime_sub(ktime_get(), start);
+	}
 
-	return total;
+	return ktime_add(total, start);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index a83d3e18254d..91d20daca536 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -89,13 +89,6 @@ struct intel_gt {
 	u32 pm_guc_events;
 
 	struct {
-		bool active;
-
-		/**
-		 * @lock: Lock protecting the below fields.
-		 */
-		seqcount_mutex_t lock;
-
 		/**
 		 * @total: Total time this engine was busy.
 		 *
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
