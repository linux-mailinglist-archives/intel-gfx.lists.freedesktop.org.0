Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAAD2DCE1F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 10:15:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A98F4899C4;
	Thu, 17 Dec 2020 09:15:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89580899C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Dec 2020 09:15:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23351916-1500050 
 for multiple; Thu, 17 Dec 2020 09:15:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Dec 2020 09:15:24 +0000
Message-Id: <20201217091524.10258-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Drain the breadcrumbs just once
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

Matthew Brost pointed out that the while-loop on a shared breadcrumb was
inherently fraught with danger as it competed with the other users of
the breadcrumbs. However, in order to completely drain the re-arming irq
worker, the while-loop is a necessity, despite my optimism that we could
force cancellation with a couple of irq_work invocations.

Given that we can't merely drop the while-loop, use an activity counter on
the breadcrumbs to detect when we are parking the breadcrumbs for the
last time.

Based on a patch by Matthew Brost.

Reported-by: Matthew Brost <matthew.brost@intel.com>
Suggested-by: Matthew Brost <matthew.brost@intel.com>
Fixes: 9d5612ca165a ("drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c       | 10 ++++++----
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.h       | 13 ++++++++++++-
 drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h |  6 ++++--
 drivers/gpu/drm/i915/gt/intel_engine_pm.c         |  1 +
 4 files changed, 23 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 00918300f53f..3c62fd6daa76 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -332,17 +332,19 @@ void intel_breadcrumbs_reset(struct intel_breadcrumbs *b)
 	spin_unlock_irqrestore(&b->irq_lock, flags);
 }
 
-void intel_breadcrumbs_park(struct intel_breadcrumbs *b)
+void __intel_breadcrumbs_park(struct intel_breadcrumbs *b)
 {
-	/* Kick the work once more to drain the signalers */
+	if (!READ_ONCE(b->irq_armed))
+		return;
+
+	/* Kick the work once more to drain the signalers, and disarm the irq */
 	irq_work_sync(&b->irq_work);
-	while (unlikely(READ_ONCE(b->irq_armed))) {
+	while (READ_ONCE(b->irq_armed) && !atomic_read(&b->active)) {
 		local_irq_disable();
 		signal_irq_work(&b->irq_work);
 		local_irq_enable();
 		cond_resched();
 	}
-	GEM_BUG_ON(!list_empty(&b->signalers));
 }
 
 void intel_breadcrumbs_free(struct intel_breadcrumbs *b)
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
index ed3d1deabfbd..75cc9cff3ae3 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
@@ -19,7 +19,18 @@ intel_breadcrumbs_create(struct intel_engine_cs *irq_engine);
 void intel_breadcrumbs_free(struct intel_breadcrumbs *b);
 
 void intel_breadcrumbs_reset(struct intel_breadcrumbs *b);
-void intel_breadcrumbs_park(struct intel_breadcrumbs *b);
+void __intel_breadcrumbs_park(struct intel_breadcrumbs *b);
+
+static inline void intel_breadcrumbs_unpark(struct intel_breadcrumbs *b)
+{
+	atomic_inc(&b->active);
+}
+
+static inline void intel_breadcrumbs_park(struct intel_breadcrumbs *b)
+{
+	if (atomic_dec_and_test(&b->active))
+		__intel_breadcrumbs_park(b);
+}
 
 static inline void
 intel_engine_signal_breadcrumbs(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
index a74bb3062bd8..d85a6f74fb87 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
@@ -29,8 +29,7 @@
  * the overhead of waking that client is much preferred.
  */
 struct intel_breadcrumbs {
-	/* Not all breadcrumbs are attached to physical HW */
-	struct intel_engine_cs *irq_engine;
+	atomic_t active;
 
 	spinlock_t signalers_lock; /* protects the list of signalers */
 	struct list_head signalers;
@@ -40,6 +39,9 @@ struct intel_breadcrumbs {
 	struct irq_work irq_work; /* for use from inside irq_lock */
 	unsigned int irq_enabled;
 	bool irq_armed;
+
+	/* Not all breadcrumbs are attached to physical HW */
+	struct intel_engine_cs *irq_engine;
 };
 
 #endif /* __INTEL_BREADCRUMBS_TYPES__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 499b09cb4acf..d74e748f677a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -65,6 +65,7 @@ static int __engine_unpark(struct intel_wakeref *wf)
 	if (engine->unpark)
 		engine->unpark(engine);
 
+	intel_breadcrumbs_unpark(engine->breadcrumbs);
 	intel_engine_unpark_heartbeat(engine);
 	return 0;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
