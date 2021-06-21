Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 684CB3AE846
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 13:41:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7684389DF9;
	Mon, 21 Jun 2021 11:41:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A1AF89DE3
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 11:41:28 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Jun 2021 13:41:23 +0200
Message-Id: <20210621114123.3131534-3-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210621114123.3131534-1-maarten.lankhorst@linux.intel.com>
References: <20210621114123.3131534-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Remove
 intel_context->ops->(pre_pin/post_unpin)
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

Now that intel_context->pin_mutex is gone, the reason for splitting
pre_pin/post_unpin ops is also gone. Remove those ops, and handle
this detail inside guc/execlists submission only.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 19 ++-----
 drivers/gpu/drm/i915/gt/intel_context_types.h |  4 +-
 .../drm/i915/gt/intel_execlists_submission.c  | 50 ++++++++-----------
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 16 +-----
 drivers/gpu/drm/i915/gt/mock_engine.c         | 14 +-----
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 25 ++++++----
 6 files changed, 44 insertions(+), 84 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index e6dab37c4266..b630c1968794 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -207,8 +207,6 @@ static void intel_context_post_unpin(struct intel_context *ce)
 int __intel_context_do_pin_ww(struct intel_context *ce,
 			      struct i915_gem_ww_ctx *ww)
 {
-	bool handoff = false;
-	void *vaddr;
 	int err;
 
 	err = intel_context_alloc_state(ce);
@@ -229,40 +227,32 @@ int __intel_context_do_pin_ww(struct intel_context *ce,
 	if (err)
 		goto err_ctx_unpin;
 
-	err = ce->ops->pre_pin(ce, ww, &vaddr);
-	if (err)
-		goto err_release;
-
 	if (unlikely(intel_context_is_closed(ce))) {
 		err = -ENOENT;
-		goto err_post_unpin;
+		goto err_release;
 	}
 
 	if (likely(!atomic_add_unless(&ce->pin_count, 1, 0))) {
 		err = intel_context_active_acquire(ce);
 		if (unlikely(err))
-			goto err_post_unpin;
+			goto err_release;
 
-		err = ce->ops->pin(ce, vaddr);
+		err = ce->ops->pin(ce, ww);
 		if (err) {
 			intel_context_active_release(ce);
-			goto err_post_unpin;
+			goto err_release;
 		}
 
 		CE_TRACE(ce, "pin ring:{start:%08x, head:%04x, tail:%04x}\n",
 			 i915_ggtt_offset(ce->ring->vma),
 			 ce->ring->head, ce->ring->tail);
 
-		handoff = true;
 		smp_mb__before_atomic(); /* flush pin before it is visible */
 		atomic_inc(&ce->pin_count);
 	}
 
 	GEM_BUG_ON(!intel_context_is_pinned(ce)); /* no overflow! */
 
-err_post_unpin:
-	if (!handoff)
-		ce->ops->post_unpin(ce);
 err_release:
 	i915_active_release(&ce->active);
 err_ctx_unpin:
@@ -303,7 +293,6 @@ void intel_context_unpin(struct intel_context *ce)
 
 	CE_TRACE(ce, "unpin\n");
 	ce->ops->unpin(ce);
-	ce->ops->post_unpin(ce);
 
 	/*
 	 * Once released, we may asynchronously drop the active reference.
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index b104d5e9d3b6..e10057901c6c 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -35,10 +35,8 @@ struct intel_context_ops {
 
 	int (*alloc)(struct intel_context *ce);
 
-	int (*pre_pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void **vaddr);
-	int (*pin)(struct intel_context *ce, void *vaddr);
+	int (*pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww);
 	void (*unpin)(struct intel_context *ce);
-	void (*post_unpin)(struct intel_context *ce);
 
 	void (*enter)(struct intel_context *ce);
 	void (*exit)(struct intel_context *ce);
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index cdb2126a159a..6a1a45ffe816 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2509,35 +2509,38 @@ static void execlists_submit_request(struct i915_request *request)
 }
 
 static int
-__execlists_context_pre_pin(struct intel_context *ce,
-			    struct intel_engine_cs *engine,
-			    struct i915_gem_ww_ctx *ww, void **vaddr)
+__execlists_context_pin(struct intel_context *ce,
+			struct intel_engine_cs *engine,
+			struct i915_gem_ww_ctx *ww)
 {
 	int err;
+	void *vaddr;
 
-	err = lrc_pre_pin(ce, engine, ww, vaddr);
+	err = lrc_pre_pin(ce, engine, ww, &vaddr);
 	if (err)
 		return err;
 
 	if (!__test_and_set_bit(CONTEXT_INIT_BIT, &ce->flags)) {
-		lrc_init_state(ce, engine, *vaddr);
+		lrc_init_state(ce, engine, vaddr);
 
 		 __i915_gem_object_flush_map(ce->state->obj, 0, engine->context_size);
 	}
 
-	return 0;
+	err = lrc_pin(ce, ce->engine, vaddr);
+	if (err)
+		lrc_post_unpin(ce);
+	return err;
 }
 
-static int execlists_context_pre_pin(struct intel_context *ce,
-				     struct i915_gem_ww_ctx *ww,
-				     void **vaddr)
+static int execlists_context_pin(struct intel_context *ce, struct i915_gem_ww_ctx *ww)
 {
-	return __execlists_context_pre_pin(ce, ce->engine, ww, vaddr);
+	return __execlists_context_pin(ce, ce->engine, ww);
 }
 
-static int execlists_context_pin(struct intel_context *ce, void *vaddr)
+static void execlists_context_unpin(struct intel_context *ce)
 {
-	return lrc_pin(ce, ce->engine, vaddr);
+	lrc_unpin(ce);
+	lrc_post_unpin(ce);
 }
 
 static int execlists_context_alloc(struct intel_context *ce)
@@ -2545,15 +2548,14 @@ static int execlists_context_alloc(struct intel_context *ce)
 	return lrc_alloc(ce, ce->engine);
 }
 
+
 static const struct intel_context_ops execlists_context_ops = {
 	.flags = COPS_HAS_INFLIGHT,
 
 	.alloc = execlists_context_alloc,
 
-	.pre_pin = execlists_context_pre_pin,
 	.pin = execlists_context_pin,
-	.unpin = lrc_unpin,
-	.post_unpin = lrc_post_unpin,
+	.unpin = execlists_context_unpin,
 
 	.enter = intel_context_enter_engine,
 	.exit = intel_context_exit_engine,
@@ -3467,21 +3469,11 @@ static int virtual_context_alloc(struct intel_context *ce)
 	return lrc_alloc(ce, ve->siblings[0]);
 }
 
-static int virtual_context_pre_pin(struct intel_context *ce,
-				   struct i915_gem_ww_ctx *ww,
-				   void **vaddr)
-{
-	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
-
-	 /* Note: we must use a real engine class for setting up reg state */
-	return __execlists_context_pre_pin(ce, ve->siblings[0], ww, vaddr);
-}
-
-static int virtual_context_pin(struct intel_context *ce, void *vaddr)
+static int virtual_context_pin(struct intel_context *ce, struct i915_gem_ww_ctx *ww)
 {
 	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
 
-	return lrc_pin(ce, ve->siblings[0], vaddr);
+	return __execlists_context_pin(ce, ve->siblings[0], ww);
 }
 
 static void virtual_context_enter(struct intel_context *ce)
@@ -3511,10 +3503,8 @@ static const struct intel_context_ops virtual_context_ops = {
 
 	.alloc = virtual_context_alloc,
 
-	.pre_pin = virtual_context_pre_pin,
 	.pin = virtual_context_pin,
-	.unpin = lrc_unpin,
-	.post_unpin = lrc_post_unpin,
+	.unpin = execlists_context_unpin,
 
 	.enter = virtual_context_enter,
 	.exit = virtual_context_exit,
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 5d42a12ef3d6..85b6a4d60e07 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -467,9 +467,8 @@ static int ring_context_init_default_state(struct intel_context *ce,
 	return 0;
 }
 
-static int ring_context_pre_pin(struct intel_context *ce,
-				struct i915_gem_ww_ctx *ww,
-				void **unused)
+static int ring_context_pin(struct intel_context *ce,
+			    struct i915_gem_ww_ctx *ww)
 {
 	struct i915_address_space *vm;
 	int err = 0;
@@ -498,10 +497,6 @@ static void __context_unpin_ppgtt(struct intel_context *ce)
 }
 
 static void ring_context_unpin(struct intel_context *ce)
-{
-}
-
-static void ring_context_post_unpin(struct intel_context *ce)
 {
 	__context_unpin_ppgtt(ce);
 }
@@ -572,11 +567,6 @@ static int ring_context_alloc(struct intel_context *ce)
 	return 0;
 }
 
-static int ring_context_pin(struct intel_context *ce, void *unused)
-{
-	return 0;
-}
-
 static void ring_context_reset(struct intel_context *ce)
 {
 	intel_ring_reset(ce->ring, ce->ring->emit);
@@ -586,10 +576,8 @@ static void ring_context_reset(struct intel_context *ce)
 static const struct intel_context_ops ring_context_ops = {
 	.alloc = ring_context_alloc,
 
-	.pre_pin = ring_context_pre_pin,
 	.pin = ring_context_pin,
 	.unpin = ring_context_unpin,
-	.post_unpin = ring_context_post_unpin,
 
 	.enter = intel_context_enter_engine,
 	.exit = intel_context_exit_engine,
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index 68970398e4ef..3e4f6ef705c9 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -123,10 +123,6 @@ static void mock_context_unpin(struct intel_context *ce)
 {
 }
 
-static void mock_context_post_unpin(struct intel_context *ce)
-{
-}
-
 static void mock_context_destroy(struct kref *ref)
 {
 	struct intel_context *ce = container_of(ref, typeof(*ce), ref);
@@ -166,13 +162,7 @@ static int mock_context_alloc(struct intel_context *ce)
 	return 0;
 }
 
-static int mock_context_pre_pin(struct intel_context *ce,
-				struct i915_gem_ww_ctx *ww, void **unused)
-{
-	return 0;
-}
-
-static int mock_context_pin(struct intel_context *ce, void *unused)
+static int mock_context_pin(struct intel_context *ce, struct i915_gem_ww_ctx *ww)
 {
 	return 0;
 }
@@ -184,10 +174,8 @@ static void mock_context_reset(struct intel_context *ce)
 static const struct intel_context_ops mock_context_ops = {
 	.alloc = mock_context_alloc,
 
-	.pre_pin = mock_context_pre_pin,
 	.pin = mock_context_pin,
 	.unpin = mock_context_unpin,
-	.post_unpin = mock_context_post_unpin,
 
 	.enter = intel_context_enter_engine,
 	.exit = intel_context_exit_engine,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index e9c237b18692..5b26c0103429 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -437,25 +437,32 @@ static int guc_context_alloc(struct intel_context *ce)
 	return lrc_alloc(ce, ce->engine);
 }
 
-static int guc_context_pre_pin(struct intel_context *ce,
-			       struct i915_gem_ww_ctx *ww,
-			       void **vaddr)
+static int guc_context_pin(struct intel_context *ce, struct i915_gem_ww_ctx *ww)
 {
-	return lrc_pre_pin(ce, ce->engine, ww, vaddr);
+	void *vaddr;
+	int err;
+
+	err = lrc_pre_pin(ce, ce->engine, ww, &vaddr);
+	if (err)
+		return err;
+
+	err = lrc_pin(ce, ce->engine, vaddr);
+	if (err)
+		lrc_post_unpin(ce);
+	return err;
 }
 
-static int guc_context_pin(struct intel_context *ce, void *vaddr)
+static void guc_context_unpin(struct intel_context *ce)
 {
-	return lrc_pin(ce, ce->engine, vaddr);
+	lrc_unpin(ce);
+	lrc_post_unpin(ce);
 }
 
 static const struct intel_context_ops guc_context_ops = {
 	.alloc = guc_context_alloc,
 
-	.pre_pin = guc_context_pre_pin,
 	.pin = guc_context_pin,
-	.unpin = lrc_unpin,
-	.post_unpin = lrc_post_unpin,
+	.unpin = guc_context_unpin,
 
 	.enter = intel_context_enter_engine,
 	.exit = intel_context_exit_engine,
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
