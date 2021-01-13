Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 899602F4B91
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 13:46:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01F6E6E97C;
	Wed, 13 Jan 2021 12:46:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CCCE6E976
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 12:46:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23584213-1500050 
 for multiple; Wed, 13 Jan 2021 12:46:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 12:45:58 +0000
Message-Id: <20210113124600.656-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210113124600.656-1-chris@chris-wilson.co.uk>
References: <20210113124600.656-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/10] drm/i915/gt: Convert stats.active to
 plain unsigned int
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

As context-in/out is now always serialised, we do not have to worry
about concurrent enabling/disable of the busy-stats and can reduce the
atomic_t active to a plain unsigned int, and the seqlock to a seqcount.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  8 ++--
 drivers/gpu/drm/i915/gt/intel_engine_stats.h | 45 ++++++++++++--------
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  4 +-
 3 files changed, 34 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 005ae2c54273..e85396cadcb8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -342,7 +342,7 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	engine->schedule = NULL;
 
 	ewma__engine_latency_init(&engine->latency);
-	seqlock_init(&engine->stats.lock);
+	seqcount_init(&engine->stats.lock);
 
 	ATOMIC_INIT_NOTIFIER_HEAD(&engine->context_status_notifier);
 
@@ -1743,7 +1743,7 @@ static ktime_t __intel_engine_get_busy_time(struct intel_engine_cs *engine,
 	 * add it to the total.
 	 */
 	*now = ktime_get();
-	if (atomic_read(&engine->stats.active))
+	if (READ_ONCE(engine->stats.active))
 		total = ktime_add(total, ktime_sub(*now, engine->stats.start));
 
 	return total;
@@ -1762,9 +1762,9 @@ ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine, ktime_t *now)
 	ktime_t total;
 
 	do {
-		seq = read_seqbegin(&engine->stats.lock);
+		seq = read_seqcount_begin(&engine->stats.lock);
 		total = __intel_engine_get_busy_time(engine, now);
-	} while (read_seqretry(&engine->stats.lock, seq));
+	} while (read_seqcount_retry(&engine->stats.lock, seq));
 
 	return total;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_stats.h b/drivers/gpu/drm/i915/gt/intel_engine_stats.h
index 58491eae3482..24fbdd94351a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_stats.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_stats.h
@@ -17,33 +17,44 @@ static inline void intel_engine_context_in(struct intel_engine_cs *engine)
 {
 	unsigned long flags;
 
-	if (atomic_add_unless(&engine->stats.active, 1, 0))
+	if (engine->stats.active) {
+		engine->stats.active++;
 		return;
-
-	write_seqlock_irqsave(&engine->stats.lock, flags);
-	if (!atomic_add_unless(&engine->stats.active, 1, 0)) {
-		engine->stats.start = ktime_get();
-		atomic_inc(&engine->stats.active);
 	}
-	write_sequnlock_irqrestore(&engine->stats.lock, flags);
+
+	/* The writer is serialised; but the pmu reader may be from hardirq */
+	local_irq_save(flags);
+	write_seqcount_begin(&engine->stats.lock);
+
+	engine->stats.start = ktime_get();
+	engine->stats.active++;
+
+	write_seqcount_end(&engine->stats.lock);
+	local_irq_restore(flags);
+
+	GEM_BUG_ON(!engine->stats.active);
 }
 
 static inline void intel_engine_context_out(struct intel_engine_cs *engine)
 {
 	unsigned long flags;
 
-	GEM_BUG_ON(!atomic_read(&engine->stats.active));
-
-	if (atomic_add_unless(&engine->stats.active, -1, 1))
+	GEM_BUG_ON(!engine->stats.active);
+	if (engine->stats.active > 1) {
+		engine->stats.active--;
 		return;
-
-	write_seqlock_irqsave(&engine->stats.lock, flags);
-	if (atomic_dec_and_test(&engine->stats.active)) {
-		engine->stats.total =
-			ktime_add(engine->stats.total,
-				  ktime_sub(ktime_get(), engine->stats.start));
 	}
-	write_sequnlock_irqrestore(&engine->stats.lock, flags);
+
+	local_irq_save(flags);
+	write_seqcount_begin(&engine->stats.lock);
+
+	engine->stats.active--;
+	engine->stats.total =
+		ktime_add(engine->stats.total,
+			  ktime_sub(ktime_get(), engine->stats.start));
+
+	write_seqcount_end(&engine->stats.lock);
+	local_irq_restore(flags);
 }
 
 #endif /* __INTEL_ENGINE_STATS_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 75c9093b5e7f..d2346b425547 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -516,12 +516,12 @@ struct intel_engine_cs {
 		/**
 		 * @active: Number of contexts currently scheduled in.
 		 */
-		atomic_t active;
+		unsigned int active;
 
 		/**
 		 * @lock: Lock protecting the below fields.
 		 */
-		seqlock_t lock;
+		seqcount_t lock;
 
 		/**
 		 * @total: Total time this engine was busy.
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
