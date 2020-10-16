Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DF9290323
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 12:45:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F29816EB0C;
	Fri, 16 Oct 2020 10:44:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5A1E6EAC4
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 10:44:51 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 12:44:13 +0200
Message-Id: <20201016104444.1492028-31-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 30/61] drm/i915: Fix workarounds selftest,
 part 1
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

pin_map needs the ww lock, so ensure we pin both before submission.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  3 +
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 12 +++
 .../gpu/drm/i915/gt/selftest_workarounds.c    | 76 ++++++++++++-------
 3 files changed, 64 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 9e87a2547b0d..8db84ce09d9f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -389,6 +389,9 @@ enum i915_map_type {
 void *__must_check i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 					   enum i915_map_type type);
 
+void *__must_check i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
+						    enum i915_map_type type);
+
 void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
 				 unsigned long offset,
 				 unsigned long size);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 00ce88c609f9..ef1d5fabd077 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -409,6 +409,18 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 	goto out_unlock;
 }
 
+void *i915_gem_object_pin_map_unlocked(struct drm_i915_gem_object *obj,
+				       enum i915_map_type type)
+{
+	void *ret;
+
+	i915_gem_object_lock(obj, NULL);
+	ret = i915_gem_object_pin_map(obj, type);
+	i915_gem_object_unlock(obj);
+
+	return ret;
+}
+
 void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
 				 unsigned long offset,
 				 unsigned long size)
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 810ab026a55e..69da2147ed3b 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -111,7 +111,7 @@ read_nonprivs(struct i915_gem_context *ctx, struct intel_engine_cs *engine)
 
 	i915_gem_object_set_cache_coherency(result, I915_CACHE_LLC);
 
-	cs = i915_gem_object_pin_map(result, I915_MAP_WB);
+	cs = i915_gem_object_pin_map_unlocked(result, I915_MAP_WB);
 	if (IS_ERR(cs)) {
 		err = PTR_ERR(cs);
 		goto err_obj;
@@ -217,7 +217,7 @@ static int check_whitelist(struct i915_gem_context *ctx,
 	i915_gem_object_lock(results, NULL);
 	intel_wedge_on_timeout(&wedge, engine->gt, HZ / 5) /* safety net! */
 		err = i915_gem_object_set_to_cpu_domain(results, false);
-	i915_gem_object_unlock(results);
+
 	if (intel_gt_is_wedged(engine->gt))
 		err = -EIO;
 	if (err)
@@ -245,6 +245,7 @@ static int check_whitelist(struct i915_gem_context *ctx,
 
 	i915_gem_object_unpin_map(results);
 out_put:
+	i915_gem_object_unlock(results);
 	i915_gem_object_put(results);
 	return err;
 }
@@ -520,6 +521,7 @@ static int check_dirty_whitelist(struct intel_context *ce)
 
 	for (i = 0; i < engine->whitelist.count; i++) {
 		u32 reg = i915_mmio_reg_offset(engine->whitelist.list[i].reg);
+		struct i915_gem_ww_ctx ww;
 		u64 addr = scratch->node.start;
 		struct i915_request *rq;
 		u32 srm, lrm, rsvd;
@@ -535,6 +537,29 @@ static int check_dirty_whitelist(struct intel_context *ce)
 
 		ro_reg = ro_register(reg);
 
+		i915_gem_ww_ctx_init(&ww, false);
+retry:
+		cs = NULL;
+		err = i915_gem_object_lock(scratch->obj, &ww);
+		if (!err)
+			err = i915_gem_object_lock(batch->obj, &ww);
+		if (!err)
+			err = intel_context_pin_ww(ce, &ww);
+		if (err)
+			goto out;
+
+		cs = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
+		if (IS_ERR(cs)) {
+			err = PTR_ERR(cs);
+			goto out_ctx;
+		}
+
+		results = i915_gem_object_pin_map(scratch->obj, I915_MAP_WB);
+		if (IS_ERR(results)) {
+			err = PTR_ERR(results);
+			goto out_unmap_batch;
+		}
+
 		/* Clear non priv flags */
 		reg &= RING_FORCE_TO_NONPRIV_ADDRESS_MASK;
 
@@ -546,12 +571,6 @@ static int check_dirty_whitelist(struct intel_context *ce)
 		pr_debug("%s: Writing garbage to %x\n",
 			 engine->name, reg);
 
-		cs = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
-		if (IS_ERR(cs)) {
-			err = PTR_ERR(cs);
-			goto out_batch;
-		}
-
 		/* SRM original */
 		*cs++ = srm;
 		*cs++ = reg;
@@ -598,11 +617,12 @@ static int check_dirty_whitelist(struct intel_context *ce)
 		i915_gem_object_flush_map(batch->obj);
 		i915_gem_object_unpin_map(batch->obj);
 		intel_gt_chipset_flush(engine->gt);
+		cs = NULL;
 
-		rq = intel_context_create_request(ce);
+		rq = i915_request_create(ce);
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
-			goto out_batch;
+			goto out_unmap_scratch;
 		}
 
 		if (engine->emit_init_breadcrumb) { /* Be nice if we hang */
@@ -611,20 +631,16 @@ static int check_dirty_whitelist(struct intel_context *ce)
 				goto err_request;
 		}
 
-		i915_vma_lock(batch);
 		err = i915_request_await_object(rq, batch->obj, false);
 		if (err == 0)
 			err = i915_vma_move_to_active(batch, rq, 0);
-		i915_vma_unlock(batch);
 		if (err)
 			goto err_request;
 
-		i915_vma_lock(scratch);
 		err = i915_request_await_object(rq, scratch->obj, true);
 		if (err == 0)
 			err = i915_vma_move_to_active(scratch, rq,
 						      EXEC_OBJECT_WRITE);
-		i915_vma_unlock(scratch);
 		if (err)
 			goto err_request;
 
@@ -640,13 +656,7 @@ static int check_dirty_whitelist(struct intel_context *ce)
 			pr_err("%s: Futzing %x timedout; cancelling test\n",
 			       engine->name, reg);
 			intel_gt_set_wedged(engine->gt);
-			goto out_batch;
-		}
-
-		results = i915_gem_object_pin_map(scratch->obj, I915_MAP_WB);
-		if (IS_ERR(results)) {
-			err = PTR_ERR(results);
-			goto out_batch;
+			goto out_unmap_scratch;
 		}
 
 		GEM_BUG_ON(values[ARRAY_SIZE(values) - 1] != 0xffffffff);
@@ -657,7 +667,7 @@ static int check_dirty_whitelist(struct intel_context *ce)
 				pr_err("%s: Unable to write to whitelisted register %x\n",
 				       engine->name, reg);
 				err = -EINVAL;
-				goto out_unpin;
+				goto out_unmap_scratch;
 			}
 		} else {
 			rsvd = 0;
@@ -723,15 +733,27 @@ static int check_dirty_whitelist(struct intel_context *ce)
 
 			err = -EINVAL;
 		}
-out_unpin:
+out_unmap_scratch:
 		i915_gem_object_unpin_map(scratch->obj);
+out_unmap_batch:
+		if (cs)
+			i915_gem_object_unpin_map(batch->obj);
+out_ctx:
+		intel_context_unpin(ce);
+out:
+		if (err == -EDEADLK) {
+			err = i915_gem_ww_ctx_backoff(&ww);
+			if (!err)
+				goto retry;
+		}
+		i915_gem_ww_ctx_fini(&ww);
 		if (err)
 			break;
 	}
 
 	if (igt_flush_test(engine->i915))
 		err = -EIO;
-out_batch:
+
 	i915_vma_unpin_and_release(&batch, 0);
 out_scratch:
 	i915_vma_unpin_and_release(&scratch, 0);
@@ -868,7 +890,7 @@ static int scrub_whitelisted_registers(struct i915_gem_context *ctx,
 	if (IS_ERR(batch))
 		return PTR_ERR(batch);
 
-	cs = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
+	cs = i915_gem_object_pin_map_unlocked(batch->obj, I915_MAP_WC);
 	if (IS_ERR(cs)) {
 		err = PTR_ERR(cs);
 		goto err_batch;
@@ -1003,11 +1025,11 @@ check_whitelisted_registers(struct intel_engine_cs *engine,
 	u32 *a, *b;
 	int i, err;
 
-	a = i915_gem_object_pin_map(A->obj, I915_MAP_WB);
+	a = i915_gem_object_pin_map_unlocked(A->obj, I915_MAP_WB);
 	if (IS_ERR(a))
 		return PTR_ERR(a);
 
-	b = i915_gem_object_pin_map(B->obj, I915_MAP_WB);
+	b = i915_gem_object_pin_map_unlocked(B->obj, I915_MAP_WB);
 	if (IS_ERR(b)) {
 		err = PTR_ERR(b);
 		goto err_a;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
