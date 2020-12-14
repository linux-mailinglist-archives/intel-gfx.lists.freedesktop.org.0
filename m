Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C0C2D95DF
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 455F16E202;
	Mon, 14 Dec 2020 10:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40B756E176
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317844-1500050 
 for multiple; Mon, 14 Dec 2020 10:09:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:09:35 +0000
Message-Id: <20201214100949.11387-55-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 55/69] drm/i915: Move common active lists from
 engine to i915_scheduler
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

Extract the scheduler lists into a related structure, stop sprawling
over struct intel_engine_cs

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 26 +-------------
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  8 +----
 .../drm/i915/gt/intel_execlists_submission.c  |  2 +-
 drivers/gpu/drm/i915/gt/mock_engine.c         |  2 +-
 drivers/gpu/drm/i915/i915_scheduler.c         | 34 ++++++++++++++++---
 drivers/gpu/drm/i915/i915_scheduler.h         |  3 +-
 drivers/gpu/drm/i915/i915_scheduler_types.h   |  8 +++++
 7 files changed, 43 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 78c8053ec2b0..01499390aed7 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -593,8 +593,6 @@ void intel_engine_init_execlists(struct intel_engine_cs *engine)
 		memset(execlists->inflight, 0, sizeof(execlists->inflight));
 
 	execlists->queue = RB_ROOT_CACHED;
-
-	i915_sched_init_ipi(&execlists->ipi);
 }
 
 static void cleanup_status_page(struct intel_engine_cs *engine)
@@ -710,7 +708,7 @@ static int engine_setup_common(struct intel_engine_cs *engine)
 		goto err_status;
 	}
 
-	intel_engine_init_active(engine, ENGINE_PHYSICAL);
+	i915_sched_init_engine(&engine->active, ENGINE_PHYSICAL);
 	intel_engine_init_execlists(engine);
 	intel_engine_init_cmd_parser(engine);
 	intel_engine_init__pm(engine);
@@ -775,28 +773,6 @@ static int measure_breadcrumb_dw(struct intel_context *ce)
 	return dw;
 }
 
-void
-intel_engine_init_active(struct intel_engine_cs *engine, unsigned int subclass)
-{
-	INIT_LIST_HEAD(&engine->active.requests);
-	INIT_LIST_HEAD(&engine->active.hold);
-
-	spin_lock_init(&engine->active.lock);
-	lockdep_set_subclass(&engine->active.lock, subclass);
-
-	/*
-	 * Due to an interesting quirk in lockdep's internal debug tracking,
-	 * after setting a subclass we must ensure the lock is used. Otherwise,
-	 * nr_unused_locks is incremented once too often.
-	 */
-#ifdef CONFIG_DEBUG_LOCK_ALLOC
-	local_irq_disable();
-	lock_map_acquire(&engine->active.lock.dep_map);
-	lock_map_release(&engine->active.lock.dep_map);
-	local_irq_enable();
-#endif
-}
-
 static struct intel_context *
 create_pinned_context(struct intel_engine_cs *engine,
 		      unsigned int hwsp,
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index d8b4cc086fef..16e1c5299df4 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -245,8 +245,6 @@ struct intel_engine_execlists {
 	struct rb_root_cached queue;
 	struct rb_root_cached virtual;
 
-	struct i915_sched_ipi ipi;
-
 	/**
 	 * @csb_write: control register for Context Switch buffer
 	 *
@@ -316,11 +314,7 @@ struct intel_engine_cs {
 
 	struct intel_sseu sseu;
 
-	struct {
-		spinlock_t lock;
-		struct list_head requests;
-		struct list_head hold; /* ready requests, but on hold */
-	} active;
+	struct i915_sched_engine active;
 
 	/* keep a request in reserve for a [pm] barrier under oom */
 	struct i915_request *request_pool;
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 0fbc84d94173..996f12e3dba8 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -4940,7 +4940,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 	snprintf(ve->base.name, sizeof(ve->base.name), "virtual");
 
-	intel_engine_init_active(&ve->base, ENGINE_VIRTUAL);
+	i915_sched_init_engine(&ve->base.active, ENGINE_VIRTUAL);
 	intel_engine_init_execlists(&ve->base);
 
 	ve->base.cops = &virtual_context_ops;
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index 2f830017c51d..c00bc0f4afec 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -355,7 +355,7 @@ int mock_engine_init(struct intel_engine_cs *engine)
 {
 	struct intel_context *ce;
 
-	intel_engine_init_active(engine, ENGINE_MOCK);
+	i915_sched_init_engine(&engine->active, ENGINE_MOCK);
 	intel_engine_init_execlists(engine);
 	intel_engine_init__pm(engine);
 	intel_engine_init_retire(engine);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 10b17a879176..88b2c0bf853c 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -115,12 +115,36 @@ static void ipi_schedule(struct work_struct *wrk)
 	} while (rq);
 }
 
-void i915_sched_init_ipi(struct i915_sched_ipi *ipi)
+static void i915_sched_init_ipi(struct i915_sched_ipi *ipi)
 {
 	INIT_WORK(&ipi->work, ipi_schedule);
 	ipi->list = NULL;
 }
 
+void i915_sched_init_engine(struct i915_sched_engine *se,
+			    unsigned int subclass)
+{
+	spin_lock_init(&se->lock);
+	lockdep_set_subclass(&se->lock, subclass);
+
+	INIT_LIST_HEAD(&se->requests);
+	INIT_LIST_HEAD(&se->hold);
+
+	i915_sched_init_ipi(&se->ipi);
+
+	/*
+	 * Due to an interesting quirk in lockdep's internal debug tracking,
+	 * after setting a subclass we must ensure the lock is used. Otherwise,
+	 * nr_unused_locks is incremented once too often.
+	 */
+#ifdef CONFIG_DEBUG_LOCK_ALLOC
+	local_irq_disable();
+	lock_map_acquire(&se->lock.dep_map);
+	lock_map_release(&se->lock.dep_map);
+	local_irq_enable();
+#endif
+}
+
 static void __ipi_add(struct i915_request *rq)
 {
 #define STUB ((struct i915_request *)1)
@@ -136,13 +160,13 @@ static void __ipi_add(struct i915_request *rq)
 		return;
 	}
 
-	first = READ_ONCE(engine->execlists.ipi.list);
-	do
+	first = READ_ONCE(engine->active.ipi.list);
+	do {
 		rq->sched.ipi_link = ptr_pack_bits(first, 1, 1);
-	while (!try_cmpxchg(&engine->execlists.ipi.list, &first, rq));
+	} while (!try_cmpxchg(&engine->active.ipi.list, &first, rq));
 
 	if (!first)
-		queue_work(system_unbound_wq, &engine->execlists.ipi.work);
+		queue_work(system_unbound_wq, &engine->active.ipi.work);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 53061164e256..bd87a5c67c2f 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -35,7 +35,8 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
 
 void i915_sched_node_retire(struct i915_sched_node *node);
 
-void i915_sched_init_ipi(struct i915_sched_ipi *ipi);
+void i915_sched_init_engine(struct i915_sched_engine *se,
+			    unsigned int subclass);
 
 void i915_request_set_priority(struct i915_request *request, int prio);
 void i915_request_set_deadline(struct i915_request *request, u64 deadline);
diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
index 4f0d7cebafb0..e56e89b0e8cb 100644
--- a/drivers/gpu/drm/i915/i915_scheduler_types.h
+++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
@@ -103,6 +103,14 @@ struct i915_sched_ipi {
 	struct work_struct work;
 };
 
+struct i915_sched_engine {
+	spinlock_t lock;
+	struct list_head requests;
+	struct list_head hold; /* ready requests, but on hold */
+
+	struct i915_sched_ipi ipi;
+};
+
 struct i915_dependency {
 	struct i915_sched_node *signaler;
 	struct i915_sched_node *waiter;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
