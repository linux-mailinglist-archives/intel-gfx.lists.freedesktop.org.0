Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E047DBF2F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 18:40:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFEDA10E34F;
	Mon, 30 Oct 2023 17:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8842010E351
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 17:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698687634; x=1730223634;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=Hh9pm3qcAylqBZFS6d1HzKzwdQ8uFh4fZ+l7qs0wYmU=;
 b=VjSWAxMFeaw3vP++yoOYcVWrEyI1xzeKjp8NSlU2HgOml6emQHITrGG5
 bvgLYSPI+8n7f8i5saKVxOBrN2FOybixaf/nmi+cn4ctrNcg+hq33PTiX
 9Hc6zszmf52jR95cKsJCX0DuBrb7GcaxhMugw06MCX2tQqjbk5/CXqE62
 +N64LO6Q49nZ6+SiiVVbB/a+/aUDvS7xKH1YhsVyPfKHyy0ipterw0Qa9
 tv81RfB1sYyH51chHPd+Cn4EYJP2bJbL3BnCkGXFfq35u376Xqw8iEFgn
 Ugg9imIy3ffgnJD3yMn3iwziNEFhkYbx7RFai8b2VtI8x9Drr9BPCg8pU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="387947865"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="387947865"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 10:40:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="1007493931"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="1007493931"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 10:40:32 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Mon, 30 Oct 2023 18:40:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-ref_tracker_i915-v1-2-006fe6b96421@intel.com>
References: <20231030-ref_tracker_i915-v1-0-006fe6b96421@intel.com>
In-Reply-To: <20231030-ref_tracker_i915-v1-0-006fe6b96421@intel.com>
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=38745;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=Hh9pm3qcAylqBZFS6d1HzKzwdQ8uFh4fZ+l7qs0wYmU=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlP+qM9sqGc4yVCHqhgZ3zn7UO1tS61YWIOveGPvhS
 DH269MuJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZT/qjAAKCRAjYrKT3hD91wiKDA
 CSnwpMdIqsr4bvfsStvVav/Qi79YXADavXXayqG3lIGQXrtGcRNBQy08/uBTXXtIBKFxol9GvTq6Mm
 jSINop44xDRIjNSDfT2GoYVv1pt5heWAWmQt0b2QvPFag9U6MYKUZ3APhJNiXhSVjq5FA0VsLT3EOx
 8mX8S9H0FWr8tvOErkq3Af3zuTA/2sGGOTwYZsV+KAZaaFuy7rb0MhjFtBjeoC5GzErr3VDIB06rYj
 KjS+EJn8cD61VOa8Y+91s1+Yh+nCQtaKYz+2KuRzMiJI0mEFdD/f5FKlUirbR4bJIKi+FuvXgHJz5o
 UNkGvmn+9YQrtYf67+TQEUF31vS3e6M4zkDiY2Qz0ltXuDanzX4kAElFP6ZUGHdKzjIJHENV9aaNFv
 oRbwEDZHImX4/FD7RnE8LIQNke4B+VLq3bjO5r92dq+M2DfxtbMsBtDc0HaP7HYc4kJS3jGAbGA3r2
 3wr9jjCvsWDg5fn5wsDtRDSeNo/mXd6tw3tjzYKrUGgzo=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Track gt pm wakerefs
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Track every intel_gt_pm_get() until its corresponding release in
intel_gt_pm_put() by returning a cookie to the caller for acquire that
must be passed by on released. When there is an imbalance, we can see who
either tried to free a stale wakeref, or who forgot to free theirs.

v2: track recently added calls in gen8_ggtt_bind_get_ce and
    destroyed_worker_func

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug                 | 14 ++++++++
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     | 14 ++++----
 .../drm/i915/gem/selftests/i915_gem_coherency.c    | 10 +++---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 14 ++++----
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c        | 13 +++++---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h  |  3 +-
 drivers/gpu/drm/i915/gt/intel_context.h            |  4 +--
 drivers/gpu/drm/i915/gt/intel_context_types.h      |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine_pm.c          |  7 ++--
 drivers/gpu/drm/i915/gt/intel_engine_types.h       |  2 ++
 .../gpu/drm/i915/gt/intel_execlists_submission.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c               | 16 +++++----
 drivers/gpu/drm/i915/gt/intel_gt_pm.c              | 12 ++++---
 drivers/gpu/drm/i915/gt/intel_gt_pm.h              | 38 +++++++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c      |  4 +--
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c       | 20 +++++++-----
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c           |  5 +--
 drivers/gpu/drm/i915/gt/selftest_reset.c           | 10 +++---
 drivers/gpu/drm/i915/gt/selftest_rps.c             | 17 ++++++----
 drivers/gpu/drm/i915/gt/selftest_slpc.c            |  5 +--
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c  | 14 ++++----
 drivers/gpu/drm/i915/i915_pmu.c                    | 16 +++++----
 drivers/gpu/drm/i915/intel_wakeref.c               |  7 +++-
 drivers/gpu/drm/i915/intel_wakeref.h               | 38 ++++++++++++++++++++--
 24 files changed, 197 insertions(+), 90 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index 8d82d7a1a9c5f9..5b7162076850c6 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -40,6 +40,7 @@ config DRM_I915_DEBUG
 	select DRM_I915_DEBUG_GEM_ONCE
 	select DRM_I915_DEBUG_MMIO
 	select DRM_I915_DEBUG_RUNTIME_PM
+	select DRM_I915_DEBUG_WAKEREF
 	select DRM_I915_SW_FENCE_DEBUG_OBJECTS
 	select DRM_I915_SELFTEST
 	default n
@@ -244,3 +245,16 @@ config DRM_I915_DEBUG_RUNTIME_PM
 	  Recommended for driver developers only.
 
 	  If in doubt, say "N"
+
+config DRM_I915_DEBUG_WAKEREF
+	bool "Enable extra tracking for wakerefs"
+	depends on DRM_I915
+	select REF_TRACKER
+	select STACKDEPOT
+	select STACKTRACE
+	help
+	  Choose this option to turn on extra state checking and usage
+	  tracking for the wakerefPM functionality. This may introduce
+	  overhead during driver runtime.
+
+	  If in doubt, say "N"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 683fd8d3151c36..78fa44c20731dc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -253,6 +253,8 @@ struct i915_execbuffer {
 	struct intel_gt *gt; /* gt for the execbuf */
 	struct intel_context *context; /* logical state for the request */
 	struct i915_gem_context *gem_context; /** caller's context */
+	intel_wakeref_t wakeref;
+	intel_wakeref_t wakeref_gt0;
 
 	/** our requests to build */
 	struct i915_request *requests[MAX_ENGINE_INSTANCE + 1];
@@ -2719,13 +2721,13 @@ eb_select_engine(struct i915_execbuffer *eb)
 
 	for_each_child(ce, child)
 		intel_context_get(child);
-	intel_gt_pm_get(gt);
+	eb->wakeref = intel_gt_pm_get(ce->engine->gt);
 	/*
 	 * Keep GT0 active on MTL so that i915_vma_parked() doesn't
 	 * free VMAs while execbuf ioctl is validating VMAs.
 	 */
 	if (gt->info.id)
-		intel_gt_pm_get(to_gt(gt->i915));
+		eb->wakeref_gt0 = intel_gt_pm_get(to_gt(gt->i915));
 
 	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
 		err = intel_context_alloc_state(ce);
@@ -2765,9 +2767,9 @@ eb_select_engine(struct i915_execbuffer *eb)
 
 err:
 	if (gt->info.id)
-		intel_gt_pm_put(to_gt(gt->i915));
+		intel_gt_pm_put(to_gt(gt->i915), eb->wakeref_gt0);
 
-	intel_gt_pm_put(gt);
+	intel_gt_pm_put(ce->engine->gt, eb->wakeref);
 	for_each_child(ce, child)
 		intel_context_put(child);
 	intel_context_put(ce);
@@ -2785,8 +2787,8 @@ eb_put_engine(struct i915_execbuffer *eb)
 	 * i915_vma_parked() from interfering while execbuf validates vmas.
 	 */
 	if (eb->gt->info.id)
-		intel_gt_pm_put(to_gt(eb->gt->i915));
-	intel_gt_pm_put(eb->gt);
+		intel_gt_pm_put(to_gt(eb->gt->i915), eb->wakeref_gt0);
+	intel_gt_pm_put(eb->context->engine->gt, eb->wakeref);
 	for_each_child(eb->context, child)
 		intel_context_put(child);
 	intel_context_put(eb->context);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 3bef1beec7cbb5..3fd68a099a85ef 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -85,6 +85,7 @@ static int cpu_get(struct context *ctx, unsigned long offset, u32 *v)
 
 static int gtt_set(struct context *ctx, unsigned long offset, u32 v)
 {
+	intel_wakeref_t wakeref;
 	struct i915_vma *vma;
 	u32 __iomem *map;
 	int err = 0;
@@ -99,7 +100,7 @@ static int gtt_set(struct context *ctx, unsigned long offset, u32 v)
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	intel_gt_pm_get(vma->vm->gt);
+	wakeref = intel_gt_pm_get(vma->vm->gt);
 
 	map = i915_vma_pin_iomap(vma);
 	i915_vma_unpin(vma);
@@ -112,12 +113,13 @@ static int gtt_set(struct context *ctx, unsigned long offset, u32 v)
 	i915_vma_unpin_iomap(vma);
 
 out_rpm:
-	intel_gt_pm_put(vma->vm->gt);
+	intel_gt_pm_put(vma->vm->gt, wakeref);
 	return err;
 }
 
 static int gtt_get(struct context *ctx, unsigned long offset, u32 *v)
 {
+	intel_wakeref_t wakeref;
 	struct i915_vma *vma;
 	u32 __iomem *map;
 	int err = 0;
@@ -132,7 +134,7 @@ static int gtt_get(struct context *ctx, unsigned long offset, u32 *v)
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	intel_gt_pm_get(vma->vm->gt);
+	wakeref = intel_gt_pm_get(vma->vm->gt);
 
 	map = i915_vma_pin_iomap(vma);
 	i915_vma_unpin(vma);
@@ -145,7 +147,7 @@ static int gtt_get(struct context *ctx, unsigned long offset, u32 *v)
 	i915_vma_unpin_iomap(vma);
 
 out_rpm:
-	intel_gt_pm_put(vma->vm->gt);
+	intel_gt_pm_put(vma->vm->gt, wakeref);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 72957a36a36be3..2c51a2c452fc5c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -630,14 +630,14 @@ static bool assert_mmap_offset(struct drm_i915_private *i915,
 static void disable_retire_worker(struct drm_i915_private *i915)
 {
 	i915_gem_driver_unregister__shrinker(i915);
-	intel_gt_pm_get(to_gt(i915));
+	intel_gt_pm_get_untracked(to_gt(i915));
 	cancel_delayed_work_sync(&to_gt(i915)->requests.retire_work);
 }
 
 static void restore_retire_worker(struct drm_i915_private *i915)
 {
 	igt_flush_test(i915);
-	intel_gt_pm_put(to_gt(i915));
+	intel_gt_pm_put_untracked(to_gt(i915));
 	i915_gem_driver_register__shrinker(i915);
 }
 
@@ -778,6 +778,7 @@ static int igt_mmap_offset_exhaustion(void *arg)
 
 static int gtt_set(struct drm_i915_gem_object *obj)
 {
+	intel_wakeref_t wakeref;
 	struct i915_vma *vma;
 	void __iomem *map;
 	int err = 0;
@@ -786,7 +787,7 @@ static int gtt_set(struct drm_i915_gem_object *obj)
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	intel_gt_pm_get(vma->vm->gt);
+	wakeref = intel_gt_pm_get(vma->vm->gt);
 	map = i915_vma_pin_iomap(vma);
 	i915_vma_unpin(vma);
 	if (IS_ERR(map)) {
@@ -798,12 +799,13 @@ static int gtt_set(struct drm_i915_gem_object *obj)
 	i915_vma_unpin_iomap(vma);
 
 out:
-	intel_gt_pm_put(vma->vm->gt);
+	intel_gt_pm_put(vma->vm->gt, wakeref);
 	return err;
 }
 
 static int gtt_check(struct drm_i915_gem_object *obj)
 {
+	intel_wakeref_t wakeref;
 	struct i915_vma *vma;
 	void __iomem *map;
 	int err = 0;
@@ -812,7 +814,7 @@ static int gtt_check(struct drm_i915_gem_object *obj)
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	intel_gt_pm_get(vma->vm->gt);
+	wakeref = intel_gt_pm_get(vma->vm->gt);
 	map = i915_vma_pin_iomap(vma);
 	i915_vma_unpin(vma);
 	if (IS_ERR(map)) {
@@ -828,7 +830,7 @@ static int gtt_check(struct drm_i915_gem_object *obj)
 	i915_vma_unpin_iomap(vma);
 
 out:
-	intel_gt_pm_put(vma->vm->gt);
+	intel_gt_pm_put(vma->vm->gt, wakeref);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index ecc990ec1b9526..d650beb8ed22f6 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -28,11 +28,14 @@ static void irq_disable(struct intel_breadcrumbs *b)
 
 static void __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
 {
+	intel_wakeref_t wakeref;
+
 	/*
 	 * Since we are waiting on a request, the GPU should be busy
 	 * and should have its own rpm reference.
 	 */
-	if (GEM_WARN_ON(!intel_gt_pm_get_if_awake(b->irq_engine->gt)))
+	wakeref = intel_gt_pm_get_if_awake(b->irq_engine->gt);
+	if (GEM_WARN_ON(!wakeref))
 		return;
 
 	/*
@@ -41,7 +44,7 @@ static void __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
 	 * which we can add a new waiter and avoid the cost of re-enabling
 	 * the irq.
 	 */
-	WRITE_ONCE(b->irq_armed, true);
+	WRITE_ONCE(b->irq_armed, wakeref);
 
 	/* Requests may have completed before we could enable the interrupt. */
 	if (!b->irq_enabled++ && b->irq_enable(b))
@@ -61,12 +64,14 @@ static void intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
 
 static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
 {
+	intel_wakeref_t wakeref = b->irq_armed;
+
 	GEM_BUG_ON(!b->irq_enabled);
 	if (!--b->irq_enabled)
 		b->irq_disable(b);
 
-	WRITE_ONCE(b->irq_armed, false);
-	intel_gt_pm_put_async(b->irq_engine->gt);
+	WRITE_ONCE(b->irq_armed, 0);
+	intel_gt_pm_put_async(b->irq_engine->gt, wakeref);
 }
 
 static void intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
index 72dfd3748c4c33..bdf09fd67b6e70 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
@@ -13,6 +13,7 @@
 #include <linux/types.h>
 
 #include "intel_engine_types.h"
+#include "intel_wakeref.h"
 
 /*
  * Rather than have every client wait upon all user interrupts,
@@ -43,7 +44,7 @@ struct intel_breadcrumbs {
 	spinlock_t irq_lock; /* protects the interrupt from hardirq context */
 	struct irq_work irq_work; /* for use from inside irq_lock */
 	unsigned int irq_enabled;
-	bool irq_armed;
+	intel_wakeref_t irq_armed;
 
 	/* Not all breadcrumbs are attached to physical HW */
 	intel_engine_mask_t	engine_mask;
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index a80e3b7c24ff98..25564c01507e49 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -212,7 +212,7 @@ static inline void intel_context_enter(struct intel_context *ce)
 		return;
 
 	ce->ops->enter(ce);
-	intel_gt_pm_get(ce->vm->gt);
+	ce->wakeref = intel_gt_pm_get(ce->vm->gt);
 }
 
 static inline void intel_context_mark_active(struct intel_context *ce)
@@ -229,7 +229,7 @@ static inline void intel_context_exit(struct intel_context *ce)
 	if (--ce->active_count)
 		return;
 
-	intel_gt_pm_put_async(ce->vm->gt);
+	intel_gt_pm_put_async(ce->vm->gt, ce->wakeref);
 	ce->ops->exit(ce);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index aceaac28a33eb0..7eccbd70d89fce 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -17,6 +17,7 @@
 #include "i915_utils.h"
 #include "intel_engine_types.h"
 #include "intel_sseu.h"
+#include "intel_wakeref.h"
 
 #include "uc/intel_guc_fwif.h"
 
@@ -112,6 +113,7 @@ struct intel_context {
 	u32 ring_size;
 	struct intel_ring *ring;
 	struct intel_timeline *timeline;
+	intel_wakeref_t wakeref;
 
 	unsigned long flags;
 #define CONTEXT_BARRIER_BIT		0
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index e91fc881dbf18b..96bdb93a948d1b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -63,7 +63,7 @@ static int __engine_unpark(struct intel_wakeref *wf)
 
 	ENGINE_TRACE(engine, "\n");
 
-	intel_gt_pm_get(engine->gt);
+	engine->wakeref_track = intel_gt_pm_get(engine->gt);
 
 	/* Discard stale context state from across idling */
 	ce = engine->kernel_context;
@@ -122,6 +122,7 @@ __queue_and_release_pm(struct i915_request *rq,
 	 */
 	GEM_BUG_ON(rq->context->active_count != 1);
 	__intel_gt_pm_get(engine->gt);
+	rq->context->wakeref = intel_wakeref_track(&engine->gt->wakeref);
 
 	/*
 	 * We have to serialise all potential retirement paths with our
@@ -285,7 +286,7 @@ static int __engine_park(struct intel_wakeref *wf)
 		engine->park(engine);
 
 	/* While gt calls i915_vma_parked(), we have to break the lock cycle */
-	intel_gt_pm_put_async(engine->gt);
+	intel_gt_pm_put_async(engine->gt, engine->wakeref_track);
 	return 0;
 }
 
@@ -296,7 +297,7 @@ static const struct intel_wakeref_ops wf_ops = {
 
 void intel_engine_init__pm(struct intel_engine_cs *engine)
 {
-	intel_wakeref_init(&engine->wakeref, engine->i915, &wf_ops);
+	intel_wakeref_init(&engine->wakeref, engine->i915, &wf_ops, engine->name);
 	intel_engine_init_heartbeat(engine);
 
 	intel_gsc_idle_msg_enable(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 8769760257fd9e..960e6be2042fe0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -446,7 +446,9 @@ struct intel_engine_cs {
 	unsigned long serial;
 
 	unsigned long wakeref_serial;
+	intel_wakeref_t wakeref_track;
 	struct intel_wakeref wakeref;
+
 	struct file *default_state;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index e8f42ec6b1b471..42aade0faf2d14 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -630,7 +630,7 @@ static void __execlists_schedule_out(struct i915_request * const rq,
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
 	if (engine->fw_domain && !--engine->fw_active)
 		intel_uncore_forcewake_put(engine->uncore, engine->fw_domain);
-	intel_gt_pm_put_async(engine->gt);
+	intel_gt_pm_put_async_untracked(engine->gt);
 
 	/*
 	 * If this is part of a virtual engine, its next request may
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 1c93e84278a037..a6cf7ad59c9c0d 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -278,7 +278,7 @@ static bool should_update_ggtt_with_bind(struct i915_ggtt *ggtt)
 	return intel_gt_is_bind_context_ready(gt);
 }
 
-static struct intel_context *gen8_ggtt_bind_get_ce(struct i915_ggtt *ggtt)
+static struct intel_context *gen8_ggtt_bind_get_ce(struct i915_ggtt *ggtt, intel_wakeref_t *wakeref)
 {
 	struct intel_context *ce;
 	struct intel_gt *gt = ggtt->vm.gt;
@@ -295,7 +295,8 @@ static struct intel_context *gen8_ggtt_bind_get_ce(struct i915_ggtt *ggtt)
 	 * would conflict with fs_reclaim trying to allocate memory while
 	 * doing rpm_resume().
 	 */
-	if (!intel_gt_pm_get_if_awake(gt))
+	*wakeref = intel_gt_pm_get_if_awake(gt);
+	if (!*wakeref)
 		return NULL;
 
 	intel_engine_pm_get(ce->engine);
@@ -303,10 +304,10 @@ static struct intel_context *gen8_ggtt_bind_get_ce(struct i915_ggtt *ggtt)
 	return ce;
 }
 
-static void gen8_ggtt_bind_put_ce(struct intel_context *ce)
+static void gen8_ggtt_bind_put_ce(struct intel_context *ce, intel_wakeref_t wakeref)
 {
 	intel_engine_pm_put(ce->engine);
-	intel_gt_pm_put(ce->engine->gt);
+	intel_gt_pm_put(ce->engine->gt, wakeref);
 }
 
 static bool gen8_ggtt_bind_ptes(struct i915_ggtt *ggtt, u32 offset,
@@ -319,12 +320,13 @@ static bool gen8_ggtt_bind_ptes(struct i915_ggtt *ggtt, u32 offset,
 	struct sgt_iter iter;
 	struct i915_request *rq;
 	struct intel_context *ce;
+	intel_wakeref_t wakeref;
 	u32 *cs;
 
 	if (!num_entries)
 		return true;
 
-	ce = gen8_ggtt_bind_get_ce(ggtt);
+	ce = gen8_ggtt_bind_get_ce(ggtt, &wakeref);
 	if (!ce)
 		return false;
 
@@ -400,13 +402,13 @@ static bool gen8_ggtt_bind_ptes(struct i915_ggtt *ggtt, u32 offset,
 		offset += n_ptes;
 	}
 
-	gen8_ggtt_bind_put_ce(ce);
+	gen8_ggtt_bind_put_ce(ce, wakeref);
 	return true;
 
 err_rq:
 	i915_request_put(rq);
 put_ce:
-	gen8_ggtt_bind_put_ce(ce);
+	gen8_ggtt_bind_put_ce(ce, wakeref);
 	return false;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index f5899d503e234b..4e38d666fe7037 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -28,19 +28,20 @@
 static void user_forcewake(struct intel_gt *gt, bool suspend)
 {
 	int count = atomic_read(&gt->user_wakeref);
+	intel_wakeref_t wakeref;
 
 	/* Inside suspend/resume so single threaded, no races to worry about. */
 	if (likely(!count))
 		return;
 
-	intel_gt_pm_get(gt);
+	wakeref = intel_gt_pm_get(gt);
 	if (suspend) {
 		GEM_BUG_ON(count > atomic_read(&gt->wakeref.count));
 		atomic_sub(count, &gt->wakeref.count);
 	} else {
 		atomic_add(count, &gt->wakeref.count);
 	}
-	intel_gt_pm_put(gt);
+	intel_gt_pm_put(gt, wakeref);
 }
 
 static void runtime_begin(struct intel_gt *gt)
@@ -138,7 +139,7 @@ void intel_gt_pm_init_early(struct intel_gt *gt)
 	 * runtime_pm is per-device rather than per-tile, so this is still the
 	 * correct structure.
 	 */
-	intel_wakeref_init(&gt->wakeref, gt->i915, &wf_ops);
+	intel_wakeref_init(&gt->wakeref, gt->i915, &wf_ops, "GT");
 	seqcount_mutex_init(&gt->stats.lock, &gt->wakeref.mutex);
 }
 
@@ -236,6 +237,7 @@ int intel_gt_resume(struct intel_gt *gt)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	intel_wakeref_t wakeref;
 	int err;
 
 	err = intel_gt_has_unrecoverable_error(gt);
@@ -252,7 +254,7 @@ int intel_gt_resume(struct intel_gt *gt)
 	 */
 	gt_sanitize(gt, true);
 
-	intel_gt_pm_get(gt);
+	wakeref = intel_gt_pm_get(gt);
 
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 	intel_rc6_sanitize(&gt->rc6);
@@ -295,7 +297,7 @@ int intel_gt_resume(struct intel_gt *gt)
 
 out_fw:
 	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
-	intel_gt_pm_put(gt);
+	intel_gt_pm_put(gt, wakeref);
 	intel_gt_bind_context_set_ready(gt);
 	return err;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
index b1eeb5b33918ca..911fd0160221ba 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
@@ -16,19 +16,28 @@ static inline bool intel_gt_pm_is_awake(const struct intel_gt *gt)
 	return intel_wakeref_is_active(&gt->wakeref);
 }
 
-static inline void intel_gt_pm_get(struct intel_gt *gt)
+static inline void intel_gt_pm_get_untracked(struct intel_gt *gt)
 {
 	intel_wakeref_get(&gt->wakeref);
 }
 
+static inline intel_wakeref_t intel_gt_pm_get(struct intel_gt *gt)
+{
+	intel_gt_pm_get_untracked(gt);
+	return intel_wakeref_track(&gt->wakeref);
+}
+
 static inline void __intel_gt_pm_get(struct intel_gt *gt)
 {
 	__intel_wakeref_get(&gt->wakeref);
 }
 
-static inline bool intel_gt_pm_get_if_awake(struct intel_gt *gt)
+static inline intel_wakeref_t intel_gt_pm_get_if_awake(struct intel_gt *gt)
 {
-	return intel_wakeref_get_if_active(&gt->wakeref);
+	if (!intel_wakeref_get_if_active(&gt->wakeref))
+		return 0;
+
+	return intel_wakeref_track(&gt->wakeref);
 }
 
 static inline void intel_gt_pm_might_get(struct intel_gt *gt)
@@ -36,12 +45,18 @@ static inline void intel_gt_pm_might_get(struct intel_gt *gt)
 	intel_wakeref_might_get(&gt->wakeref);
 }
 
-static inline void intel_gt_pm_put(struct intel_gt *gt)
+static inline void intel_gt_pm_put_untracked(struct intel_gt *gt)
 {
 	intel_wakeref_put(&gt->wakeref);
 }
 
-static inline void intel_gt_pm_put_async(struct intel_gt *gt)
+static inline void intel_gt_pm_put(struct intel_gt *gt, intel_wakeref_t handle)
+{
+	intel_wakeref_untrack(&gt->wakeref, handle);
+	intel_gt_pm_put_untracked(gt);
+}
+
+static inline void intel_gt_pm_put_async_untracked(struct intel_gt *gt)
 {
 	intel_wakeref_put_async(&gt->wakeref);
 }
@@ -51,9 +66,14 @@ static inline void intel_gt_pm_might_put(struct intel_gt *gt)
 	intel_wakeref_might_put(&gt->wakeref);
 }
 
-#define with_intel_gt_pm(gt, tmp) \
-	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
-	     intel_gt_pm_put(gt), tmp = 0)
+static inline void intel_gt_pm_put_async(struct intel_gt *gt, intel_wakeref_t handle)
+{
+	intel_wakeref_untrack(&gt->wakeref, handle);
+	intel_gt_pm_put_async_untracked(gt);
+}
+
+#define with_intel_gt_pm(gt, wf) \
+	for (wf = intel_gt_pm_get(gt); wf; intel_gt_pm_put(gt, wf), wf = 0)
 
 /**
  * with_intel_gt_pm_if_awake - if GT is PM awake, get a reference to prevent
@@ -64,7 +84,7 @@ static inline void intel_gt_pm_might_put(struct intel_gt *gt)
  * @wf: pointer to a temporary wakeref.
  */
 #define with_intel_gt_pm_if_awake(gt, wf) \
-	for (wf = intel_gt_pm_get_if_awake(gt); wf; intel_gt_pm_put_async(gt), wf = 0)
+	for (wf = intel_gt_pm_get_if_awake(gt); wf; intel_gt_pm_put_async(gt, wf), wf = 0)
 
 static inline int intel_gt_pm_wait_for_idle(struct intel_gt *gt)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index f900cc68d6d98a..7114c116e9284a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -27,7 +27,7 @@
 void intel_gt_pm_debugfs_forcewake_user_open(struct intel_gt *gt)
 {
 	atomic_inc(&gt->user_wakeref);
-	intel_gt_pm_get(gt);
+	intel_gt_pm_get_untracked(gt);
 	if (GRAPHICS_VER(gt->i915) >= 6)
 		intel_uncore_forcewake_user_get(gt->uncore);
 }
@@ -36,7 +36,7 @@ void intel_gt_pm_debugfs_forcewake_user_release(struct intel_gt *gt)
 {
 	if (GRAPHICS_VER(gt->i915) >= 6)
 		intel_uncore_forcewake_user_put(gt->uncore);
-	intel_gt_pm_put(gt);
+	intel_gt_pm_put_untracked(gt);
 	atomic_dec(&gt->user_wakeref);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
index 86cecf7a110540..5ffa5e30f41929 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
@@ -21,20 +21,22 @@ static int cmp_u32(const void *A, const void *B)
 	return *a - *b;
 }
 
-static void perf_begin(struct intel_gt *gt)
+static intel_wakeref_t perf_begin(struct intel_gt *gt)
 {
-	intel_gt_pm_get(gt);
+	intel_wakeref_t wakeref = intel_gt_pm_get(gt);
 
 	/* Boost gpufreq to max [waitboost] and keep it fixed */
 	atomic_inc(&gt->rps.num_waiters);
 	queue_work(gt->i915->unordered_wq, &gt->rps.work);
 	flush_work(&gt->rps.work);
+
+	return wakeref;
 }
 
-static int perf_end(struct intel_gt *gt)
+static int perf_end(struct intel_gt *gt, intel_wakeref_t wakeref)
 {
 	atomic_dec(&gt->rps.num_waiters);
-	intel_gt_pm_put(gt);
+	intel_gt_pm_put(gt, wakeref);
 
 	return igt_flush_test(gt->i915);
 }
@@ -133,12 +135,13 @@ static int perf_mi_bb_start(void *arg)
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	intel_wakeref_t wakeref;
 	int err = 0;
 
 	if (GRAPHICS_VER(gt->i915) < 4) /* Any CS_TIMESTAMP? */
 		return 0;
 
-	perf_begin(gt);
+	wakeref = perf_begin(gt);
 	for_each_engine(engine, gt, id) {
 		struct intel_context *ce = engine->kernel_context;
 		struct i915_vma *batch;
@@ -207,7 +210,7 @@ static int perf_mi_bb_start(void *arg)
 		pr_info("%s: MI_BB_START cycles: %u\n",
 			engine->name, trifilter(cycles));
 	}
-	if (perf_end(gt))
+	if (perf_end(gt, wakeref))
 		err = -EIO;
 
 	return err;
@@ -260,12 +263,13 @@ static int perf_mi_noop(void *arg)
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	intel_wakeref_t wakeref;
 	int err = 0;
 
 	if (GRAPHICS_VER(gt->i915) < 4) /* Any CS_TIMESTAMP? */
 		return 0;
 
-	perf_begin(gt);
+	wakeref = perf_begin(gt);
 	for_each_engine(engine, gt, id) {
 		struct intel_context *ce = engine->kernel_context;
 		struct i915_vma *base, *nop;
@@ -364,7 +368,7 @@ static int perf_mi_noop(void *arg)
 		pr_info("%s: 16K MI_NOOP cycles: %u\n",
 			engine->name, trifilter(cycles));
 	}
-	if (perf_end(gt))
+	if (perf_end(gt, wakeref))
 		err = -EIO;
 
 	return err;
diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index 0971241707ce83..33351deeea4f0b 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -81,6 +81,7 @@ static int live_gt_clocks(void *arg)
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	intel_wakeref_t wakeref;
 	int err = 0;
 
 	if (!gt->clock_frequency) { /* unknown */
@@ -91,7 +92,7 @@ static int live_gt_clocks(void *arg)
 	if (GRAPHICS_VER(gt->i915) < 4) /* Any CS_TIMESTAMP? */
 		return 0;
 
-	intel_gt_pm_get(gt);
+	wakeref = intel_gt_pm_get(gt);
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 
 	for_each_engine(engine, gt, id) {
@@ -128,7 +129,7 @@ static int live_gt_clocks(void *arg)
 	}
 
 	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
-	intel_gt_pm_put(gt);
+	intel_gt_pm_put(gt, wakeref);
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c
index 79aa6ac66ad2f7..f40de408cd3a98 100644
--- a/drivers/gpu/drm/i915/gt/selftest_reset.c
+++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
@@ -261,11 +261,12 @@ static int igt_atomic_reset(void *arg)
 {
 	struct intel_gt *gt = arg;
 	const typeof(*igt_atomic_phases) *p;
+	intel_wakeref_t wakeref;
 	int err = 0;
 
 	/* Check that the resets are usable from atomic context */
 
-	intel_gt_pm_get(gt);
+	wakeref = intel_gt_pm_get(gt);
 	igt_global_reset_lock(gt);
 
 	/* Flush any requests before we get started and check basics */
@@ -296,7 +297,7 @@ static int igt_atomic_reset(void *arg)
 
 unlock:
 	igt_global_reset_unlock(gt);
-	intel_gt_pm_put(gt);
+	intel_gt_pm_put(gt, wakeref);
 
 	return err;
 }
@@ -307,6 +308,7 @@ static int igt_atomic_engine_reset(void *arg)
 	const typeof(*igt_atomic_phases) *p;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	intel_wakeref_t wakeref;
 	int err = 0;
 
 	/* Check that the resets are usable from atomic context */
@@ -317,7 +319,7 @@ static int igt_atomic_engine_reset(void *arg)
 	if (intel_uc_uses_guc_submission(&gt->uc))
 		return 0;
 
-	intel_gt_pm_get(gt);
+	wakeref = intel_gt_pm_get(gt);
 	igt_global_reset_lock(gt);
 
 	/* Flush any requests before we get started and check basics */
@@ -365,7 +367,7 @@ static int igt_atomic_engine_reset(void *arg)
 
 out_unlock:
 	igt_global_reset_unlock(gt);
-	intel_gt_pm_put(gt);
+	intel_gt_pm_put(gt, wakeref);
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index fb30f733b03665..dcef8d49891972 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -224,6 +224,7 @@ int live_rps_clock_interval(void *arg)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 	struct igt_spinner spin;
+	intel_wakeref_t wakeref;
 	int err = 0;
 
 	if (!intel_rps_is_enabled(rps) || GRAPHICS_VER(gt->i915) < 6)
@@ -236,7 +237,7 @@ int live_rps_clock_interval(void *arg)
 	saved_work = rps->work.func;
 	rps->work.func = dummy_rps_work;
 
-	intel_gt_pm_get(gt);
+	wakeref = intel_gt_pm_get(gt);
 	intel_rps_disable(&gt->rps);
 
 	intel_gt_check_clock_frequency(gt);
@@ -355,7 +356,7 @@ int live_rps_clock_interval(void *arg)
 	}
 
 	intel_rps_enable(&gt->rps);
-	intel_gt_pm_put(gt);
+	intel_gt_pm_put(gt, wakeref);
 
 	igt_spinner_fini(&spin);
 
@@ -376,6 +377,7 @@ int live_rps_control(void *arg)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 	struct igt_spinner spin;
+	intel_wakeref_t wakeref;
 	int err = 0;
 
 	/*
@@ -398,7 +400,7 @@ int live_rps_control(void *arg)
 	saved_work = rps->work.func;
 	rps->work.func = dummy_rps_work;
 
-	intel_gt_pm_get(gt);
+	wakeref = intel_gt_pm_get(gt);
 	for_each_engine(engine, gt, id) {
 		struct i915_request *rq;
 		ktime_t min_dt, max_dt;
@@ -488,7 +490,7 @@ int live_rps_control(void *arg)
 			break;
 		}
 	}
-	intel_gt_pm_put(gt);
+	intel_gt_pm_put(gt, wakeref);
 
 	igt_spinner_fini(&spin);
 
@@ -1023,6 +1025,7 @@ int live_rps_interrupt(void *arg)
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 	struct igt_spinner spin;
+	intel_wakeref_t wakeref;
 	u32 pm_events;
 	int err = 0;
 
@@ -1033,9 +1036,9 @@ int live_rps_interrupt(void *arg)
 	if (!intel_rps_has_interrupts(rps) || GRAPHICS_VER(gt->i915) < 6)
 		return 0;
 
-	intel_gt_pm_get(gt);
-	pm_events = rps->pm_events;
-	intel_gt_pm_put(gt);
+	pm_events = 0;
+	with_intel_gt_pm(gt, wakeref)
+		pm_events = rps->pm_events;
 	if (!pm_events) {
 		pr_err("No RPS PM events registered, but RPS is enabled?\n");
 		return -ENODEV;
diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
index 952c8d52d68a2c..302d0540295d7c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
@@ -266,6 +266,7 @@ static int run_test(struct intel_gt *gt, int test_type)
 	struct intel_rps *rps = &gt->rps;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	intel_wakeref_t wakeref;
 	struct igt_spinner spin;
 	u32 slpc_min_freq, slpc_max_freq;
 	int err = 0;
@@ -311,7 +312,7 @@ static int run_test(struct intel_gt *gt, int test_type)
 	}
 
 	intel_gt_pm_wait_for_idle(gt);
-	intel_gt_pm_get(gt);
+	wakeref = intel_gt_pm_get(gt);
 	for_each_engine(engine, gt, id) {
 		struct i915_request *rq;
 		u32 max_act_freq;
@@ -397,7 +398,7 @@ static int run_test(struct intel_gt *gt, int test_type)
 	if (igt_flush_test(gt->i915))
 		err = -EIO;
 
-	intel_gt_pm_put(gt);
+	intel_gt_pm_put(gt, wakeref);
 	igt_spinner_fini(&spin);
 	intel_gt_pm_wait_for_idle(gt);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index d37698bd6b91ae..04f8377fd7a399 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1107,7 +1107,7 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
 			if (deregister)
 				guc_signal_context_fence(ce);
 			if (destroyed) {
-				intel_gt_pm_put_async(guc_to_gt(guc));
+				intel_gt_pm_put_async_untracked(guc_to_gt(guc));
 				release_guc_id(guc, ce);
 				__guc_context_destroy(ce);
 			}
@@ -1303,6 +1303,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
 	unsigned long flags;
 	u32 reset_count;
 	bool in_reset;
+	intel_wakeref_t wakeref;
 
 	spin_lock_irqsave(&guc->timestamp.lock, flags);
 
@@ -1325,7 +1326,8 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
 	 * start_gt_clk is derived from GuC state. To get a consistent
 	 * view of activity, we query the GuC state only if gt is awake.
 	 */
-	if (!in_reset && intel_gt_pm_get_if_awake(gt)) {
+	wakeref = in_reset ? 0 : intel_gt_pm_get_if_awake(gt);
+	if (wakeref) {
 		stats_saved = *stats;
 		gt_stamp_saved = guc->timestamp.gt_stamp;
 		/*
@@ -1334,7 +1336,7 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
 		 */
 		guc_update_engine_gt_clks(engine);
 		guc_update_pm_timestamp(guc, now);
-		intel_gt_pm_put_async(gt);
+		intel_gt_pm_put_async(gt, wakeref);
 		if (i915_reset_count(gpu_error) != reset_count) {
 			*stats = stats_saved;
 			guc->timestamp.gt_stamp = gt_stamp_saved;
@@ -3385,9 +3387,9 @@ static void destroyed_worker_func(struct work_struct *w)
 	struct intel_guc *guc = container_of(w, struct intel_guc,
 					     submission_state.destroyed_worker);
 	struct intel_gt *gt = guc_to_gt(guc);
-	int tmp;
+	intel_wakeref_t wakeref;
 
-	with_intel_gt_pm(gt, tmp)
+	with_intel_gt_pm(gt, wakeref)
 		deregister_destroyed_contexts(guc);
 }
 
@@ -4894,7 +4896,7 @@ int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
 		intel_context_put(ce);
 	} else if (context_destroyed(ce)) {
 		/* Context has been destroyed */
-		intel_gt_pm_put_async(guc_to_gt(guc));
+		intel_gt_pm_put_async_untracked(guc_to_gt(guc));
 		release_guc_id(guc, ce);
 		__guc_context_destroy(ce);
 	}
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index f861863eb7c15a..f7fa613892a190 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -213,19 +213,19 @@ static u64 get_rc6(struct intel_gt *gt)
 	struct drm_i915_private *i915 = gt->i915;
 	const unsigned int gt_id = gt->info.id;
 	struct i915_pmu *pmu = &i915->pmu;
+	intel_wakeref_t wakeref;
 	unsigned long flags;
-	bool awake = false;
 	u64 val;
 
-	if (intel_gt_pm_get_if_awake(gt)) {
+	wakeref = intel_gt_pm_get_if_awake(gt);
+	if (wakeref) {
 		val = __get_rc6(gt);
-		intel_gt_pm_put_async(gt);
-		awake = true;
+		intel_gt_pm_put_async(gt, wakeref);
 	}
 
 	spin_lock_irqsave(&pmu->lock, flags);
 
-	if (awake) {
+	if (wakeref) {
 		store_sample(pmu, gt_id, __I915_SAMPLE_RC6, val);
 	} else {
 		/*
@@ -429,12 +429,14 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
 	const unsigned int gt_id = gt->info.id;
 	struct i915_pmu *pmu = &i915->pmu;
 	struct intel_rps *rps = &gt->rps;
+	intel_wakeref_t wakeref;
 
 	if (!frequency_sampling_enabled(pmu, gt_id))
 		return;
 
 	/* Report 0/0 (actual/requested) frequency while parked. */
-	if (!intel_gt_pm_get_if_awake(gt))
+	wakeref = intel_gt_pm_get_if_awake(gt);
+	if (!wakeref)
 		return;
 
 	if (pmu->enable & config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt_id))) {
@@ -463,7 +465,7 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
 				period_ns / 1000);
 	}
 
-	intel_gt_pm_put_async(gt);
+	intel_gt_pm_put_async(gt, wakeref);
 }
 
 static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
index 2401b88b55a40f..dea2f63184f893 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.c
+++ b/drivers/gpu/drm/i915/intel_wakeref.c
@@ -99,7 +99,8 @@ static void __intel_wakeref_put_work(struct work_struct *wrk)
 void __intel_wakeref_init(struct intel_wakeref *wf,
 			  struct drm_i915_private *i915,
 			  const struct intel_wakeref_ops *ops,
-			  struct intel_wakeref_lockclass *key)
+			  struct intel_wakeref_lockclass *key,
+			  const char *name)
 {
 	wf->i915 = i915;
 	wf->ops = ops;
@@ -111,6 +112,10 @@ void __intel_wakeref_init(struct intel_wakeref *wf,
 	INIT_DELAYED_WORK(&wf->work, __intel_wakeref_put_work);
 	lockdep_init_map(&wf->work.work.lockdep_map,
 			 "wakeref.work", &key->work, 0);
+
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_WAKEREF)
+	ref_tracker_dir_init(&wf->debug, INTEL_REFTRACK_DEAD_COUNT, name);
+#endif
 }
 
 int intel_wakeref_wait_for_idle(struct intel_wakeref *wf)
diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
index 909cad13ac1f7b..68aa3be4825153 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.h
+++ b/drivers/gpu/drm/i915/intel_wakeref.h
@@ -50,6 +50,10 @@ struct intel_wakeref {
 	const struct intel_wakeref_ops *ops;
 
 	struct delayed_work work;
+
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_WAKEREF)
+	struct ref_tracker_dir debug;
+#endif
 };
 
 struct intel_wakeref_lockclass {
@@ -60,11 +64,12 @@ struct intel_wakeref_lockclass {
 void __intel_wakeref_init(struct intel_wakeref *wf,
 			  struct drm_i915_private *i915,
 			  const struct intel_wakeref_ops *ops,
-			  struct intel_wakeref_lockclass *key);
-#define intel_wakeref_init(wf, i915, ops) do {				\
+			  struct intel_wakeref_lockclass *key,
+			  const char *name);
+#define intel_wakeref_init(wf, i915, ops, name) do {			\
 	static struct intel_wakeref_lockclass __key;			\
 									\
-	__intel_wakeref_init((wf), (i915), (ops), &__key);		\
+	__intel_wakeref_init((wf), (i915), (ops), &__key, name);	\
 } while (0)
 
 int __intel_wakeref_get_first(struct intel_wakeref *wf);
@@ -292,6 +297,33 @@ static inline void intel_ref_tracker_free(struct ref_tracker_dir *dir,
 void intel_ref_tracker_show(struct ref_tracker_dir *dir,
 			    struct drm_printer *p);
 
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_WAKEREF)
+
+static inline intel_wakeref_t intel_wakeref_track(struct intel_wakeref *wf)
+{
+	return intel_ref_tracker_alloc(&wf->debug);
+}
+
+static inline void intel_wakeref_untrack(struct intel_wakeref *wf,
+					 intel_wakeref_t handle)
+{
+	intel_ref_tracker_free(&wf->debug, handle);
+}
+
+#else
+
+static inline intel_wakeref_t intel_wakeref_track(struct intel_wakeref *wf)
+{
+	return -1;
+}
+
+static inline void intel_wakeref_untrack(struct intel_wakeref *wf,
+					 intel_wakeref_t handle)
+{
+}
+
+#endif
+
 struct intel_wakeref_auto {
 	struct drm_i915_private *i915;
 	struct timer_list timer;

-- 
2.34.1

