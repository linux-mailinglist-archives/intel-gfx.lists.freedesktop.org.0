Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DF528F101
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 13:26:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA2576EC77;
	Thu, 15 Oct 2020 11:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE0226EC71
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 11:26:34 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 13:25:41 +0200
Message-Id: <20201015112627.1142745-18-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
References: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 17/63] drm/i915: Populate logical context
 during first pin.
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

This allows us to remove pin_map from state allocation, which saves
us a few retry loops. We won't need this until first pin, anyway.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context_types.h |  13 ++-
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 107 +++++++++---------
 2 files changed, 62 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 552cb57a2e8c..bebf52868563 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -64,12 +64,13 @@ struct intel_context {
 	unsigned long flags;
 #define CONTEXT_BARRIER_BIT		0
 #define CONTEXT_ALLOC_BIT		1
-#define CONTEXT_VALID_BIT		2
-#define CONTEXT_CLOSED_BIT		3
-#define CONTEXT_USE_SEMAPHORES		4
-#define CONTEXT_BANNED			5
-#define CONTEXT_FORCE_SINGLE_SUBMISSION	6
-#define CONTEXT_NOPREEMPT		7
+#define CONTEXT_INIT_BIT		2
+#define CONTEXT_VALID_BIT		3
+#define CONTEXT_CLOSED_BIT		4
+#define CONTEXT_USE_SEMAPHORES		5
+#define CONTEXT_BANNED			6
+#define CONTEXT_FORCE_SINGLE_SUBMISSION	7
+#define CONTEXT_NOPREEMPT		8
 
 	u32 *lrc_reg_state;
 	union {
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 287537089c77..39cb45ccb506 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3525,9 +3525,39 @@ __execlists_update_reg_state(const struct intel_context *ce,
 	}
 }
 
+static void populate_lr_context(struct intel_context *ce,
+				struct intel_engine_cs *engine,
+				void *vaddr)
+{
+	bool inhibit = true;
+	struct drm_i915_gem_object *ctx_obj = ce->state->obj;
+
+	set_redzone(vaddr, engine);
+
+	if (engine->default_state) {
+		shmem_read(engine->default_state, 0,
+			   vaddr, engine->context_size);
+		__set_bit(CONTEXT_VALID_BIT, &ce->flags);
+		inhibit = false;
+	}
+
+	/* Clear the ppHWSP (inc. per-context counters) */
+	memset(vaddr, 0, PAGE_SIZE);
+
+	/*
+	 * The second page of the context object contains some registers which
+	 * must be set up prior to the first execution.
+	 */
+	execlists_init_reg_state(vaddr + LRC_STATE_OFFSET,
+				 ce, engine, ce->ring, inhibit);
+
+	__i915_gem_object_flush_map(ctx_obj, 0, engine->context_size);
+}
+
 static int
-execlists_context_pre_pin(struct intel_context *ce,
-			  struct i915_gem_ww_ctx *ww, void **vaddr)
+__execlists_context_pre_pin(struct intel_context *ce,
+			    struct intel_engine_cs *engine,
+			    struct i915_gem_ww_ctx *ww, void **vaddr)
 {
 	GEM_BUG_ON(!ce->state);
 	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
@@ -3535,8 +3565,20 @@ execlists_context_pre_pin(struct intel_context *ce,
 	*vaddr = i915_gem_object_pin_map(ce->state->obj,
 					i915_coherent_map_type(ce->engine->i915) |
 					I915_MAP_OVERRIDE);
+	if (IS_ERR(*vaddr))
+		return PTR_ERR(*vaddr);
+
+	if (!__test_and_set_bit(CONTEXT_INIT_BIT, &ce->flags))
+		populate_lr_context(ce, engine, *vaddr);
+
+	return 0;
+}
 
-	return PTR_ERR_OR_ZERO(*vaddr);
+static int
+execlists_context_pre_pin(struct intel_context *ce,
+			  struct i915_gem_ww_ctx *ww, void **vaddr)
+{
+	return __execlists_context_pre_pin(ce, ce->engine, ww, vaddr);
 }
 
 static int
@@ -5331,45 +5373,6 @@ static void execlists_init_reg_state(u32 *regs,
 	__reset_stop_ring(regs, engine);
 }
 
-static int
-populate_lr_context(struct intel_context *ce,
-		    struct drm_i915_gem_object *ctx_obj,
-		    struct intel_engine_cs *engine,
-		    struct intel_ring *ring)
-{
-	bool inhibit = true;
-	void *vaddr;
-
-	vaddr = i915_gem_object_pin_map(ctx_obj, I915_MAP_WB);
-	if (IS_ERR(vaddr)) {
-		drm_dbg(&engine->i915->drm, "Could not map object pages!\n");
-		return PTR_ERR(vaddr);
-	}
-
-	set_redzone(vaddr, engine);
-
-	if (engine->default_state) {
-		shmem_read(engine->default_state, 0,
-			   vaddr, engine->context_size);
-		__set_bit(CONTEXT_VALID_BIT, &ce->flags);
-		inhibit = false;
-	}
-
-	/* Clear the ppHWSP (inc. per-context counters) */
-	memset(vaddr, 0, PAGE_SIZE);
-
-	/*
-	 * The second page of the context object contains some registers which
-	 * must be set up prior to the first execution.
-	 */
-	execlists_init_reg_state(vaddr + LRC_STATE_OFFSET,
-				 ce, engine, ring, inhibit);
-
-	__i915_gem_object_flush_map(ctx_obj, 0, engine->context_size);
-	i915_gem_object_unpin_map(ctx_obj);
-	return 0;
-}
-
 static struct intel_timeline *pinned_timeline(struct intel_context *ce)
 {
 	struct intel_timeline *tl = fetch_and_zero(&ce->timeline);
@@ -5433,20 +5436,11 @@ static int __execlists_context_alloc(struct intel_context *ce,
 		goto error_deref_obj;
 	}
 
-	ret = populate_lr_context(ce, ctx_obj, engine, ring);
-	if (ret) {
-		drm_dbg(&engine->i915->drm,
-			"Failed to populate LRC: %d\n", ret);
-		goto error_ring_free;
-	}
-
 	ce->ring = ring;
 	ce->state = vma;
 
 	return 0;
 
-error_ring_free:
-	intel_ring_put(ring);
 error_deref_obj:
 	i915_gem_object_put(ctx_obj);
 	return ret;
@@ -5524,6 +5518,15 @@ static int virtual_context_alloc(struct intel_context *ce)
 	return __execlists_context_alloc(ce, ve->siblings[0]);
 }
 
+static int
+virtual_context_pre_pin(struct intel_context *ce,
+			  struct i915_gem_ww_ctx *ww, void **vaddr)
+{
+	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
+
+	return __execlists_context_pre_pin(ce, ve->siblings[0], ww, vaddr);
+}
+
 static int virtual_context_pin(struct intel_context *ce, void *vaddr)
 {
 	struct virtual_engine *ve = container_of(ce, typeof(*ve), context);
@@ -5557,7 +5560,7 @@ static void virtual_context_exit(struct intel_context *ce)
 static const struct intel_context_ops virtual_context_ops = {
 	.alloc = virtual_context_alloc,
 
-	.pre_pin = execlists_context_pre_pin,
+	.pre_pin = virtual_context_pre_pin,
 	.pin = virtual_context_pin,
 	.unpin = execlists_context_unpin,
 	.post_unpin = execlists_context_post_unpin,
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
