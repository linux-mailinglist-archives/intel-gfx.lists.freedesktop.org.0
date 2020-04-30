Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF57E1BF667
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 13:19:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 285936EB92;
	Thu, 30 Apr 2020 11:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFB186EB91
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 11:18:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21068959-1500050 
 for multiple; Thu, 30 Apr 2020 12:18:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 12:18:11 +0100
Message-Id: <20200430111819.10262-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915/gt: Stop holding onto the
 pinned_default_state
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

As we only restore the default context state upon banning a context, we
only need enough of the state to run the ring and nothing more. That is
we only need our bare protocontext.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_pm.c    | 14 +-----
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  1 -
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 14 ++----
 drivers/gpu/drm/i915/gt/selftest_context.c   | 11 ++--
 drivers/gpu/drm/i915/gt/selftest_lrc.c       | 53 +++++++++++++++-----
 5 files changed, 47 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 446e35ac0224..cf46076c59b2 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -22,18 +22,11 @@ static int __engine_unpark(struct intel_wakeref *wf)
 	struct intel_engine_cs *engine =
 		container_of(wf, typeof(*engine), wakeref);
 	struct intel_context *ce;
-	void *map;
 
 	ENGINE_TRACE(engine, "\n");
 
 	intel_gt_pm_get(engine->gt);
 
-	/* Pin the default state for fast resets from atomic context. */
-	map = NULL;
-	if (engine->default_state)
-		map = shmem_pin_map(engine->default_state);
-	engine->pinned_default_state = map;
-
 	/* Discard stale context state from across idling */
 	ce = engine->kernel_context;
 	if (ce) {
@@ -43,6 +36,7 @@ static int __engine_unpark(struct intel_wakeref *wf)
 		if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM) && ce->state) {
 			struct drm_i915_gem_object *obj = ce->state->obj;
 			int type = i915_coherent_map_type(engine->i915);
+			void *map;
 
 			map = i915_gem_object_pin_map(obj, type);
 			if (!IS_ERR(map)) {
@@ -262,12 +256,6 @@ static int __engine_park(struct intel_wakeref *wf)
 	if (engine->park)
 		engine->park(engine);
 
-	if (engine->pinned_default_state) {
-		shmem_unpin_map(engine->default_state,
-				engine->pinned_default_state);
-		engine->pinned_default_state = NULL;
-	}
-
 	engine->execlists.no_priolist = false;
 
 	/* While gt calls i915_vma_parked(), we have to break the lock cycle */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index f760e2ef285b..68a382229b4a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -340,7 +340,6 @@ struct intel_engine_cs {
 	unsigned long wakeref_serial;
 	struct intel_wakeref wakeref;
 	struct file *default_state;
-	void *pinned_default_state;
 
 	struct {
 		struct intel_ring *ring;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4311b12542fb..dc5517c85df1 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1271,14 +1271,11 @@ execlists_check_context(const struct intel_context *ce,
 static void restore_default_state(struct intel_context *ce,
 				  struct intel_engine_cs *engine)
 {
-	u32 *regs = ce->lrc_reg_state;
+	u32 *regs;
 
-	if (engine->pinned_default_state)
-		memcpy(regs, /* skip restoring the vanilla PPHWSP */
-		       engine->pinned_default_state + LRC_STATE_OFFSET,
-		       engine->context_size - PAGE_SIZE);
+	regs = memset(ce->lrc_reg_state, 0, engine->context_size - PAGE_SIZE);
+	execlists_init_reg_state(regs, ce, engine, ce->ring, true);
 
-	execlists_init_reg_state(regs, ce, engine, ce->ring, false);
 	ce->runtime.last = intel_context_get_runtime(ce);
 }
 
@@ -4166,8 +4163,6 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 	 * image back to the expected values to skip over the guilty request.
 	 */
 	__i915_request_reset(rq, stalled);
-	if (!stalled)
-		goto out_replay;
 
 	/*
 	 * We want a simple context + ring to execute the breadcrumb update.
@@ -4177,9 +4172,6 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 	 * future request will be after userspace has had the opportunity
 	 * to recreate its own state.
 	 */
-	GEM_BUG_ON(!intel_context_is_pinned(ce));
-	restore_default_state(ce, engine);
-
 out_replay:
 	ENGINE_TRACE(engine, "replay {head:%04x, tail:%04x}\n",
 		     head, ce->ring->tail);
diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
index b8ed3cbe1277..a56dff3b157a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_context.c
+++ b/drivers/gpu/drm/i915/gt/selftest_context.c
@@ -154,10 +154,7 @@ static int live_context_size(void *arg)
 	 */
 
 	for_each_engine(engine, gt, id) {
-		struct {
-			struct file *state;
-			void *pinned;
-		} saved;
+		struct file *saved;
 
 		if (!engine->context_size)
 			continue;
@@ -171,8 +168,7 @@ static int live_context_size(void *arg)
 		 * active state is sufficient, we are only checking that we
 		 * don't use more than we planned.
 		 */
-		saved.state = fetch_and_zero(&engine->default_state);
-		saved.pinned = fetch_and_zero(&engine->pinned_default_state);
+		saved = fetch_and_zero(&engine->default_state);
 
 		/* Overlaps with the execlists redzone */
 		engine->context_size += I915_GTT_PAGE_SIZE;
@@ -181,8 +177,7 @@ static int live_context_size(void *arg)
 
 		engine->context_size -= I915_GTT_PAGE_SIZE;
 
-		engine->pinned_default_state = saved.pinned;
-		engine->default_state = saved.state;
+		engine->default_state = saved;
 
 		intel_engine_pm_put(engine);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 7529df92f6a2..d946c0521dbc 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -5206,6 +5206,7 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
 {
 	struct i915_vma *batch;
 	u32 dw, x, *cs, *hw;
+	u32 *defaults;
 
 	batch = create_user_vma(ce->vm, SZ_64K);
 	if (IS_ERR(batch))
@@ -5217,9 +5218,16 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
 		return ERR_CAST(cs);
 	}
 
+	defaults = shmem_pin_map(ce->engine->default_state);
+	if (!defaults) {
+		i915_gem_object_unpin_map(batch->obj);
+		i915_vma_put(batch);
+		return ERR_PTR(-ENOMEM);
+	}
+
 	x = 0;
 	dw = 0;
-	hw = ce->engine->pinned_default_state;
+	hw = defaults;
 	hw += LRC_STATE_OFFSET / sizeof(*hw);
 	do {
 		u32 len = hw[dw] & 0x7f;
@@ -5250,6 +5258,8 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
 
 	*cs++ = MI_BATCH_BUFFER_END;
 
+	shmem_unpin_map(ce->engine->default_state, defaults);
+
 	i915_gem_object_flush_map(batch->obj);
 	i915_gem_object_unpin_map(batch->obj);
 
@@ -5360,6 +5370,7 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
 {
 	struct i915_vma *batch;
 	u32 dw, *cs, *hw;
+	u32 *defaults;
 
 	batch = create_user_vma(ce->vm, SZ_64K);
 	if (IS_ERR(batch))
@@ -5371,8 +5382,15 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
 		return ERR_CAST(cs);
 	}
 
+	defaults = shmem_pin_map(ce->engine->default_state);
+	if (!defaults) {
+		i915_gem_object_unpin_map(batch->obj);
+		i915_vma_put(batch);
+		return ERR_PTR(-ENOMEM);
+	}
+
 	dw = 0;
-	hw = ce->engine->pinned_default_state;
+	hw = defaults;
 	hw += LRC_STATE_OFFSET / sizeof(*hw);
 	do {
 		u32 len = hw[dw] & 0x7f;
@@ -5400,6 +5418,8 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
 
 	*cs++ = MI_BATCH_BUFFER_END;
 
+	shmem_unpin_map(ce->engine->default_state, defaults);
+
 	i915_gem_object_flush_map(batch->obj);
 	i915_gem_object_unpin_map(batch->obj);
 
@@ -5467,6 +5487,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
 {
 	u32 x, dw, *hw, *lrc;
 	u32 *A[2], *B[2];
+	u32 *defaults;
 	int err = 0;
 
 	A[0] = i915_gem_object_pin_map(ref[0]->obj, I915_MAP_WC);
@@ -5499,9 +5520,15 @@ static int compare_isolation(struct intel_engine_cs *engine,
 	}
 	lrc += LRC_STATE_OFFSET / sizeof(*hw);
 
+	defaults = shmem_pin_map(ce->engine->default_state);
+	if (!defaults) {
+		err = -ENOMEM;
+		goto err_lrc;
+	}
+
 	x = 0;
 	dw = 0;
-	hw = engine->pinned_default_state;
+	hw = defaults;
 	hw += LRC_STATE_OFFSET / sizeof(*hw);
 	do {
 		u32 len = hw[dw] & 0x7f;
@@ -5541,6 +5568,8 @@ static int compare_isolation(struct intel_engine_cs *engine,
 	} while (dw < PAGE_SIZE / sizeof(u32) &&
 		 (hw[dw] & ~BIT(0)) != MI_BATCH_BUFFER_END);
 
+	shmem_unpin_map(ce->engine->default_state, defaults);
+err_lrc:
 	i915_gem_object_unpin_map(ce->state->obj);
 err_B1:
 	i915_gem_object_unpin_map(result[1]->obj);
@@ -5690,18 +5719,16 @@ static int live_lrc_isolation(void *arg)
 			continue;
 
 		intel_engine_pm_get(engine);
-		if (engine->pinned_default_state) {
-			for (i = 0; i < ARRAY_SIZE(poison); i++) {
-				int result;
+		for (i = 0; i < ARRAY_SIZE(poison); i++) {
+			int result;
 
-				result = __lrc_isolation(engine, poison[i]);
-				if (result && !err)
-					err = result;
+			result = __lrc_isolation(engine, poison[i]);
+			if (result && !err)
+				err = result;
 
-				result = __lrc_isolation(engine, ~poison[i]);
-				if (result && !err)
-					err = result;
-			}
+			result = __lrc_isolation(engine, ~poison[i]);
+			if (result && !err)
+				err = result;
 		}
 		intel_engine_pm_put(engine);
 		if (igt_flush_test(gt->i915)) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
