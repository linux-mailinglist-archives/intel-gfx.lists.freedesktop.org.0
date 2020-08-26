Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BD5252FBD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 15:28:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 203176E11F;
	Wed, 26 Aug 2020 13:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E95506EA61
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 13:28:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22244743-1500050 
 for multiple; Wed, 26 Aug 2020 14:28:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Aug 2020 14:27:49 +0100
Message-Id: <20200826132811.17577-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200826132811.17577-1-chris@chris-wilson.co.uk>
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/39] drm/i915/gt: Defer enabling the
 breadcrumb interrupt to after submission
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the register slow register write and readback from out of the
critical path for execlists submission and delay it until the following
worker, shaving off around 200us. Note that the same signal_irq_work() is
allowed to run concurrently on each CPU (but it will only be queued once,
once running though it can be requeued and reexecuted) so we have to
remember to lock the global interactions as we cannot rely on the
signal_irq_work() itself providing the serialisation (in constrast to a
tasklet).

By pushing the arm/disarm into the central signaling worker we can close
the race for disarming the interrupt (and dropping its associated
GT wakeref) on parking the engine. If we loose the race, that GT wakeref
may be held indefinitely, preventing the machine from sleeping while
the GPU is ostensibly idle.

v2: Move the self-arming parking of the signal_irq_work to a flush of
the irq-work from intel_breadcrumbs_park().

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2271
Fixes: dfeba1ae34c8 ("drm/i915/gt: Hold context/request reference while breadcrumbs are active")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 109 +++++++++++++-------
 1 file changed, 70 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index d8b206e53660..8d85683314e1 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -30,18 +30,21 @@
 #include "i915_trace.h"
 #include "intel_breadcrumbs.h"
 #include "intel_context.h"
+#include "intel_engine_pm.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_requests.h"
 
-static void irq_enable(struct intel_engine_cs *engine)
+static bool irq_enable(struct intel_engine_cs *engine)
 {
 	if (!engine->irq_enable)
-		return;
+		return false;
 
 	/* Caller disables interrupts */
 	spin_lock(&engine->gt->irq_lock);
 	engine->irq_enable(engine);
 	spin_unlock(&engine->gt->irq_lock);
+
+	return true;
 }
 
 static void irq_disable(struct intel_engine_cs *engine)
@@ -57,12 +60,11 @@ static void irq_disable(struct intel_engine_cs *engine)
 
 static void __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
 {
-	lockdep_assert_held(&b->irq_lock);
-
-	if (!b->irq_engine || b->irq_armed)
-		return;
-
-	if (!intel_gt_pm_get_if_awake(b->irq_engine->gt))
+	/*
+	 * Since we are waiting on a request, the GPU should be busy
+	 * and should have its own rpm reference.
+	 */
+	if (GEM_WARN_ON(!intel_gt_pm_get_if_awake(b->irq_engine->gt)))
 		return;
 
 	/*
@@ -73,25 +75,24 @@ static void __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
 	 */
 	WRITE_ONCE(b->irq_armed, true);
 
-	/*
-	 * Since we are waiting on a request, the GPU should be busy
-	 * and should have its own rpm reference. This is tracked
-	 * by i915->gt.awake, we can forgo holding our own wakref
-	 * for the interrupt as before i915->gt.awake is released (when
-	 * the driver is idle) we disarm the breadcrumbs.
-	 */
-
-	if (!b->irq_enabled++)
-		irq_enable(b->irq_engine);
+	/* Requests may have completed before we could enable the interrupt. */
+	if (!b->irq_enabled++ && irq_enable(b->irq_engine))
+		irq_work_queue(&b->irq_work);
 }
 
-static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
+static void intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
 {
-	lockdep_assert_held(&b->irq_lock);
-
-	if (!b->irq_engine || !b->irq_armed)
+	if (!b->irq_engine)
 		return;
 
+	spin_lock(&b->irq_lock);
+	if (!b->irq_armed)
+		__intel_breadcrumbs_arm_irq(b);
+	spin_unlock(&b->irq_lock);
+}
+
+static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
+{
 	GEM_BUG_ON(!b->irq_enabled);
 	if (!--b->irq_enabled)
 		irq_disable(b->irq_engine);
@@ -105,8 +106,6 @@ static void add_signaling_context(struct intel_breadcrumbs *b,
 {
 	intel_context_get(ce);
 	list_add_tail(&ce->signal_link, &b->signalers);
-	if (list_is_first(&ce->signal_link, &b->signalers))
-		__intel_breadcrumbs_arm_irq(b);
 }
 
 static void remove_signaling_context(struct intel_breadcrumbs *b,
@@ -197,7 +196,32 @@ static void signal_irq_work(struct irq_work *work)
 
 	spin_lock(&b->irq_lock);
 
-	if (list_empty(&b->signalers))
+	/*
+	 * Keep the irq armed until the interrupt after all listeners are gone.
+	 *
+	 * Enabling/disabling the interrupt is rather costly, roughly a couple
+	 * of hundred microseconds. If we are proactive and enable/disable
+	 * the interrupt around every request that wants a breadcrumb, we
+	 * quickly drown in the extra orders of magnitude of latency imposed
+	 * on request submission.
+	 *
+	 * So we try to be lazy, and keep the interrupts enabled until no
+	 * more listeners appear within a breadcrumb interrupt interval (that
+	 * is until a request completes that no one cares about). The
+	 * observation is that listeners come in batches, and will often
+	 * listen to a bunch of requests in succession. Though note on icl+,
+	 * interrupts are always enabled due to concerns with rc6 being
+	 * dysfunctional with per-engine interrupt masking.
+	 *
+	 * We also try to avoid raising too many interrupts, as they may
+	 * be generated by userspace batches and it is unfortunately rather
+	 * too easy to drown the CPU under a flood of GPU interrupts. Thus
+	 * whenever no one appears to be listening, we turn off the interrupts.
+	 * Fewer interrupts should conserve power -- at the very least, fewer
+	 * interrupt draw less ire from other users of the system and tools
+	 * like powertop.
+	 */
+	if (b->irq_armed && list_empty(&b->signalers))
 		__intel_breadcrumbs_disarm_irq(b);
 
 	list_splice_init(&b->signaled_requests, &signal);
@@ -251,6 +275,9 @@ static void signal_irq_work(struct irq_work *work)
 
 		i915_request_put(rq);
 	}
+
+	if (!READ_ONCE(b->irq_armed) && !list_empty(&b->signalers))
+		intel_breadcrumbs_arm_irq(b);
 }
 
 struct intel_breadcrumbs *
@@ -292,21 +319,22 @@ void intel_breadcrumbs_reset(struct intel_breadcrumbs *b)
 
 void intel_breadcrumbs_park(struct intel_breadcrumbs *b)
 {
-	unsigned long flags;
-
-	if (!READ_ONCE(b->irq_armed))
-		return;
-
-	spin_lock_irqsave(&b->irq_lock, flags);
-	__intel_breadcrumbs_disarm_irq(b);
-	spin_unlock_irqrestore(&b->irq_lock, flags);
-
-	if (!list_empty(&b->signalers))
-		irq_work_queue(&b->irq_work);
+	/* Kick the work once more to drain the signalers */
+	irq_work_sync(&b->irq_work);
+	while (unlikely(READ_ONCE(b->irq_armed))) {
+		local_irq_disable();
+		signal_irq_work(&b->irq_work);
+		local_irq_enable();
+		cond_resched();
+	}
+	GEM_BUG_ON(!list_empty(&b->signalers));
 }
 
 void intel_breadcrumbs_free(struct intel_breadcrumbs *b)
 {
+	irq_work_sync(&b->irq_work);
+	GEM_BUG_ON(!list_empty(&b->signalers));
+	GEM_BUG_ON(b->irq_armed);
 	kfree(b);
 }
 
@@ -362,9 +390,12 @@ static void insert_breadcrumb(struct i915_request *rq,
 	GEM_BUG_ON(!check_signal_order(ce, rq));
 	set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
 
-	/* Check after attaching to irq, interrupt may have already fired. */
-	if (__request_completed(rq))
-		irq_work_queue(&b->irq_work);
+	/*
+	 * Defer enabling the interrupt to after HW submission and recheck
+	 * the request as it may have completed and raised the interrupt as
+	 * we were attaching it into the lists.
+	 */
+	irq_work_queue(&b->irq_work);
 }
 
 bool i915_request_enable_breadcrumb(struct i915_request *rq)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
