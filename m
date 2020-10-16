Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AED7290338
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 12:45:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E091E6EB22;
	Fri, 16 Oct 2020 10:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48C7B6EB1B
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 10:44:51 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 12:44:08 +0200
Message-Id: <20201016104444.1492028-26-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 25/61] drm/i915: Make
 intel_init_workaround_bb more compatible with ww locking.
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

Make creation separate from pinning, in order to take the lock only
once, and pin the mapping with the lock held.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 43 ++++++++++++++++++++++-------
 1 file changed, 33 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 7e256b144c68..7e34417e61ea 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3974,7 +3974,7 @@ gen10_init_indirectctx_bb(struct intel_engine_cs *engine, u32 *batch)
 
 #define CTX_WA_BB_OBJ_SIZE (PAGE_SIZE)
 
-static int lrc_setup_wa_ctx(struct intel_engine_cs *engine)
+static int lrc_init_wa_ctx(struct intel_engine_cs *engine)
 {
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
@@ -3990,10 +3990,6 @@ static int lrc_setup_wa_ctx(struct intel_engine_cs *engine)
 		goto err;
 	}
 
-	err = i915_ggtt_pin(vma, NULL, 0, PIN_HIGH);
-	if (err)
-		goto err;
-
 	engine->wa_ctx.vma = vma;
 	return 0;
 
@@ -4002,9 +3998,16 @@ static int lrc_setup_wa_ctx(struct intel_engine_cs *engine)
 	return err;
 }
 
-static void lrc_destroy_wa_ctx(struct intel_engine_cs *engine)
+static void lrc_destroy_wa_ctx(struct intel_engine_cs *engine, bool unpin)
 {
-	i915_vma_unpin_and_release(&engine->wa_ctx.vma, 0);
+	if (!engine->wa_ctx.vma)
+		return;
+
+	if (unpin)
+		i915_vma_unpin(engine->wa_ctx.vma);
+
+	i915_vma_put(engine->wa_ctx.vma);
+	engine->wa_ctx.vma = NULL;
 }
 
 typedef u32 *(*wa_bb_func_t)(struct intel_engine_cs *engine, u32 *batch);
@@ -4016,6 +4019,7 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 					    &wa_ctx->per_ctx };
 	wa_bb_func_t wa_bb_fn[2];
 	void *batch, *batch_ptr;
+	struct i915_gem_ww_ctx ww;
 	unsigned int i;
 	int ret;
 
@@ -4043,13 +4047,21 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 		return 0;
 	}
 
-	ret = lrc_setup_wa_ctx(engine);
+	ret = lrc_init_wa_ctx(engine);
 	if (ret) {
 		drm_dbg(&engine->i915->drm,
 			"Failed to setup context WA page: %d\n", ret);
 		return ret;
 	}
 
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	ret = i915_gem_object_lock(wa_ctx->vma->obj, &ww);
+	if (!ret)
+		ret = i915_ggtt_pin(wa_ctx->vma, &ww, 0, PIN_HIGH);
+	if (ret)
+		goto err;
+
 	batch = i915_gem_object_pin_map(wa_ctx->vma->obj, I915_MAP_WB);
 
 	/*
@@ -4073,8 +4085,19 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 
 	__i915_gem_object_flush_map(wa_ctx->vma->obj, 0, batch_ptr - batch);
 	__i915_gem_object_release_map(wa_ctx->vma->obj);
+
+	if (ret)
+		i915_vma_unpin(wa_ctx->vma);
+
+err:
+	if (ret == -EDEADLK) {
+		ret = i915_gem_ww_ctx_backoff(&ww);
+		if (!ret)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
 	if (ret)
-		lrc_destroy_wa_ctx(engine);
+		lrc_destroy_wa_ctx(engine, false);
 
 	return ret;
 }
@@ -5149,7 +5172,7 @@ static void execlists_release(struct intel_engine_cs *engine)
 	execlists_shutdown(engine);
 
 	intel_engine_cleanup_common(engine);
-	lrc_destroy_wa_ctx(engine);
+	lrc_destroy_wa_ctx(engine, true);
 }
 
 static void
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
