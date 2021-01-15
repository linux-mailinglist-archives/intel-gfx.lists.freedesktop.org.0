Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CBE2F7E0F
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 15:23:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BA8B6E433;
	Fri, 15 Jan 2021 14:23:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B95326E40A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 14:23:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23607274-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 14:23:33 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jan 2021 14:23:31 +0000
Message-Id: <20210115142331.24458-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210115142331.24458-1-chris@chris-wilson.co.uk>
References: <20210115142331.24458-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/5] drm/i915/gt: Reduce GT runtime stats from
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
 drivers/gpu/drm/i915/gt/intel_gt_pm.c    | 38 +++++++-----------------
 drivers/gpu/drm/i915/gt/intel_gt_types.h |  5 ----
 2 files changed, 10 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index c94e8ac884eb..fb8be4e1f63e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -41,24 +41,18 @@ static void user_forcewake(struct intel_gt *gt, bool suspend)
 
 static void runtime_begin(struct intel_gt *gt)
 {
-	local_irq_disable();
-	write_seqcount_begin(&gt->stats.lock);
 	gt->stats.start = ktime_get();
-	gt->stats.active = true;
-	write_seqcount_end(&gt->stats.lock);
-	local_irq_enable();
+	smp_wmb(); /* pairs with intel_gt_get_busy_time() */
+	WRITE_ONCE(gt->stats.active, true);
 }
 
 static void runtime_end(struct intel_gt *gt)
 {
-	local_irq_disable();
-	write_seqcount_begin(&gt->stats.lock);
-	gt->stats.active = false;
 	gt->stats.total =
 		ktime_add(gt->stats.total,
 			  ktime_sub(ktime_get(), gt->stats.start));
-	write_seqcount_end(&gt->stats.lock);
-	local_irq_enable();
+	smp_wmb(); /* pairs with intel_gt_get_busy_time() */
+	WRITE_ONCE(gt->stats.active, false);
 }
 
 static int __gt_unpark(struct intel_wakeref *wf)
@@ -130,7 +124,6 @@ static const struct intel_wakeref_ops wf_ops = {
 void intel_gt_pm_init_early(struct intel_gt *gt)
 {
 	intel_wakeref_init(&gt->wakeref, gt->uncore->rpm, &wf_ops);
-	seqcount_mutex_init(&gt->stats.lock, &gt->wakeref.mutex);
 }
 
 void intel_gt_pm_init(struct intel_gt *gt)
@@ -364,26 +357,15 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
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
+	ktime_t start = gt->stats.start;
 
-	do {
-		seq = read_seqcount_begin(&gt->stats.lock);
-		total = __intel_gt_get_awake_time(gt);
-	} while (read_seqcount_retry(&gt->stats.lock, seq));
+	if (READ_ONCE(gt->stats.active)) {
+		smp_rmb(); /* pairs with runtime_begin/end */
+		total = ktime_add(total, ktime_sub(ktime_get(), start));
+	}
 
 	return total;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index a83d3e18254d..4205c3f022ad 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -91,11 +91,6 @@ struct intel_gt {
 	struct {
 		bool active;
 
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
