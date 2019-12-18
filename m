Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A051249BA
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 15:31:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79C4D6E4A2;
	Wed, 18 Dec 2019 14:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CE1D6E4A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 14:31:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19622417-1500050 
 for multiple; Wed, 18 Dec 2019 14:31:13 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 14:31:05 +0000
Message-Id: <20191218143111.3852266-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191218143111.3852266-1-chris@chris-wilson.co.uk>
References: <20191218143111.3852266-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] drm/i915: Drop GEM context as a direct link
 from i915_request
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

Keep the intel_context as being the primary state for i915_request, with
the GEM context a backpointer from the low level state for the rarer
cases we need client information. Our goal is to remove such references
to clients from the backend, and leave the HW submission agnostic to
client interfaces and self-contained.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 15 ++----
 drivers/gpu/drm/i915/gem/i915_gem_context.h   | 38 ---------------
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  7 +--
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  8 ++--
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   |  4 +-
 drivers/gpu/drm/i915/gt/intel_context.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_context.h       | 42 +++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_context_types.h |  7 ++-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  6 +--
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 47 +++++++++----------
 drivers/gpu/drm/i915/gt/intel_reset.c         | 37 ++++++++-------
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  8 ++--
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 20 ++++----
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  6 +--
 drivers/gpu/drm/i915/gvt/scheduler.c          | 27 +++++------
 drivers/gpu/drm/i915/i915_gem.c               | 11 ++---
 drivers/gpu/drm/i915/i915_gpu_error.c         | 11 +++--
 drivers/gpu/drm/i915/i915_perf.c              |  4 +-
 drivers/gpu/drm/i915/i915_request.c           | 21 +++++----
 drivers/gpu/drm/i915/i915_request.h           |  3 +-
 drivers/gpu/drm/i915/i915_scheduler.c         |  2 +-
 21 files changed, 165 insertions(+), 161 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 6618c0c6506c..42585a20a9ae 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -69,6 +69,7 @@
 
 #include <drm/i915_drm.h>
 
+#include "gt/intel_context.h"
 #include "gt/intel_engine_heartbeat.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_engine_user.h"
@@ -423,15 +424,6 @@ static void kill_context(struct i915_gem_context *ctx)
 	struct i915_gem_engines_iter it;
 	struct intel_context *ce;
 
-	/*
-	 * If we are already banned, it was due to a guilty request causing
-	 * a reset and the entire context being evicted from the GPU.
-	 */
-	if (i915_gem_context_is_banned(ctx))
-		return;
-
-	i915_gem_context_set_banned(ctx);
-
 	/*
 	 * Map the user's engine back to the actual engines; one virtual
 	 * engine will be mapped to multiple engines, and using ctx->engine[]
@@ -442,6 +434,9 @@ static void kill_context(struct i915_gem_context *ctx)
 	for_each_gem_engine(ce, __context_engines_static(ctx), it) {
 		struct intel_engine_cs *engine;
 
+		if (intel_context_set_banned(ce))
+			continue;
+
 		/*
 		 * Check the current active state of this context; if we
 		 * are currently executing on the GPU we need to evict
@@ -1093,7 +1088,7 @@ static void set_ppgtt_barrier(void *data)
 
 static int emit_ppgtt_update(struct i915_request *rq, void *data)
 {
-	struct i915_address_space *vm = rq->hw_context->vm;
+	struct i915_address_space *vm = rq->context->vm;
 	struct intel_engine_cs *engine = rq->engine;
 	u32 base = engine->mmio_base;
 	u32 *cs;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index 18e50a769a6e..69932899803e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -91,26 +91,6 @@ static inline void i915_gem_context_clear_persistence(struct i915_gem_context *c
 	clear_bit(UCONTEXT_PERSISTENCE, &ctx->user_flags);
 }
 
-static inline bool i915_gem_context_is_banned(const struct i915_gem_context *ctx)
-{
-	return test_bit(CONTEXT_BANNED, &ctx->flags);
-}
-
-static inline void i915_gem_context_set_banned(struct i915_gem_context *ctx)
-{
-	set_bit(CONTEXT_BANNED, &ctx->flags);
-}
-
-static inline bool i915_gem_context_force_single_submission(const struct i915_gem_context *ctx)
-{
-	return test_bit(CONTEXT_FORCE_SINGLE_SUBMISSION, &ctx->flags);
-}
-
-static inline void i915_gem_context_set_force_single_submission(struct i915_gem_context *ctx)
-{
-	__set_bit(CONTEXT_FORCE_SINGLE_SUBMISSION, &ctx->flags);
-}
-
 static inline bool
 i915_gem_context_user_engines(const struct i915_gem_context *ctx)
 {
@@ -129,24 +109,6 @@ i915_gem_context_clear_user_engines(struct i915_gem_context *ctx)
 	clear_bit(CONTEXT_USER_ENGINES, &ctx->flags);
 }
 
-static inline bool
-i915_gem_context_nopreempt(const struct i915_gem_context *ctx)
-{
-	return test_bit(CONTEXT_NOPREEMPT, &ctx->flags);
-}
-
-static inline void
-i915_gem_context_set_nopreempt(struct i915_gem_context *ctx)
-{
-	set_bit(CONTEXT_NOPREEMPT, &ctx->flags);
-}
-
-static inline void
-i915_gem_context_clear_nopreempt(struct i915_gem_context *ctx)
-{
-	clear_bit(CONTEXT_NOPREEMPT, &ctx->flags);
-}
-
 static inline bool i915_gem_context_is_kernel(struct i915_gem_context *ctx)
 {
 	return !ctx->file_priv;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 69df5459c350..017ca803ab47 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -134,11 +134,8 @@ struct i915_gem_context {
 	 * @flags: small set of booleans
 	 */
 	unsigned long flags;
-#define CONTEXT_BANNED			0
-#define CONTEXT_CLOSED			1
-#define CONTEXT_FORCE_SINGLE_SUBMISSION	2
-#define CONTEXT_USER_ENGINES		3
-#define CONTEXT_NOPREEMPT		4
+#define CONTEXT_CLOSED			0
+#define CONTEXT_USER_ENGINES		1
 
 	struct mutex mutex;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 7d07131aa3f7..cbd2bcade3c8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -730,9 +730,6 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 	unsigned int i, batch;
 	int err;
 
-	if (unlikely(i915_gem_context_is_banned(eb->gem_context)))
-		return -EIO;
-
 	INIT_LIST_HEAD(&eb->relocs);
 	INIT_LIST_HEAD(&eb->unbound);
 
@@ -2175,7 +2172,7 @@ static int eb_submit(struct i915_execbuffer *eb)
 			return err;
 	}
 
-	if (i915_gem_context_nopreempt(eb->gem_context))
+	if (intel_context_nopreempt(eb->context))
 		eb->request->flags |= I915_REQUEST_NOPREEMPT;
 
 	return 0;
@@ -2261,6 +2258,9 @@ static int __eb_pin_engine(struct i915_execbuffer *eb, struct intel_context *ce)
 	if (err)
 		return err;
 
+	if (unlikely(intel_context_is_banned(ce)))
+		return -EIO;
+
 	/*
 	 * Pinning the contexts may generate requests in order to acquire
 	 * GGTT space, so do this first before we reserve a seqno for
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 8a9facf4f3b6..9b203db0e1f8 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -279,7 +279,7 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
 
 	if (test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags)) {
 		struct intel_breadcrumbs *b = &rq->engine->breadcrumbs;
-		struct intel_context *ce = rq->hw_context;
+		struct intel_context *ce = rq->context;
 		struct list_head *pos;
 
 		spin_lock(&b->irq_lock);
@@ -336,7 +336,7 @@ void i915_request_cancel_breadcrumb(struct i915_request *rq)
 	 */
 	spin_lock(&b->irq_lock);
 	if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags)) {
-		struct intel_context *ce = rq->hw_context;
+		struct intel_context *ce = rq->context;
 
 		list_del(&rq->signal_link);
 		if (list_empty(&ce->signals))
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index b1e346d2d35f..ae0dc40031df 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -302,7 +302,7 @@ int intel_context_prepare_remote_request(struct intel_context *ce,
 	int err;
 
 	/* Only suitable for use in remotely modifying this context */
-	GEM_BUG_ON(rq->hw_context == ce);
+	GEM_BUG_ON(rq->context == ce);
 
 	if (rcu_access_pointer(rq->timeline) != tl) { /* timeline sharing! */
 		/* Queue this switch after current activity by this context. */
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index b39eb1fcfbca..65389cb8a565 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -7,7 +7,9 @@
 #ifndef __INTEL_CONTEXT_H__
 #define __INTEL_CONTEXT_H__
 
+#include <linux/bitops.h>
 #include <linux/lockdep.h>
+#include <linux/types.h>
 
 #include "i915_active.h"
 #include "intel_context_types.h"
@@ -160,4 +162,44 @@ static inline struct intel_ring *__intel_context_ring_size(u64 sz)
 	return u64_to_ptr(struct intel_ring, sz);
 }
 
+static inline bool intel_context_is_banned(const struct intel_context *ce)
+{
+	return test_bit(CONTEXT_BANNED, &ce->flags);
+}
+
+static inline bool intel_context_set_banned(struct intel_context *ce)
+{
+	return test_and_set_bit(CONTEXT_BANNED, &ce->flags);
+}
+
+static inline bool
+intel_context_force_single_submission(const struct intel_context *ce)
+{
+	return test_bit(CONTEXT_FORCE_SINGLE_SUBMISSION, &ce->flags);
+}
+
+static inline void
+intel_context_set_single_submission(struct intel_context *ce)
+{
+	__set_bit(CONTEXT_FORCE_SINGLE_SUBMISSION, &ce->flags);
+}
+
+static inline bool
+intel_context_nopreempt(const struct intel_context *ce)
+{
+	return test_bit(CONTEXT_NOPREEMPT, &ce->flags);
+}
+
+static inline void
+intel_context_set_nopreempt(struct intel_context *ce)
+{
+	set_bit(CONTEXT_NOPREEMPT, &ce->flags);
+}
+
+static inline void
+intel_context_clear_nopreempt(struct intel_context *ce)
+{
+	clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
+}
+
 #endif /* __INTEL_CONTEXT_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index d1204cc899a3..597448f6e98b 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -54,8 +54,11 @@ struct intel_context {
 	struct intel_timeline *timeline;
 
 	unsigned long flags;
-#define CONTEXT_ALLOC_BIT 0
-#define CONTEXT_VALID_BIT 1
+#define CONTEXT_ALLOC_BIT		0
+#define CONTEXT_VALID_BIT		1
+#define CONTEXT_BANNED			2
+#define CONTEXT_FORCE_SINGLE_SUBMISSION	3
+#define CONTEXT_NOPREEMPT		4
 
 	u32 *lrc_reg_state;
 	u64 lrc_desc;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 3d1d48bf90cf..5cf5a20b69d2 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1520,9 +1520,9 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 
 		print_request_ring(m, rq);
 
-		if (rq->hw_context->lrc_reg_state) {
+		if (rq->context->lrc_reg_state) {
 			drm_printf(m, "Logical Ring Context:\n");
-			hexdump(m, rq->hw_context->lrc_reg_state, PAGE_SIZE);
+			hexdump(m, rq->context->lrc_reg_state, PAGE_SIZE);
 		}
 	}
 	spin_unlock_irqrestore(&engine->active.lock, flags);
@@ -1583,7 +1583,7 @@ int intel_enable_engine_stats(struct intel_engine_cs *engine)
 
 		for (port = execlists->pending; (rq = *port); port++) {
 			/* Exclude any contexts already counted in active */
-			if (!intel_context_inflight_count(rq->hw_context))
+			if (!intel_context_inflight_count(rq->context))
 				engine->stats.active++;
 		}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index f0078b54b693..f15290265369 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -880,7 +880,7 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
 			list_move(&rq->sched.link, pl);
 			active = rq;
 		} else {
-			struct intel_engine_cs *owner = rq->hw_context->engine;
+			struct intel_engine_cs *owner = rq->context->engine;
 
 			/*
 			 * Decouple the virtual breadcrumb before moving it
@@ -1051,7 +1051,7 @@ static void restore_default_state(struct intel_context *ce,
 static void reset_active(struct i915_request *rq,
 			 struct intel_engine_cs *engine)
 {
-	struct intel_context * const ce = rq->hw_context;
+	struct intel_context * const ce = rq->context;
 	u32 head;
 
 	/*
@@ -1092,11 +1092,11 @@ static inline struct intel_engine_cs *
 __execlists_schedule_in(struct i915_request *rq)
 {
 	struct intel_engine_cs * const engine = rq->engine;
-	struct intel_context * const ce = rq->hw_context;
+	struct intel_context * const ce = rq->context;
 
 	intel_context_get(ce);
 
-	if (unlikely(i915_gem_context_is_banned(ce->gem_context)))
+	if (unlikely(intel_context_is_banned(ce)))
 		reset_active(rq, engine);
 
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
@@ -1124,7 +1124,7 @@ __execlists_schedule_in(struct i915_request *rq)
 static inline struct i915_request *
 execlists_schedule_in(struct i915_request *rq, int idx)
 {
-	struct intel_context * const ce = rq->hw_context;
+	struct intel_context * const ce = rq->context;
 	struct intel_engine_cs *old;
 
 	GEM_BUG_ON(!intel_engine_pm_is_awake(rq->engine));
@@ -1155,7 +1155,7 @@ static inline void
 __execlists_schedule_out(struct i915_request *rq,
 			 struct intel_engine_cs * const engine)
 {
-	struct intel_context * const ce = rq->hw_context;
+	struct intel_context * const ce = rq->context;
 
 	/*
 	 * NB process_csb() is not under the engine->active.lock and hence
@@ -1193,7 +1193,7 @@ __execlists_schedule_out(struct i915_request *rq,
 static inline void
 execlists_schedule_out(struct i915_request *rq)
 {
-	struct intel_context * const ce = rq->hw_context;
+	struct intel_context * const ce = rq->context;
 	struct intel_engine_cs *cur, *old;
 
 	trace_i915_request_out(rq);
@@ -1210,7 +1210,7 @@ execlists_schedule_out(struct i915_request *rq)
 
 static u64 execlists_update_context(struct i915_request *rq)
 {
-	struct intel_context *ce = rq->hw_context;
+	struct intel_context *ce = rq->context;
 	u64 desc = ce->lrc_desc;
 	u32 tail;
 
@@ -1311,13 +1311,13 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 		GEM_BUG_ON(!kref_read(&rq->fence.refcount));
 		GEM_BUG_ON(!i915_request_is_active(rq));
 
-		if (ce == rq->hw_context) {
+		if (ce == rq->context) {
 			GEM_TRACE_ERR("Dup context:%llx in pending[%zd]\n",
 				      ce->timeline->fence_context,
 				      port - execlists->pending);
 			return false;
 		}
-		ce = rq->hw_context;
+		ce = rq->context;
 
 		/* Hold tightly onto the lock to prevent concurrent retires! */
 		if (!spin_trylock_irqsave(&rq->lock, flags))
@@ -1326,8 +1326,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 		if (i915_request_completed(rq))
 			goto unlock;
 
-		if (i915_active_is_idle(&ce->active) &&
-		    !i915_gem_context_is_kernel(ce->gem_context)) {
+		if (i915_active_is_idle(&ce->active) && ce->gem_context) {
 			GEM_TRACE_ERR("Inactive context:%llx in pending[%zd]\n",
 				      ce->timeline->fence_context,
 				      port - execlists->pending);
@@ -1399,7 +1398,7 @@ static void execlists_submit_ports(struct intel_engine_cs *engine)
 static bool ctx_single_port_submission(const struct intel_context *ce)
 {
 	return (IS_ENABLED(CONFIG_DRM_I915_GVT) &&
-		i915_gem_context_force_single_submission(ce->gem_context));
+		intel_context_force_single_submission(ce));
 }
 
 static bool can_merge_ctx(const struct intel_context *prev,
@@ -1435,7 +1434,7 @@ static bool can_merge_rq(const struct i915_request *prev,
 		     (I915_REQUEST_NOPREEMPT | I915_REQUEST_SENTINEL)))
 		return false;
 
-	if (!can_merge_ctx(prev->hw_context, next->hw_context))
+	if (!can_merge_ctx(prev->context, next->context))
 		return false;
 
 	return true;
@@ -1622,7 +1621,7 @@ static unsigned long active_preempt_timeout(struct intel_engine_cs *engine)
 		return 0;
 
 	/* Force a fast reset for terminated contexts (ignoring sysfs!) */
-	if (unlikely(i915_gem_context_is_banned(rq->gem_context)))
+	if (unlikely(intel_context_is_banned(rq->context)))
 		return 1;
 
 	return READ_ONCE(engine->props.preempt_timeout_ms);
@@ -1730,7 +1729,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			 * tendency to ignore us rewinding the TAIL to the
 			 * end of an earlier request.
 			 */
-			last->hw_context->lrc_desc |= CTX_DESC_FORCE_RESTORE;
+			last->context->lrc_desc |= CTX_DESC_FORCE_RESTORE;
 			last = NULL;
 		} else if (need_timeslice(engine, last) &&
 			   timer_expired(&engine->execlists.timer)) {
@@ -1802,7 +1801,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 		GEM_BUG_ON(rq != ve->request);
 		GEM_BUG_ON(rq->engine != &ve->base);
-		GEM_BUG_ON(rq->hw_context != &ve->context);
+		GEM_BUG_ON(rq->context != &ve->context);
 
 		if (rq_prio(rq) >= queue_prio(execlists)) {
 			if (!virtual_matches(ve, rq, engine)) {
@@ -1921,7 +1920,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				 * same LRCA, i.e. we must submit 2 different
 				 * contexts if we submit 2 ELSP.
 				 */
-				if (last->hw_context == rq->hw_context)
+				if (last->context == rq->context)
 					goto done;
 
 				if (i915_request_has_sentinel(last))
@@ -1934,8 +1933,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				 * the same context (even though a different
 				 * request) to the second port.
 				 */
-				if (ctx_single_port_submission(last->hw_context) ||
-				    ctx_single_port_submission(rq->hw_context))
+				if (ctx_single_port_submission(last->context) ||
+				    ctx_single_port_submission(rq->context))
 					goto done;
 
 				merge = false;
@@ -1949,8 +1948,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 				}
 
 				GEM_BUG_ON(last &&
-					   !can_merge_ctx(last->hw_context,
-							  rq->hw_context));
+					   !can_merge_ctx(last->context,
+							  rq->context));
 
 				submit = true;
 				last = rq;
@@ -2564,7 +2563,7 @@ static int execlists_request_alloc(struct i915_request *request)
 {
 	int ret;
 
-	GEM_BUG_ON(!intel_context_is_pinned(request->hw_context));
+	GEM_BUG_ON(!intel_context_is_pinned(request->context));
 
 	/*
 	 * Flush enough space to reduce the likelihood of waiting after
@@ -3071,7 +3070,7 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 	/* We still have requests in-flight; the engine should be active */
 	GEM_BUG_ON(!intel_engine_pm_is_awake(engine));
 
-	ce = rq->hw_context;
+	ce = rq->context;
 	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
 
 	if (i915_request_completed(rq)) {
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index f5b2e7c7e6c8..bbac11abfb03 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -41,27 +41,30 @@ static void rmw_clear_fw(struct intel_uncore *uncore, i915_reg_t reg, u32 clr)
 static void engine_skip_context(struct i915_request *rq)
 {
 	struct intel_engine_cs *engine = rq->engine;
-	struct i915_gem_context *hung_ctx = rq->gem_context;
+	struct intel_context *hung_ctx = rq->context;
 
 	if (!i915_request_is_active(rq))
 		return;
 
 	lockdep_assert_held(&engine->active.lock);
 	list_for_each_entry_continue(rq, &engine->active.requests, sched.link)
-		if (rq->gem_context == hung_ctx)
+		if (rq->context == hung_ctx)
 			i915_request_skip(rq, -EIO);
 }
 
-static void client_mark_guilty(struct drm_i915_file_private *file_priv,
-			       const struct i915_gem_context *ctx)
+static void client_mark_guilty(struct i915_request *rq, bool banned)
 {
-	unsigned int score;
+	struct i915_gem_context *ctx = rq->context->gem_context;
+	struct drm_i915_file_private *file_priv = ctx->file_priv;
 	unsigned long prev_hang;
+	unsigned int score;
 
-	if (i915_gem_context_is_banned(ctx))
+	if (IS_ERR_OR_NULL(file_priv))
+		return;
+
+	score = 0;
+	if (banned)
 		score = I915_CLIENT_SCORE_CONTEXT_BAN;
-	else
-		score = 0;
 
 	prev_hang = xchg(&file_priv->hang_timestamp, jiffies);
 	if (time_before(jiffies, prev_hang + I915_CLIENT_FAST_HANG_JIFFIES))
@@ -76,14 +79,15 @@ static void client_mark_guilty(struct drm_i915_file_private *file_priv,
 	}
 }
 
-static bool context_mark_guilty(struct i915_gem_context *ctx)
+static bool mark_guilty(struct i915_request *rq)
 {
+	struct i915_gem_context *ctx = rq->context->gem_context;
 	unsigned long prev_hang;
 	bool banned;
 	int i;
 
 	if (i915_gem_context_is_closed(ctx)) {
-		i915_gem_context_set_banned(ctx);
+		intel_context_set_banned(rq->context);
 		return true;
 	}
 
@@ -110,18 +114,17 @@ static bool context_mark_guilty(struct i915_gem_context *ctx)
 	if (banned) {
 		DRM_DEBUG_DRIVER("context %s: guilty %d, banned\n",
 				 ctx->name, atomic_read(&ctx->guilty_count));
-		i915_gem_context_set_banned(ctx);
+		intel_context_set_banned(rq->context);
 	}
 
-	if (!IS_ERR_OR_NULL(ctx->file_priv))
-		client_mark_guilty(ctx->file_priv, ctx);
+	client_mark_guilty(rq, banned);
 
 	return banned;
 }
 
-static void context_mark_innocent(struct i915_gem_context *ctx)
+static void mark_innocent(struct i915_request *rq)
 {
-	atomic_inc(&ctx->active_count);
+	atomic_inc(&rq->context->gem_context->active_count);
 }
 
 void __i915_request_reset(struct i915_request *rq, bool guilty)
@@ -137,11 +140,11 @@ void __i915_request_reset(struct i915_request *rq, bool guilty)
 	rcu_read_lock(); /* protect the GEM context */
 	if (guilty) {
 		i915_request_skip(rq, -EIO);
-		if (context_mark_guilty(rq->gem_context))
+		if (mark_guilty(rq))
 			engine_skip_context(rq);
 	} else {
 		dma_fence_set_error(&rq->fence, -EAGAIN);
-		context_mark_innocent(rq->gem_context);
+		mark_innocent(rq);
 	}
 	rcu_read_unlock();
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index b14d69d60e00..d77d69ed0cc8 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1480,7 +1480,7 @@ static inline int mi_set_context(struct i915_request *rq, u32 flags)
 
 	*cs++ = MI_NOOP;
 	*cs++ = MI_SET_CONTEXT;
-	*cs++ = i915_ggtt_offset(rq->hw_context->state) | flags;
+	*cs++ = i915_ggtt_offset(rq->context->state) | flags;
 	/*
 	 * w/a: MI_SET_CONTEXT must always be followed by MI_NOOP
 	 * WaMiSetContext_Hang:snb,ivb,vlv
@@ -1550,7 +1550,7 @@ static int remap_l3_slice(struct i915_request *rq, int slice)
 
 static int remap_l3(struct i915_request *rq)
 {
-	struct i915_gem_context *ctx = rq->gem_context;
+	struct i915_gem_context *ctx = rq->context->gem_context;
 	int i, err;
 
 	if (!ctx->remap_slice)
@@ -1597,7 +1597,7 @@ static int switch_mm(struct i915_request *rq, struct i915_address_space *vm)
 
 static int switch_context(struct i915_request *rq)
 {
-	struct intel_context *ce = rq->hw_context;
+	struct intel_context *ce = rq->context;
 	int ret;
 
 	GEM_BUG_ON(HAS_EXECLISTS(rq->i915));
@@ -1631,7 +1631,7 @@ static int ring_request_alloc(struct i915_request *request)
 {
 	int ret;
 
-	GEM_BUG_ON(!intel_context_is_pinned(request->hw_context));
+	GEM_BUG_ON(!intel_context_is_pinned(request->context));
 	GEM_BUG_ON(i915_request_timeline(request)->has_initial_breadcrumb);
 
 	/*
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index ac8b9116d307..619e34813ade 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1195,13 +1195,13 @@ static int __cancel_active0(struct live_preempt_cancel *arg)
 				__func__, arg->engine->name))
 		return -EIO;
 
-	clear_bit(CONTEXT_BANNED, &arg->a.ctx->flags);
 	rq = spinner_create_request(&arg->a.spin,
 				    arg->a.ctx, arg->engine,
 				    MI_ARB_CHECK);
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
 
+	clear_bit(CONTEXT_BANNED, &rq->context->flags);
 	i915_request_get(rq);
 	i915_request_add(rq);
 	if (!igt_wait_for_spinner(&arg->a.spin, rq)) {
@@ -1209,7 +1209,7 @@ static int __cancel_active0(struct live_preempt_cancel *arg)
 		goto out;
 	}
 
-	i915_gem_context_set_banned(arg->a.ctx);
+	intel_context_set_banned(rq->context);
 	err = intel_engine_pulse(arg->engine);
 	if (err)
 		goto out;
@@ -1244,13 +1244,13 @@ static int __cancel_active1(struct live_preempt_cancel *arg)
 				__func__, arg->engine->name))
 		return -EIO;
 
-	clear_bit(CONTEXT_BANNED, &arg->a.ctx->flags);
 	rq[0] = spinner_create_request(&arg->a.spin,
 				       arg->a.ctx, arg->engine,
 				       MI_NOOP); /* no preemption */
 	if (IS_ERR(rq[0]))
 		return PTR_ERR(rq[0]);
 
+	clear_bit(CONTEXT_BANNED, &rq[0]->context->flags);
 	i915_request_get(rq[0]);
 	i915_request_add(rq[0]);
 	if (!igt_wait_for_spinner(&arg->a.spin, rq[0])) {
@@ -1258,7 +1258,6 @@ static int __cancel_active1(struct live_preempt_cancel *arg)
 		goto out;
 	}
 
-	clear_bit(CONTEXT_BANNED, &arg->b.ctx->flags);
 	rq[1] = spinner_create_request(&arg->b.spin,
 				       arg->b.ctx, arg->engine,
 				       MI_ARB_CHECK);
@@ -1267,13 +1266,14 @@ static int __cancel_active1(struct live_preempt_cancel *arg)
 		goto out;
 	}
 
+	clear_bit(CONTEXT_BANNED, &rq[1]->context->flags);
 	i915_request_get(rq[1]);
 	err = i915_request_await_dma_fence(rq[1], &rq[0]->fence);
 	i915_request_add(rq[1]);
 	if (err)
 		goto out;
 
-	i915_gem_context_set_banned(arg->b.ctx);
+	intel_context_set_banned(rq[1]->context);
 	err = intel_engine_pulse(arg->engine);
 	if (err)
 		goto out;
@@ -1316,13 +1316,13 @@ static int __cancel_queued(struct live_preempt_cancel *arg)
 				__func__, arg->engine->name))
 		return -EIO;
 
-	clear_bit(CONTEXT_BANNED, &arg->a.ctx->flags);
 	rq[0] = spinner_create_request(&arg->a.spin,
 				       arg->a.ctx, arg->engine,
 				       MI_ARB_CHECK);
 	if (IS_ERR(rq[0]))
 		return PTR_ERR(rq[0]);
 
+	clear_bit(CONTEXT_BANNED, &rq[0]->context->flags);
 	i915_request_get(rq[0]);
 	i915_request_add(rq[0]);
 	if (!igt_wait_for_spinner(&arg->a.spin, rq[0])) {
@@ -1330,13 +1330,13 @@ static int __cancel_queued(struct live_preempt_cancel *arg)
 		goto out;
 	}
 
-	clear_bit(CONTEXT_BANNED, &arg->b.ctx->flags);
 	rq[1] = igt_request_alloc(arg->b.ctx, arg->engine);
 	if (IS_ERR(rq[1])) {
 		err = PTR_ERR(rq[1]);
 		goto out;
 	}
 
+	clear_bit(CONTEXT_BANNED, &rq[1]->context->flags);
 	i915_request_get(rq[1]);
 	err = i915_request_await_dma_fence(rq[1], &rq[0]->fence);
 	i915_request_add(rq[1]);
@@ -1357,7 +1357,7 @@ static int __cancel_queued(struct live_preempt_cancel *arg)
 	if (err)
 		goto out;
 
-	i915_gem_context_set_banned(arg->a.ctx);
+	intel_context_set_banned(rq[2]->context);
 	err = intel_engine_pulse(arg->engine);
 	if (err)
 		goto out;
@@ -1404,13 +1404,13 @@ static int __cancel_hostile(struct live_preempt_cancel *arg)
 		return 0;
 
 	GEM_TRACE("%s(%s)\n", __func__, arg->engine->name);
-	clear_bit(CONTEXT_BANNED, &arg->a.ctx->flags);
 	rq = spinner_create_request(&arg->a.spin,
 				    arg->a.ctx, arg->engine,
 				    MI_NOOP); /* preemption disabled */
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
 
+	clear_bit(CONTEXT_BANNED, &rq->context->flags);
 	i915_request_get(rq);
 	i915_request_add(rq);
 	if (!igt_wait_for_spinner(&arg->a.spin, rq)) {
@@ -1418,7 +1418,7 @@ static int __cancel_hostile(struct live_preempt_cancel *arg)
 		goto out;
 	}
 
-	i915_gem_context_set_banned(arg->a.ctx);
+	intel_context_set_banned(rq->context);
 	err = intel_engine_pulse(arg->engine); /* force reset */
 	if (err)
 		goto out;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 44a7d2e736a7..007636221a71 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -217,7 +217,7 @@ static void guc_wq_item_append(struct intel_guc *guc,
 static void guc_add_request(struct intel_guc *guc, struct i915_request *rq)
 {
 	struct intel_engine_cs *engine = rq->engine;
-	u32 ctx_desc = lower_32_bits(rq->hw_context->lrc_desc);
+	u32 ctx_desc = lower_32_bits(rq->context->lrc_desc);
 	u32 ring_tail = intel_ring_set_tail(rq->ring, rq->tail) / sizeof(u64);
 
 	guc_wq_item_append(guc, engine->guc_id, ctx_desc,
@@ -315,7 +315,7 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 		int i;
 
 		priolist_for_each_request_consume(rq, rn, p, i) {
-			if (last && rq->hw_context != last->hw_context) {
+			if (last && rq->context != last->context) {
 				if (port == last_port)
 					goto done;
 
@@ -420,7 +420,7 @@ static void guc_reset(struct intel_engine_cs *engine, bool stalled)
 		stalled = false;
 
 	__i915_request_reset(rq, stalled);
-	intel_lr_context_reset(engine, rq->hw_context, rq->head, stalled);
+	intel_lr_context_reset(engine, rq->context, rq->head, stalled);
 
 out_unlock:
 	spin_unlock_irqrestore(&engine->active.lock, flags);
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 5b2a7d072ec9..228c66534e21 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -59,7 +59,7 @@ static void set_context_pdp_root_pointer(
 static void update_shadow_pdps(struct intel_vgpu_workload *workload)
 {
 	struct drm_i915_gem_object *ctx_obj =
-		workload->req->hw_context->state->obj;
+		workload->req->context->state->obj;
 	struct execlist_ring_context *shadow_ring_context;
 	struct page *page;
 
@@ -130,7 +130,7 @@ static int populate_shadow_context(struct intel_vgpu_workload *workload)
 	struct intel_gvt *gvt = vgpu->gvt;
 	int ring_id = workload->ring_id;
 	struct drm_i915_gem_object *ctx_obj =
-		workload->req->hw_context->state->obj;
+		workload->req->context->state->obj;
 	struct execlist_ring_context *shadow_ring_context;
 	struct page *page;
 	void *dst;
@@ -205,9 +205,9 @@ static int populate_shadow_context(struct intel_vgpu_workload *workload)
 	return 0;
 }
 
-static inline bool is_gvt_request(struct i915_request *req)
+static inline bool is_gvt_request(struct i915_request *rq)
 {
-	return i915_gem_context_force_single_submission(req->gem_context);
+	return intel_context_force_single_submission(rq->context);
 }
 
 static void save_ring_hw_state(struct intel_vgpu *vgpu, int ring_id)
@@ -307,7 +307,7 @@ static int copy_workload_to_ring_buffer(struct intel_vgpu_workload *workload)
 	u32 *cs;
 	int err;
 
-	if (IS_GEN(req->i915, 9) && is_inhibit_context(req->hw_context))
+	if (IS_GEN(req->i915, 9) && is_inhibit_context(req->context))
 		intel_vgpu_restore_inhibit_context(vgpu, req);
 
 	/*
@@ -363,11 +363,10 @@ static void release_shadow_wa_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 }
 
 static void set_context_ppgtt_from_shadow(struct intel_vgpu_workload *workload,
-					  struct i915_gem_context *ctx)
+					  struct intel_context *ce)
 {
 	struct intel_vgpu_mm *mm = workload->shadow_mm;
-	struct i915_ppgtt *ppgtt =
-		i915_vm_to_ppgtt(i915_gem_context_get_vm_rcu(ctx));
+	struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(ce->vm);
 	int i = 0;
 
 	if (mm->ppgtt_mm.root_entry_type == GTT_TYPE_PPGTT_ROOT_L4_ENTRY) {
@@ -380,8 +379,6 @@ static void set_context_ppgtt_from_shadow(struct intel_vgpu_workload *workload,
 			px_dma(pd) = mm->ppgtt_mm.shadow_pdps[i];
 		}
 	}
-
-	i915_vm_put(&ppgtt->vm);
 }
 
 static int
@@ -529,7 +526,7 @@ static void update_wa_ctx_2_shadow_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 		container_of(wa_ctx, struct intel_vgpu_workload, wa_ctx);
 	struct i915_request *rq = workload->req;
 	struct execlist_ring_context *shadow_ring_context =
-		(struct execlist_ring_context *)rq->hw_context->lrc_reg_state;
+		(struct execlist_ring_context *)rq->context->lrc_reg_state;
 
 	shadow_ring_context->bb_per_ctx_ptr.val =
 		(shadow_ring_context->bb_per_ctx_ptr.val &
@@ -628,7 +625,7 @@ static int prepare_workload(struct intel_vgpu_workload *workload)
 
 	update_shadow_pdps(workload);
 
-	set_context_ppgtt_from_shadow(workload, s->shadow[ring]->gem_context);
+	set_context_ppgtt_from_shadow(workload, s->shadow[ring]);
 
 	ret = intel_vgpu_sync_oos_pages(workload->vgpu);
 	if (ret) {
@@ -787,7 +784,7 @@ static void update_guest_context(struct intel_vgpu_workload *workload)
 	struct i915_request *rq = workload->req;
 	struct intel_vgpu *vgpu = workload->vgpu;
 	struct intel_gvt *gvt = vgpu->gvt;
-	struct drm_i915_gem_object *ctx_obj = rq->hw_context->state->obj;
+	struct drm_i915_gem_object *ctx_obj = rq->context->state->obj;
 	struct execlist_ring_context *shadow_ring_context;
 	struct page *page;
 	void *src;
@@ -1232,8 +1229,6 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 	if (IS_ERR(ctx))
 		return PTR_ERR(ctx);
 
-	i915_gem_context_set_force_single_submission(ctx);
-
 	ppgtt = i915_vm_to_ppgtt(i915_gem_context_get_vm_rcu(ctx));
 	i915_context_ppgtt_root_save(s, ppgtt);
 
@@ -1249,6 +1244,8 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 			goto out_shadow_ctx;
 		}
 
+		intel_context_set_single_submission(ce);
+
 		if (!USES_GUC_SUBMISSION(i915)) { /* Max ring buffer size */
 			const unsigned int ring_size = 512 * SZ_4K;
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index f19c678ebefc..6e7010089e23 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1168,19 +1168,18 @@ static int __intel_engines_record_defaults(struct intel_gt *gt)
 		if (!rq)
 			continue;
 
-		GEM_BUG_ON(!test_bit(CONTEXT_ALLOC_BIT,
-				     &rq->hw_context->flags));
-		state = rq->hw_context->state;
+		GEM_BUG_ON(!test_bit(CONTEXT_ALLOC_BIT, &rq->context->flags));
+		state = rq->context->state;
 		if (!state)
 			continue;
 
 		/* Serialise with retirement on another CPU */
-		err = __intel_context_flush_retire(rq->hw_context);
+		err = __intel_context_flush_retire(rq->context);
 		if (err)
 			goto out;
 
 		/* We want to be able to unbind the state from the GGTT */
-		GEM_BUG_ON(intel_context_is_pinned(rq->hw_context));
+		GEM_BUG_ON(intel_context_is_pinned(rq->context));
 
 		/*
 		 * As we will hold a reference to the logical state, it will
@@ -1230,7 +1229,7 @@ static int __intel_engines_record_defaults(struct intel_gt *gt)
 		if (!rq)
 			continue;
 
-		ce = rq->hw_context;
+		ce = rq->context;
 		i915_request_put(rq);
 		intel_context_put(ce);
 	}
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 8374d50c0770..7e2cb063110c 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1221,7 +1221,7 @@ static void error_record_engine_registers(struct i915_gpu_state *error,
 static void record_request(const struct i915_request *request,
 			   struct drm_i915_error_request *erq)
 {
-	const struct i915_gem_context *ctx = request->gem_context;
+	const struct i915_gem_context *ctx = request->context->gem_context;
 
 	erq->flags = request->fence.flags;
 	erq->context = request->fence.context;
@@ -1231,7 +1231,7 @@ static void record_request(const struct i915_request *request,
 	erq->start = i915_ggtt_offset(request->ring->vma);
 	erq->head = request->head;
 	erq->tail = request->tail;
-	erq->pid = ctx->pid ? pid_nr(ctx->pid) : 0;
+	erq->pid = ctx && ctx->pid ? pid_nr(ctx->pid) : 0;
 }
 
 static void engine_record_requests(struct intel_engine_cs *engine,
@@ -1298,7 +1298,10 @@ static void error_record_engine_execlists(const struct intel_engine_cs *engine,
 static bool record_context(struct drm_i915_error_context *e,
 			   const struct i915_request *rq)
 {
-	const struct i915_gem_context *ctx = rq->gem_context;
+	const struct i915_gem_context *ctx = rq->context->gem_context;
+
+	if (!ctx)
+		return false;
 
 	if (ctx->pid) {
 		struct task_struct *task;
@@ -1452,7 +1455,7 @@ gem_record_rings(struct i915_gpu_state *error, struct compress *compress)
 		capture = request_record_user_bo(request, ee, capture);
 
 		capture = capture_vma(capture,
-				      request->hw_context->state,
+				      request->context->state,
 				      &ee->ctx);
 
 		capture = capture_vma(capture,
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 3c163a9d69a9..9d4733927a2c 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3112,7 +3112,7 @@ static void i915_perf_enable_locked(struct i915_perf_stream *stream)
 		stream->ops->enable(stream);
 
 	if (stream->hold_preemption)
-		i915_gem_context_set_nopreempt(stream->ctx);
+		intel_context_set_nopreempt(stream->pinned_ctx);
 }
 
 /**
@@ -3138,7 +3138,7 @@ static void i915_perf_disable_locked(struct i915_perf_stream *stream)
 	stream->enabled = false;
 
 	if (stream->hold_preemption)
-		i915_gem_context_clear_nopreempt(stream->ctx);
+		intel_context_clear_nopreempt(stream->pinned_ctx);
 
 	if (stream->ops->disable)
 		stream->ops->disable(stream);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 269470d3527a..fdb7cb60d08f 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -62,6 +62,8 @@ static const char *i915_fence_get_driver_name(struct dma_fence *fence)
 
 static const char *i915_fence_get_timeline_name(struct dma_fence *fence)
 {
+	const struct i915_gem_context *ctx;
+
 	/*
 	 * The timeline struct (as part of the ppgtt underneath a context)
 	 * may be freed when the request is no longer in use by the GPU.
@@ -74,7 +76,11 @@ static const char *i915_fence_get_timeline_name(struct dma_fence *fence)
 	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
 		return "signaled";
 
-	return to_request(fence)->gem_context->name ?: "[" DRIVER_NAME "]";
+	ctx = to_request(fence)->context->gem_context;
+	if (!ctx)
+		return "[" DRIVER_NAME "]";
+
+	return ctx->name;
 }
 
 static bool i915_fence_signaled(struct dma_fence *fence)
@@ -269,8 +275,8 @@ bool i915_request_retire(struct i915_request *rq)
 	remove_from_client(rq);
 	list_del(&rq->link);
 
-	intel_context_exit(rq->hw_context);
-	intel_context_unpin(rq->hw_context);
+	intel_context_exit(rq->context);
+	intel_context_unpin(rq->context);
 
 	free_capture_list(rq);
 	i915_sched_node_fini(&rq->sched);
@@ -369,7 +375,7 @@ bool __i915_request_submit(struct i915_request *request)
 	if (i915_request_completed(request))
 		goto xfer;
 
-	if (i915_gem_context_is_banned(request->gem_context))
+	if (intel_context_is_banned(request->context))
 		i915_request_skip(request, -EIO);
 
 	/*
@@ -648,8 +654,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 		goto err_free;
 
 	rq->i915 = ce->engine->i915;
-	rq->hw_context = ce;
-	rq->gem_context = ce->gem_context;
+	rq->context = ce;
 	rq->engine = ce->engine;
 	rq->ring = ce->ring;
 	rq->execution_mask = ce->engine->mask;
@@ -917,7 +922,7 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
 						       &from->submit,
 						       I915_FENCE_GFP);
 	} else if (intel_engine_has_semaphores(to->engine) &&
-		   to->gem_context->sched.priority >= I915_PRIORITY_NORMAL) {
+		   to->context->gem_context->sched.priority >= I915_PRIORITY_NORMAL) {
 		ret = emit_semaphore_wait(to, from, I915_FENCE_GFP);
 	} else {
 		ret = i915_sw_fence_await_dma_fence(&to->submit,
@@ -1298,7 +1303,7 @@ void __i915_request_queue(struct i915_request *rq,
 
 void i915_request_add(struct i915_request *rq)
 {
-	struct i915_sched_attr attr = rq->gem_context->sched;
+	struct i915_sched_attr attr = rq->context->gem_context->sched;
 	struct intel_timeline * const tl = i915_request_timeline(rq);
 	struct i915_request *prev;
 
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index aa38290eea3d..facbcd6f3cd1 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -115,9 +115,8 @@ struct i915_request {
 	 * i915_request_free() will then decrement the refcount on the
 	 * context.
 	 */
-	struct i915_gem_context *gem_context;
 	struct intel_engine_cs *engine;
-	struct intel_context *hw_context;
+	struct intel_context *context;
 	struct intel_ring *ring;
 	struct intel_timeline __rcu *timeline;
 	struct list_head signal_link;
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 2bc2aa46a1b9..bf87c70bfdd9 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -213,7 +213,7 @@ static void kick_submission(struct intel_engine_cs *engine,
 	 * If we are already the currently executing context, don't
 	 * bother evaluating if we should preempt ourselves.
 	 */
-	if (inflight->hw_context == rq->hw_context)
+	if (inflight->context == rq->context)
 		goto unlock;
 
 	engine->execlists.queue_priority_hint = prio;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
