Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B267D2E7EF5
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Dec 2020 10:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A37C891DB;
	Thu, 31 Dec 2020 09:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C5A2891DB
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Dec 2020 09:31:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23468887-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Dec 2020 09:31:49 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Dec 2020 09:31:49 +0000
Message-Id: <20201231093149.19086-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Drop i915_request.lock requirement for
 intel_rps_boost()
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

Since we use a flag within i915_request.flags to indicate when we have
boosted the request (so that we only apply the boost) once, this can be
used as the serialisation with i915_request_retire() to avoid having to
explicitly take the i915_request.lock which is more heavily contended.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c       | 23 +++++++++++------------
 drivers/gpu/drm/i915/gt/intel_rps_types.h |  2 +-
 drivers/gpu/drm/i915/i915_debugfs.c       |  2 +-
 drivers/gpu/drm/i915/i915_request.c       |  4 +---
 5 files changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
index a0f10e8bbd21..d4f4452ce5ed 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
@@ -578,7 +578,7 @@ static int rps_boost_show(struct seq_file *m, void *data)
 		   intel_gpu_freq(rps, rps->efficient_freq),
 		   intel_gpu_freq(rps, rps->boost_freq));
 
-	seq_printf(m, "Wait boosts: %d\n", atomic_read(&rps->boosts));
+	seq_printf(m, "Wait boosts: %d\n", READ_ONCE(rps->boosts));
 
 	if (INTEL_GEN(i915) >= 6 && intel_rps_is_active(rps)) {
 		struct intel_uncore *uncore = gt->uncore;
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index f74d5e09e176..146a956ed12d 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -917,28 +917,27 @@ void intel_rps_park(struct intel_rps *rps)
 
 void intel_rps_boost(struct i915_request *rq)
 {
-	struct intel_rps *rps = &READ_ONCE(rq->engine)->gt->rps;
-	unsigned long flags;
-
-	if (i915_request_signaled(rq) || !intel_rps_is_active(rps))
+	if (i915_request_signaled(rq) || i915_request_has_waitboost(rq))
 		return;
 
 	/* Serializes with i915_request_retire() */
-	spin_lock_irqsave(&rq->lock, flags);
-	if (!i915_request_has_waitboost(rq) &&
-	    !dma_fence_is_signaled_locked(&rq->fence)) {
-		set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags);
+	if (!test_and_set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags)) {
+		struct intel_rps *rps = &READ_ONCE(rq->engine)->gt->rps;
+
+		if (atomic_fetch_inc(&rps->num_waiters))
+			return;
+
+		if (!intel_rps_is_active(rps))
+			return;
 
 		GT_TRACE(rps_to_gt(rps), "boost fence:%llx:%llx\n",
 			 rq->fence.context, rq->fence.seqno);
 
-		if (!atomic_fetch_inc(&rps->num_waiters) &&
-		    READ_ONCE(rps->cur_freq) < rps->boost_freq)
+		if (READ_ONCE(rps->cur_freq) < rps->boost_freq)
 			schedule_work(&rps->work);
 
-		atomic_inc(&rps->boosts);
+		WRITE_ONCE(rps->boosts, rps->boosts + 1); /* debug only */
 	}
-	spin_unlock_irqrestore(&rq->lock, flags);
 }
 
 int intel_rps_set(struct intel_rps *rps, u8 val)
diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i915/gt/intel_rps_types.h
index 38083f0402d9..029fe13cf303 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
@@ -93,7 +93,7 @@ struct intel_rps {
 	} power;
 
 	atomic_t num_waiters;
-	atomic_t boosts;
+	unsigned int boosts;
 
 	/* manual wa residency calculations */
 	struct intel_rps_ei ei;
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 7332478a3dd5..de8e0e44cfb6 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -811,7 +811,7 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
 		   intel_gpu_freq(rps, rps->efficient_freq),
 		   intel_gpu_freq(rps, rps->boost_freq));
 
-	seq_printf(m, "Wait boosts: %d\n", atomic_read(&rps->boosts));
+	seq_printf(m, "Wait boosts: %d\n", READ_ONCE(rps->boosts));
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 03ac6eead4db..8db3391d8625 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -307,10 +307,8 @@ bool i915_request_retire(struct i915_request *rq)
 		spin_unlock_irq(&rq->lock);
 	}
 
-	if (i915_request_has_waitboost(rq)) {
-		GEM_BUG_ON(!atomic_read(&rq->engine->gt->rps.num_waiters));
+	if (test_and_set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags))
 		atomic_dec(&rq->engine->gt->rps.num_waiters);
-	}
 
 	/*
 	 * We only loosely track inflight requests across preemption,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
