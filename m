Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F5F128DD4
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 13:08:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FA1D6E523;
	Sun, 22 Dec 2019 12:07:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4FF76E523
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Dec 2019 12:07:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19662738-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Dec 2019 12:07:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Dec 2019 12:07:52 +0000
Message-Id: <20191222120752.1368352-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Pull GT initialisation under
 intel_gt_init()
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

Begin pulling the GT setup underneath a single GT umbrella; let intel_gt
take ownership of its engines! As hinted, the complication is the
lifetime of the probed engine versus the active lifetime of the GT
backends. We need to detect the engine layout early and keep it until
the end so that we can sanitize state on takeover and release.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Acked-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c  |   6 +-
 drivers/gpu/drm/i915/gt/intel_engine.h        |   8 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  42 +--
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  15 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            | 257 +++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   5 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  17 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |   9 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  14 +-
 .../gpu/drm/i915/gt/intel_timeline_types.h    |   2 +-
 drivers/gpu/drm/i915/gt/mock_engine.c         |  48 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   2 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   9 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  18 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |   5 +-
 drivers/gpu/drm/i915/i915_drv.c               |   1 -
 drivers/gpu/drm/i915/i915_gem.c               | 253 +----------------
 drivers/gpu/drm/i915/selftests/i915_gem.c     |   1 +
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  10 +-
 19 files changed, 357 insertions(+), 365 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index e869a3d86522..e40c3a0e2cd7 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -1333,12 +1333,14 @@ static int get_registers(struct intel_overlay *overlay, bool use_phys)
 void intel_overlay_setup(struct drm_i915_private *dev_priv)
 {
 	struct intel_overlay *overlay;
+	struct intel_engine_cs *engine;
 	int ret;
 
 	if (!HAS_OVERLAY(dev_priv))
 		return;
 
-	if (!HAS_ENGINE(dev_priv, RCS0))
+	engine = dev_priv->engine[RCS0];
+	if (!engine || !engine->kernel_context)
 		return;
 
 	overlay = kzalloc(sizeof(*overlay), GFP_KERNEL);
@@ -1346,7 +1348,7 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
 		return;
 
 	overlay->i915 = dev_priv;
-	overlay->context = dev_priv->engine[RCS0]->kernel_context;
+	overlay->context = engine->kernel_context;
 	GEM_BUG_ON(!overlay->context);
 
 	overlay->color_key = 0x0101fe;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index d4fd56f1e65e..428ec76b49d0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -186,7 +186,9 @@ void intel_engine_cleanup(struct intel_engine_cs *engine);
 int intel_engines_init_mmio(struct intel_gt *gt);
 int intel_engines_setup(struct intel_gt *gt);
 int intel_engines_init(struct intel_gt *gt);
-void intel_engines_cleanup(struct intel_gt *gt);
+
+void intel_engines_release(struct intel_gt *gt);
+void intel_engines_free(struct intel_gt *gt);
 
 int intel_engine_init_common(struct intel_engine_cs *engine);
 void intel_engine_cleanup_common(struct intel_engine_cs *engine);
@@ -275,8 +277,8 @@ gen8_emit_ggtt_write(u32 *cs, u32 value, u32 gtt_offset, u32 flags)
 static inline void __intel_engine_reset(struct intel_engine_cs *engine,
 					bool stalled)
 {
-	if (engine->reset.reset)
-		engine->reset.reset(engine, stalled);
+	if (engine->reset.rewind)
+		engine->reset.rewind(engine, stalled);
 	engine->serial++; /* contexts lost */
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 5309c61ad527..909614f581ac 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -319,12 +319,6 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
 	engine->props.timeslice_duration_ms =
 		CONFIG_DRM_I915_TIMESLICE_DURATION;
 
-	/*
-	 * To be overridden by the backend on setup. However to facilitate
-	 * cleanup on error during setup, we always provide the destroy vfunc.
-	 */
-	engine->destroy = (typeof(engine->destroy))kfree;
-
 	engine->context_size = intel_engine_context_size(gt, engine->class);
 	if (WARN_ON(engine->context_size > BIT(20)))
 		engine->context_size = 0;
@@ -390,21 +384,39 @@ static void intel_setup_engine_capabilities(struct intel_gt *gt)
 }
 
 /**
- * intel_engines_cleanup() - free the resources allocated for Command Streamers
+ * intel_engines_release() - free the resources allocated for Command Streamers
  * @gt: pointer to struct intel_gt
  */
-void intel_engines_cleanup(struct intel_gt *gt)
+void intel_engines_release(struct intel_gt *gt)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 
+	/* Decouple the backend; but keep the layout for late GPU resets */
 	for_each_engine(engine, gt, id) {
-		engine->destroy(engine);
-		gt->engine[id] = NULL;
+		if (!engine->release)
+			continue;
+
+		engine->release(engine);
+		engine->release = NULL;
+
+		memset(&engine->reset, 0, sizeof(engine->reset));
+
 		gt->i915->engine[id] = NULL;
 	}
 }
 
+void intel_engines_free(struct intel_gt *gt)
+{
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+
+	for_each_engine(engine, gt, id) {
+		kfree(engine);
+		gt->engine[id] = NULL;
+	}
+}
+
 /**
  * intel_engines_init_mmio() - allocate and prepare the Engine Command Streamers
  * @gt: pointer to struct intel_gt
@@ -455,7 +467,7 @@ int intel_engines_init_mmio(struct intel_gt *gt)
 	return 0;
 
 cleanup:
-	intel_engines_cleanup(gt);
+	intel_engines_free(gt);
 	return err;
 }
 
@@ -488,7 +500,7 @@ int intel_engines_init(struct intel_gt *gt)
 	return 0;
 
 cleanup:
-	intel_engines_cleanup(gt);
+	intel_engines_release(gt);
 	return err;
 }
 
@@ -663,16 +675,13 @@ int intel_engines_setup(struct intel_gt *gt)
 		if (err)
 			goto cleanup;
 
-		/* We expect the backend to take control over its state */
-		GEM_BUG_ON(engine->destroy == (typeof(engine->destroy))kfree);
-
 		GEM_BUG_ON(!engine->cops);
 	}
 
 	return 0;
 
 cleanup:
-	intel_engines_cleanup(gt);
+	intel_engines_release(gt);
 	return err;
 }
 
@@ -833,6 +842,7 @@ int intel_engine_init_common(struct intel_engine_cs *engine)
 void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 {
 	GEM_BUG_ON(!list_empty(&engine->active.requests));
+	tasklet_kill(&engine->execlists.tasklet); /* flush the callback */
 
 	cleanup_status_page(engine);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 7f227da09d66..00287515e7af 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -400,7 +400,10 @@ struct intel_engine_cs {
 
 	struct {
 		void (*prepare)(struct intel_engine_cs *engine);
-		void (*reset)(struct intel_engine_cs *engine, bool stalled);
+
+		void (*rewind)(struct intel_engine_cs *engine, bool stalled);
+		void (*cancel)(struct intel_engine_cs *engine);
+
 		void (*finish)(struct intel_engine_cs *engine);
 	} reset;
 
@@ -450,15 +453,7 @@ struct intel_engine_cs {
 	void		(*schedule)(struct i915_request *request,
 				    const struct i915_sched_attr *attr);
 
-	/*
-	 * Cancel all requests on the hardware, or queued for execution.
-	 * This should only cancel the ready requests that have been
-	 * submitted to the engine (via the engine->submit_request callback).
-	 * This is called when marking the device as wedged.
-	 */
-	void		(*cancel_requests)(struct intel_engine_cs *engine);
-
-	void		(*destroy)(struct intel_engine_cs *engine);
+	void		(*release)(struct intel_engine_cs *engine);
 
 	struct intel_engine_execlists execlists;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index af4f8c810009..f29c44bf992f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -4,11 +4,13 @@
  */
 
 #include "i915_drv.h"
+#include "intel_context.h"
 #include "intel_gt.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_requests.h"
 #include "intel_mocs.h"
 #include "intel_rc6.h"
+#include "intel_renderstate.h"
 #include "intel_rps.h"
 #include "intel_uncore.h"
 #include "intel_pm.h"
@@ -372,32 +374,276 @@ static struct i915_address_space *kernel_vm(struct intel_gt *gt)
 		return i915_vm_get(&gt->ggtt->vm);
 }
 
+static int __intel_context_flush_retire(struct intel_context *ce)
+{
+	struct intel_timeline *tl;
+
+	tl = intel_context_timeline_lock(ce);
+	if (IS_ERR(tl))
+		return PTR_ERR(tl);
+
+	intel_context_timeline_unlock(tl);
+	return 0;
+}
+
+static int __engines_record_defaults(struct intel_gt *gt)
+{
+	struct i915_request *requests[I915_NUM_ENGINES] = {};
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	int err = 0;
+
+	/*
+	 * As we reset the gpu during very early sanitisation, the current
+	 * register state on the GPU should reflect its defaults values.
+	 * We load a context onto the hw (with restore-inhibit), then switch
+	 * over to a second context to save that default register state. We
+	 * can then prime every new context with that state so they all start
+	 * from the same default HW values.
+	 */
+
+	for_each_engine(engine, gt, id) {
+		struct intel_renderstate so;
+		struct intel_context *ce;
+		struct i915_request *rq;
+
+		err = intel_renderstate_init(&so, engine);
+		if (err)
+			goto out;
+
+		/* We must be able to switch to something! */
+		GEM_BUG_ON(!engine->kernel_context);
+		engine->serial++; /* force the kernel context switch */
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			goto out;
+		}
+
+		rq = intel_context_create_request(ce);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			intel_context_put(ce);
+			goto out;
+		}
+
+		err = intel_engine_emit_ctx_wa(rq);
+		if (err)
+			goto err_rq;
+
+		err = intel_renderstate_emit(&so, rq);
+		if (err)
+			goto err_rq;
+
+err_rq:
+		requests[id] = i915_request_get(rq);
+		i915_request_add(rq);
+		intel_renderstate_fini(&so);
+		if (err)
+			goto out;
+	}
+
+	/* Flush the default context image to memory, and enable powersaving. */
+	if (intel_gt_wait_for_idle(gt, I915_GEM_IDLE_TIMEOUT) == -ETIME) {
+		err = -EIO;
+		goto out;
+	}
+
+	for (id = 0; id < ARRAY_SIZE(requests); id++) {
+		struct i915_request *rq;
+		struct i915_vma *state;
+		void *vaddr;
+
+		rq = requests[id];
+		if (!rq)
+			continue;
+
+		GEM_BUG_ON(!test_bit(CONTEXT_ALLOC_BIT, &rq->context->flags));
+		state = rq->context->state;
+		if (!state)
+			continue;
+
+		/* Serialise with retirement on another CPU */
+		GEM_BUG_ON(!i915_request_completed(rq));
+		err = __intel_context_flush_retire(rq->context);
+		if (err)
+			goto out;
+
+		/* We want to be able to unbind the state from the GGTT */
+		GEM_BUG_ON(intel_context_is_pinned(rq->context));
+
+		/*
+		 * As we will hold a reference to the logical state, it will
+		 * not be torn down with the context, and importantly the
+		 * object will hold onto its vma (making it possible for a
+		 * stray GTT write to corrupt our defaults). Unmap the vma
+		 * from the GTT to prevent such accidents and reclaim the
+		 * space.
+		 */
+		err = i915_vma_unbind(state);
+		if (err)
+			goto out;
+
+		i915_gem_object_lock(state->obj);
+		err = i915_gem_object_set_to_cpu_domain(state->obj, false);
+		i915_gem_object_unlock(state->obj);
+		if (err)
+			goto out;
+
+		i915_gem_object_set_cache_coherency(state->obj, I915_CACHE_LLC);
+
+		/* Check we can acquire the image of the context state */
+		vaddr = i915_gem_object_pin_map(state->obj, I915_MAP_FORCE_WB);
+		if (IS_ERR(vaddr)) {
+			err = PTR_ERR(vaddr);
+			goto out;
+		}
+
+		rq->engine->default_state = i915_gem_object_get(state->obj);
+		i915_gem_object_unpin_map(state->obj);
+	}
+
+out:
+	/*
+	 * If we have to abandon now, we expect the engines to be idle
+	 * and ready to be torn-down. The quickest way we can accomplish
+	 * this is by declaring ourselves wedged.
+	 */
+	if (err)
+		intel_gt_set_wedged(gt);
+
+	for (id = 0; id < ARRAY_SIZE(requests); id++) {
+		struct intel_context *ce;
+		struct i915_request *rq;
+
+		rq = requests[id];
+		if (!rq)
+			continue;
+
+		ce = rq->context;
+		i915_request_put(rq);
+		intel_context_put(ce);
+	}
+	return err;
+}
+
+static int __engines_verify_workarounds(struct intel_gt *gt)
+{
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	int err = 0;
+
+	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
+		return 0;
+
+	for_each_engine(engine, gt, id) {
+		if (intel_engine_verify_workarounds(engine, "load"))
+			err = -EIO;
+	}
+
+	return err;
+}
+
+static void __intel_gt_disable(struct intel_gt *gt)
+{
+	intel_gt_set_wedged_on_init(gt);
+
+	intel_gt_suspend_prepare(gt);
+	intel_gt_suspend_late(gt);
+
+	GEM_BUG_ON(intel_gt_pm_is_awake(gt));
+}
+
 int intel_gt_init(struct intel_gt *gt)
 {
 	int err;
 
-	err = intel_gt_init_scratch(gt, IS_GEN(gt->i915, 2) ? SZ_256K : SZ_4K);
+	err = i915_inject_probe_error(gt->i915, -ENODEV);
 	if (err)
 		return err;
 
+	/*
+	 * This is just a security blanket to placate dragons.
+	 * On some systems, we very sporadically observe that the first TLBs
+	 * used by the CS may be stale, despite us poking the TLB reset. If
+	 * we hold the forcewake during initialisation these problems
+	 * just magically go away.
+	 */
+	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
+
+	err = intel_gt_init_scratch(gt, IS_GEN(gt->i915, 2) ? SZ_256K : SZ_4K);
+	if (err)
+		goto out_fw;
+
 	intel_gt_pm_init(gt);
 
 	gt->vm = kernel_vm(gt);
 	if (!gt->vm) {
 		err = -ENOMEM;
-		goto err_scratch;
+		goto err_pm;
 	}
 
-	return 0;
+	err = intel_engines_setup(gt);
+	if (err)
+		goto err_vm;
+
+	err = intel_engines_init(gt);
+	if (err)
+		goto err_engines;
+
+	intel_uc_init(&gt->uc);
+
+	err = intel_gt_init_hw(gt);
+	if (err)
+		goto err_uc_init;
 
-err_scratch:
+	/* Only when the HW is re-initialised, can we replay the requests */
+	err = intel_gt_resume(gt);
+	if (err)
+		goto err_gt_init_hw;
+
+	err = __engines_record_defaults(gt);
+	if (err)
+		goto err_gt;
+
+	err = __engines_verify_workarounds(gt);
+	if (err)
+		goto err_gt;
+
+	err = i915_inject_probe_error(gt->i915, -EIO);
+	if (err)
+		goto err_gt;
+
+	goto out_fw;
+err_gt:
+	__intel_gt_disable(gt);
+err_gt_init_hw:
+	intel_uc_fini_hw(&gt->uc);
+err_uc_init:
+	intel_uc_fini(&gt->uc);
+err_engines:
+	intel_engines_release(gt);
+err_vm:
+	i915_vm_put(fetch_and_zero(&gt->vm));
+err_pm:
+	intel_gt_pm_fini(gt);
 	intel_gt_fini_scratch(gt);
+out_fw:
+	if (err)
+		intel_gt_set_wedged_on_init(gt);
+	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
 	return err;
 }
 
 void intel_gt_driver_remove(struct intel_gt *gt)
 {
-	GEM_BUG_ON(gt->awake);
+	__intel_gt_disable(gt);
+
+	intel_uc_fini_hw(&gt->uc);
+	intel_uc_fini(&gt->uc);
+
+	intel_engines_release(gt);
 }
 
 void intel_gt_driver_unregister(struct intel_gt *gt)
@@ -423,4 +669,5 @@ void intel_gt_driver_late_release(struct intel_gt *gt)
 	intel_gt_fini_requests(gt);
 	intel_gt_fini_reset(gt);
 	intel_gt_fini_timelines(gt);
+	intel_engines_free(gt);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index f36ce36dabeb..6231fe91a3b1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -281,6 +281,11 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 	/* We expect to be idle already; but also want to be independent */
 	wait_for_suspend(gt);
 
+	if (is_mock_gt(gt))
+		return;
+
+	GEM_BUG_ON(gt->awake);
+
 	/*
 	 * On disabling the device, we want to turn off HW access to memory
 	 * that we no longer own.
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index fe2d1523bda3..36e24d987c88 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3140,7 +3140,7 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 	__unwind_incomplete_requests(engine);
 }
 
-static void execlists_reset(struct intel_engine_cs *engine, bool stalled)
+static void execlists_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 {
 	unsigned long flags;
 
@@ -3158,7 +3158,7 @@ static void nop_submission_tasklet(unsigned long data)
 	/* The driver is wedged; don't process any more events. */
 }
 
-static void execlists_cancel_requests(struct intel_engine_cs *engine)
+static void execlists_reset_cancel(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request *rq, *rn;
@@ -3747,12 +3747,12 @@ static void execlists_park(struct intel_engine_cs *engine)
 void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = execlists_submit_request;
-	engine->cancel_requests = execlists_cancel_requests;
 	engine->schedule = i915_schedule;
 	engine->execlists.tasklet.func = execlists_submission_tasklet;
 
 	engine->reset.prepare = execlists_reset_prepare;
-	engine->reset.reset = execlists_reset;
+	engine->reset.rewind = execlists_reset_rewind;
+	engine->reset.cancel = execlists_reset_cancel;
 	engine->reset.finish = execlists_reset_finish;
 
 	engine->park = execlists_park;
@@ -3782,13 +3782,12 @@ static void execlists_shutdown(struct intel_engine_cs *engine)
 	tasklet_kill(&engine->execlists.tasklet);
 }
 
-static void execlists_destroy(struct intel_engine_cs *engine)
+static void execlists_release(struct intel_engine_cs *engine)
 {
 	execlists_shutdown(engine);
 
 	intel_engine_cleanup_common(engine);
 	lrc_destroy_wa_ctx(engine);
-	kfree(engine);
 }
 
 static void
@@ -3796,13 +3795,9 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 {
 	/* Default vfuncs which can be overriden by each engine. */
 
-	engine->destroy = execlists_destroy;
+	engine->release = execlists_release;
 	engine->resume = execlists_resume;
 
-	engine->reset.prepare = execlists_reset_prepare;
-	engine->reset.reset = execlists_reset;
-	engine->reset.finish = execlists_reset_finish;
-
 	engine->cops = &execlists_context_ops;
 	engine->request_alloc = execlists_request_alloc;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 95c24176ab64..ab8213b90517 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -666,7 +666,8 @@ static void reset_prepare_engine(struct intel_engine_cs *engine)
 	 * GPU state upon resume, i.e. fail to restart after a reset.
 	 */
 	intel_uncore_forcewake_get(engine->uncore, FORCEWAKE_ALL);
-	engine->reset.prepare(engine);
+	if (engine->reset.prepare)
+		engine->reset.prepare(engine);
 }
 
 static void revoke_mmaps(struct intel_gt *gt)
@@ -746,7 +747,8 @@ static int gt_reset(struct intel_gt *gt, intel_engine_mask_t stalled_mask)
 
 static void reset_finish_engine(struct intel_engine_cs *engine)
 {
-	engine->reset.finish(engine);
+	if (engine->reset.finish)
+		engine->reset.finish(engine);
 	intel_uncore_forcewake_put(engine->uncore, FORCEWAKE_ALL);
 
 	intel_engine_signal_breadcrumbs(engine);
@@ -823,7 +825,8 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
 
 	/* Mark all executing requests as skipped */
 	for_each_engine(engine, gt, id)
-		engine->cancel_requests(engine);
+		if (engine->reset.cancel)
+			engine->reset.cancel(engine);
 
 	reset_finish(gt, awake);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 3dc0d0a97a61..13bd649c261e 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -768,7 +768,7 @@ static void reset_prepare(struct intel_engine_cs *engine)
 			     intel_uncore_read_fw(uncore, RING_HEAD(base)));
 }
 
-static void reset_ring(struct intel_engine_cs *engine, bool stalled)
+static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
 {
 	struct i915_request *pos, *rq;
 	unsigned long flags;
@@ -900,7 +900,7 @@ static int rcs_resume(struct intel_engine_cs *engine)
 	return xcs_resume(engine);
 }
 
-static void cancel_requests(struct intel_engine_cs *engine)
+static void reset_cancel(struct intel_engine_cs *engine)
 {
 	struct i915_request *request;
 	unsigned long flags;
@@ -1787,7 +1787,6 @@ static int gen6_ring_flush(struct i915_request *rq, u32 mode)
 static void i9xx_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = i9xx_submit_request;
-	engine->cancel_requests = cancel_requests;
 
 	engine->park = NULL;
 	engine->unpark = NULL;
@@ -1799,7 +1798,7 @@ static void gen6_bsd_set_default_submission(struct intel_engine_cs *engine)
 	engine->submit_request = gen6_bsd_submit_request;
 }
 
-static void ring_destroy(struct intel_engine_cs *engine)
+static void ring_release(struct intel_engine_cs *engine)
 {
 	struct drm_i915_private *dev_priv = engine->i915;
 
@@ -1813,8 +1812,6 @@ static void ring_destroy(struct intel_engine_cs *engine)
 
 	intel_timeline_unpin(engine->legacy.timeline);
 	intel_timeline_put(engine->legacy.timeline);
-
-	kfree(engine);
 }
 
 static void setup_irq(struct intel_engine_cs *engine)
@@ -1845,11 +1842,12 @@ static void setup_common(struct intel_engine_cs *engine)
 
 	setup_irq(engine);
 
-	engine->destroy = ring_destroy;
+	engine->release = ring_release;
 
 	engine->resume = xcs_resume;
 	engine->reset.prepare = reset_prepare;
-	engine->reset.reset = reset_ring;
+	engine->reset.rewind = reset_rewind;
+	engine->reset.cancel = reset_cancel;
 	engine->reset.finish = reset_finish;
 
 	engine->cops = &ring_context_ops;
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline_types.h b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
index 24d040f14e89..02181c5020db 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
@@ -15,9 +15,9 @@
 
 #include "i915_active_types.h"
 
-struct drm_i915_private;
 struct i915_vma;
 struct i915_syncmap;
+struct intel_gt;
 struct intel_timeline_hwsp;
 
 struct intel_timeline {
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index 9efb63a03129..4e1eafa94be9 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -207,16 +207,12 @@ static void mock_reset_prepare(struct intel_engine_cs *engine)
 {
 }
 
-static void mock_reset(struct intel_engine_cs *engine, bool stalled)
+static void mock_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 {
 	GEM_BUG_ON(stalled);
 }
 
-static void mock_reset_finish(struct intel_engine_cs *engine)
-{
-}
-
-static void mock_cancel_requests(struct intel_engine_cs *engine)
+static void mock_reset_cancel(struct intel_engine_cs *engine)
 {
 	struct i915_request *request;
 	unsigned long flags;
@@ -234,6 +230,24 @@ static void mock_cancel_requests(struct intel_engine_cs *engine)
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
+static void mock_reset_finish(struct intel_engine_cs *engine)
+{
+}
+
+static void mock_engine_release(struct intel_engine_cs *engine)
+{
+	struct mock_engine *mock =
+		container_of(engine, typeof(*mock), base);
+
+	GEM_BUG_ON(timer_pending(&mock->hw_delay));
+
+	intel_context_unpin(engine->kernel_context);
+	intel_context_put(engine->kernel_context);
+
+	intel_engine_fini_retire(engine);
+	intel_engine_fini_breadcrumbs(engine);
+}
+
 struct intel_engine_cs *mock_engine(struct drm_i915_private *i915,
 				    const char *name,
 				    int id)
@@ -265,9 +279,11 @@ struct intel_engine_cs *mock_engine(struct drm_i915_private *i915,
 	engine->base.submit_request = mock_submit_request;
 
 	engine->base.reset.prepare = mock_reset_prepare;
-	engine->base.reset.reset = mock_reset;
+	engine->base.reset.rewind = mock_reset_rewind;
+	engine->base.reset.cancel = mock_reset_cancel;
 	engine->base.reset.finish = mock_reset_finish;
-	engine->base.cancel_requests = mock_cancel_requests;
+
+	engine->base.release = mock_engine_release;
 
 	i915->gt.engine[id] = &engine->base;
 	i915->gt.engine_class[0][id] = &engine->base;
@@ -322,19 +338,3 @@ void mock_engine_flush(struct intel_engine_cs *engine)
 void mock_engine_reset(struct intel_engine_cs *engine)
 {
 }
-
-void mock_engine_free(struct intel_engine_cs *engine)
-{
-	struct mock_engine *mock =
-		container_of(engine, typeof(*mock), base);
-
-	GEM_BUG_ON(timer_pending(&mock->hw_delay));
-
-	intel_context_unpin(engine->kernel_context);
-	intel_context_put(engine->kernel_context);
-
-	intel_engine_fini_retire(engine);
-	intel_engine_fini_breadcrumbs(engine);
-
-	kfree(engine);
-}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 9d6301292e13..5d00a3b2d914 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -398,6 +398,8 @@ void intel_guc_fini(struct intel_guc *guc)
 	intel_guc_log_destroy(&guc->log);
 	intel_uc_fw_fini(&guc->fw);
 	intel_uc_fw_cleanup_fetch(&guc->fw);
+
+	intel_uc_fw_change_status(&guc->fw, INTEL_UC_FIRMWARE_DISABLED);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 007636221a71..9e42324fdecd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -401,7 +401,7 @@ cancel_port_requests(struct intel_engine_execlists * const execlists)
 		memset(execlists->inflight, 0, sizeof(execlists->inflight));
 }
 
-static void guc_reset(struct intel_engine_cs *engine, bool stalled)
+static void guc_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request *rq;
@@ -426,7 +426,7 @@ static void guc_reset(struct intel_engine_cs *engine, bool stalled)
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
-static void guc_cancel_requests(struct intel_engine_cs *engine)
+static void guc_reset_cancel(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request *rq, *rn;
@@ -599,11 +599,10 @@ static void guc_set_default_submission(struct intel_engine_cs *engine)
 	engine->park = engine->unpark = NULL;
 
 	engine->reset.prepare = guc_reset_prepare;
-	engine->reset.reset = guc_reset;
+	engine->reset.rewind = guc_reset_rewind;
+	engine->reset.cancel = guc_reset_cancel;
 	engine->reset.finish = guc_reset_finish;
 
-	engine->cancel_requests = guc_cancel_requests;
-
 	engine->flags &= ~I915_ENGINE_SUPPORTS_STATS;
 	engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 782b8f95183f..3ffc6267f96e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -262,12 +262,7 @@ void intel_uc_fetch_firmwares(struct intel_uc *uc)
 
 void intel_uc_cleanup_firmwares(struct intel_uc *uc)
 {
-	if (!intel_uc_uses_guc(uc))
-		return;
-
-	if (intel_uc_uses_huc(uc))
-		intel_uc_fw_cleanup_fetch(&uc->huc.fw);
-
+	intel_uc_fw_cleanup_fetch(&uc->huc.fw);
 	intel_uc_fw_cleanup_fetch(&uc->guc.fw);
 }
 
@@ -295,15 +290,8 @@ void intel_uc_init(struct intel_uc *uc)
 
 void intel_uc_fini(struct intel_uc *uc)
 {
-	struct intel_guc *guc = &uc->guc;
-
-	if (!intel_uc_uses_guc(uc))
-		return;
-
-	if (intel_uc_uses_huc(uc))
-		intel_huc_fini(&uc->huc);
-
-	intel_guc_fini(guc);
+	intel_huc_fini(&uc->huc);
+	intel_guc_fini(&uc->guc);
 
 	__uc_free_load_err_log(uc);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index b6aedee46f9e..8ee0a0c7f447 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -544,10 +544,7 @@ int intel_uc_fw_init(struct intel_uc_fw *uc_fw)
 
 void intel_uc_fw_fini(struct intel_uc_fw *uc_fw)
 {
-	if (!intel_uc_fw_is_available(uc_fw))
-		return;
-
-	i915_gem_object_unpin_pages(uc_fw->obj);
+	intel_uc_fw_cleanup_fetch(uc_fw);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 8b08cfe30151..59525094d0e3 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -619,7 +619,6 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_mmio_release(struct drm_i915_private *dev_priv)
 {
-	intel_engines_cleanup(&dev_priv->gt);
 	intel_teardown_mchbar(dev_priv);
 	intel_uncore_fini_mmio(&dev_priv->uncore);
 	pci_dev_put(dev_priv->bridge_dev);
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 1d23d8bfcc6b..983755bec76b 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -45,20 +45,12 @@
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_ioctls.h"
 #include "gem/i915_gem_mman.h"
-#include "gem/i915_gem_pm.h"
-#include "gt/intel_context.h"
 #include "gt/intel_engine_user.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
-#include "gt/intel_gt_requests.h"
-#include "gt/intel_mocs.h"
-#include "gt/intel_reset.h"
-#include "gt/intel_renderstate.h"
-#include "gt/intel_rps.h"
 #include "gt/intel_workarounds.h"
 
 #include "i915_drv.h"
-#include "i915_scatterlist.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
 
@@ -1082,177 +1074,6 @@ i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
 	return err;
 }
 
-static int __intel_context_flush_retire(struct intel_context *ce)
-{
-	struct intel_timeline *tl;
-
-	tl = intel_context_timeline_lock(ce);
-	if (IS_ERR(tl))
-		return PTR_ERR(tl);
-
-	intel_context_timeline_unlock(tl);
-	return 0;
-}
-
-static int __intel_engines_record_defaults(struct intel_gt *gt)
-{
-	struct i915_request *requests[I915_NUM_ENGINES] = {};
-	struct intel_engine_cs *engine;
-	enum intel_engine_id id;
-	int err = 0;
-
-	/*
-	 * As we reset the gpu during very early sanitisation, the current
-	 * register state on the GPU should reflect its defaults values.
-	 * We load a context onto the hw (with restore-inhibit), then switch
-	 * over to a second context to save that default register state. We
-	 * can then prime every new context with that state so they all start
-	 * from the same default HW values.
-	 */
-
-	for_each_engine(engine, gt, id) {
-		struct intel_renderstate so;
-		struct intel_context *ce;
-		struct i915_request *rq;
-
-		err = intel_renderstate_init(&so, engine);
-		if (err)
-			goto out;
-
-		/* We must be able to switch to something! */
-		GEM_BUG_ON(!engine->kernel_context);
-		engine->serial++; /* force the kernel context switch */
-
-		ce = intel_context_create(engine);
-		if (IS_ERR(ce)) {
-			err = PTR_ERR(ce);
-			goto out;
-		}
-
-		rq = intel_context_create_request(ce);
-		if (IS_ERR(rq)) {
-			err = PTR_ERR(rq);
-			intel_context_put(ce);
-			goto out;
-		}
-
-		err = intel_engine_emit_ctx_wa(rq);
-		if (err)
-			goto err_rq;
-
-		err = intel_renderstate_emit(&so, rq);
-		if (err)
-			goto err_rq;
-
-err_rq:
-		requests[id] = i915_request_get(rq);
-		i915_request_add(rq);
-		intel_renderstate_fini(&so);
-		if (err)
-			goto out;
-	}
-
-	/* Flush the default context image to memory, and enable powersaving. */
-	if (intel_gt_wait_for_idle(gt, I915_GEM_IDLE_TIMEOUT) == -ETIME) {
-		err = -EIO;
-		goto out;
-	}
-
-	for (id = 0; id < ARRAY_SIZE(requests); id++) {
-		struct i915_request *rq;
-		struct i915_vma *state;
-		void *vaddr;
-
-		rq = requests[id];
-		if (!rq)
-			continue;
-
-		GEM_BUG_ON(!test_bit(CONTEXT_ALLOC_BIT, &rq->context->flags));
-		state = rq->context->state;
-		if (!state)
-			continue;
-
-		/* Serialise with retirement on another CPU */
-		GEM_BUG_ON(!i915_request_completed(rq));
-		err = __intel_context_flush_retire(rq->context);
-		if (err)
-			goto out;
-
-		/* We want to be able to unbind the state from the GGTT */
-		GEM_BUG_ON(intel_context_is_pinned(rq->context));
-
-		/*
-		 * As we will hold a reference to the logical state, it will
-		 * not be torn down with the context, and importantly the
-		 * object will hold onto its vma (making it possible for a
-		 * stray GTT write to corrupt our defaults). Unmap the vma
-		 * from the GTT to prevent such accidents and reclaim the
-		 * space.
-		 */
-		err = i915_vma_unbind(state);
-		if (err)
-			goto out;
-
-		i915_gem_object_lock(state->obj);
-		err = i915_gem_object_set_to_cpu_domain(state->obj, false);
-		i915_gem_object_unlock(state->obj);
-		if (err)
-			goto out;
-
-		i915_gem_object_set_cache_coherency(state->obj, I915_CACHE_LLC);
-
-		/* Check we can acquire the image of the context state */
-		vaddr = i915_gem_object_pin_map(state->obj, I915_MAP_FORCE_WB);
-		if (IS_ERR(vaddr)) {
-			err = PTR_ERR(vaddr);
-			goto out;
-		}
-
-		rq->engine->default_state = i915_gem_object_get(state->obj);
-		i915_gem_object_unpin_map(state->obj);
-	}
-
-out:
-	/*
-	 * If we have to abandon now, we expect the engines to be idle
-	 * and ready to be torn-down. The quickest way we can accomplish
-	 * this is by declaring ourselves wedged.
-	 */
-	if (err)
-		intel_gt_set_wedged(gt);
-
-	for (id = 0; id < ARRAY_SIZE(requests); id++) {
-		struct intel_context *ce;
-		struct i915_request *rq;
-
-		rq = requests[id];
-		if (!rq)
-			continue;
-
-		ce = rq->context;
-		i915_request_put(rq);
-		intel_context_put(ce);
-	}
-	return err;
-}
-
-static int intel_engines_verify_workarounds(struct intel_gt *gt)
-{
-	struct intel_engine_cs *engine;
-	enum intel_engine_id id;
-	int err = 0;
-
-	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
-		return 0;
-
-	for_each_engine(engine, gt, id) {
-		if (intel_engine_verify_workarounds(engine, "load"))
-			err = -EIO;
-	}
-
-	return err;
-}
-
 int i915_gem_init(struct drm_i915_private *dev_priv)
 {
 	int ret;
@@ -1269,45 +1090,12 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	intel_uc_fetch_firmwares(&dev_priv->gt.uc);
 	intel_wopcm_init(&dev_priv->wopcm);
 
-	/* This is just a security blanket to placate dragons.
-	 * On some systems, we very sporadically observe that the first TLBs
-	 * used by the CS may be stale, despite us poking the TLB reset. If
-	 * we hold the forcewake during initialisation these problems
-	 * just magically go away.
-	 */
-	intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
-
 	ret = i915_init_ggtt(dev_priv);
 	if (ret) {
 		GEM_BUG_ON(ret == -EIO);
 		goto err_unlock;
 	}
 
-	intel_gt_init(&dev_priv->gt);
-
-	ret = intel_engines_setup(&dev_priv->gt);
-	if (ret) {
-		GEM_BUG_ON(ret == -EIO);
-		goto err_gt_early;
-	}
-
-	ret = intel_engines_init(&dev_priv->gt);
-	if (ret) {
-		GEM_BUG_ON(ret == -EIO);
-		goto err_engines;
-	}
-
-	intel_uc_init(&dev_priv->gt.uc);
-
-	ret = intel_gt_init_hw(&dev_priv->gt);
-	if (ret)
-		goto err_uc_init;
-
-	/* Only when the HW is re-initialised, can we replay the requests */
-	ret = intel_gt_resume(&dev_priv->gt);
-	if (ret)
-		goto err_init_hw;
-
 	/*
 	 * Despite its name intel_init_clock_gating applies both display
 	 * clock gating workarounds; GT mmio workarounds and the occasional
@@ -1319,23 +1107,9 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	 */
 	intel_init_clock_gating(dev_priv);
 
-	ret = intel_engines_verify_workarounds(&dev_priv->gt);
-	if (ret)
-		goto err_gt_late;
-
-	ret = __intel_engines_record_defaults(&dev_priv->gt);
-	if (ret)
-		goto err_gt_late;
-
-	ret = i915_inject_probe_error(dev_priv, -ENODEV);
-	if (ret)
-		goto err_gt_late;
-
-	ret = i915_inject_probe_error(dev_priv, -EIO);
+	ret = intel_gt_init(&dev_priv->gt);
 	if (ret)
-		goto err_gt_late;
-
-	intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
+		goto err_unlock;
 
 	return 0;
 
@@ -1345,24 +1119,8 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	 * HW as irrevisibly wedged, but keep enough state around that the
 	 * driver doesn't explode during runtime.
 	 */
-err_gt_late:
-	intel_gt_set_wedged_on_init(&dev_priv->gt);
-	i915_gem_suspend(dev_priv);
-	i915_gem_suspend_late(dev_priv);
-
-	i915_gem_drain_workqueue(dev_priv);
-err_init_hw:
-	intel_uc_fini_hw(&dev_priv->gt.uc);
-err_uc_init:
-	if (ret != -EIO)
-		intel_uc_fini(&dev_priv->gt.uc);
-err_engines:
-	if (ret != -EIO)
-		intel_engines_cleanup(&dev_priv->gt);
-err_gt_early:
-	intel_gt_driver_release(&dev_priv->gt);
 err_unlock:
-	intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
+	i915_gem_drain_workqueue(dev_priv);
 
 	if (ret != -EIO) {
 		intel_uc_cleanup_firmwares(&dev_priv->gt.uc);
@@ -1410,19 +1168,16 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
 
 	i915_gem_suspend_late(dev_priv);
 	intel_gt_driver_remove(&dev_priv->gt);
+	dev_priv->uabi_engines = RB_ROOT;
 
 	/* Flush any outstanding unpin_work. */
 	i915_gem_drain_workqueue(dev_priv);
 
-	intel_uc_fini_hw(&dev_priv->gt.uc);
-	intel_uc_fini(&dev_priv->gt.uc);
-
 	i915_gem_drain_freed_objects(dev_priv);
 }
 
 void i915_gem_driver_release(struct drm_i915_private *dev_priv)
 {
-	intel_engines_cleanup(&dev_priv->gt);
 	intel_gt_driver_release(&dev_priv->gt);
 
 	intel_wa_list_free(&dev_priv->gt_wa_list);
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
index 657e23a8dd11..b37fc53973cc 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
@@ -9,6 +9,7 @@
 #include "gem/selftests/igt_gem_utils.h"
 #include "gem/selftests/mock_context.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_pm.h"
 
 #include "i915_selftest.h"
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index a5e46a4739f9..ac641f5360e1 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -54,17 +54,11 @@ void mock_device_flush(struct drm_i915_private *i915)
 static void mock_device_release(struct drm_device *dev)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
-	struct intel_engine_cs *engine;
-	enum intel_engine_id id;
 
 	mock_device_flush(i915);
+	intel_gt_driver_remove(&i915->gt);
 
 	i915_gem_drain_workqueue(i915);
-
-	for_each_engine(engine, &i915->gt, id)
-		mock_engine_free(engine);
-
-	drain_workqueue(i915->wq);
 	i915_gem_drain_freed_objects(i915);
 
 	mock_fini_ggtt(&i915->ggtt);
@@ -195,7 +189,7 @@ struct drm_i915_private *mock_gem_device(void)
 	return i915;
 
 err_context:
-	mock_engine_free(i915->engine[RCS0]);
+	intel_gt_driver_remove(&i915->gt);
 err_unlock:
 	destroy_workqueue(i915->wq);
 err_drv:
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
