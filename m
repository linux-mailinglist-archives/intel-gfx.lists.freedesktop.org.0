Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C572F5D47
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 10:26:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14CBB6E0EF;
	Thu, 14 Jan 2021 09:26:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEAA6E0F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 09:26:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23592059-1500050 
 for multiple; Thu, 14 Jan 2021 09:26:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 09:26:39 +0000
Message-Id: <20210114092639.23762-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210114092639.23762-1-chris@chris-wilson.co.uk>
References: <20210114092639.23762-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Exercise cross-process
 context isolation
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

Verify that one context running on engine A cannot manipulate another
client's context concurrently running on engine B using unprivileged
access.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 229 ++++++++++++++++++++++---
 1 file changed, 204 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index a55cbf524692..a271687daa7c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -912,6 +912,7 @@ create_user_vma(struct i915_address_space *vm, unsigned long size)
 
 static struct i915_vma *
 store_context(struct intel_context *ce,
+	      struct intel_engine_cs *engine,
 	      struct i915_vma *scratch,
 	      bool relative)
 {
@@ -929,7 +930,7 @@ store_context(struct intel_context *ce,
 		return ERR_CAST(cs);
 	}
 
-	defaults = shmem_pin_map(ce->engine->default_state);
+	defaults = shmem_pin_map(engine->default_state);
 	if (!defaults) {
 		i915_gem_object_unpin_map(batch->obj);
 		i915_vma_put(batch);
@@ -961,7 +962,7 @@ store_context(struct intel_context *ce,
 			if (relative)
 				cmd |= MI_LRI_LRM_CS_MMIO;
 			else
-				offset = ce->engine->mmio_base;
+				offset = engine->mmio_base;
 		}
 
 		dw++;
@@ -980,7 +981,7 @@ store_context(struct intel_context *ce,
 
 	*cs++ = MI_BATCH_BUFFER_END;
 
-	shmem_unpin_map(ce->engine->default_state, defaults);
+	shmem_unpin_map(engine->default_state, defaults);
 
 	i915_gem_object_flush_map(batch->obj);
 	i915_gem_object_unpin_map(batch->obj);
@@ -1003,23 +1004,40 @@ static int move_to_active(struct i915_request *rq,
 	return err;
 }
 
+struct hwsp_semaphore {
+	u32 ggtt;
+	u32 *va;
+};
+
+static struct hwsp_semaphore hwsp_semaphore(struct intel_engine_cs *engine)
+{
+	struct hwsp_semaphore s;
+
+	s.va = memset32(engine->status_page.addr + 1000, 0, 1);
+	s.ggtt = (i915_ggtt_offset(engine->status_page.vma) +
+		  offset_in_page(s.va));
+
+	return s;
+}
+
 static struct i915_request *
 record_registers(struct intel_context *ce,
+		 struct intel_engine_cs *engine,
 		 struct i915_vma *before,
 		 struct i915_vma *after,
 		 bool relative,
-		 u32 *sema)
+		 const struct hwsp_semaphore *sema)
 {
 	struct i915_vma *b_before, *b_after;
 	struct i915_request *rq;
 	u32 *cs;
 	int err;
 
-	b_before = store_context(ce, before, relative);
+	b_before = store_context(ce, engine, before, relative);
 	if (IS_ERR(b_before))
 		return ERR_CAST(b_before);
 
-	b_after = store_context(ce, after, relative);
+	b_after = store_context(ce, engine, after, relative);
 	if (IS_ERR(b_after)) {
 		rq = ERR_CAST(b_after);
 		goto err_before;
@@ -1062,8 +1080,7 @@ record_registers(struct intel_context *ce,
 		MI_SEMAPHORE_POLL |
 		MI_SEMAPHORE_SAD_NEQ_SDD;
 	*cs++ = 0;
-	*cs++ = i915_ggtt_offset(ce->engine->status_page.vma) +
-		offset_in_page(sema);
+	*cs++ = sema->ggtt;
 	*cs++ = 0;
 	*cs++ = MI_NOOP;
 
@@ -1074,7 +1091,7 @@ record_registers(struct intel_context *ce,
 
 	intel_ring_advance(rq, cs);
 
-	WRITE_ONCE(*sema, 0);
+	WRITE_ONCE(*sema->va, 0);
 	i915_request_get(rq);
 	i915_request_add(rq);
 err_after:
@@ -1090,7 +1107,9 @@ record_registers(struct intel_context *ce,
 }
 
 static struct i915_vma *
-load_context(struct intel_context *ce, u32 poison, bool relative)
+load_context(struct intel_context *ce,
+	     struct intel_engine_cs *engine,
+	     u32 poison, bool relative)
 {
 	struct i915_vma *batch;
 	u32 dw, *cs, *hw;
@@ -1106,7 +1125,7 @@ load_context(struct intel_context *ce, u32 poison, bool relative)
 		return ERR_CAST(cs);
 	}
 
-	defaults = shmem_pin_map(ce->engine->default_state);
+	defaults = shmem_pin_map(engine->default_state);
 	if (!defaults) {
 		i915_gem_object_unpin_map(batch->obj);
 		i915_vma_put(batch);
@@ -1137,7 +1156,7 @@ load_context(struct intel_context *ce, u32 poison, bool relative)
 			if (relative)
 				cmd |= MI_LRI_LRM_CS_MMIO;
 			else
-				offset = ce->engine->mmio_base;
+				offset = engine->mmio_base;
 		}
 
 		dw++;
@@ -1153,7 +1172,7 @@ load_context(struct intel_context *ce, u32 poison, bool relative)
 
 	*cs++ = MI_BATCH_BUFFER_END;
 
-	shmem_unpin_map(ce->engine->default_state, defaults);
+	shmem_unpin_map(engine->default_state, defaults);
 
 	i915_gem_object_flush_map(batch->obj);
 	i915_gem_object_unpin_map(batch->obj);
@@ -1163,16 +1182,17 @@ load_context(struct intel_context *ce, u32 poison, bool relative)
 
 static int
 poison_registers(struct intel_context *ce,
+		 struct intel_engine_cs *engine,
 		 u32 poison,
 		 bool relative,
-		 u32 *sema)
+		 const struct hwsp_semaphore *sema)
 {
 	struct i915_request *rq;
 	struct i915_vma *batch;
 	u32 *cs;
 	int err;
 
-	batch = load_context(ce, poison, relative);
+	batch = load_context(ce, engine, poison, relative);
 	if (IS_ERR(batch))
 		return PTR_ERR(batch);
 
@@ -1198,8 +1218,7 @@ poison_registers(struct intel_context *ce,
 	*cs++ = upper_32_bits(batch->node.start);
 
 	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
-	*cs++ = i915_ggtt_offset(ce->engine->status_page.vma) +
-		offset_in_page(sema);
+	*cs++ = sema->ggtt;
 	*cs++ = 0;
 	*cs++ = 1;
 
@@ -1259,7 +1278,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
 	}
 	lrc += LRC_STATE_OFFSET / sizeof(*hw);
 
-	defaults = shmem_pin_map(ce->engine->default_state);
+	defaults = shmem_pin_map(engine->default_state);
 	if (!defaults) {
 		err = -ENOMEM;
 		goto err_lrc;
@@ -1312,7 +1331,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
 	} while (dw < PAGE_SIZE / sizeof(u32) &&
 		 (hw[dw] & ~BIT(0)) != MI_BATCH_BUFFER_END);
 
-	shmem_unpin_map(ce->engine->default_state, defaults);
+	shmem_unpin_map(engine->default_state, defaults);
 err_lrc:
 	i915_gem_object_unpin_map(ce->state->obj);
 err_B1:
@@ -1329,7 +1348,7 @@ static int compare_isolation(struct intel_engine_cs *engine,
 static int
 __lrc_isolation(struct intel_engine_cs *engine, u32 poison, bool relative)
 {
-	u32 *sema = memset32(engine->status_page.addr + 1000, 0, 1);
+	struct hwsp_semaphore sema = hwsp_semaphore(engine);
 	struct i915_vma *ref[2], *result[2];
 	struct intel_context *A, *B;
 	struct i915_request *rq;
@@ -1357,13 +1376,13 @@ __lrc_isolation(struct intel_engine_cs *engine, u32 poison, bool relative)
 		goto err_ref0;
 	}
 
-	rq = record_registers(A, ref[0], ref[1], relative, sema);
+	rq = record_registers(A, engine, ref[0], ref[1], relative, &sema);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
 		goto err_ref1;
 	}
 
-	WRITE_ONCE(*sema, 1);
+	WRITE_ONCE(*sema.va, 1);
 	wmb();
 
 	if (i915_request_wait(rq, 0, HZ / 2) < 0) {
@@ -1385,15 +1404,15 @@ __lrc_isolation(struct intel_engine_cs *engine, u32 poison, bool relative)
 		goto err_result0;
 	}
 
-	rq = record_registers(A, result[0], result[1], relative, sema);
+	rq = record_registers(A, engine, result[0], result[1], relative, &sema);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
 		goto err_result1;
 	}
 
-	err = poison_registers(B, poison, relative, sema);
+	err = poison_registers(B, engine, poison, relative, &sema);
 	if (err) {
-		WRITE_ONCE(*sema, -1);
+		WRITE_ONCE(*sema.va, -1);
 		i915_request_put(rq);
 		goto err_result1;
 	}
@@ -1495,6 +1514,165 @@ static int live_lrc_isolation(void *arg)
 	return err;
 }
 
+static int __lrc_cross(struct intel_engine_cs *a,
+		       struct intel_engine_cs *b,
+		       u32 poison)
+{
+	struct hwsp_semaphore sema = hwsp_semaphore(a);
+	struct i915_vma *ref[2], *result[2];
+	struct intel_context *A, *B;
+	struct i915_request *rq;
+	int err;
+
+	GEM_BUG_ON(a->gt->ggtt != b->gt->ggtt);
+
+	pr_debug("Context on %s, poisoning from %s with %08x\n",
+		 a->name, b->name, poison);
+
+	A = intel_context_create(a);
+	if (IS_ERR(A))
+		return PTR_ERR(A);
+
+	B = intel_context_create(b);
+	if (IS_ERR(B)) {
+		err = PTR_ERR(B);
+		goto err_A;
+	}
+
+	ref[0] = create_user_vma(A->vm, SZ_64K);
+	if (IS_ERR(ref[0])) {
+		err = PTR_ERR(ref[0]);
+		goto err_B;
+	}
+
+	ref[1] = create_user_vma(A->vm, SZ_64K);
+	if (IS_ERR(ref[1])) {
+		err = PTR_ERR(ref[1]);
+		goto err_ref0;
+	}
+
+	rq = record_registers(A, a, ref[0], ref[1], false, &sema);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto err_ref1;
+	}
+
+	WRITE_ONCE(*sema.va, 1);
+	wmb();
+
+	if (i915_request_wait(rq, 0, HZ / 2) < 0) {
+		i915_request_put(rq);
+		err = -ETIME;
+		goto err_ref1;
+	}
+	i915_request_put(rq);
+
+	result[0] = create_user_vma(A->vm, SZ_64K);
+	if (IS_ERR(result[0])) {
+		err = PTR_ERR(result[0]);
+		goto err_ref1;
+	}
+
+	result[1] = create_user_vma(A->vm, SZ_64K);
+	if (IS_ERR(result[1])) {
+		err = PTR_ERR(result[1]);
+		goto err_result0;
+	}
+
+	rq = record_registers(A, a, result[0], result[1], false, &sema);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto err_result1;
+	}
+
+	err = poison_registers(B, a, poison, false, &sema);
+	if (err) {
+		WRITE_ONCE(*sema.va, -1);
+		i915_request_put(rq);
+		goto err_result1;
+	}
+
+	if (i915_request_wait(rq, 0, HZ / 2) < 0) {
+		i915_request_put(rq);
+		err = -ETIME;
+		goto err_result1;
+	}
+	i915_request_put(rq);
+
+	err = compare_isolation(a, ref, result, A, poison, false);
+
+err_result1:
+	i915_vma_put(result[1]);
+err_result0:
+	i915_vma_put(result[0]);
+err_ref1:
+	i915_vma_put(ref[1]);
+err_ref0:
+	i915_vma_put(ref[0]);
+err_B:
+	intel_context_put(B);
+err_A:
+	intel_context_put(A);
+	return err;
+}
+
+static int live_lrc_cross(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *a, *b;
+	enum intel_engine_id a_id, b_id;
+	const u32 poison[] = {
+		STACK_MAGIC,
+		0x3a3a3a3a,
+		0x5c5c5c5c,
+		0xffffffff,
+		0xffff0000,
+	};
+	int err = 0;
+	int i;
+
+	/*
+	 * Our goal is to try and tamper with another client's context
+	 * running concurrently.
+	 */
+
+	for_each_engine(a, gt, a_id) {
+
+		/* Just don't even ask */
+		if (!IS_ENABLED(CONFIG_DRM_I915_SELFTEST_BROKEN) &&
+		    skip_isolation(a))
+			continue;
+
+		intel_engine_pm_get(a);
+
+		for_each_engine(b, gt, b_id) {
+			if (a == b)
+				continue;
+
+			intel_engine_pm_get(b);
+			for (i = 0; i < ARRAY_SIZE(poison); i++) {
+				int result;
+
+				result = __lrc_cross(a, b, poison[i]);
+				if (result && !err)
+					err = result;
+
+				result = __lrc_cross(a, b, ~poison[i]);
+				if (result && !err)
+					err = result;
+			}
+			intel_engine_pm_put(b);
+		}
+		intel_engine_pm_put(a);
+		if (igt_flush_test(gt->i915)) {
+			err = -EIO;
+			break;
+		}
+	}
+
+	return err;
+}
+
 static int indirect_ctx_submit_req(struct intel_context *ce)
 {
 	struct i915_request *rq;
@@ -1885,6 +2063,7 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_lrc_isolation),
 		SUBTEST(live_lrc_timestamp),
 		SUBTEST(live_lrc_garbage),
+		SUBTEST(live_lrc_cross),
 		SUBTEST(live_pphwsp_runtime),
 		SUBTEST(live_lrc_indirect_ctx_bb),
 	};
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
