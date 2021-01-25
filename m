Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3DD30262C
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:18:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5C136E20B;
	Mon, 25 Jan 2021 14:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA3956E296
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:18:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23693941-1500050 
 for multiple; Mon, 25 Jan 2021 14:18:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 14:18:00 +0000
Message-Id: <20210125141803.14378-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125141803.14378-1-chris@chris-wilson.co.uk>
References: <20210125141803.14378-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/selftests: Replace unbound
 set-domain waits with explicit timeouts
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

Let's prefer to use explicit request tracking and bounded timeouts in
our selftests.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/selftest_workarounds.c    | 106 +++++++-----------
 1 file changed, 40 insertions(+), 66 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 37ea46907a7d..0c6372d67084 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -93,56 +93,27 @@ reference_lists_fini(struct intel_gt *gt, struct wa_lists *lists)
 	intel_wa_list_free(&lists->gt_wa_list);
 }
 
-static struct drm_i915_gem_object *
-read_nonprivs(struct intel_context *ce)
+static struct i915_request *
+read_nonprivs(struct intel_context *ce, struct i915_vma *result)
 {
 	struct intel_engine_cs *engine = ce->engine;
 	const u32 base = engine->mmio_base;
-	struct drm_i915_gem_object *result;
 	struct i915_request *rq;
-	struct i915_vma *vma;
 	u32 srm, *cs;
 	int err;
 	int i;
 
-	result = i915_gem_object_create_internal(engine->i915, PAGE_SIZE);
-	if (IS_ERR(result))
-		return result;
-
-	i915_gem_object_set_cache_coherency(result, I915_CACHE_LLC);
-
-	cs = i915_gem_object_pin_map(result, I915_MAP_WB);
-	if (IS_ERR(cs)) {
-		err = PTR_ERR(cs);
-		goto err_obj;
-	}
-	memset(cs, 0xc5, PAGE_SIZE);
-	i915_gem_object_flush_map(result);
-	i915_gem_object_unpin_map(result);
-
-	vma = i915_vma_instance(result, &engine->gt->ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_obj;
-	}
-
-	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
-	if (err)
-		goto err_obj;
-
 	rq = intel_context_create_request(ce);
-	if (IS_ERR(rq)) {
-		err = PTR_ERR(rq);
-		goto err_pin;
-	}
+	if (IS_ERR(rq))
+		return rq;
 
-	i915_vma_lock(vma);
-	err = i915_request_await_object(rq, vma->obj, true);
+	i915_vma_lock(result);
+	err = i915_request_await_object(rq, result->obj, true);
 	if (err == 0)
-		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(vma);
+		err = i915_vma_move_to_active(result, rq, EXEC_OBJECT_WRITE);
+	i915_vma_unlock(result);
 	if (err)
-		goto err_req;
+		goto err_rq;
 
 	srm = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
 	if (INTEL_GEN(engine->i915) >= 8)
@@ -151,28 +122,24 @@ read_nonprivs(struct intel_context *ce)
 	cs = intel_ring_begin(rq, 4 * RING_MAX_NONPRIV_SLOTS);
 	if (IS_ERR(cs)) {
 		err = PTR_ERR(cs);
-		goto err_req;
+		goto err_rq;
 	}
 
 	for (i = 0; i < RING_MAX_NONPRIV_SLOTS; i++) {
 		*cs++ = srm;
 		*cs++ = i915_mmio_reg_offset(RING_FORCE_TO_NONPRIV(base, i));
-		*cs++ = i915_ggtt_offset(vma) + sizeof(u32) * i;
+		*cs++ = i915_ggtt_offset(result) + sizeof(u32) * i;
 		*cs++ = 0;
 	}
 	intel_ring_advance(rq, cs);
 
+	i915_request_get(rq);
 	i915_request_add(rq);
-	i915_vma_unpin(vma);
 
-	return result;
+	return rq;
 
-err_req:
+err_rq:
 	i915_request_add(rq);
-err_pin:
-	i915_vma_unpin(vma);
-err_obj:
-	i915_gem_object_put(result);
 	return ERR_PTR(err);
 }
 
@@ -203,32 +170,36 @@ print_results(const struct intel_engine_cs *engine, const u32 *results)
 static int check_whitelist(struct intel_context *ce)
 {
 	struct intel_engine_cs *engine = ce->engine;
-	struct drm_i915_gem_object *results;
-	struct intel_wedge_me wedge;
+	struct i915_vma *result;
+	struct i915_request *rq;
+	int err = 0;
 	u32 *vaddr;
-	int err;
 	int i;
 
-	results = read_nonprivs(ce);
-	if (IS_ERR(results))
-		return PTR_ERR(results);
+	result = __vm_create_scratch_for_read(&engine->gt->ggtt->vm, PAGE_SIZE);
+	if (IS_ERR(result))
+		return PTR_ERR(result);
 
-	err = 0;
-	i915_gem_object_lock(results, NULL);
-	intel_wedge_on_timeout(&wedge, engine->gt, HZ / 5) /* safety net! */
-		err = i915_gem_object_set_to_cpu_domain(results, false);
-	i915_gem_object_unlock(results);
-	if (intel_gt_is_wedged(engine->gt))
-		err = -EIO;
-	if (err)
-		goto out_put;
-
-	vaddr = i915_gem_object_pin_map(results, I915_MAP_WB);
+	vaddr = i915_gem_object_pin_map(result->obj, I915_MAP_WB);
 	if (IS_ERR(vaddr)) {
 		err = PTR_ERR(vaddr);
 		goto out_put;
 	}
 
+	memset(vaddr, 0xc5, PAGE_SIZE);
+	i915_gem_object_flush_map(result->obj);
+
+	rq = read_nonprivs(ce, result);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto out_map;
+	}
+
+	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
+		err = -EIO;
+		goto out_rq;
+	}
+
 	for (i = 0; i < RING_MAX_NONPRIV_SLOTS; i++) {
 		u32 expected = get_whitelist_reg(engine, i);
 		u32 actual = vaddr[i];
@@ -243,9 +214,12 @@ static int check_whitelist(struct intel_context *ce)
 		}
 	}
 
-	i915_gem_object_unpin_map(results);
+out_rq:
+	i915_request_put(rq);
+out_map:
+	i915_gem_object_unpin_map(result->obj);
 out_put:
-	i915_gem_object_put(results);
+	i915_vma_put(result);
 	return err;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
