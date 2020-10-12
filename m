Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E85B28BB49
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:48:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B2DA6E51D;
	Mon, 12 Oct 2020 14:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 558796E4BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:47:17 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 16:46:57 +0200
Message-Id: <20201012144706.555345-53-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
References: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 52/61] drm/i915/selftests: Prepare execlists
 for obj->mm.lock removal
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

Convert normal functions to unlocked versions where needed.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 34 +++++++++++++-------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 95d41c01d0e0..124011f6fb51 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1007,7 +1007,7 @@ static int live_timeslice_preempt(void *arg)
 		goto err_obj;
 	}
 
-	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	vaddr = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
 	if (IS_ERR(vaddr)) {
 		err = PTR_ERR(vaddr);
 		goto err_obj;
@@ -1315,7 +1315,7 @@ static int live_timeslice_queue(void *arg)
 		goto err_obj;
 	}
 
-	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	vaddr = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
 	if (IS_ERR(vaddr)) {
 		err = PTR_ERR(vaddr);
 		goto err_obj;
@@ -1562,7 +1562,7 @@ static int live_busywait_preempt(void *arg)
 		goto err_ctx_lo;
 	}
 
-	map = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	map = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
 	if (IS_ERR(map)) {
 		err = PTR_ERR(map);
 		goto err_obj;
@@ -2678,7 +2678,7 @@ static int create_gang(struct intel_engine_cs *engine,
 	if (err)
 		goto err_obj;
 
-	cs = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	cs = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
 	if (IS_ERR(cs))
 		goto err_obj;
 
@@ -2960,7 +2960,7 @@ static int live_preempt_gang(void *arg)
 		 * it will terminate the next lowest spinner until there
 		 * are no more spinners and the gang is complete.
 		 */
-		cs = i915_gem_object_pin_map(rq->batch->obj, I915_MAP_WC);
+		cs = i915_gem_object_pin_map_unlocked(rq->batch->obj, I915_MAP_WC);
 		if (!IS_ERR(cs)) {
 			*cs = 0;
 			i915_gem_object_unpin_map(rq->batch->obj);
@@ -3025,7 +3025,7 @@ create_gpr_user(struct intel_engine_cs *engine,
 		return ERR_PTR(err);
 	}
 
-	cs = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	cs = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
 	if (IS_ERR(cs)) {
 		i915_vma_put(vma);
 		return ERR_CAST(cs);
@@ -3235,7 +3235,7 @@ static int live_preempt_user(void *arg)
 	if (IS_ERR(global))
 		return PTR_ERR(global);
 
-	result = i915_gem_object_pin_map(global->obj, I915_MAP_WC);
+	result = i915_gem_object_pin_map_unlocked(global->obj, I915_MAP_WC);
 	if (IS_ERR(result)) {
 		i915_vma_unpin_and_release(&global, 0);
 		return PTR_ERR(result);
@@ -3628,7 +3628,7 @@ static int live_preempt_smoke(void *arg)
 		goto err_free;
 	}
 
-	cs = i915_gem_object_pin_map(smoke.batch, I915_MAP_WB);
+	cs = i915_gem_object_pin_map_unlocked(smoke.batch, I915_MAP_WB);
 	if (IS_ERR(cs)) {
 		err = PTR_ERR(cs);
 		goto err_batch;
@@ -4231,7 +4231,7 @@ static int preserved_virtual_engine(struct intel_gt *gt,
 		goto out_end;
 	}
 
-	cs = i915_gem_object_pin_map(scratch->obj, I915_MAP_WB);
+	cs = i915_gem_object_pin_map_unlocked(scratch->obj, I915_MAP_WB);
 	if (IS_ERR(cs)) {
 		err = PTR_ERR(cs);
 		goto out_end;
@@ -5259,7 +5259,7 @@ static int __live_lrc_gpr(struct intel_engine_cs *engine,
 		goto err_rq;
 	}
 
-	cs = i915_gem_object_pin_map(scratch->obj, I915_MAP_WB);
+	cs = i915_gem_object_pin_map_unlocked(scratch->obj, I915_MAP_WB);
 	if (IS_ERR(cs)) {
 		err = PTR_ERR(cs);
 		goto err_rq;
@@ -5553,7 +5553,7 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
 	if (IS_ERR(batch))
 		return batch;
 
-	cs = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
+	cs = i915_gem_object_pin_map_unlocked(batch->obj, I915_MAP_WC);
 	if (IS_ERR(cs)) {
 		i915_vma_put(batch);
 		return ERR_CAST(cs);
@@ -5717,7 +5717,7 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
 	if (IS_ERR(batch))
 		return batch;
 
-	cs = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
+	cs = i915_gem_object_pin_map_unlocked(batch->obj, I915_MAP_WC);
 	if (IS_ERR(cs)) {
 		i915_vma_put(batch);
 		return ERR_CAST(cs);
@@ -5831,29 +5831,29 @@ static int compare_isolation(struct intel_engine_cs *engine,
 	u32 *defaults;
 	int err = 0;
 
-	A[0] = i915_gem_object_pin_map(ref[0]->obj, I915_MAP_WC);
+	A[0] = i915_gem_object_pin_map_unlocked(ref[0]->obj, I915_MAP_WC);
 	if (IS_ERR(A[0]))
 		return PTR_ERR(A[0]);
 
-	A[1] = i915_gem_object_pin_map(ref[1]->obj, I915_MAP_WC);
+	A[1] = i915_gem_object_pin_map_unlocked(ref[1]->obj, I915_MAP_WC);
 	if (IS_ERR(A[1])) {
 		err = PTR_ERR(A[1]);
 		goto err_A0;
 	}
 
-	B[0] = i915_gem_object_pin_map(result[0]->obj, I915_MAP_WC);
+	B[0] = i915_gem_object_pin_map_unlocked(result[0]->obj, I915_MAP_WC);
 	if (IS_ERR(B[0])) {
 		err = PTR_ERR(B[0]);
 		goto err_A1;
 	}
 
-	B[1] = i915_gem_object_pin_map(result[1]->obj, I915_MAP_WC);
+	B[1] = i915_gem_object_pin_map_unlocked(result[1]->obj, I915_MAP_WC);
 	if (IS_ERR(B[1])) {
 		err = PTR_ERR(B[1]);
 		goto err_B0;
 	}
 
-	lrc = i915_gem_object_pin_map(ce->state->obj,
+	lrc = i915_gem_object_pin_map_unlocked(ce->state->obj,
 				      i915_coherent_map_type(engine->i915));
 	if (IS_ERR(lrc)) {
 		err = PTR_ERR(lrc);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
