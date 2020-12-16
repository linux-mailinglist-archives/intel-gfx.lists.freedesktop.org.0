Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EBB2DC2CD
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 16:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24FD26E1F2;
	Wed, 16 Dec 2020 15:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C11A6E1F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 15:11:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23345391-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 15:11:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Dec 2020 15:11:27 +0000
Message-Id: <20201216151133.25099-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/7] drm/i915/gt: Track all timelines created using
 the HWSP
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

We assume that the contents of the HWSP are lost across suspend, and so
upon resume we must restore critical values such as the timeline seqno.
Keep track of every timeline allocated that uses the HWSP as its storage
and so we can then reset all seqno values by walking that list.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 32 +++++++++++++----
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  7 ++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  1 +
 .../drm/i915/gt/intel_execlists_submission.c  | 11 ++++--
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 35 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_timeline.c      | 19 ++++++++++
 drivers/gpu/drm/i915/gt/intel_timeline.h      |  9 ++---
 .../gpu/drm/i915/gt/intel_timeline_types.h    |  2 ++
 8 files changed, 101 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 97ceaf7116e8..d2f6199de730 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -648,6 +648,8 @@ static int init_status_page(struct intel_engine_cs *engine)
 	void *vaddr;
 	int ret;
 
+	INIT_LIST_HEAD(&engine->status_page.timelines);
+
 	/*
 	 * Though the HWS register does support 36bit addresses, historically
 	 * we have had hangs and corruption reported due to wild writes if
@@ -830,6 +832,21 @@ create_pinned_context(struct intel_engine_cs *engine,
 	return ce;
 }
 
+static void destroy_pinned_context(struct intel_context *ce)
+{
+	struct intel_engine_cs *engine = ce->engine;
+	struct i915_vma *hwsp = engine->status_page.vma;
+
+	GEM_BUG_ON(ce->timeline->hwsp_ggtt != hwsp);
+
+	mutex_lock(&hwsp->vm->mutex);
+	list_del(&ce->timeline->engine_link);
+	mutex_unlock(&hwsp->vm->mutex);
+
+	intel_context_unpin(ce);
+	intel_context_put(ce);
+}
+
 static struct intel_context *
 create_kernel_context(struct intel_engine_cs *engine)
 {
@@ -926,7 +943,6 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 	GEM_BUG_ON(!list_empty(&engine->active.requests));
 	tasklet_kill(&engine->execlists.tasklet); /* flush the callback */
 
-	cleanup_status_page(engine);
 	intel_breadcrumbs_free(engine->breadcrumbs);
 
 	intel_engine_fini_retire(engine);
@@ -935,11 +951,11 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 	if (engine->default_state)
 		fput(engine->default_state);
 
-	if (engine->kernel_context) {
-		intel_context_unpin(engine->kernel_context);
-		intel_context_put(engine->kernel_context);
-	}
+	if (engine->kernel_context)
+		destroy_pinned_context(engine->kernel_context);
+
 	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
+	cleanup_status_page(engine);
 
 	intel_wa_list_free(&engine->ctx_wa_list);
 	intel_wa_list_free(&engine->wa_list);
@@ -1274,8 +1290,12 @@ void intel_engines_reset_default_submission(struct intel_gt *gt)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 
-	for_each_engine(engine, gt, id)
+	for_each_engine(engine, gt, id) {
+		if (engine->sanitize)
+			engine->sanitize(engine);
+
 		engine->set_default_submission(engine);
+	}
 }
 
 bool intel_engine_can_store_dword(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 499b09cb4acf..93028beb2ce0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -60,6 +60,13 @@ static int __engine_unpark(struct intel_wakeref *wf)
 
 		/* Scrub the context image after our loss of control */
 		ce->ops->reset(ce);
+
+		CE_TRACE(ce, "reset { seqno:%x, *hwsp:%x, ring:%x }\n",
+			 ce->timeline->seqno,
+			 READ_ONCE(*ce->timeline->hwsp_seqno),
+			 ce->ring->emit);
+		GEM_BUG_ON(ce->timeline->seqno !=
+			   READ_ONCE(*ce->timeline->hwsp_seqno));
 	}
 
 	if (engine->unpark)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index ee6312601c56..02ee1e736982 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -68,6 +68,7 @@ typedef u8 intel_engine_mask_t;
 #define ALL_ENGINES ((intel_engine_mask_t)~0ul)
 
 struct intel_hw_status_page {
+	struct list_head timelines;
 	struct i915_vma *vma;
 	u32 *addr;
 };
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index dcecc2887891..3ecf3fbcc62d 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3538,7 +3538,6 @@ static int execlists_context_alloc(struct intel_context *ce)
 
 static void execlists_context_reset(struct intel_context *ce)
 {
-	CE_TRACE(ce, "reset\n");
 	GEM_BUG_ON(!intel_context_is_pinned(ce));
 
 	intel_ring_reset(ce->ring, ce->ring->emit);
@@ -4015,6 +4014,14 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
 	GEM_BUG_ON(READ_ONCE(*execlists->csb_write) != reset_value);
 }
 
+static void sanitize_hwsp(struct intel_engine_cs *engine)
+{
+	struct intel_timeline *tl;
+
+	list_for_each_entry(tl, &engine->status_page.timelines, engine_link)
+		intel_timeline_reset_seqno(tl);
+}
+
 static void execlists_sanitize(struct intel_engine_cs *engine)
 {
 	GEM_BUG_ON(execlists_active(&engine->execlists));
@@ -4038,7 +4045,7 @@ static void execlists_sanitize(struct intel_engine_cs *engine)
 	 * that may be lost on resume/initialisation, and so we need to
 	 * reset the value in the HWSP.
 	 */
-	intel_timeline_reset_seqno(engine->kernel_context->timeline);
+	sanitize_hwsp(engine);
 
 	/* And scrub the dirty cachelines for the HWSP */
 	clflush_cache_range(engine->status_page.addr, PAGE_SIZE);
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 5105e19514ee..4ea741f488a8 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -321,6 +321,39 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	return ret;
 }
 
+static void sanitize_hwsp(struct intel_engine_cs *engine)
+{
+	struct intel_timeline *tl;
+
+	list_for_each_entry(tl, &engine->status_page.timelines, engine_link)
+		intel_timeline_reset_seqno(tl);
+}
+
+static void xcs_sanitize(struct intel_engine_cs *engine)
+{
+	/*
+	 * Poison residual state on resume, in case the suspend didn't!
+	 *
+	 * We have to assume that across suspend/resume (or other loss
+	 * of control) that the contents of our pinned buffers has been
+	 * lost, replaced by garbage. Since this doesn't always happen,
+	 * let's poison such state so that we more quickly spot when
+	 * we falsely assume it has been preserved.
+	 */
+	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
+		memset(engine->status_page.addr, POISON_INUSE, PAGE_SIZE);
+
+	/*
+	 * The kernel_context HWSP is stored in the status_page. As above,
+	 * that may be lost on resume/initialisation, and so we need to
+	 * reset the value in the HWSP.
+	 */
+	sanitize_hwsp(engine);
+
+	/* And scrub the dirty cachelines for the HWSP */
+	clflush_cache_range(engine->status_page.addr, PAGE_SIZE);
+}
+
 static void reset_prepare(struct intel_engine_cs *engine)
 {
 	struct intel_uncore *uncore = engine->uncore;
@@ -1070,6 +1103,8 @@ static void setup_common(struct intel_engine_cs *engine)
 	setup_irq(engine);
 
 	engine->resume = xcs_resume;
+	engine->sanitize = xcs_sanitize;
+
 	engine->reset.prepare = reset_prepare;
 	engine->reset.rewind = reset_rewind;
 	engine->reset.cancel = reset_cancel;
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 512afacd2bdc..35b52913c190 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -321,6 +321,25 @@ __intel_timeline_create(struct intel_gt *gt,
 	return timeline;
 }
 
+struct intel_timeline *
+intel_timeline_create_from_engine(struct intel_engine_cs *engine,
+				  unsigned int offset)
+{
+	struct i915_vma *hwsp = engine->status_page.vma;
+	struct intel_timeline *tl;
+
+	tl = __intel_timeline_create(engine->gt, hwsp, offset);
+	if (IS_ERR(tl))
+		return tl;
+
+	/* Borrow a nearby lock; we only create these timelines during init */
+	mutex_lock(&hwsp->vm->mutex);
+	list_add_tail(&tl->engine_link, &engine->status_page.timelines);
+	mutex_unlock(&hwsp->vm->mutex);
+
+	return tl;
+}
+
 void __intel_timeline_pin(struct intel_timeline *tl)
 {
 	GEM_BUG_ON(!atomic_read(&tl->pin_count));
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
index 634acebd0c4b..f502a619843f 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
@@ -44,14 +44,9 @@ intel_timeline_create(struct intel_gt *gt)
 	return __intel_timeline_create(gt, NULL, 0);
 }
 
-static inline struct intel_timeline *
+struct intel_timeline *
 intel_timeline_create_from_engine(struct intel_engine_cs *engine,
-				  unsigned int offset)
-{
-	return __intel_timeline_create(engine->gt,
-				       engine->status_page.vma,
-				       offset);
-}
+				  unsigned int offset);
 
 static inline struct intel_timeline *
 intel_timeline_get(struct intel_timeline *timeline)
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline_types.h b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
index 4474f487f589..e360f50706bf 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
@@ -84,6 +84,8 @@ struct intel_timeline {
 	struct list_head link;
 	struct intel_gt *gt;
 
+	struct list_head engine_link;
+
 	struct kref kref;
 	struct rcu_head rcu;
 };
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
