Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5112F4B8D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 13:46:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8D8C6E97A;
	Wed, 13 Jan 2021 12:46:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A92E6E97A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 12:46:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23584214-1500050 
 for multiple; Wed, 13 Jan 2021 12:46:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 12:45:59 +0000
Message-Id: <20210113124600.656-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210113124600.656-1-chris@chris-wilson.co.uk>
References: <20210113124600.656-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/10] drm/i915/gt: Reduce engine runtime stats
 from seqlock to a latch
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

Since we can compute the elapsed time to add to the total, during the
PMU sample we only need to have a consistent view of the (start, total,
active) tuple to be able to locally determine the runtime. That can be
arrange by a pair of memory bariiers and carefully sequencing of the
writes and reads.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 33 ++++++--------------
 drivers/gpu/drm/i915/gt/intel_engine_stats.h | 24 +++-----------
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  5 ---
 3 files changed, 14 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index e85396cadcb8..9142fefd5a17 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -342,7 +342,6 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	engine->schedule = NULL;
 
 	ewma__engine_latency_init(&engine->latency);
-	seqcount_init(&engine->stats.lock);
 
 	ATOMIC_INIT_NOTIFIER_HEAD(&engine->context_status_notifier);
 
@@ -1733,22 +1732,6 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 	intel_engine_print_breadcrumbs(engine, m);
 }
 
-static ktime_t __intel_engine_get_busy_time(struct intel_engine_cs *engine,
-					    ktime_t *now)
-{
-	ktime_t total = engine->stats.total;
-
-	/*
-	 * If the engine is executing something at the moment
-	 * add it to the total.
-	 */
-	*now = ktime_get();
-	if (READ_ONCE(engine->stats.active))
-		total = ktime_add(total, ktime_sub(*now, engine->stats.start));
-
-	return total;
-}
-
 /**
  * intel_engine_get_busy_time() - Return current accumulated engine busyness
  * @engine: engine to report on
@@ -1758,13 +1741,17 @@ static ktime_t __intel_engine_get_busy_time(struct intel_engine_cs *engine,
  */
 ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine, ktime_t *now)
 {
-	unsigned int seq;
-	ktime_t total;
+	ktime_t total = engine->stats.total;
 
-	do {
-		seq = read_seqcount_begin(&engine->stats.lock);
-		total = __intel_engine_get_busy_time(engine, now);
-	} while (read_seqcount_retry(&engine->stats.lock, seq));
+	/*
+	 * If the engine is executing something at the moment
+	 * add it to the total.
+	 */
+	*now = ktime_get();
+	if (READ_ONCE(engine->stats.active)) {
+		smp_rmb(); /* pairs with intel_engine_context_in/out */
+		total = ktime_add(total, ktime_sub(*now, engine->stats.start));
+	}
 
 	return total;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_stats.h b/drivers/gpu/drm/i915/gt/intel_engine_stats.h
index 24fbdd94351a..1d8314257ffa 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_stats.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_stats.h
@@ -15,46 +15,30 @@
 
 static inline void intel_engine_context_in(struct intel_engine_cs *engine)
 {
-	unsigned long flags;
-
 	if (engine->stats.active) {
 		engine->stats.active++;
 		return;
 	}
 
 	/* The writer is serialised; but the pmu reader may be from hardirq */
-	local_irq_save(flags);
-	write_seqcount_begin(&engine->stats.lock);
-
 	engine->stats.start = ktime_get();
-	engine->stats.active++;
-
-	write_seqcount_end(&engine->stats.lock);
-	local_irq_restore(flags);
-
-	GEM_BUG_ON(!engine->stats.active);
+	smp_wmb(); /* pairs with intel_engine_get_busy_time() */
+	WRITE_ONCE(engine->stats.active, 1);
 }
 
 static inline void intel_engine_context_out(struct intel_engine_cs *engine)
 {
-	unsigned long flags;
-
 	GEM_BUG_ON(!engine->stats.active);
 	if (engine->stats.active > 1) {
 		engine->stats.active--;
 		return;
 	}
 
-	local_irq_save(flags);
-	write_seqcount_begin(&engine->stats.lock);
-
-	engine->stats.active--;
 	engine->stats.total =
 		ktime_add(engine->stats.total,
 			  ktime_sub(ktime_get(), engine->stats.start));
-
-	write_seqcount_end(&engine->stats.lock);
-	local_irq_restore(flags);
+	smp_wmb(); /* pairs with intel_engine_get_busy_time() */
+	WRITE_ONCE(engine->stats.active, 0);
 }
 
 #endif /* __INTEL_ENGINE_STATS_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index d2346b425547..ed13012b9338 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -518,11 +518,6 @@ struct intel_engine_cs {
 		 */
 		unsigned int active;
 
-		/**
-		 * @lock: Lock protecting the below fields.
-		 */
-		seqcount_t lock;
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
