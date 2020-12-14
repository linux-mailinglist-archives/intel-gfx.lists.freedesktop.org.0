Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D7F2D95F7
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE78B6E201;
	Mon, 14 Dec 2020 10:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 210046E21C
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317784-1500050 
 for multiple; Mon, 14 Dec 2020 10:09:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:08:55 +0000
Message-Id: <20201214100949.11387-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/69] drm/i915/gt: Track all timelines created
 using the HWSP
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

We assume that the contents of the HWSP are lost across suspend, and so
upon resume we must restore critical values such as the timeline seqno.
Keep track of every timeline allocated that uses the HWSP as its storage
and so we can then reset all seqno values by walking that list.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  9 ++++-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  6 ++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  1 +
 .../drm/i915/gt/intel_execlists_submission.c  | 11 ++++--
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 35 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_timeline.h      | 13 +++++--
 .../gpu/drm/i915/gt/intel_timeline_types.h    |  2 ++
 7 files changed, 71 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 71bd052628f4..6c08e74edcae 100644
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
@@ -936,6 +938,7 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 		fput(engine->default_state);
 
 	if (engine->kernel_context) {
+		list_del(&engine->kernel_context->timeline->engine_link);
 		intel_context_unpin(engine->kernel_context);
 		intel_context_put(engine->kernel_context);
 	}
@@ -1281,8 +1284,12 @@ void intel_engines_reset_default_submission(struct intel_gt *gt)
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
index 99574378047f..1e5bad0b9a82 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -60,6 +60,12 @@ static int __engine_unpark(struct intel_wakeref *wf)
 
 		/* Scrub the context image after our loss of control */
 		ce->ops->reset(ce);
+
+		CE_TRACE(ce, "reset { seqno:%x, *hwsp:%x, ring:%x }\n",
+			 ce->timeline->seqno,
+			 READ_ONCE(*ce->timeline->hwsp_seqno),
+			 ce->ring->emit);
+		GEM_BUG_ON(ce->timeline->seqno != *ce->timeline->hwsp_seqno);
 	}
 
 	if (engine->unpark)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index e71eef157231..c28f4e190fe6 100644
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
index 9f5efff08785..c5b013cc10b3 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3508,7 +3508,6 @@ static int execlists_context_alloc(struct intel_context *ce)
 
 static void execlists_context_reset(struct intel_context *ce)
 {
-	CE_TRACE(ce, "reset\n");
 	GEM_BUG_ON(!intel_context_is_pinned(ce));
 
 	intel_ring_reset(ce->ring, ce->ring->emit);
@@ -3985,6 +3984,14 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
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
@@ -4008,7 +4015,7 @@ static void execlists_sanitize(struct intel_engine_cs *engine)
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
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
index 634acebd0c4b..1ee680d31801 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
@@ -48,9 +48,16 @@ static inline struct intel_timeline *
 intel_timeline_create_from_engine(struct intel_engine_cs *engine,
 				  unsigned int offset)
 {
-	return __intel_timeline_create(engine->gt,
-				       engine->status_page.vma,
-				       offset);
+	struct intel_timeline *tl;
+
+	tl = __intel_timeline_create(engine->gt,
+				     engine->status_page.vma,
+				     offset);
+	if (IS_ERR(tl))
+		return tl;
+
+	list_add_tail(&tl->engine_link, &engine->status_page.timelines);
+	return tl;
 }
 
 static inline struct intel_timeline *
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
