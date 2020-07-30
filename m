Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88892232FB4
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 11:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3A26E8C2;
	Thu, 30 Jul 2020 09:38:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D60166E091
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 09:38:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21979062-1500050 
 for multiple; Thu, 30 Jul 2020 10:38:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jul 2020 10:37:49 +0100
Message-Id: <20200730093756.16737-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730093756.16737-1-chris@chris-wilson.co.uk>
References: <20200730093756.16737-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/21] drm/i915/gt: Move
 intel_breadcrumbs_arm_irq earlier
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
Cc: thomas.hellstrom@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the __intel_breadcrumbs_arm_irq earlier, next to the disarm_irq, so
that we can make use of it in the following patch.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 84 ++++++++++-----------
 1 file changed, 42 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 2ffd47a86656..9dd99969fd07 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -54,6 +54,36 @@ static void irq_disable(struct intel_engine_cs *engine)
 	spin_unlock(&engine->gt->irq_lock);
 }
 
+static void __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
+{
+	lockdep_assert_held(&b->irq_lock);
+
+	if (!b->irq_engine || b->irq_armed)
+		return;
+
+	if (!intel_gt_pm_get_if_awake(b->irq_engine->gt))
+		return;
+
+	/*
+	 * The breadcrumb irq will be disarmed on the interrupt after the
+	 * waiters are signaled. This gives us a single interrupt window in
+	 * which we can add a new waiter and avoid the cost of re-enabling
+	 * the irq.
+	 */
+	WRITE_ONCE(b->irq_armed, true);
+
+	/*
+	 * Since we are waiting on a request, the GPU should be busy
+	 * and should have its own rpm reference. This is tracked
+	 * by i915->gt.awake, we can forgo holding our own wakref
+	 * for the interrupt as before i915->gt.awake is released (when
+	 * the driver is idle) we disarm the breadcrumbs.
+	 */
+
+	if (!b->irq_enabled++)
+		irq_enable(b->irq_engine);
+}
+
 static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
 {
 	lockdep_assert_held(&b->irq_lock);
@@ -69,18 +99,6 @@ static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
 	intel_gt_pm_put_async(b->irq_engine->gt);
 }
 
-void intel_breadcrumbs_park(struct intel_breadcrumbs *b)
-{
-	unsigned long flags;
-
-	if (!READ_ONCE(b->irq_armed))
-		return;
-
-	spin_lock_irqsave(&b->irq_lock, flags);
-	__intel_breadcrumbs_disarm_irq(b);
-	spin_unlock_irqrestore(&b->irq_lock, flags);
-}
-
 static inline bool __request_completed(const struct i915_request *rq)
 {
 	return i915_seqno_passed(__hwsp_seqno(rq), rq->fence.seqno);
@@ -214,36 +232,6 @@ static void signal_irq_work(struct irq_work *work)
 	}
 }
 
-static void __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
-{
-	lockdep_assert_held(&b->irq_lock);
-
-	if (!b->irq_engine || b->irq_armed)
-		return;
-
-	if (!intel_gt_pm_get_if_awake(b->irq_engine->gt))
-		return;
-
-	/*
-	 * The breadcrumb irq will be disarmed on the interrupt after the
-	 * waiters are signaled. This gives us a single interrupt window in
-	 * which we can add a new waiter and avoid the cost of re-enabling
-	 * the irq.
-	 */
-	WRITE_ONCE(b->irq_armed, true);
-
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
-}
-
 struct intel_breadcrumbs *
 intel_breadcrumbs_create(struct intel_engine_cs *irq_engine)
 {
@@ -281,6 +269,18 @@ void intel_breadcrumbs_reset(struct intel_breadcrumbs *b)
 	spin_unlock_irqrestore(&b->irq_lock, flags);
 }
 
+void intel_breadcrumbs_park(struct intel_breadcrumbs *b)
+{
+	unsigned long flags;
+
+	if (!READ_ONCE(b->irq_armed))
+		return;
+
+	spin_lock_irqsave(&b->irq_lock, flags);
+	__intel_breadcrumbs_disarm_irq(b);
+	spin_unlock_irqrestore(&b->irq_lock, flags);
+}
+
 void intel_breadcrumbs_free(struct intel_breadcrumbs *b)
 {
 	kfree(b);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
