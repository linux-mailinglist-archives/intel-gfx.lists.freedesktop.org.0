Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 899A4215284
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 08:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD196E116;
	Mon,  6 Jul 2020 06:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 510736E0CC
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 06:19:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21724463-1500050 
 for multiple; Mon, 06 Jul 2020 07:19:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 07:19:26 +0100
Message-Id: <20200706061926.6687-21-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200706061926.6687-1-chris@chris-wilson.co.uk>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/20] drm/i915: Track i915_vma with its own
 reference counter
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

Over time, we have increasingly viewed objects from the perspective of
the GPU (tracking the address space, iova and backing pages) rather than
the perspective of GEM userspace. A single GEM handle may compromise
multiple i915_vma, each of which are tracked separately for HW
utilisation (and as a whole for GEM implicit fences). As the low level
and predominant object, it will be much easier to turn i915_vma into a
first class object with its own reference counting. Today, every
i915_vma (with a couple of notable exceptions, and some very complicated
release handling) is owned by a GEM object. It carries /no/ reference
for its own lifetime, for it exists for as long as the GEM object does.

Since today the GEM object serves as a lookup cache for all of its vma,
we need to incorporate a similar persistence into the i915_vma lifetime.
For example, the GGTT vma used for mmaps. If we only instantiate a vma
for the faulthandler, as soon as we complete the faulthandler the vma is
released, along with it the new GGTT binding causing a fresh fault. So
on top of the vma reference counting, we also have the vma open
counting, and every time we have an active userspace access we hold it
open. On closing, we drop the reference and move th vma to a short-lived
cache. This gives us the appearance of persistence like we used to have
for GGTT and even ppGTT vma, albeit the trade-off in that the vma does
not remain bound for as long the object exists (providing there is no
eviction pressure).

To reduce pressure on the GGTT cache, some of the borrowed GGTT
references (for relocation handling, pread, pwrite) were dropped in
favour of using the temporary GGTT PTE.

Aside from emulating the previous persistence of the GEM lookup cache,
the next complication stems from the i915_vma now being unreferenced
from random contexts, including from softirq. As such, and without
taking an explicit reference for a binding, we have to contend with
performing an unbind on release, and decoupling from the object. As the
former requires a mutex, we punt that to a worker and simultaneously
drop the object reference there (simply to avoid contanimating the
spinlock with the need to save/restore irq).

The random untimely unreferences may also strike places that assume that
GGTT vma are persistent. Hopefully most have been caught.

The churn in the patch stems from adding a reference to all vma lookups
that must be released when no longer required. There are a lot.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  43 +--
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |  40 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  37 +-
 .../gpu/drm/i915/gem/i915_gem_client_blt.c    |   6 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  40 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  13 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  25 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  54 ++-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  25 --
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |   1 -
 .../gpu/drm/i915/gem/i915_gem_object_blt.c    |  21 +-
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |   3 +-
 drivers/gpu/drm/i915/gem/i915_gem_wait.c      |   9 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   | 123 ++++---
 .../i915/gem/selftests/i915_gem_client_blt.c  |  10 +-
 .../i915/gem/selftests/i915_gem_coherency.c   |  10 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |  46 ++-
 .../i915/gem/selftests/i915_gem_execbuffer.c  |   4 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  68 ++--
 .../drm/i915/gem/selftests/igt_gem_utils.c    |  17 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  11 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |   1 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |  30 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   1 -
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   5 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  91 +++--
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  20 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  36 +-
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  13 +-
 drivers/gpu/drm/i915/gt/intel_ring.c          |   7 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  27 +-
 drivers/gpu/drm/i915/gt/intel_timeline.c      |   3 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  14 +-
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c  |  48 +--
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  43 ++-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  97 ++---
 drivers/gpu/drm/i915/gt/selftest_mocs.c       |   7 +-
 .../drm/i915/gt/selftest_ring_submission.c    |  11 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c        |   7 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  18 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  11 +-
 drivers/gpu/drm/i915/gvt/scheduler.c          |   4 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   2 +
 drivers/gpu/drm/i915/i915_drv.c               |  15 +-
 drivers/gpu/drm/i915/i915_drv.h               |   9 +-
 drivers/gpu/drm/i915/i915_gem.c               | 154 +++-----
 drivers/gpu/drm/i915/i915_perf.c              |  37 +-
 drivers/gpu/drm/i915/i915_vma.c               | 205 ++++++-----
 drivers/gpu/drm/i915/i915_vma.h               |  53 +--
 drivers/gpu/drm/i915/i915_vma_types.h         |   2 +
 drivers/gpu/drm/i915/intel_memory_region.c    |  10 +
 .../gpu/drm/i915/selftests/i915_gem_evict.c   |  60 ++-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 342 +++++++-----------
 drivers/gpu/drm/i915/selftests/i915_request.c |  16 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  94 +++--
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |  12 +-
 .../drm/i915/selftests/intel_memory_region.c  |   5 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  31 +-
 drivers/gpu/drm/i915/selftests/mock_gtt.c     |   1 +
 63 files changed, 1094 insertions(+), 1066 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index dff7c17f3d2b..eaa8dc79b943 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2292,7 +2292,7 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 		 */
 		ret = i915_vma_pin_fence(vma);
 		if (ret != 0 && INTEL_GEN(dev_priv) < 4) {
-			i915_gem_object_unpin_from_display_plane(vma);
+			i915_ggtt_unpin(vma);
 			vma = ERR_PTR(ret);
 			goto err;
 		}
@@ -2301,22 +2301,20 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 			*out_flags |= PLANE_HAS_FENCE;
 	}
 
-	i915_vma_get(vma);
+	i915_vma_open(vma);
 err:
 	atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 	return vma;
 }
 
-void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
+void intel_unpin_fb_vma(struct i915_vma **vma, unsigned long flags)
 {
-	i915_gem_object_lock(vma->obj);
-	if (flags & PLANE_HAS_FENCE)
-		i915_vma_unpin_fence(vma);
-	i915_gem_object_unpin_from_display_plane(vma);
-	i915_gem_object_unlock(vma->obj);
+	if (!*vma)
+		return;
 
-	i915_vma_put(vma);
+	i915_vma_close(*vma);
+	__i915_ggtt_unpin(vma, flags);
 }
 
 static int intel_fb_pitch(const struct drm_framebuffer *fb, int color_plane,
@@ -3443,24 +3441,26 @@ initial_plane_vma(struct drm_i915_private *i915,
 		break;
 	default:
 		MISSING_CASE(plane_config->tiling);
-		goto err_obj;
+		i915_gem_object_put(obj);
+		return NULL;
 	}
 
 	vma = i915_vma_instance(obj, &i915->ggtt.vm, NULL);
+	i915_gem_object_put(obj);
 	if (IS_ERR(vma))
-		goto err_obj;
+		return vma;
 
 	if (i915_ggtt_pin(vma, 0, PIN_MAPPABLE | PIN_OFFSET_FIXED | base))
-		goto err_obj;
+		goto err_put_vma;
 
 	if (i915_gem_object_is_tiled(obj) &&
 	    !i915_vma_is_map_and_fenceable(vma))
-		goto err_obj;
+		goto err_put_vma;
 
 	return vma;
 
-err_obj:
-	i915_gem_object_put(obj);
+err_put_vma:
+	i915_vma_put(vma);
 	return NULL;
 }
 
@@ -3660,6 +3660,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 	intel_state->color_plane[0].stride =
 		intel_fb_pitch(fb, 0, intel_state->hw.rotation);
 
+	i915_vma_open(vma);
 	__i915_vma_pin(vma);
 	intel_state->vma = i915_vma_get(vma);
 	if (intel_plane_uses_fence(intel_state) && i915_vma_pin_fence(vma) == 0)
@@ -15899,11 +15900,7 @@ static int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 
 static void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 {
-	struct i915_vma *vma;
-
-	vma = fetch_and_zero(&old_plane_state->vma);
-	if (vma)
-		intel_unpin_fb_vma(vma, old_plane_state->flags);
+	intel_unpin_fb_vma(&old_plane_state->vma, old_plane_state->flags);
 }
 
 static void fb_obj_bump_render_priority(struct drm_i915_gem_object *obj)
@@ -15981,13 +15978,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	if (!obj)
 		return 0;
 
-	ret = i915_gem_object_pin_pages(obj);
-	if (ret)
-		return ret;
-
 	ret = intel_plane_pin_fb(new_plane_state);
-
-	i915_gem_object_unpin_pages(obj);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index e890c8fb779b..77661d286dbf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -555,7 +555,7 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 			   const struct i915_ggtt_view *view,
 			   bool uses_fence,
 			   unsigned long *out_flags);
-void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags);
+void intel_unpin_fb_vma(struct i915_vma **vma, unsigned long flags);
 struct drm_framebuffer *
 intel_framebuffer_create(struct drm_i915_gem_object *obj,
 			 struct drm_mode_fb_cmd2 *mode_cmd);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e8f809161c75..00ab3fbb27d0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -523,7 +523,7 @@ struct intel_plane_state {
 	struct i915_ggtt_view view;
 	struct i915_vma *vma;
 	unsigned long flags;
-#define PLANE_HAS_FENCE BIT(0)
+#define PLANE_HAS_FENCE I915_VMA_RELEASE_FENCE
 
 	struct {
 		u32 offset;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 566fa72427b3..58d62c55ed8f 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -261,11 +261,10 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_dsb *dsb;
 	struct drm_i915_gem_object *obj;
+	struct intel_dsb *dsb;
 	struct i915_vma *vma;
 	u32 *buf;
-	intel_wakeref_t wakeref;
 
 	if (!HAS_DSB(i915))
 		return;
@@ -276,39 +275,32 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
 		return;
 	}
 
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
-
 	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
-	if (IS_ERR(obj)) {
-		drm_err(&i915->drm, "Gem object creation failed\n");
-		kfree(dsb);
-		goto out;
-	}
+	if (IS_ERR(obj))
+		goto err_dsb;
 
 	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
-	if (IS_ERR(vma)) {
-		drm_err(&i915->drm, "Vma creation failed\n");
-		i915_gem_object_put(obj);
-		kfree(dsb);
-		goto out;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		goto err_dsb;
 
 	buf = i915_gem_object_pin_map(vma->obj, I915_MAP_WC);
-	if (IS_ERR(buf)) {
-		drm_err(&i915->drm, "Command buffer creation failed\n");
-		i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
-		kfree(dsb);
-		goto out;
-	}
+	if (IS_ERR(buf))
+		goto err_unpin;
 
 	dsb->id = DSB1;
 	dsb->vma = vma;
 	dsb->cmd_buf = buf;
 	dsb->free_pos = 0;
 	dsb->ins_start_offset = 0;
+
 	crtc_state->dsb = dsb;
-out:
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	return;
+
+err_unpin:
+	i915_ggtt_unpin(vma);
+err_dsb:
+	kfree(dsb);
 }
 
 /**
@@ -323,7 +315,7 @@ void intel_dsb_cleanup(struct intel_crtc_state *crtc_state)
 	if (!crtc_state->dsb)
 		return;
 
-	i915_vma_unpin_and_release(&crtc_state->dsb->vma, I915_VMA_RELEASE_MAP);
+	__i915_ggtt_unpin(&crtc_state->dsb->vma, I915_VMA_RELEASE_MAP);
 	kfree(crtc_state->dsb);
 	crtc_state->dsb = NULL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index bd39eb6a21b8..2d22d9fb1731 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -272,7 +272,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	return 0;
 
 out_unpin:
-	intel_unpin_fb_vma(vma, flags);
+	intel_unpin_fb_vma(&vma, flags);
 out_unlock:
 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 	return ret;
@@ -291,9 +291,7 @@ static void intel_fbdev_destroy(struct intel_fbdev *ifbdev)
 
 	drm_fb_helper_fini(&ifbdev->helper);
 
-	if (ifbdev->vma)
-		intel_unpin_fb_vma(ifbdev->vma, ifbdev->vma_flags);
-
+	intel_unpin_fb_vma(&ifbdev->vma, ifbdev->vma_flags);
 	if (ifbdev->fb)
 		drm_framebuffer_remove(&ifbdev->fb->base);
 
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 52b4f6193b4c..c99c0975194b 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -190,7 +190,7 @@ struct intel_overlay {
 	u32 brightness, contrast, saturation;
 	u32 old_xscale, old_yscale;
 	/* register access */
-	struct drm_i915_gem_object *reg_bo;
+	struct i915_vma *reg_vma;
 	struct overlay_registers __iomem *regs;
 	u32 flip_addr;
 	/* flip handling */
@@ -302,10 +302,7 @@ static void intel_overlay_flip_prepare(struct intel_overlay *overlay,
 				       INTEL_FRONTBUFFER_OVERLAY(pipe));
 
 	overlay->old_vma = overlay->vma;
-	if (vma)
-		overlay->vma = i915_vma_get(vma);
-	else
-		overlay->vma = NULL;
+	overlay->vma = vma;
 }
 
 /* overlay needs to be enabled in OCMD reg */
@@ -350,17 +347,9 @@ static int intel_overlay_continue(struct intel_overlay *overlay,
 
 static void intel_overlay_release_old_vma(struct intel_overlay *overlay)
 {
-	struct i915_vma *vma;
-
-	vma = fetch_and_zero(&overlay->old_vma);
-	if (drm_WARN_ON(&overlay->i915->drm, !vma))
-		return;
-
 	intel_frontbuffer_flip_complete(overlay->i915,
 					INTEL_FRONTBUFFER_OVERLAY(overlay->crtc->pipe));
-
-	i915_gem_object_unpin_from_display_plane(vma);
-	i915_vma_put(vma);
+	__i915_ggtt_unpin(&overlay->old_vma, 0);
 }
 
 static void
@@ -860,10 +849,9 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 	return 0;
 
 out_unpin:
-	i915_gem_object_unpin_from_display_plane(vma);
+	i915_ggtt_unpin(vma);
 out_pin_section:
 	atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
-
 	return ret;
 }
 
@@ -1322,10 +1310,9 @@ static int get_registers(struct intel_overlay *overlay, bool use_phys)
 		return PTR_ERR(obj);
 
 	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, PIN_MAPPABLE);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_put_bo;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
 
 	if (use_phys)
 		overlay->flip_addr = sg_dma_address(obj->mm.pages->sgl);
@@ -1336,14 +1323,14 @@ static int get_registers(struct intel_overlay *overlay, bool use_phys)
 
 	if (IS_ERR(overlay->regs)) {
 		err = PTR_ERR(overlay->regs);
-		goto err_put_bo;
+		goto err_vma;
 	}
 
-	overlay->reg_bo = obj;
+	overlay->reg_vma = vma;
 	return 0;
 
-err_put_bo:
-	i915_gem_object_put(obj);
+err_vma:
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -1408,7 +1395,7 @@ void intel_overlay_cleanup(struct drm_i915_private *dev_priv)
 	 */
 	drm_WARN_ON(&dev_priv->drm, overlay->active);
 
-	i915_gem_object_put(overlay->reg_bo);
+	i915_vma_put(overlay->reg_vma);
 	i915_active_fini(&overlay->last_flip);
 
 	kfree(overlay);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
index 947c8aa8e13e..a097a0d8e347 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
@@ -88,6 +88,7 @@ static struct i915_sleeve *create_sleeve(struct i915_address_space *vm,
 
 static void destroy_sleeve(struct i915_sleeve *sleeve)
 {
+	i915_vma_put(sleeve->vma);
 	kfree(sleeve);
 }
 
@@ -116,7 +117,8 @@ static void clear_pages_work_release(struct dma_fence *fence)
 {
 	struct clear_pages_work *w = container_of(fence, typeof(*w), dma);
 
-	destroy_sleeve(w->sleeve);
+	if (w->sleeve)
+		destroy_sleeve(w->sleeve);
 
 	i915_sw_fence_fini(&w->wait);
 
@@ -233,6 +235,8 @@ static void clear_pages_worker(struct work_struct *work)
 		dma_fence_signal(&w->dma);
 		dma_fence_put(&w->dma);
 	}
+
+	destroy_sleeve(fetch_and_zero(&w->sleeve));
 }
 
 static int __i915_sw_fence_call
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index bd68746327b3..ad28a6122165 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -105,33 +105,37 @@ static void lut_close(struct i915_gem_context *ctx)
 	rcu_read_lock();
 	radix_tree_for_each_slot(slot, &ctx->handles_vma, &iter, 0) {
 		struct i915_vma *vma = rcu_dereference_raw(*slot);
-		struct drm_i915_gem_object *obj = vma->obj;
 		struct i915_lut_handle *lut;
 
-		if (!kref_get_unless_zero(&obj->base.refcount))
+		vma = i915_vma_tryget(vma);
+		if (!vma)
 			continue;
 
-		spin_lock(&obj->lut_lock);
-		list_for_each_entry(lut, &obj->lut_list, obj_link) {
-			if (lut->ctx != ctx)
-				continue;
+		if (vma->obj) {
+			struct drm_i915_gem_object *obj = vma->obj;
 
-			if (lut->handle != iter.index)
-				continue;
+			spin_lock(&obj->lut_lock);
+			list_for_each_entry(lut, &obj->lut_list, obj_link) {
+				if (lut->ctx != ctx)
+					continue;
 
-			list_del(&lut->obj_link);
-			break;
-		}
-		spin_unlock(&obj->lut_lock);
+				if (lut->handle != iter.index)
+					continue;
+
+				list_del(&lut->obj_link);
+				break;
+			}
+			spin_unlock(&obj->lut_lock);
 
-		if (&lut->obj_link != &obj->lut_list) {
-			i915_lut_handle_free(lut);
-			radix_tree_iter_delete(&ctx->handles_vma, &iter, slot);
-			i915_vma_close(vma);
-			i915_gem_object_put(obj);
+			if (&lut->obj_link != &obj->lut_list) {
+				i915_lut_handle_free(lut);
+				radix_tree_iter_delete(&ctx->handles_vma,
+						       &iter, slot);
+				i915_vma_put(vma);
+			}
 		}
 
-		i915_gem_object_put(obj);
+		i915_vma_put(vma);
 	}
 	rcu_read_unlock();
 	mutex_unlock(&ctx->lut_mutex);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 30e4b163588b..ac92bc2f597a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -208,9 +208,7 @@ int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
 	i915_gem_object_unlock(obj);
 
 	/* The cache-level will be applied when each vma is rebound. */
-	return i915_gem_object_unbind(obj,
-				      I915_GEM_OBJECT_UNBIND_ACTIVE |
-				      I915_GEM_OBJECT_UNBIND_BARRIER);
+	return i915_gem_object_unbind(obj, I915_GEM_OBJECT_UNBIND_ACTIVE);
 }
 
 int i915_gem_get_caching_ioctl(struct drm_device *dev, void *data,
@@ -394,15 +392,6 @@ static void i915_gem_object_bump_inactive_ggtt(struct drm_i915_gem_object *obj)
 	}
 }
 
-void
-i915_gem_object_unpin_from_display_plane(struct i915_vma *vma)
-{
-	/* Bump the LRU to try and avoid premature eviction whilst flipping  */
-	i915_gem_object_bump_inactive_ggtt(vma->obj);
-
-	i915_vma_unpin(vma);
-}
-
 /**
  * Moves a single object to the CPU read, and possibly write domain.
  * @obj: object to act on
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 37c0d5058891..e7f127b75b13 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1629,7 +1629,7 @@ static int eb_alloc_cmdparser(struct i915_execbuffer *eb)
 	i915_gem_object_set_cache_coherency(vma->obj, I915_CACHE_LLC);
 	vma->private = pool;
 
-	ev->vma = i915_vma_get(vma);
+	ev->vma = vma;
 	ev->exec = &no_entry;
 	list_add(&ev->reloc_link, &eb->array->aux_list);
 	list_add(&ev->bind_link, &eb->bind_list);
@@ -1659,7 +1659,7 @@ static int eb_alloc_cmdparser(struct i915_execbuffer *eb)
 			}
 			vma->private = pool;
 
-			ev->vma = i915_vma_get(vma);
+			ev->vma = vma;
 			ev->exec = &no_entry;
 			list_add(&ev->reloc_link, &eb->array->aux_list);
 			list_add(&ev->bind_link, &eb->bind_list);
@@ -1707,7 +1707,7 @@ static int eb_secure_batch(struct i915_execbuffer *eb)
 			return PTR_ERR(vma);
 		}
 
-		ev->vma = i915_vma_get(vma);
+		ev->vma = vma;
 		ev->exec = &no_entry;
 
 		list_add(&ev->submit_link, &eb->submit_list);
@@ -1760,9 +1760,7 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
 	if (unlikely(!lut))
 		return -ENOMEM;
 
-	i915_vma_get(vma);
-	if (!atomic_fetch_inc(&vma->open_count))
-		i915_vma_reopen(vma);
+	i915_vma_open(vma);
 	lut->handle = handle;
 	lut->ctx = ctx;
 
@@ -1798,7 +1796,6 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
 
 err:
 	i915_vma_close(vma);
-	i915_vma_put(vma);
 	i915_lut_handle_free(lut);
 	return err;
 }
@@ -1825,16 +1822,15 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 			return ERR_PTR(-ENOENT);
 
 		vma = i915_vma_instance(obj, vm, NULL);
-		if (IS_ERR(vma)) {
-			i915_gem_object_put(obj);
+		i915_gem_object_put(obj);
+		if (IS_ERR(vma))
 			return vma;
-		}
 
 		err = __eb_add_lut(eb, handle, vma);
 		if (likely(!err))
 			return vma;
 
-		i915_gem_object_put(obj);
+		i915_vma_put(vma);
 		if (err != -EEXIST)
 			return ERR_PTR(err);
 	} while (1);
@@ -2179,14 +2175,13 @@ eb_relocs_grow(struct i915_execbuffer *eb, unsigned long *count)
 							    I915_CACHE_LLC);
 
 		vma = i915_vma_instance(obj, eb->context->vm, NULL);
-		if (IS_ERR(vma)) {
-			i915_gem_object_put(obj);
+		i915_gem_object_put(obj);
+		if (IS_ERR(vma))
 			return ERR_CAST(vma);
-		}
 
 		ev = kzalloc(sizeof(*ev), GFP_KERNEL);
 		if (!ev) {
-			i915_gem_object_put(obj);
+			i915_vma_put(vma);
 			return ERR_PTR(-ENOMEM);
 		}
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index b23368529a40..35bf8a0879a3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -365,16 +365,19 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 	assert_rpm_wakelock_held(rpm);
 
 	/* Mark as being mmapped into userspace for later revocation */
-	mutex_lock(&i915->ggtt.vm.mutex);
-	if (!i915_vma_set_userfault(vma) && !obj->userfault_count++)
-		list_add(&obj->userfault_link, &i915->ggtt.userfault_list);
-	mutex_unlock(&i915->ggtt.vm.mutex);
+	mutex_lock(&ggtt->vm.mutex);
+	if (!i915_vma_set_userfault(vma)) {
+		i915_vma_open(vma);
+		if (!obj->userfault_count++)
+			list_add(&obj->userfault_link, &ggtt->userfault_list);
+	}
+	mutex_unlock(&ggtt->vm.mutex);
 
 	/* Track the mmo associated with the fenced vma */
 	vma->mmo = mmo;
 
 	if (IS_ACTIVE(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND))
-		intel_wakeref_auto(&i915->ggtt.userfault_wakeref,
+		intel_wakeref_auto(&ggtt->userfault_wakeref,
 				   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
 
 	if (write) {
@@ -386,7 +389,7 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 err_fence:
 	i915_vma_unpin_fence(vma);
 err_unpin:
-	__i915_vma_unpin(vma);
+	i915_ggtt_unpin(vma);
 err_reset:
 	intel_gt_reset_unlock(ggtt->vm.gt, srcu);
 err_rpm:
@@ -434,8 +437,27 @@ void __i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
 
 	GEM_BUG_ON(!obj->userfault_count);
 
-	for_each_ggtt_vma(vma, obj)
+	spin_lock(&obj->vma.lock);
+	list_for_each_entry(vma, &obj->vma.list, obj_link) {
+		if (!i915_vma_is_ggtt(vma))
+			break;
+
+		if (!i915_vma_has_userfault(vma))
+			continue;
+
+		if (!i915_vma_tryget(vma))
+			continue;
+
+		spin_unlock(&obj->vma.lock);
+
 		i915_vma_revoke_mmap(vma);
+		i915_vma_put(vma);
+
+		/* Restart after dropping the lock */
+		spin_lock(&obj->vma.lock);
+		vma = list_first_entry(&obj->vma.list, typeof(*vma), obj_link);
+	}
+	spin_unlock(&obj->vma.lock);
 
 	GEM_BUG_ON(obj->userfault_count);
 }
@@ -753,12 +775,15 @@ static void vm_open(struct vm_area_struct *vma)
 	i915_gem_object_get(obj);
 }
 
-static void vm_close(struct vm_area_struct *vma)
+static void vm_close_gtt(struct vm_area_struct *vma)
 {
 	struct i915_mmap_offset *mmo = vma->vm_private_data;
 	struct drm_i915_gem_object *obj = mmo->obj;
 
-	GEM_BUG_ON(!obj);
+	/* XXX Punishes shared GGTT mmaps; per-mmo vma fault tracking? */
+	if (obj->userfault_count)
+		i915_gem_object_release_mmap_gtt(obj);
+
 	i915_gem_object_put(obj);
 }
 
@@ -766,9 +791,18 @@ static const struct vm_operations_struct vm_ops_gtt = {
 	.fault = vm_fault_gtt,
 	.access = vm_access,
 	.open = vm_open,
-	.close = vm_close,
+	.close = vm_close_gtt,
 };
 
+static void vm_close(struct vm_area_struct *vma)
+{
+	struct i915_mmap_offset *mmo = vma->vm_private_data;
+	struct drm_i915_gem_object *obj = mmo->obj;
+
+	GEM_BUG_ON(!obj);
+	i915_gem_object_put(obj);
+}
+
 static const struct vm_operations_struct vm_ops_cpu = {
 	.fault = vm_fault_cpu,
 	.access = vm_access,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 799ad4e648aa..e8b532679635 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -141,14 +141,12 @@ void i915_gem_close_object(struct drm_gem_object *gem, struct drm_file *file)
 		vma = radix_tree_delete(&ctx->handles_vma, lut->handle);
 		if (vma) {
 			GEM_BUG_ON(vma->obj != obj);
-			GEM_BUG_ON(!atomic_read(&vma->open_count));
 			i915_vma_close(vma);
 		}
 		mutex_unlock(&ctx->lut_mutex);
 
 		i915_gem_context_put(lut->ctx);
 		i915_lut_handle_free(lut);
-		i915_gem_object_put(obj);
 	}
 }
 
@@ -196,29 +194,6 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
 	llist_for_each_entry_safe(obj, on, freed, freed) {
 		trace_i915_gem_object_destroy(obj);
 
-		if (!list_empty(&obj->vma.list)) {
-			struct i915_vma *vma;
-
-			/*
-			 * Note that the vma keeps an object reference while
-			 * it is active, so it *should* not sleep while we
-			 * destroy it. Our debug code errs insits it *might*.
-			 * For the moment, play along.
-			 */
-			spin_lock(&obj->vma.lock);
-			while ((vma = list_first_entry_or_null(&obj->vma.list,
-							       struct i915_vma,
-							       obj_link))) {
-				GEM_BUG_ON(vma->obj != obj);
-				spin_unlock(&obj->vma.lock);
-
-				__i915_vma_put(vma);
-
-				spin_lock(&obj->vma.lock);
-			}
-			spin_unlock(&obj->vma.lock);
-		}
-
 		__i915_gem_object_free_mmaps(obj);
 
 		GEM_BUG_ON(!list_empty(&obj->lut_list));
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 8f1d20f6d42a..32ab8fd4e086 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -430,7 +430,6 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 				     u32 alignment,
 				     const struct i915_ggtt_view *view,
 				     unsigned int flags);
-void i915_gem_object_unpin_from_display_plane(struct i915_vma *vma);
 
 void i915_gem_object_make_unshrinkable(struct drm_i915_gem_object *obj);
 void i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
index bfdb32d46877..5f90e93ae762 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
@@ -92,11 +92,13 @@ struct i915_vma *intel_emit_vma_fill_blt(struct intel_context *ce,
 
 	err = i915_vma_pin(batch, 0, 0, PIN_USER);
 	if (unlikely(err))
-		goto out_put;
+		goto out_vma;
 
 	batch->private = pool;
 	return batch;
 
+out_vma:
+	i915_vma_put(batch);
 out_put:
 	intel_gt_buffer_pool_put(pool);
 out_pm:
@@ -123,6 +125,7 @@ void intel_emit_vma_release(struct intel_context *ce, struct i915_vma *vma)
 {
 	i915_vma_unpin(vma);
 	intel_gt_buffer_pool_put(vma->private);
+	i915_vma_put(vma);
 	intel_engine_pm_put(ce->engine);
 }
 
@@ -152,7 +155,7 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (unlikely(err))
-		return err;
+		goto out_vma;
 
 	batch = intel_emit_vma_fill_blt(ce, vma, value);
 	if (IS_ERR(batch)) {
@@ -195,6 +198,8 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
 	intel_emit_vma_release(ce, batch);
 out_unpin:
 	i915_vma_unpin(vma);
+out_vma:
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -305,11 +310,13 @@ struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
 
 	err = i915_vma_pin(batch, 0, 0, PIN_USER);
 	if (unlikely(err))
-		goto out_put;
+		goto out_batch;
 
 	batch->private = pool;
 	return batch;
 
+out_batch:
+	i915_vma_put(batch);
 out_put:
 	intel_gt_buffer_pool_put(pool);
 out_pm:
@@ -334,7 +341,7 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
 
 	err = i915_vma_pin(vma[0], 0, 0, PIN_USER);
 	if (unlikely(err))
-		return err;
+		goto out_src;
 
 	vma[1] = i915_vma_instance(dst, vm, NULL);
 	if (IS_ERR(vma[1]))
@@ -342,7 +349,7 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
 
 	err = i915_vma_pin(vma[1], 0, 0, PIN_USER);
 	if (unlikely(err))
-		goto out_unpin_src;
+		goto out_dst;
 
 	batch = intel_emit_vma_copy_blt(ce, vma[0], vma[1]);
 	if (IS_ERR(batch)) {
@@ -398,8 +405,12 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
 	intel_emit_vma_release(ce, batch);
 out_unpin_dst:
 	i915_vma_unpin(vma[1]);
+out_dst:
+	i915_vma_put(vma[1]);
 out_unpin_src:
 	i915_vma_unpin(vma[0]);
+out_src:
+	i915_vma_put(vma[0]);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 80907c00c6fd..58f70c9e909e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -127,8 +127,7 @@ userptr_mn_invalidate_range_start(struct mmu_notifier *_mn,
 		spin_unlock(&mn->lock);
 
 		ret = i915_gem_object_unbind(obj,
-					     I915_GEM_OBJECT_UNBIND_ACTIVE |
-					     I915_GEM_OBJECT_UNBIND_BARRIER);
+					     I915_GEM_OBJECT_UNBIND_ACTIVE);
 		if (ret == 0) {
 			/* ww_mutex and mmu_notifier is fs_reclaim tainted */
 			if (i915_gem_object_trylock(obj)) {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index 8af55cd3e690..5361d5ff95da 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -43,8 +43,7 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
 		unsigned int count, i;
 		int ret;
 
-		ret = dma_resv_get_fences_rcu(resv,
-							&excl, &count, &shared);
+		ret = dma_resv_get_fences_rcu(resv, &excl, &count, &shared);
 		if (ret)
 			return ret;
 
@@ -83,6 +82,12 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
 	/*
 	 * Opportunistically prune the fences iff we know they have *all* been
 	 * signaled.
+	 *
+	 * dma_resv is not autopruning, so if a fence holds a reference to the
+	 * object, we will keep the reference cycle until something else
+	 * replaces the fence. This may not happen naturally.
+	 *
+	 * Morale of this story is don't use dma_resv.
 	 */
 	if (prune_fences && dma_resv_trylock(resv)) {
 		if (dma_resv_test_signaled_rcu(resv, true))
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index a16aae4acf44..546b541ce6c5 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -412,14 +412,16 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
 			if (obj->base.size != combination) {
 				pr_err("obj->base.size=%zu, expected=%u\n",
 				       obj->base.size, combination);
+				i915_gem_object_put(obj);
 				err = -EINVAL;
-				goto out_put;
+				goto out_device;
 			}
 
 			vma = i915_vma_instance(obj, &ppgtt->vm, NULL);
+			i915_gem_object_put(obj);
 			if (IS_ERR(vma)) {
 				err = PTR_ERR(vma);
-				goto out_put;
+				goto out_device;
 			}
 
 			err = i915_vma_pin(vma, 0, 0, PIN_USER);
@@ -435,8 +437,7 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
 			}
 
 			i915_vma_unpin(vma);
-			i915_gem_object_put(obj);
-
+			i915_vma_put(vma);
 			if (err)
 				goto out_device;
 		}
@@ -445,10 +446,9 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
 	goto out_device;
 
 out_put:
-	i915_gem_object_put(obj);
+	i915_vma_put(vma);
 out_device:
 	mkwrite_device_info(i915)->page_sizes = saved_mask;
-
 	return err;
 }
 
@@ -468,7 +468,6 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 	struct drm_i915_private *i915 = ppgtt->vm.i915;
 	unsigned long supported = INTEL_INFO(i915)->page_sizes;
 	struct intel_memory_region *mem;
-	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 	int bit;
 	int err = 0;
@@ -485,6 +484,8 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 		int i;
 
 		for (i = 0; i < ARRAY_SIZE(flags); ++i) {
+			struct drm_i915_gem_object *obj;
+
 			obj = i915_gem_object_create_region(mem, page_size,
 							    flags[i]);
 			if (IS_ERR(obj)) {
@@ -493,9 +494,10 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 			}
 
 			vma = i915_vma_instance(obj, &ppgtt->vm, NULL);
+			i915_gem_object_put(obj);
 			if (IS_ERR(vma)) {
 				err = PTR_ERR(vma);
-				goto out_put;
+				goto out_region;
 			}
 
 			err = i915_vma_pin(vma, 0, 0, PIN_USER);
@@ -523,7 +525,7 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 			}
 
 			i915_vma_unpin(vma);
-			close_object(obj);
+			i915_vma_put(vma);
 		}
 	}
 
@@ -532,7 +534,7 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 out_unpin:
 	i915_vma_unpin(vma);
 out_put:
-	i915_gem_object_put(obj);
+	i915_vma_put(vma);
 out_region:
 	intel_memory_region_put(mem);
 	return err;
@@ -543,7 +545,7 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 	struct i915_ppgtt *ppgtt = arg;
 	struct drm_i915_private *i915 = ppgtt->vm.i915;
 	unsigned long supported = INTEL_INFO(i915)->page_sizes;
-	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
 	int bit;
 	int err;
 
@@ -558,12 +560,12 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 	for_each_set_bit_from(bit, &supported,
 			      ilog2(I915_GTT_MAX_PAGE_SIZE) + 1) {
 		IGT_TIMEOUT(end_time);
+		struct drm_i915_gem_object *obj;
 		unsigned int page_size = BIT(bit);
 		unsigned int flags = PIN_USER | PIN_OFFSET_FIXED;
 		unsigned int offset;
 		unsigned int size =
 			round_up(page_size, I915_GTT_PAGE_SIZE_2M) << 1;
-		struct i915_vma *vma;
 
 		obj = fake_huge_pages_object(i915, size, true);
 		if (IS_ERR(obj))
@@ -572,27 +574,27 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 		if (obj->base.size != size) {
 			pr_err("obj->base.size=%zu, expected=%u\n",
 			       obj->base.size, size);
-			err = -EINVAL;
-			goto out_put;
+			i915_gem_object_put(obj);
+			return -EINVAL;
 		}
 
 		err = i915_gem_object_pin_pages(obj);
-		if (err)
-			goto out_put;
+		if (err) {
+			i915_gem_object_put(obj);
+			return err;
+		}
 
 		/* Force the page size for this object */
 		obj->mm.page_sizes.sg = page_size;
 
 		vma = i915_vma_instance(obj, &ppgtt->vm, NULL);
-		if (IS_ERR(vma)) {
-			err = PTR_ERR(vma);
-			goto out_unpin;
-		}
+		i915_gem_object_put(obj);
+		if (IS_ERR(vma))
+			return PTR_ERR(vma);
 
 		err = i915_vma_pin(vma, 0, 0, flags);
 		if (err)
-			goto out_unpin;
-
+			goto out_vma;
 
 		err = igt_check_page_sizes(vma);
 
@@ -603,9 +605,8 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 		}
 
 		i915_vma_unpin(vma);
-
 		if (err)
-			goto out_unpin;
+			goto out_vma;
 
 		/*
 		 * Try all the other valid offsets until the next
@@ -615,11 +616,11 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 		for (offset = 4096; offset < page_size; offset += 4096) {
 			err = i915_vma_unbind(vma);
 			if (err)
-				goto out_unpin;
+				goto out_vma;
 
 			err = i915_vma_pin(vma, 0, 0, flags | offset);
 			if (err)
-				goto out_unpin;
+				goto out_vma;
 
 			err = igt_check_page_sizes(vma);
 
@@ -630,9 +631,8 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 			}
 
 			i915_vma_unpin(vma);
-
 			if (err)
-				goto out_unpin;
+				goto out_vma;
 
 			if (igt_timeout(end_time,
 					"%s timed out at offset %x with page-size %x\n",
@@ -640,17 +640,13 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 				break;
 		}
 
-		i915_gem_object_unpin_pages(obj);
-		close_object(obj);
+		i915_vma_put(vma);
 	}
 
 	return 0;
 
-out_unpin:
-	i915_gem_object_unpin_pages(obj);
-out_put:
-	i915_gem_object_put(obj);
-
+out_vma:
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -713,12 +709,15 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
 		}
 
 		err = i915_vma_pin(vma, 0, 0, PIN_USER);
-		if (err)
+		if (err) {
+			i915_vma_put(vma);
 			break;
+		}
 
 		err = igt_check_page_sizes(vma);
 		if (err) {
 			i915_vma_unpin(vma);
+			i915_vma_put(vma);
 			break;
 		}
 
@@ -750,6 +749,7 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
 					I915_GTT_PAGE_SIZE_2M)) {
 				pr_err("node.start(%llx) not aligned to 2M\n",
 				       vma->node.start);
+				i915_vma_put(vma);
 				err = -EINVAL;
 				break;
 			}
@@ -758,6 +758,7 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
 					I915_GTT_PAGE_SIZE_2M)) {
 				pr_err("node.size(%llx) not aligned to 2M\n",
 				       vma->node.size);
+				i915_vma_put(vma);
 				err = -EINVAL;
 				break;
 			}
@@ -767,10 +768,13 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
 			pr_err("gtt=%u, expected=%u, size=%zd, single=%s\n",
 			       vma->page_sizes.gtt, expected_gtt,
 			       obj->base.size, yesno(!!single));
+			i915_vma_put(vma);
 			err = -EINVAL;
 			break;
 		}
 
+		i915_vma_put(vma);
+
 		if (igt_timeout(end_time,
 				"%s timed out at size %zd\n",
 				__func__, obj->base.size))
@@ -875,8 +879,10 @@ static int igt_mock_ppgtt_64K(void *arg)
 				return PTR_ERR(obj);
 
 			err = i915_gem_object_pin_pages(obj);
-			if (err)
-				goto out_object_put;
+			if (err) {
+				i915_gem_object_put(obj);
+				return err;
+			}
 
 			/*
 			 * Disable 2M pages -- We only want to use 64K/4K pages
@@ -885,17 +891,16 @@ static int igt_mock_ppgtt_64K(void *arg)
 			obj->mm.page_sizes.sg &= ~I915_GTT_PAGE_SIZE_2M;
 
 			vma = i915_vma_instance(obj, &ppgtt->vm, NULL);
-			if (IS_ERR(vma)) {
-				err = PTR_ERR(vma);
-				goto out_object_unpin;
-			}
+			i915_gem_object_put(obj);
+			if (IS_ERR(vma))
+				return PTR_ERR(vma);
 
 			if (offset)
 				flags |= PIN_OFFSET_FIXED | offset;
 
 			err = i915_vma_pin(vma, 0, 0, flags);
 			if (err)
-				goto out_object_unpin;
+				goto out_vma_put;
 
 			err = igt_check_page_sizes(vma);
 			if (err)
@@ -928,8 +933,7 @@ static int igt_mock_ppgtt_64K(void *arg)
 			}
 
 			i915_vma_unpin(vma);
-			i915_gem_object_unpin_pages(obj);
-			close_object(obj);
+			i915_vma_put(vma);
 		}
 	}
 
@@ -937,11 +941,8 @@ static int igt_mock_ppgtt_64K(void *arg)
 
 out_vma_unpin:
 	i915_vma_unpin(vma);
-out_object_unpin:
-	i915_gem_object_unpin_pages(obj);
-out_object_put:
-	i915_gem_object_put(obj);
-
+out_vma_put:
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -1050,7 +1051,7 @@ static int __igt_write_huge(struct intel_context *ce,
 
 	err = i915_vma_unbind(vma);
 	if (err)
-		return err;
+		goto out_vma;
 
 	err = i915_vma_pin(vma, size, 0, flags | offset);
 	if (err) {
@@ -1061,7 +1062,7 @@ static int __igt_write_huge(struct intel_context *ce,
 		if (err == -ENOSPC && i915_is_ggtt(ce->vm))
 			err = 0;
 
-		return err;
+		goto out_vma;
 	}
 
 	err = igt_check_page_sizes(vma);
@@ -1082,6 +1083,8 @@ static int __igt_write_huge(struct intel_context *ce,
 
 out_vma_unpin:
 	i915_vma_unpin(vma);
+out_vma:
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -1463,11 +1466,13 @@ static int igt_tmpfs_fallback(void *arg)
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err)
-		goto out_put;
+		goto out_vma;
 
 	err = igt_check_page_sizes(vma);
 
 	i915_vma_unpin(vma);
+out_vma:
+	i915_vma_put(vma);
 out_put:
 	i915_gem_object_put(obj);
 out_restore:
@@ -1514,7 +1519,7 @@ static int igt_shrink_thp(void *arg)
 
 	err = i915_vma_pin(vma, 0, 0, flags);
 	if (err)
-		goto out_put;
+		goto out_vma;
 
 	if (obj->mm.page_sizes.phys < I915_GTT_PAGE_SIZE_2M) {
 		pr_info("failed to allocate THP, finishing test early\n");
@@ -1538,7 +1543,7 @@ static int igt_shrink_thp(void *arg)
 	i915_gem_context_unlock_engines(ctx);
 	i915_vma_unpin(vma);
 	if (err)
-		goto out_put;
+		goto out_vma;
 
 	/*
 	 * Now that the pages are *unpinned* shrink-all should invoke
@@ -1548,18 +1553,18 @@ static int igt_shrink_thp(void *arg)
 	if (i915_gem_object_has_pages(obj)) {
 		pr_err("shrink-all didn't truncate the pages\n");
 		err = -EINVAL;
-		goto out_put;
+		goto out_vma;
 	}
 
 	if (obj->mm.page_sizes.sg || obj->mm.page_sizes.phys) {
 		pr_err("residual page-size bits left\n");
 		err = -EINVAL;
-		goto out_put;
+		goto out_vma;
 	}
 
 	err = i915_vma_pin(vma, 0, 0, flags);
 	if (err)
-		goto out_put;
+		goto out_vma;
 
 	while (n--) {
 		err = cpu_check(obj, n, 0xdeadbeaf);
@@ -1569,6 +1574,8 @@ static int igt_shrink_thp(void *arg)
 
 out_unpin:
 	i915_vma_unpin(vma);
+out_vma:
+	i915_vma_put(vma);
 out_put:
 	i915_gem_object_put(obj);
 out_vm:
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 299c29e9ad86..3f2beeda0880 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -75,6 +75,13 @@ static int __igt_client_fill(struct intel_engine_cs *engine)
 		if (err)
 			goto err_unpin;
 
+		err = i915_gem_object_wait(obj,
+					   I915_WAIT_INTERRUPTIBLE |
+					   I915_WAIT_ALL,
+					   HZ / 2);
+		if (err)
+			goto err_unpin;
+
 		i915_gem_object_lock(obj);
 		err = i915_gem_object_set_to_cpu_domain(obj, false);
 		i915_gem_object_unlock(obj);
@@ -243,8 +250,7 @@ __create_vma(struct tiled_blits *t, size_t size, bool lmem)
 		return ERR_CAST(obj);
 
 	vma = i915_vma_instance(obj, t->ce->vm, NULL);
-	if (IS_ERR(vma))
-		i915_gem_object_put(obj);
+	i915_gem_object_put(obj);
 
 	return vma;
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index b8dd6fabe70a..34f2d873ca83 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -101,7 +101,6 @@ static int gtt_set(struct context *ctx, unsigned long offset, u32 v)
 	intel_gt_pm_get(vma->vm->gt);
 
 	map = i915_vma_pin_iomap(vma);
-	i915_vma_unpin(vma);
 	if (IS_ERR(map)) {
 		err = PTR_ERR(map);
 		goto out_rpm;
@@ -112,6 +111,7 @@ static int gtt_set(struct context *ctx, unsigned long offset, u32 v)
 
 out_rpm:
 	intel_gt_pm_put(vma->vm->gt);
+	i915_ggtt_unpin(vma);
 	return err;
 }
 
@@ -134,7 +134,6 @@ static int gtt_get(struct context *ctx, unsigned long offset, u32 *v)
 	intel_gt_pm_get(vma->vm->gt);
 
 	map = i915_vma_pin_iomap(vma);
-	i915_vma_unpin(vma);
 	if (IS_ERR(map)) {
 		err = PTR_ERR(map);
 		goto out_rpm;
@@ -145,6 +144,7 @@ static int gtt_get(struct context *ctx, unsigned long offset, u32 *v)
 
 out_rpm:
 	intel_gt_pm_put(vma->vm->gt);
+	i915_ggtt_unpin(vma);
 	return err;
 }
 
@@ -211,14 +211,14 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 
 	rq = intel_engine_create_kernel_request(ctx->engine);
 	if (IS_ERR(rq)) {
-		i915_vma_unpin(vma);
+		i915_ggtt_unpin(vma);
 		return PTR_ERR(rq);
 	}
 
 	cs = intel_ring_begin(rq, 4);
 	if (IS_ERR(cs)) {
 		i915_request_add(rq);
-		i915_vma_unpin(vma);
+		i915_ggtt_unpin(vma);
 		return PTR_ERR(cs);
 	}
 
@@ -245,9 +245,9 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 	i915_vma_unlock(vma);
-	i915_vma_unpin(vma);
 
 	i915_request_add(rq);
+	i915_ggtt_unpin(vma);
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index c5d06af890bc..7be4cd6d6652 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -435,7 +435,7 @@ static int gpu_fill(struct intel_context *ce,
 
 	err = i915_vma_pin(vma, 0, 0, PIN_HIGH | PIN_USER);
 	if (err)
-		return err;
+		goto out_vma;
 
 	/*
 	 * Within the GTT the huge objects maps every page onto
@@ -450,8 +450,10 @@ static int gpu_fill(struct intel_context *ce,
 			      (dw * sizeof(u32)),
 			      real_page_count(obj),
 			      dw);
-	i915_vma_unpin(vma);
 
+	i915_vma_unpin(vma);
+out_vma:
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -924,10 +926,9 @@ static struct i915_vma *rpcs_query_batch(struct i915_vma *vma)
 	intel_gt_chipset_flush(vma->vm->gt);
 
 	vma = i915_vma_instance(obj, vma->vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		return vma;
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err)
@@ -936,7 +937,7 @@ static struct i915_vma *rpcs_query_batch(struct i915_vma *vma)
 	return vma;
 
 err:
-	i915_gem_object_put(obj);
+	i915_vma_put(vma);
 	return ERR_PTR(err);
 }
 
@@ -960,16 +961,16 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 	err = i915_gem_object_set_to_gtt_domain(obj, false);
 	i915_gem_object_unlock(obj);
 	if (err)
-		return err;
+		goto err_vma;
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err)
-		return err;
+		goto err_vma;
 
 	batch = rpcs_query_batch(vma);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
-		goto err_vma;
+		goto err_unpin;
 	}
 
 	rq = i915_request_create(ce);
@@ -1007,7 +1008,7 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 		goto skip_request;
 
 	i915_vma_unpin_and_release(&batch, 0);
-	i915_vma_unpin(vma);
+	i915_vma_unpin_and_release(&vma, 0);
 
 	*rq_out = i915_request_get(rq);
 
@@ -1020,9 +1021,10 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 	i915_request_add(rq);
 err_batch:
 	i915_vma_unpin_and_release(&batch, 0);
-err_vma:
+err_unpin:
 	i915_vma_unpin(vma);
-
+err_vma:
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -1544,7 +1546,7 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_OFFSET_FIXED);
 	if (err)
-		goto out_vm;
+		goto out_vma;
 
 	rq = igt_request_alloc(ctx, engine);
 	if (IS_ERR(rq)) {
@@ -1574,12 +1576,14 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 
 	i915_request_add(rq);
 
-	goto out_vm;
+	goto out_vma;
 skip_request:
 	i915_request_set_error_once(rq, err);
 	i915_request_add(rq);
 err_unpin:
 	i915_vma_unpin(vma);
+out_vma:
+	i915_vma_put(vma);
 out_vm:
 	i915_vm_put(vm);
 out:
@@ -1623,7 +1627,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 
 		err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_OFFSET_FIXED);
 		if (err)
-			goto out_vm;
+			goto out_vma;
 
 		cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
 		if (IS_ERR(cmd)) {
@@ -1659,7 +1663,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 
 		err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
 		if (err)
-			goto out_vm;
+			goto out_vma;
 
 		cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
 		if (IS_ERR(cmd)) {
@@ -1716,23 +1720,25 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 	err = i915_gem_object_set_to_cpu_domain(obj, false);
 	i915_gem_object_unlock(obj);
 	if (err)
-		goto out_vm;
+		goto out_vma;
 
 	cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
-		goto out_vm;
+		goto out_vma;
 	}
 
 	*value = cmd[result / sizeof(*cmd)];
 	i915_gem_object_unpin_map(obj);
 
-	goto out_vm;
+	goto out_vma;
 skip_request:
 	i915_request_set_error_once(rq, err);
 	i915_request_add(rq);
 err_unpin:
 	i915_vma_unpin(vma);
+out_vma:
+	i915_vma_put(vma);
 out_vm:
 	i915_vm_put(vm);
 out:
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index daedff40236b..701ab4e0f45e 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -188,7 +188,7 @@ static int igt_gpu_reloc(void *arg)
 
 		err = i915_vma_pin(ev.vma, 0, 0, PIN_USER | PIN_HIGH);
 		if (err)
-			goto err_unpin;
+			goto err_vma;
 
 		mutex_lock(&eb.context->timeline->mutex);
 		intel_context_enter(eb.context);
@@ -204,6 +204,8 @@ static int igt_gpu_reloc(void *arg)
 		intel_context_exit(eb.context);
 		mutex_unlock(&eb.context->timeline->mutex);
 		i915_vma_unpin(ev.vma);
+err_vma:
+		i915_vma_put(ev.vma);
 err_unpin:
 		intel_context_unpin(eb.context);
 err_put:
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 11f734fea3ab..7dc2afa6d599 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -164,7 +164,7 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
 	kunmap(p);
 
 out:
-	__i915_vma_put(vma);
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -223,6 +223,7 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
 		if (IS_ERR(io)) {
 			pr_err("Failed to iomap partial view: offset=%lu; err=%d\n",
 			       page, (int)PTR_ERR(io));
+			i915_vma_put(vma);
 			return PTR_ERR(io);
 		}
 
@@ -230,36 +231,35 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
 		i915_vma_unpin_iomap(vma);
 
 		offset = tiled_offset(tile, page << PAGE_SHIFT);
-		if (offset >= obj->base.size)
-			continue;
-
-		intel_gt_flush_ggtt_writes(&to_i915(obj->base.dev)->gt);
-
-		p = i915_gem_object_get_page(obj, offset >> PAGE_SHIFT);
-		cpu = kmap(p) + offset_in_page(offset);
-		drm_clflush_virt_range(cpu, sizeof(*cpu));
-		if (*cpu != (u32)page) {
-			pr_err("Partial view for %lu [%u] (offset=%llu, size=%u [%llu, row size %u], fence=%d, tiling=%d, stride=%d) misalignment, expected write to page (%llu + %u [0x%llx]) of 0x%x, found 0x%x\n",
-			       page, n,
-			       view.partial.offset,
-			       view.partial.size,
-			       vma->size >> PAGE_SHIFT,
-			       tile->tiling ? tile_row_pages(obj) : 0,
-			       vma->fence ? vma->fence->id : -1, tile->tiling, tile->stride,
-			       offset >> PAGE_SHIFT,
-			       (unsigned int)offset_in_page(offset),
-			       offset,
-			       (u32)page, *cpu);
-			err = -EINVAL;
+		if (offset < obj->base.size) {
+			intel_gt_flush_ggtt_writes(&to_i915(obj->base.dev)->gt);
+
+			p = i915_gem_object_get_page(obj, offset >> PAGE_SHIFT);
+			cpu = kmap(p) + offset_in_page(offset);
+			drm_clflush_virt_range(cpu, sizeof(*cpu));
+			if (*cpu != (u32)page) {
+				pr_err("Partial view for %lu [%u] (offset=%llu, size=%u [%llu, row size %u], fence=%d, tiling=%d, stride=%d) misalignment, expected write to page (%llu + %u [0x%llx]) of 0x%x, found 0x%x\n",
+				       page, n,
+				       view.partial.offset,
+				       view.partial.size,
+				       vma->size >> PAGE_SHIFT,
+				       tile->tiling ? tile_row_pages(obj) : 0,
+				       vma->fence ? vma->fence->id : -1, tile->tiling, tile->stride,
+				       offset >> PAGE_SHIFT,
+				       (unsigned int)offset_in_page(offset),
+				       offset,
+				       (u32)page, *cpu);
+				err = -EINVAL;
+			}
+			*cpu = 0;
+			drm_clflush_virt_range(cpu, sizeof(*cpu));
+			kunmap(p);
 		}
-		*cpu = 0;
-		drm_clflush_virt_range(cpu, sizeof(*cpu));
-		kunmap(p);
+
+		i915_vma_put(vma);
 		if (err)
 			return err;
 
-		__i915_vma_put(vma);
-
 		if (igt_timeout(end_time,
 				"%s: timed out after tiling=%d stride=%d\n",
 				__func__, tile->tiling, tile->stride))
@@ -535,12 +535,15 @@ static int make_obj_busy(struct drm_i915_gem_object *obj)
 			return PTR_ERR(vma);
 
 		err = i915_vma_pin(vma, 0, 0, PIN_USER);
-		if (err)
+		if (err) {
+			i915_vma_put(vma);
 			return err;
+		}
 
 		rq = intel_engine_create_kernel_request(engine);
 		if (IS_ERR(rq)) {
 			i915_vma_unpin(vma);
+			i915_vma_put(vma);
 			return PTR_ERR(rq);
 		}
 
@@ -553,6 +556,7 @@ static int make_obj_busy(struct drm_i915_gem_object *obj)
 
 		i915_request_add(rq);
 		i915_vma_unpin(vma);
+		i915_vma_put(vma);
 		if (err)
 			return err;
 	}
@@ -738,7 +742,6 @@ static int gtt_set(struct drm_i915_gem_object *obj)
 
 	intel_gt_pm_get(vma->vm->gt);
 	map = i915_vma_pin_iomap(vma);
-	i915_vma_unpin(vma);
 	if (IS_ERR(map)) {
 		err = PTR_ERR(map);
 		goto out;
@@ -749,6 +752,7 @@ static int gtt_set(struct drm_i915_gem_object *obj)
 
 out:
 	intel_gt_pm_put(vma->vm->gt);
+	i915_ggtt_unpin(vma);
 	return err;
 }
 
@@ -764,7 +768,6 @@ static int gtt_check(struct drm_i915_gem_object *obj)
 
 	intel_gt_pm_get(vma->vm->gt);
 	map = i915_vma_pin_iomap(vma);
-	i915_vma_unpin(vma);
 	if (IS_ERR(map)) {
 		err = PTR_ERR(map);
 		goto out;
@@ -779,6 +782,7 @@ static int gtt_check(struct drm_i915_gem_object *obj)
 
 out:
 	intel_gt_pm_put(vma->vm->gt);
+	i915_ggtt_unpin(vma);
 	return err;
 }
 
@@ -1132,7 +1136,7 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 
 		err = i915_vma_pin(vma, 0, 0, PIN_USER);
 		if (err)
-			goto out_unmap;
+			goto out_vma;
 
 		rq = i915_request_create(engine->kernel_context);
 		if (IS_ERR(rq)) {
@@ -1166,6 +1170,8 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 
 out_unpin:
 		i915_vma_unpin(vma);
+out_vma:
+		i915_vma_put(vma);
 		if (err)
 			goto out_unmap;
 	}
diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
index e21b5023ca7d..c5b2c62a56fe 100644
--- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
+++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
@@ -56,8 +56,8 @@ igt_emit_store_dw(struct i915_vma *vma,
 
 	cmd = i915_gem_object_pin_map(obj, I915_MAP_WC);
 	if (IS_ERR(cmd)) {
-		err = PTR_ERR(cmd);
-		goto err;
+		i915_gem_object_put(obj);
+		return ERR_CAST(cmd);
 	}
 
 	GEM_BUG_ON(offset + (count - 1) * PAGE_SIZE > vma->node.size);
@@ -90,19 +90,18 @@ igt_emit_store_dw(struct i915_vma *vma,
 	intel_gt_chipset_flush(vma->vm->gt);
 
 	vma = i915_vma_instance(obj, vma->vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		return vma;
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err)
-		goto err;
+		goto err_vma;
 
 	return vma;
 
-err:
-	i915_gem_object_put(obj);
+err_vma:
+	i915_vma_put(vma);
 	return ERR_PTR(err);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index ea9a8044fd56..d557bfb832fb 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -266,7 +266,7 @@ static void gen6_ppgtt_cleanup(struct i915_address_space *vm)
 {
 	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(i915_vm_to_ppgtt(vm));
 
-	__i915_vma_put(ppgtt->vma);
+	i915_vma_put(ppgtt->vma);
 
 	gen6_ppgtt_free_pd(ppgtt);
 	free_scratch(vm);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 7bf2f76212f0..6e5268d83962 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -535,7 +535,7 @@ static void cleanup_status_page(struct intel_engine_cs *engine)
 		i915_vma_unpin(vma);
 
 	i915_gem_object_unpin_map(vma->obj);
-	i915_gem_object_put(vma->obj);
+	i915_vma_put(vma);
 }
 
 static int pin_ggtt_status_page(struct intel_engine_cs *engine,
@@ -586,10 +586,9 @@ static int init_status_page(struct intel_engine_cs *engine)
 	i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);
 
 	vma = i915_vma_instance(obj, &engine->gt->ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		ret = PTR_ERR(vma);
-		goto err;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
 
 	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
 	if (IS_ERR(vaddr)) {
@@ -611,7 +610,7 @@ static int init_status_page(struct intel_engine_cs *engine)
 err_unpin:
 	i915_gem_object_unpin_map(obj);
 err:
-	i915_gem_object_put(obj);
+	i915_vma_put(vma);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 59a4a3ab6bfd..916c61914526 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -684,6 +684,7 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
 
 	rcu_barrier(); /* flush the RCU'ed__i915_vm_release */
 	flush_workqueue(ggtt->vm.i915->wq);
+	flush_work(&ggtt->vm.release.work);
 
 	mutex_lock(&ggtt->vm.mutex);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index ebc29b6ee86c..9a2076dbaafd 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -26,9 +26,6 @@ void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 
 	spin_lock_init(&gt->irq_lock);
 
-	INIT_LIST_HEAD(&gt->closed_vma);
-	spin_lock_init(&gt->closed_lock);
-
 	intel_gt_init_buffer_pool(gt);
 	intel_gt_init_reset(gt);
 	intel_gt_init_requests(gt);
@@ -37,6 +34,8 @@ void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 
 	intel_rps_init_early(&gt->rps);
 	intel_uc_init_early(&gt->uc);
+
+	i915_vma_clock_init_early(&gt->vma_clock);
 }
 
 void intel_gt_init_hw_early(struct intel_gt *gt, struct i915_ggtt *ggtt)
@@ -332,7 +331,7 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
 	struct drm_i915_private *i915 = gt->i915;
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
-	int ret;
+	int err;
 
 	obj = i915_gem_object_create_stolen(i915, size);
 	if (IS_ERR(obj))
@@ -343,22 +342,18 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
 	}
 
 	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		ret = PTR_ERR(vma);
-		goto err_unref;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
 
-	ret = i915_ggtt_pin(vma, 0, PIN_HIGH);
-	if (ret)
-		goto err_unref;
+	err = i915_ggtt_pin(vma, 0, PIN_HIGH);
+	if (err) {
+		i915_vma_put(vma);
+		return err;
+	}
 
 	gt->scratch = i915_vma_make_unshrinkable(vma);
-
 	return 0;
-
-err_unref:
-	i915_gem_object_put(obj);
-	return ret;
 }
 
 static void intel_gt_fini_scratch(struct intel_gt *gt)
@@ -595,6 +590,7 @@ int intel_gt_init(struct intel_gt *gt)
 void intel_gt_driver_remove(struct intel_gt *gt)
 {
 	__intel_gt_disable(gt);
+	i915_vma_clock_flush(&gt->vma_clock);
 
 	intel_uc_driver_remove(&gt->uc);
 
@@ -633,6 +629,8 @@ void intel_gt_driver_release(struct intel_gt *gt)
 
 void intel_gt_driver_late_release(struct intel_gt *gt)
 {
+	i915_vma_clock_flush(&gt->vma_clock);
+
 	/* We need to wait for inflight RCU frees to release their grip */
 	rcu_barrier();
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index f1d5333f9456..4d253efc62f0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -81,7 +81,6 @@ static int __gt_park(struct intel_wakeref *wf)
 
 	intel_gt_park_requests(gt);
 
-	i915_vma_parked(gt);
 	i915_pmu_gt_parked(i915);
 	intel_rps_park(&gt->rps);
 	intel_rc6_park(&gt->rc6);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 0cc1d6b185dc..1681e952d186 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -59,9 +59,6 @@ struct intel_gt {
 	struct intel_wakeref wakeref;
 	atomic_t user_wakeref;
 
-	struct list_head closed_vma;
-	spinlock_t closed_lock; /* guards the list of closed_vma */
-
 	ktime_t last_init_time;
 	struct intel_reset reset;
 
@@ -108,6 +105,8 @@ struct intel_gt {
 	 */
 	struct intel_gt_buffer_pool buffer_pool;
 
+	struct i915_vma_clock vma_clock;
+
 	struct i915_vma *scratch;
 };
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 8c044e6b4880..4b4adf2d9f3f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -28,33 +28,10 @@ int pin_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
 	return 0;
 }
 
-void __i915_vm_close(struct i915_address_space *vm)
-{
-	struct i915_vma *vma, *vn;
-
-	if (!atomic_dec_and_mutex_lock(&vm->open, &vm->mutex))
-		return;
-
-	list_for_each_entry_safe(vma, vn, &vm->bound_list, vm_link) {
-		struct drm_i915_gem_object *obj = vma->obj;
-
-		/* Keep the obj (and hence the vma) alive as _we_ destroy it */
-		if (!kref_get_unless_zero(&obj->base.refcount))
-			continue;
-
-		atomic_and(~I915_VMA_PIN_MASK, &vma->flags);
-		WARN_ON(__i915_vma_unbind(vma));
-		__i915_vma_put(vma);
-
-		i915_gem_object_put(obj);
-	}
-	GEM_BUG_ON(!list_empty(&vm->bound_list));
-
-	mutex_unlock(&vm->mutex);
-}
-
 void i915_address_space_fini(struct i915_address_space *vm)
 {
+	GEM_BUG_ON(work_pending(&vm->release.work));
+
 	i915_active_fini(&vm->binding);
 
 	drm_mm_takedown(&vm->mm);
@@ -83,12 +60,76 @@ void i915_vm_release(struct kref *kref)
 	queue_rcu_work(vm->i915->wq, &vm->rcu);
 }
 
+static void vma_decouple_obj(struct i915_vma *vma)
+{
+	struct drm_i915_gem_object *obj;
+
+	obj = fetch_and_zero(&vma->obj);
+	if (!obj)
+		return;
+
+	spin_lock(&obj->vma.lock);
+	list_del(&vma->obj_link);
+	if (!RB_EMPTY_NODE(&vma->obj_node))
+		rb_erase(&vma->obj_node, &obj->vma.tree);
+	spin_unlock(&obj->vma.lock);
+
+	i915_gem_object_put(obj);
+}
+
+static void i915_vm_release_vma(struct work_struct *wrk)
+{
+	struct i915_address_space *vm =
+		container_of(wrk, typeof(*vm), release.work);
+	struct i915_vma *vma, *next;
+	LIST_HEAD(list);
+
+	spin_lock_irq(&vm->release.lock);
+	list_splice_init(&vm->release.list, &list);
+	spin_unlock_irq(&vm->release.lock);
+
+	mutex_lock(&vm->mutex);
+	list_for_each_entry(vma, &list, closed_link) {
+		if (drm_mm_node_allocated(&vma->node)) {
+			atomic_and(~I915_VMA_PIN_MASK, &vma->flags);
+			__i915_vma_unbind(vma);
+			GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
+		}
+	}
+	mutex_unlock(&vm->mutex);
+
+	list_for_each_entry_safe(vma, next, &list, closed_link) {
+		vma_decouple_obj(vma);
+		i915_vma_release(&vma->ref);
+	}
+}
+
 void i915_address_space_init(struct i915_address_space *vm, int subclass)
 {
 	kref_init(&vm->ref);
 	INIT_RCU_WORK(&vm->rcu, __i915_vm_release);
 	atomic_set(&vm->open, 1);
 
+	spin_lock_init(&vm->release.lock);
+	INIT_LIST_HEAD(&vm->release.list);
+	INIT_WORK(&vm->release.work, i915_vm_release_vma);
+#if IS_ENABLED(CONFIG_LOCKDEP)
+	/* XXX lockdep_set_subclass(&vm->release.work, subclass); */
+	lockdep_init_map_waits(&vm->release.work.lockdep_map,
+			       vm->release.work.lockdep_map.name,
+			       vm->release.work.lockdep_map.key,
+			       subclass,
+			       vm->release.work.lockdep_map.wait_type_inner,
+			       vm->release.work.lockdep_map.wait_type_outer);
+	/*
+	 * Due to an interesting quirk in lockdep's internal debug tracking,
+	 * after setting a subclass we must ensure the lock is used. Otherwise,
+	 * nr_unused_locks is incremented once too often.
+	 */
+	lock_map_acquire(&vm->release.work.lockdep_map);
+	lock_map_release(&vm->release.work.lockdep_map);
+#endif
+
 	/*
 	 * The vm->mutex must be reclaim safe (for use in the shrinker).
 	 * Do a dummy acquire now under fs_reclaim so that any allocation
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index a4809f4ffe53..6e19d4dc356a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -250,6 +250,12 @@ struct i915_address_space {
 
 	struct i915_active binding;
 
+	struct {
+		spinlock_t lock;
+		struct list_head list;
+		struct work_struct work;
+	} release;
+
 	/* Global GTT */
 	bool is_ggtt:1;
 
@@ -401,23 +407,11 @@ i915_vm_open(struct i915_address_space *vm)
 	return i915_vm_get(vm);
 }
 
-static inline bool
-i915_vm_tryopen(struct i915_address_space *vm)
-{
-	if (atomic_add_unless(&vm->open, 1, 0))
-		return i915_vm_get(vm);
-
-	return false;
-}
-
-void __i915_vm_close(struct i915_address_space *vm);
-
 static inline void
 i915_vm_close(struct i915_address_space *vm)
 {
 	GEM_BUG_ON(!atomic_read(&vm->open));
-	__i915_vm_close(vm);
-
+	atomic_dec(&vm->open);
 	i915_vm_put(vm);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index e866b8d721ed..940a8428327f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3850,21 +3850,18 @@ static int lrc_setup_wa_ctx(struct intel_engine_cs *engine)
 		return PTR_ERR(obj);
 
 	vma = i915_vma_instance(obj, &engine->gt->ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
 
 	err = i915_ggtt_pin(vma, 0, PIN_HIGH);
-	if (err)
-		goto err;
+	if (err) {
+		i915_vma_put(vma);
+		return err;
+	}
 
 	engine->wa_ctx.vma = vma;
 	return 0;
-
-err:
-	i915_gem_object_put(obj);
-	return err;
 }
 
 static void lrc_destroy_wa_ctx(struct intel_engine_cs *engine)
@@ -5291,10 +5288,9 @@ static int __execlists_context_alloc(struct intel_context *ce,
 		return PTR_ERR(ctx_obj);
 
 	vma = i915_vma_instance(ctx_obj, &engine->gt->ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		ret = PTR_ERR(vma);
-		goto error_deref_obj;
-	}
+	i915_gem_object_put(ctx_obj);
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
 
 	if (!ce->timeline) {
 		struct intel_timeline *tl;
@@ -5311,7 +5307,7 @@ static int __execlists_context_alloc(struct intel_context *ce,
 		tl = intel_timeline_create(engine->gt, hwsp);
 		if (IS_ERR(tl)) {
 			ret = PTR_ERR(tl);
-			goto error_deref_obj;
+			goto err_vma;
 		}
 
 		ce->timeline = tl;
@@ -5320,14 +5316,14 @@ static int __execlists_context_alloc(struct intel_context *ce,
 	ring = intel_engine_create_ring(engine, (unsigned long)ce->ring);
 	if (IS_ERR(ring)) {
 		ret = PTR_ERR(ring);
-		goto error_deref_obj;
+		goto err_vma;
 	}
 
 	ret = populate_lr_context(ce, ctx_obj, engine, ring);
 	if (ret) {
 		drm_dbg(&engine->i915->drm,
 			"Failed to populate LRC: %d\n", ret);
-		goto error_ring_free;
+		goto err_ring;
 	}
 
 	ce->ring = ring;
@@ -5335,10 +5331,10 @@ static int __execlists_context_alloc(struct intel_context *ce,
 
 	return 0;
 
-error_ring_free:
+err_ring:
 	intel_ring_put(ring);
-error_deref_obj:
-	i915_gem_object_put(ctx_obj);
+err_vma:
+	i915_vma_put(vma);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 6db23389e427..24927e9bcad7 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -176,14 +176,13 @@ int intel_renderstate_init(struct intel_renderstate *so,
 		return PTR_ERR(obj);
 
 	so->vma = i915_vma_instance(obj, &engine->gt->ggtt->vm, NULL);
-	if (IS_ERR(so->vma)) {
-		err = PTR_ERR(so->vma);
-		goto err_obj;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(so->vma))
+		return PTR_ERR(so->vma);
 
 	err = i915_vma_pin(so->vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
 	if (err)
-		goto err_obj;
+		goto err_vma;
 
 	err = render_state_setup(so, engine->i915);
 	if (err)
@@ -193,8 +192,8 @@ int intel_renderstate_init(struct intel_renderstate *so,
 
 err_unpin:
 	i915_vma_unpin(so->vma);
-err_obj:
-	i915_gem_object_put(obj);
+err_vma:
+	i915_vma_put(so->vma);
 	so->vma = NULL;
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index bdb324167ef3..fc78f9e2f7d3 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -117,13 +117,8 @@ static struct i915_vma *create_ring_vma(struct i915_ggtt *ggtt, int size)
 		i915_gem_object_set_readonly(obj);
 
 	vma = i915_vma_instance(obj, vm, NULL);
-	if (IS_ERR(vma))
-		goto err;
-
-	return vma;
-
-err:
 	i915_gem_object_put(obj);
+
 	return vma;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index f1f27b7fc746..9ccc7c742e99 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -508,7 +508,6 @@ alloc_context_vma(struct intel_engine_cs *engine)
 	struct drm_i915_private *i915 = engine->i915;
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
-	int err;
 
 	obj = i915_gem_object_create_shmem(i915, engine->context_size);
 	if (IS_ERR(obj))
@@ -537,8 +536,8 @@ alloc_context_vma(struct intel_engine_cs *engine)
 
 		vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
 		if (IS_ERR(vaddr)) {
-			err = PTR_ERR(vaddr);
-			goto err_obj;
+			i915_gem_object_put(obj);
+			return ERR_CAST(vaddr);
 		}
 
 		shmem_read(engine->default_state, 0,
@@ -549,16 +548,9 @@ alloc_context_vma(struct intel_engine_cs *engine)
 	}
 
 	vma = i915_vma_instance(obj, &engine->gt->ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_obj;
-	}
+	i915_gem_object_put(obj);
 
 	return vma;
-
-err_obj:
-	i915_gem_object_put(obj);
-	return ERR_PTR(err);
 }
 
 static int ring_context_alloc(struct intel_context *ce)
@@ -1191,15 +1183,14 @@ static int gen7_ctx_switch_bb_init(struct intel_engine_cs *engine)
 		return PTR_ERR(obj);
 
 	vma = i915_vma_instance(obj, engine->gt->vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_obj;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
 
 	vma->private = intel_context_create(engine); /* dummy residuals */
 	if (IS_ERR(vma->private)) {
 		err = PTR_ERR(vma->private);
-		goto err_obj;
+		goto err_vma;
 	}
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_HIGH);
@@ -1221,8 +1212,8 @@ static int gen7_ctx_switch_bb_init(struct intel_engine_cs *engine)
 	i915_vma_unpin(vma);
 err_private:
 	intel_context_put(vma->private);
-err_obj:
-	i915_gem_object_put(obj);
+err_vma:
+	i915_vma_put(vma);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index e4a5326633b8..512d63549cd5 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -39,8 +39,7 @@ static struct i915_vma *__hwsp_alloc(struct intel_gt *gt)
 	i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);
 
 	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
-	if (IS_ERR(vma))
-		i915_gem_object_put(obj);
+	i915_gem_object_put(obj);
 
 	return vma;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 2da366821dda..2d90bc9106b5 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1947,21 +1947,19 @@ create_scratch(struct i915_address_space *vm, int count)
 	i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);
 
 	vma = i915_vma_instance(obj, vm, NULL);
+	i915_gem_object_put(obj);
 	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_obj;
+		return vma;
 	}
 
 	err = i915_vma_pin(vma, 0, 0,
 			   i915_vma_is_ggtt(vma) ? PIN_GLOBAL : PIN_USER);
-	if (err)
-		goto err_obj;
+	if (err) {
+		i915_vma_put(vma);
+		return ERR_PTR(err);
+	}
 
 	return vma;
-
-err_obj:
-	i915_gem_object_put(obj);
-	return ERR_PTR(err);
 }
 
 static const struct {
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
index 729c3c7b11e2..438844eb3600 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
@@ -74,8 +74,8 @@ static struct i915_vma *create_empty_batch(struct intel_context *ce)
 
 	cs = i915_gem_object_pin_map(obj, I915_MAP_WB);
 	if (IS_ERR(cs)) {
-		err = PTR_ERR(cs);
-		goto err_put;
+		i915_gem_object_put(obj);
+		return ERR_CAST(cs);
 	}
 
 	cs[0] = MI_BATCH_BUFFER_END;
@@ -83,23 +83,18 @@ static struct i915_vma *create_empty_batch(struct intel_context *ce)
 	i915_gem_object_flush_map(obj);
 
 	vma = i915_vma_instance(obj, ce->vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_unpin;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		return vma;
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
-	if (err)
-		goto err_unpin;
+	if (err) {
+		i915_vma_put(vma);
+		return ERR_PTR(err);
+	}
 
 	i915_gem_object_unpin_map(obj);
 	return vma;
-
-err_unpin:
-	i915_gem_object_unpin_map(obj);
-err_put:
-	i915_gem_object_put(obj);
-	return ERR_PTR(err);
 }
 
 static u32 trifilter(u32 *a)
@@ -209,10 +204,8 @@ static struct i915_vma *create_nop_batch(struct intel_context *ce)
 		return ERR_CAST(obj);
 
 	cs = i915_gem_object_pin_map(obj, I915_MAP_WB);
-	if (IS_ERR(cs)) {
-		err = PTR_ERR(cs);
-		goto err_put;
-	}
+	if (IS_ERR(cs))
+		return ERR_CAST(cs);
 
 	memset(cs, 0, SZ_64K);
 	cs[SZ_64K / sizeof(*cs) - 1] = MI_BATCH_BUFFER_END;
@@ -220,23 +213,18 @@ static struct i915_vma *create_nop_batch(struct intel_context *ce)
 	i915_gem_object_flush_map(obj);
 
 	vma = i915_vma_instance(obj, ce->vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_unpin;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		return vma;
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
-	if (err)
-		goto err_unpin;
+	if (err) {
+		i915_vma_put(vma);
+		return ERR_PTR(err);
+	}
 
 	i915_gem_object_unpin_map(obj);
 	return vma;
-
-err_unpin:
-	i915_gem_object_unpin_map(obj);
-err_put:
-	i915_gem_object_put(obj);
-	return ERR_PTR(err);
 }
 
 static int perf_mi_noop(void *arg)
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index fb5ebf930ab2..345144f4b3d0 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -145,15 +145,15 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 
 	obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
 	if (IS_ERR(obj)) {
-		i915_vm_put(vm);
-		return ERR_CAST(obj);
+		err = PTR_ERR(obj);
+		goto put_vm;
 	}
 
 	vaddr = i915_gem_object_pin_map(obj, i915_coherent_map_type(gt->i915));
 	if (IS_ERR(vaddr)) {
 		i915_gem_object_put(obj);
-		i915_vm_put(vm);
-		return ERR_CAST(vaddr);
+		err = PTR_ERR(vaddr);
+		goto put_vm;
 	}
 
 	i915_gem_object_unpin_map(h->obj);
@@ -163,22 +163,18 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 	h->batch = vaddr;
 
 	vma = i915_vma_instance(h->obj, vm, NULL);
-	if (IS_ERR(vma)) {
-		i915_vm_put(vm);
+	if (IS_ERR(vma))
 		return ERR_CAST(vma);
-	}
 
 	hws = i915_vma_instance(h->hws, vm, NULL);
 	if (IS_ERR(hws)) {
-		i915_vm_put(vm);
-		return ERR_CAST(hws);
+		err = PTR_ERR(hws);
+		goto put_vma;
 	}
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
-	if (err) {
-		i915_vm_put(vm);
-		return ERR_PTR(err);
-	}
+	if (err)
+		goto put_hws;
 
 	err = i915_vma_pin(hws, 0, 0, PIN_USER);
 	if (err)
@@ -276,6 +272,11 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 	i915_vma_unpin(hws);
 unpin_vma:
 	i915_vma_unpin(vma);
+put_hws:
+	i915_vma_put(hws);
+put_vma:
+	i915_vma_put(vma);
+put_vm:
 	i915_vm_put(vm);
 	return err ? ERR_PTR(err) : rq;
 }
@@ -1191,20 +1192,22 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 		err = i915_gem_object_set_tiling(obj, I915_TILING_X, 512);
 		if (err) {
 			pr_err("Invalid X-tiling settings; err:%d\n", err);
-			goto out_obj;
+			i915_gem_object_put(obj);
+			goto fini;
 		}
 	}
 
 	arg.vma = i915_vma_instance(obj, vm, NULL);
+	i915_gem_object_put(obj);
 	if (IS_ERR(arg.vma)) {
 		err = PTR_ERR(arg.vma);
-		goto out_obj;
+		goto fini;
 	}
 
 	rq = hang_create_request(&h, engine);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
-		goto out_obj;
+		goto out_vma;
 	}
 
 	pin_flags = i915_vma_is_ggtt(arg.vma) ? PIN_GLOBAL : PIN_USER;
@@ -1215,7 +1218,7 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 	err = i915_vma_pin(arg.vma, 0, 0, pin_flags);
 	if (err) {
 		i915_request_add(rq);
-		goto out_obj;
+		goto out_vma;
 	}
 
 	if (flags & EXEC_OBJECT_NEEDS_FENCE) {
@@ -1224,7 +1227,7 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 			pr_err("Unable to pin X-tiled fence; err:%d\n", err);
 			i915_vma_unpin(arg.vma);
 			i915_request_add(rq);
-			goto out_obj;
+			goto out_vma;
 		}
 	}
 
@@ -1294,8 +1297,8 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 
 out_rq:
 	i915_request_put(rq);
-out_obj:
-	i915_gem_object_put(obj);
+out_vma:
+	i915_vma_put(arg.vma);
 fini:
 	hang_fini(&h);
 	if (intel_gt_is_wedged(gt))
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index daa4aabab9a7..dcdef9f0b780 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -38,14 +38,13 @@ static struct i915_vma *create_scratch(struct intel_gt *gt)
 	i915_gem_object_set_cache_coherency(obj, I915_CACHING_CACHED);
 
 	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		i915_gem_object_put(obj);
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
 		return vma;
-	}
 
 	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
 	if (err) {
-		i915_gem_object_put(obj);
+		i915_vma_put(vma);
 		return ERR_PTR(err);
 	}
 
@@ -1002,15 +1001,14 @@ static int live_timeslice_preempt(void *arg)
 		return PTR_ERR(obj);
 
 	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_obj;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
 
 	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WC);
 	if (IS_ERR(vaddr)) {
 		err = PTR_ERR(vaddr);
-		goto err_obj;
+		goto err_vma;
 	}
 
 	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
@@ -1043,8 +1041,8 @@ static int live_timeslice_preempt(void *arg)
 	i915_vma_unpin(vma);
 err_map:
 	i915_gem_object_unpin_map(obj);
-err_obj:
-	i915_gem_object_put(obj);
+err_vma:
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -1310,15 +1308,14 @@ static int live_timeslice_queue(void *arg)
 		return PTR_ERR(obj);
 
 	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_obj;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
 
 	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WC);
 	if (IS_ERR(vaddr)) {
 		err = PTR_ERR(vaddr);
-		goto err_obj;
+		goto err_vma;
 	}
 
 	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
@@ -1408,8 +1405,8 @@ static int live_timeslice_queue(void *arg)
 	i915_vma_unpin(vma);
 err_map:
 	i915_gem_object_unpin_map(obj);
-err_obj:
-	i915_gem_object_put(obj);
+err_vma:
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -1576,11 +1573,11 @@ static int live_busywait_preempt(void *arg)
 
 	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
 	if (err)
-		goto err_map;
+		goto err_vma;
 
 	err = i915_vma_sync(vma);
 	if (err)
-		goto err_vma;
+		goto err_unpin;
 
 	for_each_engine(engine, gt, id) {
 		struct i915_request *lo, *hi;
@@ -1702,8 +1699,10 @@ static int live_busywait_preempt(void *arg)
 	}
 
 	err = 0;
-err_vma:
+err_unpin:
 	i915_vma_unpin(vma);
+err_vma:
+	i915_vma_put(vma);
 err_map:
 	i915_gem_object_unpin_map(obj);
 err_obj:
@@ -2669,18 +2668,21 @@ static int create_gang(struct intel_engine_cs *engine,
 	}
 
 	vma = i915_vma_instance(obj, ce->vm, NULL);
+	i915_gem_object_put(obj);
 	if (IS_ERR(vma)) {
 		err = PTR_ERR(vma);
-		goto err_obj;
+		goto err_ce;
 	}
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err)
-		goto err_obj;
+		goto err_vma;
 
 	cs = i915_gem_object_pin_map(obj, I915_MAP_WC);
-	if (IS_ERR(cs))
-		goto err_obj;
+	if (IS_ERR(cs)) {
+		i915_vma_unpin(vma);
+		goto err_vma;
+	}
 
 	/* Semaphore target: spin until zero */
 	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
@@ -2707,8 +2709,10 @@ static int create_gang(struct intel_engine_cs *engine,
 	i915_gem_object_unpin_map(obj);
 
 	rq = intel_context_create_request(ce);
-	if (IS_ERR(rq))
-		goto err_obj;
+	if (IS_ERR(rq)) {
+		i915_vma_unpin(vma);
+		goto err_vma;
+	}
 
 	rq->batch = i915_vma_get(vma);
 	i915_request_get(rq);
@@ -2726,7 +2730,7 @@ static int create_gang(struct intel_engine_cs *engine,
 	if (err)
 		goto err_rq;
 
-	i915_gem_object_put(obj);
+	i915_vma_put(vma);
 	intel_context_put(ce);
 
 	rq->client_link.next = &(*prev)->client_link;
@@ -2736,8 +2740,8 @@ static int create_gang(struct intel_engine_cs *engine,
 err_rq:
 	i915_vma_put(rq->batch);
 	i915_request_put(rq);
-err_obj:
-	i915_gem_object_put(obj);
+err_vma:
+	i915_vma_put(vma);
 err_ce:
 	intel_context_put(ce);
 	return err;
@@ -3015,10 +3019,9 @@ create_gpr_user(struct intel_engine_cs *engine,
 		return ERR_CAST(obj);
 
 	vma = i915_vma_instance(obj, result->vm, NULL);
-	if (IS_ERR(vma)) {
-		i915_gem_object_put(obj);
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
 		return vma;
-	}
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err) {
@@ -3085,10 +3088,9 @@ static struct i915_vma *create_global(struct intel_gt *gt, size_t sz)
 		return ERR_CAST(obj);
 
 	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		i915_gem_object_put(obj);
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
 		return vma;
-	}
 
 	err = i915_ggtt_pin(vma, 0, 0);
 	if (err) {
@@ -3121,12 +3123,12 @@ create_gpr_client(struct intel_engine_cs *engine,
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err)
-		goto out_ce;
+		goto out_vma;
 
 	batch = create_gpr_user(engine, vma, offset);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
-		goto out_vma;
+		goto out_unpin;
 	}
 
 	rq = intel_context_create_request(ce);
@@ -3159,8 +3161,10 @@ create_gpr_client(struct intel_engine_cs *engine,
 
 out_batch:
 	i915_vma_put(batch);
-out_vma:
+out_unpin:
 	i915_vma_unpin(vma);
+out_vma:
+	i915_vma_put(vma);
 out_ce:
 	intel_context_put(ce);
 	return err ? ERR_PTR(err) : rq;
@@ -3467,8 +3471,10 @@ static int smoke_submit(struct preempt_smoke *smoke,
 			return PTR_ERR(vma);
 
 		err = i915_vma_pin(vma, 0, 0, PIN_USER);
-		if (err)
+		if (err) {
+			i915_vma_put(vma);
 			return err;
+		}
 	}
 
 	ctx->sched.priority = prio;
@@ -3494,8 +3500,10 @@ static int smoke_submit(struct preempt_smoke *smoke,
 	i915_request_add(rq);
 
 unpin:
-	if (vma)
+	if (vma) {
 		i915_vma_unpin(vma);
+		i915_vma_put(vma);
+	}
 
 	return err;
 }
@@ -5522,14 +5530,13 @@ create_user_vma(struct i915_address_space *vm, unsigned long size)
 		return ERR_CAST(obj);
 
 	vma = i915_vma_instance(obj, vm, NULL);
-	if (IS_ERR(vma)) {
-		i915_gem_object_put(obj);
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
 		return vma;
-	}
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err) {
-		i915_gem_object_put(obj);
+		i915_vma_put(vma);
 		return ERR_PTR(err);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index b25eba50c88e..5779835a5a81 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -69,14 +69,13 @@ static struct i915_vma *create_scratch(struct intel_gt *gt)
 	i915_gem_object_set_cache_coherency(obj, I915_CACHING_CACHED);
 
 	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		i915_gem_object_put(obj);
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
 		return vma;
-	}
 
 	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
 	if (err) {
-		i915_gem_object_put(obj);
+		i915_vma_put(vma);
 		return ERR_PTR(err);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
index 3350e7c995bc..a72bd4ea8cd7 100644
--- a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
@@ -18,26 +18,25 @@ static struct i915_vma *create_wally(struct intel_engine_cs *engine)
 		return ERR_CAST(obj);
 
 	vma = i915_vma_instance(obj, engine->gt->vm, NULL);
-	if (IS_ERR(vma)) {
-		i915_gem_object_put(obj);
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
 		return vma;
-	}
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_HIGH);
 	if (err) {
-		i915_gem_object_put(obj);
+		i915_vma_put(vma);
 		return ERR_PTR(err);
 	}
 
 	err = i915_vma_sync(vma);
 	if (err) {
-		i915_gem_object_put(obj);
+		i915_vma_put(vma);
 		return ERR_PTR(err);
 	}
 
 	cs = i915_gem_object_pin_map(obj, I915_MAP_WC);
 	if (IS_ERR(cs)) {
-		i915_gem_object_put(obj);
+		i915_vma_put(vma);
 		return ERR_CAST(cs);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index bb753f0c12eb..dbe8cd0e1522 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -76,10 +76,9 @@ create_spin_counter(struct intel_engine_cs *engine,
 	end = obj->base.size / sizeof(u32) - 1;
 
 	vma = i915_vma_instance(obj, vm, NULL);
-	if (IS_ERR(vma)) {
-		i915_gem_object_put(obj);
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
 		return vma;
-	}
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err) {
@@ -89,7 +88,7 @@ create_spin_counter(struct intel_engine_cs *engine,
 
 	base = i915_gem_object_pin_map(obj, I915_MAP_WC);
 	if (IS_ERR(base)) {
-		i915_gem_object_put(obj);
+		i915_vma_put(vma);
 		return ERR_CAST(base);
 	}
 	cs = base;
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index febc9e6692ba..ac09bba55a54 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -128,7 +128,7 @@ read_nonprivs(struct i915_gem_context *ctx, struct intel_engine_cs *engine)
 
 	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
 	if (err)
-		goto err_obj;
+		goto err_vma;
 
 	rq = igt_request_alloc(ctx, engine);
 	if (IS_ERR(rq)) {
@@ -164,6 +164,7 @@ read_nonprivs(struct i915_gem_context *ctx, struct intel_engine_cs *engine)
 
 	i915_request_add(rq);
 	i915_vma_unpin(vma);
+	i915_vma_put(vma);
 
 	return result;
 
@@ -171,6 +172,8 @@ read_nonprivs(struct i915_gem_context *ctx, struct intel_engine_cs *engine)
 	i915_request_add(rq);
 err_pin:
 	i915_vma_unpin(vma);
+err_vma:
+	i915_vma_put(vma);
 err_obj:
 	i915_gem_object_put(result);
 	return ERR_PTR(err);
@@ -370,19 +373,18 @@ static struct i915_vma *create_batch(struct i915_address_space *vm)
 		return ERR_CAST(obj);
 
 	vma = i915_vma_instance(obj, vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_obj;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		return vma;
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err)
-		goto err_obj;
+		goto err_vma;
 
 	return vma;
 
-err_obj:
-	i915_gem_object_put(obj);
+err_vma:
+	i915_vma_put(vma);
 	return ERR_PTR(err);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 446a41946f56..700b236a61ee 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -673,21 +673,18 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
 		return ERR_CAST(obj);
 
 	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
+	i915_gem_object_put(obj);
 	if (IS_ERR(vma))
-		goto err;
+		return vma;
 
 	flags = PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
 	ret = i915_ggtt_pin(vma, 0, flags);
 	if (ret) {
-		vma = ERR_PTR(ret);
-		goto err;
+		i915_vma_put(vma);
+		return ERR_PTR(ret);
 	}
 
 	return i915_vma_make_unshrinkable(vma);
-
-err:
-	i915_gem_object_put(obj);
-	return vma;
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 1570eb8aa978..d5499b4ef97c 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -622,8 +622,10 @@ static void release_shadow_batch_buffer(struct intel_vgpu_workload *workload)
 			if (bb->va && !IS_ERR(bb->va))
 				i915_gem_object_unpin_map(bb->obj);
 
-			if (bb->vma && !IS_ERR(bb->vma))
+			if (bb->vma && !IS_ERR(bb->vma)) {
 				i915_vma_unpin(bb->vma);
+				i915_vma_put(bb->vma);
+			}
 
 			i915_gem_object_put(bb->obj);
 		}
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 94ed442910d6..e6c7709a654e 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1483,6 +1483,8 @@ gt_drop_caches(struct intel_gt *gt, u64 val)
 		ret = intel_gt_pm_wait_for_idle(gt);
 		if (ret)
 			return ret;
+
+		i915_vma_clock_flush(&gt->vma_clock);
 	}
 
 	if (val & DROP_RESET_ACTIVE && intel_gt_terminally_wedged(gt))
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index ea281d7b0630..fb4610b417e0 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -352,15 +352,21 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 	 * workqueue at any time.  Use an ordered one.
 	 */
 	dev_priv->wq = alloc_ordered_workqueue("i915", 0);
-	if (dev_priv->wq == NULL)
+	if (!dev_priv->wq)
 		goto out_err;
 
-	dev_priv->hotplug.dp_wq = alloc_ordered_workqueue("i915-dp", 0);
-	if (dev_priv->hotplug.dp_wq == NULL)
+	dev_priv->reclaim_wq = create_workqueue("i915-reclaim");
+	if (!dev_priv->reclaim_wq)
 		goto out_free_wq;
 
+	dev_priv->hotplug.dp_wq = alloc_ordered_workqueue("i915-dp", 0);
+	if (!dev_priv->hotplug.dp_wq)
+		goto out_free_reclaim;
+
 	return 0;
 
+out_free_reclaim:
+	destroy_workqueue(dev_priv->reclaim_wq);
 out_free_wq:
 	destroy_workqueue(dev_priv->wq);
 out_err:
@@ -372,6 +378,7 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 static void i915_workqueues_cleanup(struct drm_i915_private *dev_priv)
 {
 	destroy_workqueue(dev_priv->hotplug.dp_wq);
+	destroy_workqueue(dev_priv->reclaim_wq);
 	destroy_workqueue(dev_priv->wq);
 }
 
@@ -1078,9 +1085,9 @@ static void i915_driver_release(struct drm_device *dev)
 
 	i915_gem_driver_release(dev_priv);
 
-	intel_memory_regions_driver_release(dev_priv);
 	i915_ggtt_driver_release(dev_priv);
 	i915_gem_drain_freed_objects(dev_priv);
+	intel_memory_regions_driver_release(dev_priv);
 
 	i915_driver_mmio_release(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0df73a14af1c..b1df307ca4e0 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -966,6 +966,7 @@ struct drm_i915_private {
 	 * result in deadlocks.
 	 */
 	struct workqueue_struct *wq;
+	struct workqueue_struct *reclaim_wq;
 
 	/* ordered wq for modesets */
 	struct workqueue_struct *modeset_wq;
@@ -1744,9 +1745,10 @@ static inline void i915_gem_drain_freed_objects(struct drm_i915_private *i915)
 	 * callbacks could have added new objects into the freed list, and
 	 * armed the work again.
 	 */
+	flush_workqueue(i915->reclaim_wq);
 	while (atomic_read(&i915->mm.free_count)) {
-		flush_work(&i915->mm.free_work);
 		rcu_barrier();
+		flush_work(&i915->mm.free_work);
 	}
 }
 
@@ -1765,8 +1767,6 @@ static inline void i915_gem_drain_workqueue(struct drm_i915_private *i915)
 	 */
 	int pass = 3;
 	do {
-		flush_workqueue(i915->wq);
-		rcu_barrier();
 		i915_gem_drain_freed_objects(i915);
 	} while (--pass);
 	drain_workqueue(i915->wq);
@@ -1782,8 +1782,7 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
 int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 			   unsigned long flags);
 #define I915_GEM_OBJECT_UNBIND_ACTIVE BIT(0)
-#define I915_GEM_OBJECT_UNBIND_BARRIER BIT(1)
-#define I915_GEM_OBJECT_UNBIND_TEST BIT(2)
+#define I915_GEM_OBJECT_UNBIND_TEST BIT(1)
 
 void i915_gem_runtime_suspend(struct drm_i915_private *dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 0fbe438c4523..2391d146b9ed 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -112,32 +112,16 @@ i915_gem_get_aperture_ioctl(struct drm_device *dev, void *data,
 int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 			   unsigned long flags)
 {
-	struct intel_runtime_pm *rpm = &to_i915(obj->base.dev)->runtime_pm;
-	LIST_HEAD(still_in_list);
-	intel_wakeref_t wakeref;
-	struct i915_vma *vma;
-	int ret;
+	struct i915_vma *vma, *vn;
+	int ret = 0;
 
 	if (list_empty(&obj->vma.list))
 		return 0;
 
-	/*
-	 * As some machines use ACPI to handle runtime-resume callbacks, and
-	 * ACPI is quite kmalloc happy, we cannot resume beneath the vm->mutex
-	 * as they are required by the shrinker. Ergo, we wake the device up
-	 * first just in case.
-	 */
-	wakeref = intel_runtime_pm_get(rpm);
-
-try_again:
-	ret = 0;
 	spin_lock(&obj->vma.lock);
-	while (!ret && (vma = list_first_entry_or_null(&obj->vma.list,
-						       struct i915_vma,
-						       obj_link))) {
-		struct i915_address_space *vm = vma->vm;
+	list_for_each_entry_safe(vma, vn, &obj->vma.list, obj_link) {
+		struct i915_address_space *vm = NULL;
 
-		list_move_tail(&vma->obj_link, &still_in_list);
 		if (!i915_vma_is_bound(vma, I915_VMA_BIND_MASK))
 			continue;
 
@@ -146,36 +130,29 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 			break;
 		}
 
-		ret = -EAGAIN;
-		if (!i915_vm_tryopen(vm))
-			break;
-
-		/* Prevent vma being freed by i915_vma_parked as we unbind */
-		vma = __i915_vma_get(vma);
+		if (!i915_vma_tryget(vma))
+			vm = i915_vm_get(vma->vm);
 		spin_unlock(&obj->vma.lock);
 
-		if (vma) {
+		if (vm) {
+			flush_work(&vm->release.work);
+			i915_vm_put(vm);
+		} else {
 			ret = -EBUSY;
 			if (flags & I915_GEM_OBJECT_UNBIND_ACTIVE ||
 			    !i915_vma_is_active(vma))
 				ret = i915_vma_unbind(vma);
-
-			__i915_vma_put(vma);
+			i915_vma_put(vma);
+			if (ret)
+				return ret;
 		}
 
-		i915_vm_close(vm);
+		/* Reset iteration after dropping lock */
 		spin_lock(&obj->vma.lock);
+		vn = list_first_entry(&obj->vma.list, typeof(*vn), obj_link);
 	}
-	list_splice_init(&still_in_list, &obj->vma.list);
 	spin_unlock(&obj->vma.lock);
 
-	if (ret == -EAGAIN && flags & I915_GEM_OBJECT_UNBIND_BARRIER) {
-		rcu_barrier(); /* flush the i915_vm_release() */
-		goto try_again;
-	}
-
-	intel_runtime_pm_put(rpm, wakeref);
-
 	return ret;
 }
 
@@ -403,26 +380,14 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
 	struct drm_mm_node node;
 	struct dma_fence *fence;
 	void __user *user_data;
-	struct i915_vma *vma;
 	u64 remain, offset;
 	int ret;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
-	vma = ERR_PTR(-ENODEV);
-	if (!i915_gem_object_is_tiled(obj))
-		vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0,
-					       PIN_MAPPABLE |
-					       PIN_NONBLOCK /* NOWARN */ |
-					       PIN_NOEVICT);
-	if (!IS_ERR(vma)) {
-		node.start = i915_ggtt_offset(vma);
-		node.flags = 0;
-	} else {
-		ret = insert_mappable_node(ggtt, &node, PAGE_SIZE);
-		if (ret)
-			goto out_rpm;
-		GEM_BUG_ON(!drm_mm_node_allocated(&node));
-	}
+	ret = insert_mappable_node(ggtt, &node, PAGE_SIZE);
+	if (ret)
+		goto out_rpm;
+	GEM_BUG_ON(!drm_mm_node_allocated(&node));
 
 	ret = i915_gem_object_lock_interruptible(obj);
 	if (ret)
@@ -477,12 +442,8 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
 
 	i915_gem_object_unlock_fence(obj, fence);
 out_unpin:
-	if (drm_mm_node_allocated(&node)) {
-		ggtt->vm.clear_range(&ggtt->vm, node.start, node.size);
-		remove_mappable_node(ggtt, &node);
-	} else {
-		i915_vma_unpin(vma);
-	}
+	ggtt->vm.clear_range(&ggtt->vm, node.start, node.size);
+	remove_mappable_node(ggtt, &node);
 out_rpm:
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 	return ret;
@@ -586,9 +547,8 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
 	intel_wakeref_t wakeref;
 	struct drm_mm_node node;
 	struct dma_fence *fence;
-	struct i915_vma *vma;
-	u64 remain, offset;
 	void __user *user_data;
+	u64 remain, offset;
 	int ret;
 
 	if (i915_gem_object_has_struct_page(obj)) {
@@ -607,21 +567,10 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
 		wakeref = intel_runtime_pm_get(rpm);
 	}
 
-	vma = ERR_PTR(-ENODEV);
-	if (!i915_gem_object_is_tiled(obj))
-		vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0,
-					       PIN_MAPPABLE |
-					       PIN_NONBLOCK /* NOWARN */ |
-					       PIN_NOEVICT);
-	if (!IS_ERR(vma)) {
-		node.start = i915_ggtt_offset(vma);
-		node.flags = 0;
-	} else {
-		ret = insert_mappable_node(ggtt, &node, PAGE_SIZE);
-		if (ret)
-			goto out_rpm;
-		GEM_BUG_ON(!drm_mm_node_allocated(&node));
-	}
+	ret = insert_mappable_node(ggtt, &node, PAGE_SIZE);
+	if (ret)
+		goto out_rpm;
+	GEM_BUG_ON(!drm_mm_node_allocated(&node));
 
 	ret = i915_gem_object_lock_interruptible(obj);
 	if (ret)
@@ -688,12 +637,8 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
 
 	i915_gem_object_unlock_fence(obj, fence);
 out_unpin:
-	if (drm_mm_node_allocated(&node)) {
-		ggtt->vm.clear_range(&ggtt->vm, node.start, node.size);
-		remove_mappable_node(ggtt, &node);
-	} else {
-		i915_vma_unpin(vma);
-	}
+	ggtt->vm.clear_range(&ggtt->vm, node.start, node.size);
+	remove_mappable_node(ggtt, &node);
 out_rpm:
 	intel_runtime_pm_put(rpm, wakeref);
 	return ret;
@@ -1005,35 +950,45 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
 		return vma;
 
 	if (i915_vma_misplaced(vma, size, alignment, flags)) {
-		if (flags & PIN_NOEVICT)
-			return ERR_PTR(-ENOSPC);
+		if (flags & PIN_NOEVICT) {
+			ret = -ENOSPC;
+			goto err_put;
+		}
 
 		if (flags & PIN_NONBLOCK) {
-			if (i915_vma_is_pinned(vma) || i915_vma_is_active(vma))
-				return ERR_PTR(-ENOSPC);
+			if (i915_vma_is_pinned(vma) ||
+			    i915_vma_is_active(vma)) {
+				ret = -ENOSPC;
+				goto err_put;
+			}
 
 			if (flags & PIN_MAPPABLE &&
-			    vma->fence_size > ggtt->mappable_end / 2)
-				return ERR_PTR(-ENOSPC);
+			    vma->fence_size > ggtt->mappable_end / 2) {
+				ret = -ENOSPC;
+				goto err_put;
+			}
 		}
 
 		if (i915_vma_is_pinned(vma) || i915_vma_is_active(vma)) {
 			discard_ggtt_vma(vma);
+			i915_vma_put(vma);
 			goto new_vma;
 		}
 
 		ret = i915_vma_unbind(vma);
 		if (ret)
-			return ERR_PTR(ret);
+			goto err_put;
 	}
 
 	if (flags & PIN_NONBLOCK &&
-	    i915_active_fence_isset(&vma->active.excl))
-		return ERR_PTR(-EAGAIN);
+	    i915_active_fence_isset(&vma->active.excl)) {
+		ret = -EAGAIN;
+		goto err_put;
+	}
 
 	ret = i915_vma_pin(vma, size, alignment, flags | PIN_GLOBAL);
 	if (ret)
-		return ERR_PTR(ret);
+		goto err_put;
 
 	if (vma->fence && !i915_gem_object_is_tiled(obj)) {
 		mutex_lock(&ggtt->vm.mutex);
@@ -1042,12 +997,16 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
 	}
 
 	ret = i915_vma_wait_for_bind(vma);
-	if (ret) {
-		i915_vma_unpin(vma);
-		return ERR_PTR(ret);
-	}
+	if (ret)
+		goto err_unpin;
 
 	return vma;
+
+err_unpin:
+	i915_vma_unpin(vma);
+err_put:
+	i915_vma_put(vma);
+	return ERR_PTR(ret);
 }
 
 int
@@ -1214,6 +1173,7 @@ void i915_gem_driver_unregister(struct drm_i915_private *i915)
 void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
 {
 	intel_wakeref_auto_fini(&dev_priv->ggtt.userfault_wakeref);
+	flush_work(&dev_priv->ggtt.vm.release.work);
 
 	i915_gem_suspend_late(dev_priv);
 	intel_gt_driver_remove(&dev_priv->gt);
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 25329b7600c9..e6fcd290b067 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1325,9 +1325,7 @@ static void oa_put_render_ctx_id(struct i915_perf_stream *stream)
 static void
 free_oa_buffer(struct i915_perf_stream *stream)
 {
-	i915_vma_unpin_and_release(&stream->oa_buffer.vma,
-				   I915_VMA_RELEASE_MAP);
-
+	__i915_ggtt_unpin(&stream->oa_buffer.vma, I915_VMA_RELEASE_MAP);
 	stream->oa_buffer.vaddr = NULL;
 }
 
@@ -1344,7 +1342,7 @@ free_oa_configs(struct i915_perf_stream *stream)
 static void
 free_noa_wait(struct i915_perf_stream *stream)
 {
-	i915_vma_unpin_and_release(&stream->noa_wait, 0);
+	__i915_ggtt_unpin(&stream->noa_wait, 0);
 }
 
 static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
@@ -1548,23 +1546,21 @@ static int alloc_oa_buffer(struct i915_perf_stream *stream)
 	BUILD_BUG_ON(OA_BUFFER_SIZE < SZ_128K || OA_BUFFER_SIZE > SZ_16M);
 
 	bo = i915_gem_object_create_shmem(stream->perf->i915, OA_BUFFER_SIZE);
-	if (IS_ERR(bo)) {
-		drm_err(&i915->drm, "Failed to allocate OA buffer\n");
+	if (IS_ERR(bo))
 		return PTR_ERR(bo);
-	}
 
 	i915_gem_object_set_cache_coherency(bo, I915_CACHE_LLC);
 
 	/* PreHSW required 512K alignment, HSW requires 16M */
 	vma = i915_gem_object_ggtt_pin(bo, NULL, 0, SZ_16M, 0);
+	i915_gem_object_put(bo);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
-		goto err_unref;
+		goto err;
 	}
 	stream->oa_buffer.vma = vma;
 
-	stream->oa_buffer.vaddr =
-		i915_gem_object_pin_map(bo, I915_MAP_WB);
+	stream->oa_buffer.vaddr = i915_gem_object_pin_map(bo, I915_MAP_WB);
 	if (IS_ERR(stream->oa_buffer.vaddr)) {
 		ret = PTR_ERR(stream->oa_buffer.vaddr);
 		goto err_unpin;
@@ -1573,14 +1569,9 @@ static int alloc_oa_buffer(struct i915_perf_stream *stream)
 	return 0;
 
 err_unpin:
-	__i915_vma_unpin(vma);
-
-err_unref:
-	i915_gem_object_put(bo);
-
+	__i915_ggtt_unpin(&stream->oa_buffer.vma, 0);
+err:
 	stream->oa_buffer.vaddr = NULL;
-	stream->oa_buffer.vma = NULL;
-
 	return ret;
 }
 
@@ -1639,10 +1630,9 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	 * needs to be fixed during the lifetime of the i915/perf stream.
 	 */
 	vma = i915_gem_object_ggtt_pin(bo, NULL, 0, 0, PIN_HIGH);
-	if (IS_ERR(vma)) {
-		ret = PTR_ERR(vma);
-		goto err_unref;
-	}
+	i915_gem_object_put(bo);
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
 
 	batch = cs = i915_gem_object_pin_map(bo, I915_MAP_WB);
 	if (IS_ERR(batch)) {
@@ -1778,9 +1768,7 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	return 0;
 
 err_unpin:
-	i915_vma_unpin_and_release(&vma, 0);
-err_unref:
-	i915_gem_object_put(bo);
+	i915_ggtt_unpin(vma);
 	return ret;
 }
 
@@ -1879,6 +1867,7 @@ alloc_oa_config_buffer(struct i915_perf_stream *stream,
 
 	oa_bo->oa_config = i915_oa_config_get(oa_config);
 	llist_add(&oa_bo->node, &stream->oa_config_bos);
+	i915_gem_object_put(obj);
 
 	return oa_bo;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 5623f6e8373d..c8e9920bd6cb 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -90,7 +90,8 @@ static inline struct i915_vma *active_to_vma(struct i915_active *ref)
 
 static int __i915_vma_active(struct i915_active *ref)
 {
-	return i915_vma_tryget(active_to_vma(ref)) ? 0 : -ENOENT;
+	i915_vma_get(active_to_vma(ref));
+	return 0;
 }
 
 __i915_active_call
@@ -118,7 +119,7 @@ vma_create(struct drm_i915_gem_object *obj,
 	kref_init(&vma->ref);
 	vma->vm = i915_vm_get(vm);
 	vma->ops = &vm->vma_ops;
-	vma->obj = obj;
+	vma->obj = i915_gem_object_get(obj);
 	vma->resv = obj->base.resv;
 	vma->size = obj->base.size;
 	vma->display_alignment = I915_GTT_MIN_ALIGNMENT;
@@ -200,8 +201,10 @@ vma_create(struct drm_i915_gem_object *obj,
 			p = &rb->rb_right;
 		else if (cmp > 0)
 			p = &rb->rb_left;
-		else
+		else if (i915_vma_tryget(pos))
 			goto err_unlock;
+		else
+			p = &rb->rb_left;
 	}
 	rb_link_node(&vma->obj_node, rb, p);
 	rb_insert_color(&vma->obj_node, &obj->vma.tree);
@@ -224,6 +227,7 @@ vma_create(struct drm_i915_gem_object *obj,
 err_unlock:
 	spin_unlock(&obj->vma.lock);
 err_vma:
+	i915_gem_object_put(obj);
 	i915_vm_put(vm);
 	i915_vma_free(vma);
 	return pos;
@@ -262,8 +266,6 @@ vma_lookup(struct drm_i915_gem_object *obj,
  *
  * i915_vma_instance() looks up an existing VMA of the @obj in the @vm with
  * the same @view characteristics. If a match is not found, one is created.
- * Once created, the VMA is kept until either the object is freed, or the
- * address space is closed.
  *
  * Returns the vma, or an error pointer.
  */
@@ -279,6 +281,8 @@ i915_vma_instance(struct drm_i915_gem_object *obj,
 
 	spin_lock(&obj->vma.lock);
 	vma = vma_lookup(obj, vm, view);
+	if (vma)
+		vma = i915_vma_tryget(vma);
 	spin_unlock(&obj->vma.lock);
 
 	/* vma_create() will resolve the race if another creates the vma */
@@ -532,21 +536,20 @@ void i915_vma_unpin_iomap(struct i915_vma *vma)
 void i915_vma_unpin_and_release(struct i915_vma **p_vma, unsigned int flags)
 {
 	struct i915_vma *vma;
-	struct drm_i915_gem_object *obj;
 
 	vma = fetch_and_zero(p_vma);
 	if (!vma)
 		return;
 
-	obj = vma->obj;
-	GEM_BUG_ON(!obj);
+	if (flags & I915_VMA_RELEASE_FENCE)
+		i915_vma_unpin_fence(vma);
 
 	i915_vma_unpin(vma);
 
 	if (flags & I915_VMA_RELEASE_MAP)
-		i915_gem_object_unpin_map(obj);
+		i915_gem_object_unpin_map(vma->obj);
 
-	i915_gem_object_put(obj);
+	i915_vma_put(vma);
 }
 
 bool i915_vma_misplaced(const struct i915_vma *vma,
@@ -891,11 +894,6 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 
 	/* No more allocations allowed now we hold vm->mutex */
 
-	if (unlikely(i915_vma_is_closed(vma))) {
-		err = -ENOENT;
-		goto err_unlock;
-	}
-
 	bound = atomic_read(&vma->flags);
 	if (unlikely(bound & I915_VMA_ERROR)) {
 		err = -ENOMEM;
@@ -1000,8 +998,34 @@ int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags)
 	} while (1);
 }
 
-static void __vma_close(struct i915_vma *vma, struct intel_gt *gt)
+void i915_vma_open(struct i915_vma *vma)
+{
+	i915_vma_get(vma);
+
+	if (!atomic_add_unless(&vma->open_count, 1, 0)) {
+		struct i915_vma_clock *clock = &vma->vm->gt->vma_clock;
+
+		spin_lock(&clock->lock);
+		if (!atomic_add_unless(&vma->open_count, 1, 0)) {
+			if (!list_empty(&vma->closed_link)) {
+				list_del_init(&vma->closed_link);
+				i915_vma_put(vma);
+			}
+			atomic_set_release(&vma->open_count, 1);
+		}
+		spin_unlock(&clock->lock);
+	}
+}
+
+static bool object_inuse(struct drm_i915_gem_object *obj)
+{
+	return READ_ONCE(obj->base.handle_count);
+}
+
+void i915_vma_close(struct i915_vma *vma)
 {
+	struct i915_vma_clock *clock = &vma->vm->gt->vma_clock;
+
 	/*
 	 * We defer actually closing, unbinding and destroying the VMA until
 	 * the next idle point, or if the object is freed in the meantime. By
@@ -1014,108 +1038,103 @@ static void __vma_close(struct i915_vma *vma, struct intel_gt *gt)
 	 * causing us to rebind the VMA once more. This ends up being a lot
 	 * of wasted work for the steady state.
 	 */
-	GEM_BUG_ON(i915_vma_is_closed(vma));
-	list_add(&vma->closed_link, &gt->closed_vma);
-}
-
-void i915_vma_close(struct i915_vma *vma)
-{
-	struct intel_gt *gt = vma->vm->gt;
-	unsigned long flags;
-
-	if (i915_vma_is_ggtt(vma))
-		return;
 
 	GEM_BUG_ON(!atomic_read(&vma->open_count));
-	if (atomic_dec_and_lock_irqsave(&vma->open_count,
-					&gt->closed_lock,
-					flags)) {
-		__vma_close(vma, gt);
-		spin_unlock_irqrestore(&gt->closed_lock, flags);
-	}
-}
+	if (atomic_dec_and_lock(&vma->open_count, &clock->lock)) {
+		GEM_BUG_ON(i915_vma_is_closed(vma));
+		if (object_inuse(vma->obj)) {
+			i915_vma_get(vma);
+			list_add(&vma->closed_link, &clock->age[0]);
+		}
+		spin_unlock(&clock->lock);
 
-static void __i915_vma_remove_closed(struct i915_vma *vma)
-{
-	struct intel_gt *gt = vma->vm->gt;
+		if (!list_empty(&vma->closed_link))
+			schedule_delayed_work(&clock->work,
+					      round_jiffies_up_relative(HZ));
+	}
 
-	spin_lock_irq(&gt->closed_lock);
-	list_del_init(&vma->closed_link);
-	spin_unlock_irq(&gt->closed_lock);
+	i915_vma_put(vma);
 }
 
-void i915_vma_reopen(struct i915_vma *vma)
+static void __release_unbind(struct i915_vma *vma)
 {
-	if (i915_vma_is_closed(vma))
-		__i915_vma_remove_closed(vma);
+	struct i915_address_space *vm = vma->vm;
+	unsigned long flags;
+	bool first;
+
+	spin_lock_irqsave(&vm->release.lock, flags);
+	list_add_tail(&vma->closed_link, &vm->release.list);
+	first = list_is_first(&vma->closed_link, &vm->release.list);
+	spin_unlock_irqrestore(&vm->release.lock, flags);
+	if (first)
+		queue_work(vm->i915->reclaim_wq, &vm->release.work);
 }
 
 void i915_vma_release(struct kref *ref)
 {
 	struct i915_vma *vma = container_of(ref, typeof(*vma), ref);
 
-	if (drm_mm_node_allocated(&vma->node)) {
-		mutex_lock(&vma->vm->mutex);
-		atomic_and(~I915_VMA_PIN_MASK, &vma->flags);
-		WARN_ON(__i915_vma_unbind(vma));
-		mutex_unlock(&vma->vm->mutex);
-		GEM_BUG_ON(drm_mm_node_allocated(&vma->node));
+	if (drm_mm_node_allocated(&vma->node) || vma->obj) {
+		GEM_BUG_ON(i915_vma_is_closed(vma));
+		__release_unbind(vma);
+		return;
 	}
 	GEM_BUG_ON(i915_vma_is_active(vma));
 	GEM_BUG_ON(!list_empty(&vma->vm_link));
 
-	if (vma->obj) {
-		struct drm_i915_gem_object *obj = vma->obj;
-
-		spin_lock(&obj->vma.lock);
-		list_del(&vma->obj_link);
-		if (!RB_EMPTY_NODE(&vma->obj_node))
-			rb_erase(&vma->obj_node, &obj->vma.tree);
-		spin_unlock(&obj->vma.lock);
-	}
-
-	__i915_vma_remove_closed(vma);
 	i915_vm_put(vma->vm);
 
 	i915_active_fini(&vma->active);
 	i915_vma_free(vma);
 }
 
-void i915_vma_parked(struct intel_gt *gt)
+static void i915_vma_clock(struct work_struct *w)
 {
+	struct i915_vma_clock *clock =
+		container_of(w, typeof(*clock), work.work);
 	struct i915_vma *vma, *next;
 	LIST_HEAD(closed);
 
-	spin_lock_irq(&gt->closed_lock);
-	list_for_each_entry_safe(vma, next, &gt->closed_vma, closed_link) {
-		struct drm_i915_gem_object *obj = vma->obj;
-		struct i915_address_space *vm = vma->vm;
+	/*
+	 * A very simple clock aging algorithm: we keep the user's closed
+	 * vma alive for a couple of timer ticks before destroying them.
+	 * This serves a shortlived cache so that frequently reused VMA
+	 * are kept alive between frames and we skip having to rebing them.
+	 *
+	 * When closed, we insert the vma into age[0]. Upon completion of
+	 * a timer tick, it is moved to age[1]. At the start of each timer
+	 * tick, we destroy all the old vma that were accumulated into age[1]
+	 * and have not been reused. All destroyed vma have therefore been
+	 * unused for more than 1 tick (at least a second), and at most 2
+	 * ticks (we expect the average to be 1.5 ticks).
+	 */
 
-		/* XXX All to avoid keeping a reference on i915_vma itself */
+	spin_lock(&clock->lock);
 
-		if (!kref_get_unless_zero(&obj->base.refcount))
-			continue;
+	list_for_each_entry_safe(vma, next, &clock->age[1], closed_link) {
+		list_del_init(&vma->closed_link);
 
-		if (!i915_vm_tryopen(vm)) {
-			i915_gem_object_put(obj);
+		if (i915_vma_is_active(vma) && object_inuse(vma->obj)) {
+			list_add_tail(&vma->closed_link, &clock->age[0]);
 			continue;
 		}
 
-		list_move(&vma->closed_link, &closed);
-	}
-	spin_unlock_irq(&gt->closed_lock);
-
-	/* As the GT is held idle, no vma can be reopened as we destroy them */
-	list_for_each_entry_safe(vma, next, &closed, closed_link) {
-		struct drm_i915_gem_object *obj = vma->obj;
-		struct i915_address_space *vm = vma->vm;
+		spin_unlock(&clock->lock);
 
-		INIT_LIST_HEAD(&vma->closed_link);
-		__i915_vma_put(vma);
+		i915_vma_put(vma);
 
-		i915_gem_object_put(obj);
-		i915_vm_close(vm);
+		/* Restart after dropping lock */
+		spin_lock(&clock->lock);
+		next = list_first_entry(&clock->age[1],
+					typeof(*next), closed_link);
 	}
+	list_splice_tail_init(&clock->age[0], &clock->age[1]);
+
+	if (!list_empty(&clock->age[1]))
+		schedule_delayed_work(&clock->work,
+				      round_jiffies_up_relative(HZ));
+
+	spin_unlock(&clock->lock);
 }
 
 static void __i915_vma_iounmap(struct i915_vma *vma)
@@ -1134,7 +1153,7 @@ void i915_vma_revoke_mmap(struct i915_vma *vma)
 	struct drm_vma_offset_node *node;
 	u64 vma_offset;
 
-	if (!i915_vma_has_userfault(vma))
+	if (!i915_vma_unset_userfault(vma))
 		return;
 
 	GEM_BUG_ON(!i915_vma_is_map_and_fenceable(vma));
@@ -1147,9 +1166,10 @@ void i915_vma_revoke_mmap(struct i915_vma *vma)
 			    vma->size,
 			    1);
 
-	i915_vma_unset_userfault(vma);
 	if (!--vma->obj->userfault_count)
 		list_del(&vma->obj->userfault_link);
+
+	i915_vma_close(vma);
 }
 
 int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
@@ -1347,6 +1367,23 @@ void i915_vma_make_purgeable(struct i915_vma *vma)
 	i915_gem_object_make_purgeable(vma->obj);
 }
 
+void i915_vma_clock_init_early(struct i915_vma_clock *clock)
+{
+	spin_lock_init(&clock->lock);
+	INIT_LIST_HEAD(&clock->age[0]);
+	INIT_LIST_HEAD(&clock->age[1]);
+
+	INIT_DELAYED_WORK(&clock->work, i915_vma_clock);
+}
+
+void i915_vma_clock_flush(struct i915_vma_clock *clock)
+{
+	do {
+		if (cancel_delayed_work_sync(&clock->work))
+			i915_vma_clock(&clock->work.work);
+	} while (delayed_work_pending(&clock->work));
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftests/i915_vma.c"
 #endif
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 9a26e6cbe8cd..cb55610d396c 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -45,7 +45,18 @@ i915_vma_instance(struct drm_i915_gem_object *obj,
 		  const struct i915_ggtt_view *view);
 
 void i915_vma_unpin_and_release(struct i915_vma **p_vma, unsigned int flags);
-#define I915_VMA_RELEASE_MAP BIT(0)
+#define I915_VMA_RELEASE_FENCE BIT(0)
+#define I915_VMA_RELEASE_MAP   BIT(1)
+
+static inline void __i915_ggtt_unpin(struct i915_vma **vma, unsigned int flags)
+{
+	i915_vma_unpin_and_release(vma, flags);
+}
+
+static inline void i915_ggtt_unpin(struct i915_vma *vma)
+{
+	__i915_ggtt_unpin(&vma, 0);
+}
 
 static inline bool i915_vma_is_active(const struct i915_vma *vma)
 {
@@ -95,9 +106,10 @@ static inline bool i915_vma_set_userfault(struct i915_vma *vma)
 	return test_and_set_bit(I915_VMA_USERFAULT_BIT, __i915_vma_flags(vma));
 }
 
-static inline void i915_vma_unset_userfault(struct i915_vma *vma)
+static inline bool i915_vma_unset_userfault(struct i915_vma *vma)
 {
-	return clear_bit(I915_VMA_USERFAULT_BIT, __i915_vma_flags(vma));
+	return test_and_clear_bit(I915_VMA_USERFAULT_BIT,
+				  __i915_vma_flags(vma));
 }
 
 static inline bool i915_vma_has_userfault(const struct i915_vma *vma)
@@ -124,15 +136,17 @@ static inline u32 i915_ggtt_pin_bias(struct i915_vma *vma)
 	return i915_vm_to_ggtt(vma->vm)->pin_bias;
 }
 
+void i915_vma_release(struct kref *ref);
+
 static inline struct i915_vma *i915_vma_get(struct i915_vma *vma)
 {
-	i915_gem_object_get(vma->obj);
+	kref_get(&vma->ref);
 	return vma;
 }
 
 static inline struct i915_vma *i915_vma_tryget(struct i915_vma *vma)
 {
-	if (likely(kref_get_unless_zero(&vma->obj->base.refcount)))
+	if (kref_get_unless_zero(&vma->ref))
 		return vma;
 
 	return NULL;
@@ -140,7 +154,7 @@ static inline struct i915_vma *i915_vma_tryget(struct i915_vma *vma)
 
 static inline void i915_vma_put(struct i915_vma *vma)
 {
-	i915_gem_object_put(vma->obj);
+	kref_put(&vma->ref, i915_vma_release);
 }
 
 static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
@@ -207,22 +221,8 @@ void __i915_vma_evict(struct i915_vma *vma);
 int __i915_vma_unbind(struct i915_vma *vma);
 int __must_check i915_vma_unbind(struct i915_vma *vma);
 void i915_vma_unlink_ctx(struct i915_vma *vma);
+void i915_vma_open(struct i915_vma *vma);
 void i915_vma_close(struct i915_vma *vma);
-void i915_vma_reopen(struct i915_vma *vma);
-
-static inline struct i915_vma *__i915_vma_get(struct i915_vma *vma)
-{
-	if (kref_get_unless_zero(&vma->ref))
-		return vma;
-
-	return NULL;
-}
-
-void i915_vma_release(struct kref *ref);
-static inline void __i915_vma_put(struct i915_vma *vma)
-{
-	kref_put(&vma->ref, i915_vma_release);
-}
 
 #define assert_vma_held(vma) dma_resv_assert_held((vma)->resv)
 
@@ -357,8 +357,6 @@ i915_vma_unpin_fence(struct i915_vma *vma)
 		__i915_vma_unpin_fence(vma);
 }
 
-void i915_vma_parked(struct intel_gt *gt);
-
 #define for_each_until(cond) if (cond) break; else
 
 /**
@@ -390,4 +388,13 @@ static inline int i915_vma_sync(struct i915_vma *vma)
 	return i915_active_wait(&vma->active);
 }
 
+struct i915_vma_clock {
+	spinlock_t lock;
+	struct list_head age[2];
+	struct delayed_work work;
+};
+
+void i915_vma_clock_init_early(struct i915_vma_clock *clock);
+void i915_vma_clock_flush(struct i915_vma_clock *clock);
+
 #endif
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 02c1640bb034..d7c874a89c47 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -271,6 +271,8 @@ struct i915_vma {
 	struct list_head evict_link;
 
 	struct list_head closed_link;
+
+	I915_SELFTEST_DECLARE(struct list_head st_link;)
 };
 
 #endif
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 6b5e9d88646d..1c7388ca7ad4 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -289,6 +289,16 @@ void intel_memory_regions_driver_release(struct drm_i915_private *i915)
 {
 	int i;
 
+	/*
+	 * Make sure that all the delayed objects frees are before we reap the
+	 * memory regions. This is primarily for the SYSTEM_STOLEN region
+	 * which is not exclusively used by the objects.
+	 *
+	 * XXX we need to tighten the flow of object release during shutdown
+	 */
+	rcu_barrier();
+	i915_gem_drain_freed_objects(i915);
+
 	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
 		struct intel_memory_region *region =
 			fetch_and_zero(&i915->mm.regions[i]);
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
index 028baae9631f..0d4ddf55533e 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
@@ -82,26 +82,44 @@ static int populate_ggtt(struct i915_ggtt *ggtt, struct list_head *objects)
 
 static void unpin_ggtt(struct i915_ggtt *ggtt)
 {
-	struct i915_vma *vma;
+	struct i915_vma *vma, *vn;
+
+	list_for_each_entry_safe(vma, vn, &ggtt->vm.bound_list, vm_link) {
+		if (!vma->obj->mm.quirked)
+			continue;
 
-	list_for_each_entry(vma, &ggtt->vm.bound_list, vm_link)
-		if (vma->obj->mm.quirked)
-			i915_vma_unpin(vma);
+		vma->obj->mm.quirked = false;
+		i915_ggtt_unpin(vma);
+	}
 }
 
 static void cleanup_objects(struct i915_ggtt *ggtt, struct list_head *list)
 {
 	struct drm_i915_gem_object *obj, *on;
 
-	list_for_each_entry_safe(obj, on, list, st_link) {
-		GEM_BUG_ON(!obj->mm.quirked);
-		obj->mm.quirked = false;
+	unpin_ggtt(ggtt);
+	list_for_each_entry_safe(obj, on, list, st_link)
 		i915_gem_object_put(obj);
-	}
 
 	i915_gem_drain_freed_objects(ggtt->vm.i915);
 }
 
+static int probe_full(struct i915_address_space *vm)
+{
+	struct drm_mm_node node = {};
+	int err;
+
+	err = drm_mm_insert_node_in_range(&vm->mm, &node,
+					  I915_GTT_PAGE_SIZE, 0,
+					  I915_COLOR_UNEVICTABLE,
+					  0, U64_MAX,
+					  DRM_MM_INSERT_BEST);
+	if (err == 0)
+		drm_mm_remove_node(&node);
+
+	return err;
+}
+
 static int igt_evict_something(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -117,13 +135,15 @@ static int igt_evict_something(void *arg)
 
 	/* Everything is pinned, nothing should happen */
 	mutex_lock(&ggtt->vm.mutex);
-	err = i915_gem_evict_something(&ggtt->vm,
-				       I915_GTT_PAGE_SIZE, 0, 0,
-				       0, U64_MAX,
-				       0);
+	err = probe_full(&ggtt->vm);
+	if (err == -ENOSPC)
+		err = i915_gem_evict_something(&ggtt->vm,
+					       I915_GTT_PAGE_SIZE, 0, 0,
+					       0, U64_MAX,
+					       0);
 	mutex_unlock(&ggtt->vm.mutex);
 	if (err != -ENOSPC) {
-		pr_err("i915_gem_evict_something failed on a full GGTT with err=%d\n",
+		pr_err("i915_gem_evict_something failed on a pinned full GGTT with err=%d\n",
 		       err);
 		goto cleanup;
 	}
@@ -132,13 +152,15 @@ static int igt_evict_something(void *arg)
 
 	/* Everything is unpinned, we should be able to evict something */
 	mutex_lock(&ggtt->vm.mutex);
-	err = i915_gem_evict_something(&ggtt->vm,
-				       I915_GTT_PAGE_SIZE, 0, 0,
-				       0, U64_MAX,
-				       0);
+	err = probe_full(&ggtt->vm);
+	if (err == -ENOSPC)
+		err = i915_gem_evict_something(&ggtt->vm,
+					       I915_GTT_PAGE_SIZE, 0, 0,
+					       0, U64_MAX,
+					       0);
 	mutex_unlock(&ggtt->vm.mutex);
 	if (err) {
-		pr_err("i915_gem_evict_something failed on a full GGTT with err=%d\n",
+		pr_err("i915_gem_evict_something failed on a [unpinned] full GGTT with err=%d\n",
 		       err);
 		goto cleanup;
 	}
@@ -293,7 +315,7 @@ static int igt_evict_for_cache_color(void *arg)
 		goto cleanup;
 	}
 
-	i915_vma_unpin(vma);
+	i915_ggtt_unpin(vma);
 
 	/* Remove just the second vma */
 	mutex_lock(&ggtt->vm.mutex);
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index e5e6973eb6ea..b31e8b2ade2e 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -141,6 +141,21 @@ fake_dma_object(struct drm_i915_private *i915, u64 size)
 	return ERR_PTR(-ENOMEM);
 }
 
+static struct i915_vma *fake_vma(struct i915_address_space *vm, u64 size)
+{
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+
+	obj = fake_dma_object(vm->i915, size);
+	if (IS_ERR(obj))
+		return ERR_CAST(obj);
+
+	vma = i915_vma_instance(obj, vm, NULL);
+	i915_gem_object_put(obj);
+
+	return vma;
+}
+
 static int igt_ppgtt_alloc(void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
@@ -344,22 +359,13 @@ static int lowlevel_hole(struct i915_address_space *vm,
 	return 0;
 }
 
-static void close_object_list(struct list_head *objects,
-			      struct i915_address_space *vm)
+static void close_vma_list(struct list_head *list)
 {
-	struct drm_i915_gem_object *obj, *on;
-	int ignored;
+	struct i915_vma *vma, *vn;
 
-	list_for_each_entry_safe(obj, on, objects, st_link) {
-		struct i915_vma *vma;
-
-		vma = i915_vma_instance(obj, vm, NULL);
-		if (!IS_ERR(vma))
-			ignored = i915_vma_unbind(vma);
-
-		list_del(&obj->st_link);
-		i915_gem_object_put(obj);
-	}
+	list_for_each_entry_safe(vma, vn, list, st_link)
+		i915_vma_put(vma);
+	INIT_LIST_HEAD(list);
 }
 
 static int fill_hole(struct i915_address_space *vm,
@@ -367,13 +373,12 @@ static int fill_hole(struct i915_address_space *vm,
 		     unsigned long end_time)
 {
 	const u64 hole_size = hole_end - hole_start;
-	struct drm_i915_gem_object *obj;
 	const unsigned long max_pages =
 		min_t(u64, ULONG_MAX - 1, hole_size/2 >> PAGE_SHIFT);
 	const unsigned long max_step = max(int_sqrt(max_pages), 2UL);
 	unsigned long npages, prime, flags;
 	struct i915_vma *vma;
-	LIST_HEAD(objects);
+	LIST_HEAD(vmas);
 	int err;
 
 	/* Try binding many VMA working inwards from either edge */
@@ -395,11 +400,11 @@ static int fill_hole(struct i915_address_space *vm,
 				{ }
 			}, *p;
 
-			obj = fake_dma_object(vm->i915, full_size);
-			if (IS_ERR(obj))
+			vma = fake_vma(vm, full_size);
+			if (IS_ERR(vma))
 				break;
 
-			list_add(&obj->st_link, &objects);
+			list_add(&vma->st_link, &vmas);
 
 			/* Align differing sized objects against the edges, and
 			 * check we don't walk off into the void when binding
@@ -409,21 +414,18 @@ static int fill_hole(struct i915_address_space *vm,
 				u64 offset;
 
 				offset = p->offset;
-				list_for_each_entry(obj, &objects, st_link) {
-					vma = i915_vma_instance(obj, vm, NULL);
-					if (IS_ERR(vma))
-						continue;
-
+				list_for_each_entry(vma, &vmas, st_link) {
 					if (p->step < 0) {
-						if (offset < hole_start + obj->base.size)
+						if (offset < hole_start + vma->size)
 							break;
-						offset -= obj->base.size;
+						offset -= vma->size;
 					}
 
 					err = i915_vma_pin(vma, 0, 0, offset | flags);
 					if (err) {
-						pr_err("%s(%s) pin (forward) failed with err=%d on size=%lu pages (prime=%lu), offset=%llx\n",
-						       __func__, p->name, err, npages, prime, offset);
+						pr_err("%s(%s) pin (forward) failed with err=%d on size=%lu pages (prime=%lu), offset=%llx, hole [%llx, %llx]\n",
+						       __func__, p->name, err, npages, prime, offset,
+						       hole_start, hole_end);
 						goto err;
 					}
 
@@ -439,22 +441,18 @@ static int fill_hole(struct i915_address_space *vm,
 					i915_vma_unpin(vma);
 
 					if (p->step > 0) {
-						if (offset + obj->base.size > hole_end)
+						if (offset + vma->node.size > hole_end)
 							break;
-						offset += obj->base.size;
+						offset += vma->node.size;
 					}
 				}
 
 				offset = p->offset;
-				list_for_each_entry(obj, &objects, st_link) {
-					vma = i915_vma_instance(obj, vm, NULL);
-					if (IS_ERR(vma))
-						continue;
-
+				list_for_each_entry(vma, &vmas, st_link) {
 					if (p->step < 0) {
-						if (offset < hole_start + obj->base.size)
+						if (offset < hole_start + vma->node.size)
 							break;
-						offset -= obj->base.size;
+						offset -= vma->node.size;
 					}
 
 					if (!drm_mm_node_allocated(&vma->node) ||
@@ -475,22 +473,18 @@ static int fill_hole(struct i915_address_space *vm,
 					}
 
 					if (p->step > 0) {
-						if (offset + obj->base.size > hole_end)
+						if (offset + vma->node.size > hole_end)
 							break;
-						offset += obj->base.size;
+						offset += vma->node.size;
 					}
 				}
 
 				offset = p->offset;
-				list_for_each_entry_reverse(obj, &objects, st_link) {
-					vma = i915_vma_instance(obj, vm, NULL);
-					if (IS_ERR(vma))
-						continue;
-
+				list_for_each_entry_reverse(vma, &vmas, st_link) {
 					if (p->step < 0) {
-						if (offset < hole_start + obj->base.size)
+						if (offset < hole_start + vma->node.size)
 							break;
-						offset -= obj->base.size;
+						offset -= vma->node.size;
 					}
 
 					err = i915_vma_pin(vma, 0, 0, offset | flags);
@@ -512,22 +506,18 @@ static int fill_hole(struct i915_address_space *vm,
 					i915_vma_unpin(vma);
 
 					if (p->step > 0) {
-						if (offset + obj->base.size > hole_end)
+						if (offset + vma->size >= hole_end)
 							break;
-						offset += obj->base.size;
+						offset += vma->size;
 					}
 				}
 
 				offset = p->offset;
-				list_for_each_entry_reverse(obj, &objects, st_link) {
-					vma = i915_vma_instance(obj, vm, NULL);
-					if (IS_ERR(vma))
-						continue;
-
+				list_for_each_entry_reverse(vma, &vmas, st_link) {
 					if (p->step < 0) {
-						if (offset < hole_start + obj->base.size)
+						if (offset < hole_start + vma->size)
 							break;
-						offset -= obj->base.size;
+						offset -= vma->size;
 					}
 
 					if (!drm_mm_node_allocated(&vma->node) ||
@@ -548,9 +538,9 @@ static int fill_hole(struct i915_address_space *vm,
 					}
 
 					if (p->step > 0) {
-						if (offset + obj->base.size > hole_end)
+						if (offset + vma->size >= hole_end)
 							break;
-						offset += obj->base.size;
+						offset += vma->size;
 					}
 				}
 			}
@@ -562,14 +552,14 @@ static int fill_hole(struct i915_address_space *vm,
 			}
 		}
 
-		close_object_list(&objects, vm);
+		close_vma_list(&vmas);
 		cleanup_freed_objects(vm->i915);
 	}
 
 	return 0;
 
 err:
-	close_object_list(&objects, vm);
+	close_vma_list(&vmas);
 	return err;
 }
 
@@ -590,24 +580,17 @@ static int walk_hole(struct i915_address_space *vm,
 		flags |= PIN_GLOBAL;
 
 	for_each_prime_number_from(size, 1, max_pages) {
-		struct drm_i915_gem_object *obj;
 		struct i915_vma *vma;
 		u64 addr;
 		int err = 0;
 
-		obj = fake_dma_object(vm->i915, size << PAGE_SHIFT);
-		if (IS_ERR(obj))
+		vma = fake_vma(vm, size << PAGE_SHIFT);
+		if (IS_ERR(vma))
 			break;
 
-		vma = i915_vma_instance(obj, vm, NULL);
-		if (IS_ERR(vma)) {
-			err = PTR_ERR(vma);
-			goto err_put;
-		}
-
 		for (addr = hole_start;
-		     addr + obj->base.size < hole_end;
-		     addr += obj->base.size) {
+		     addr + vma->size < hole_end;
+		     addr += vma->size) {
 			err = i915_vma_pin(vma, 0, 0, addr | flags);
 			if (err) {
 				pr_err("%s bind failed at %llx + %llx [hole %llx- %llx] with err=%d\n",
@@ -643,7 +626,7 @@ static int walk_hole(struct i915_address_space *vm,
 		}
 
 err_put:
-		i915_gem_object_put(obj);
+		i915_vma_put(vma);
 		if (err)
 			return err;
 
@@ -672,10 +655,9 @@ static int pot_hole(struct i915_address_space *vm,
 		return PTR_ERR(obj);
 
 	vma = i915_vma_instance(obj, vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err_obj;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
 
 	/* Insert a pair of pages across every pot boundary within the hole */
 	for (pot = fls64(hole_end - 1) - 1;
@@ -694,7 +676,7 @@ static int pot_hole(struct i915_address_space *vm,
 				       addr,
 				       hole_start, hole_end,
 				       err);
-				goto err_obj;
+				goto err_vma;
 			}
 
 			if (!drm_mm_node_allocated(&vma->node) ||
@@ -704,7 +686,7 @@ static int pot_hole(struct i915_address_space *vm,
 				i915_vma_unpin(vma);
 				err = i915_vma_unbind(vma);
 				err = -EINVAL;
-				goto err_obj;
+				goto err_vma;
 			}
 
 			i915_vma_unpin(vma);
@@ -716,12 +698,12 @@ static int pot_hole(struct i915_address_space *vm,
 				"%s timed out after %d/%d\n",
 				__func__, pot, fls64(hole_end - 1) - 1)) {
 			err = -EINTR;
-			goto err_obj;
+			goto err_vma;
 		}
 	}
 
-err_obj:
-	i915_gem_object_put(obj);
+err_vma:
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -739,7 +721,6 @@ static int drunk_hole(struct i915_address_space *vm,
 
 	/* Keep creating larger objects until one cannot fit into the hole */
 	for (size = 12; (hole_end - hole_start) >> size; size++) {
-		struct drm_i915_gem_object *obj;
 		unsigned int *order, count, n;
 		struct i915_vma *vma;
 		u64 hole_size;
@@ -770,18 +751,12 @@ static int drunk_hole(struct i915_address_space *vm,
 		 * memory. We expect to hit -ENOMEM.
 		 */
 
-		obj = fake_dma_object(vm->i915, BIT_ULL(size));
-		if (IS_ERR(obj)) {
+		vma = fake_vma(vm, BIT_ULL(size));
+		if (IS_ERR(vma)) {
 			kfree(order);
 			break;
 		}
 
-		vma = i915_vma_instance(obj, vm, NULL);
-		if (IS_ERR(vma)) {
-			err = PTR_ERR(vma);
-			goto err_obj;
-		}
-
 		GEM_BUG_ON(vma->size != BIT_ULL(size));
 
 		for (n = 0; n < count; n++) {
@@ -794,7 +769,7 @@ static int drunk_hole(struct i915_address_space *vm,
 				       addr, BIT_ULL(size),
 				       hole_start, hole_end,
 				       err);
-				goto err_obj;
+				goto err_vma;
 			}
 
 			if (!drm_mm_node_allocated(&vma->node) ||
@@ -804,7 +779,7 @@ static int drunk_hole(struct i915_address_space *vm,
 				i915_vma_unpin(vma);
 				err = i915_vma_unbind(vma);
 				err = -EINVAL;
-				goto err_obj;
+				goto err_vma;
 			}
 
 			i915_vma_unpin(vma);
@@ -815,12 +790,12 @@ static int drunk_hole(struct i915_address_space *vm,
 					"%s timed out after %d/%d\n",
 					__func__, n, count)) {
 				err = -EINTR;
-				goto err_obj;
+				goto err_vma;
 			}
 		}
 
-err_obj:
-		i915_gem_object_put(obj);
+err_vma:
+		i915_vma_put(vma);
 		kfree(order);
 		if (err)
 			return err;
@@ -835,10 +810,9 @@ static int __shrink_hole(struct i915_address_space *vm,
 			 u64 hole_start, u64 hole_end,
 			 unsigned long end_time)
 {
-	struct drm_i915_gem_object *obj;
 	unsigned long flags = PIN_OFFSET_FIXED | PIN_USER;
 	unsigned int order = 12;
-	LIST_HEAD(objects);
+	LIST_HEAD(vmas);
 	int err = 0;
 	u64 addr;
 
@@ -848,19 +822,12 @@ static int __shrink_hole(struct i915_address_space *vm,
 		u64 size = BIT_ULL(order++);
 
 		size = min(size, hole_end - addr);
-		obj = fake_dma_object(vm->i915, size);
-		if (IS_ERR(obj)) {
-			err = PTR_ERR(obj);
-			break;
-		}
-
-		list_add(&obj->st_link, &objects);
-
-		vma = i915_vma_instance(obj, vm, NULL);
+		vma = fake_vma(vm, size);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
 			break;
 		}
+		list_add(&vma->st_link, &vmas);
 
 		GEM_BUG_ON(vma->size != size);
 
@@ -901,7 +868,7 @@ static int __shrink_hole(struct i915_address_space *vm,
 		}
 	}
 
-	close_object_list(&objects, vm);
+	close_vma_list(&vmas);
 	cleanup_freed_objects(vm->i915);
 	return err;
 }
@@ -933,8 +900,7 @@ static int shrink_boom(struct i915_address_space *vm,
 		       unsigned long end_time)
 {
 	unsigned int sizes[] = { SZ_2M, SZ_1G };
-	struct drm_i915_gem_object *purge;
-	struct drm_i915_gem_object *explode;
+	struct i915_vma *purge, *explode;
 	int err;
 	int i;
 
@@ -948,26 +914,19 @@ static int shrink_boom(struct i915_address_space *vm,
 	for (i = 0; i < ARRAY_SIZE(sizes); ++i) {
 		unsigned int flags = PIN_USER | PIN_OFFSET_FIXED;
 		unsigned int size = sizes[i];
-		struct i915_vma *vma;
 
-		purge = fake_dma_object(vm->i915, size);
+		purge = fake_vma(vm, size);
 		if (IS_ERR(purge))
 			return PTR_ERR(purge);
 
-		vma = i915_vma_instance(purge, vm, NULL);
-		if (IS_ERR(vma)) {
-			err = PTR_ERR(vma);
-			goto err_purge;
-		}
-
-		err = i915_vma_pin(vma, 0, 0, flags);
+		err = i915_vma_pin(purge, 0, 0, flags);
 		if (err)
 			goto err_purge;
 
 		/* Should now be ripe for purging */
-		i915_vma_unpin(vma);
+		i915_vma_unpin(purge);
 
-		explode = fake_dma_object(vm->i915, size);
+		explode = fake_vma(vm, size);
 		if (IS_ERR(explode)) {
 			err = PTR_ERR(explode);
 			goto err_purge;
@@ -977,20 +936,14 @@ static int shrink_boom(struct i915_address_space *vm,
 		vm->fault_attr.interval = 1;
 		atomic_set(&vm->fault_attr.times, -1);
 
-		vma = i915_vma_instance(explode, vm, NULL);
-		if (IS_ERR(vma)) {
-			err = PTR_ERR(vma);
-			goto err_explode;
-		}
-
-		err = i915_vma_pin(vma, 0, 0, flags | size);
+		err = i915_vma_pin(explode, 0, 0, flags | size);
 		if (err)
 			goto err_explode;
 
-		i915_vma_unpin(vma);
+		i915_vma_unpin(explode);
 
-		i915_gem_object_put(purge);
-		i915_gem_object_put(explode);
+		i915_vma_put(purge);
+		i915_vma_put(explode);
 
 		memset(&vm->fault_attr, 0, sizeof(vm->fault_attr));
 		cleanup_freed_objects(vm->i915);
@@ -999,9 +952,9 @@ static int shrink_boom(struct i915_address_space *vm,
 	return 0;
 
 err_explode:
-	i915_gem_object_put(explode);
+	i915_vma_put(explode);
 err_purge:
-	i915_gem_object_put(purge);
+	i915_vma_put(purge);
 	memset(&vm->fault_attr, 0, sizeof(vm->fault_attr));
 	return err;
 }
@@ -1308,9 +1261,9 @@ static int igt_mock_drunk(void *arg)
 static int igt_gtt_reserve(void *arg)
 {
 	struct i915_ggtt *ggtt = arg;
-	struct drm_i915_gem_object *obj, *on;
+	struct i915_vma *vma, *vn;
 	I915_RND_STATE(prng);
-	LIST_HEAD(objects);
+	LIST_HEAD(vmas);
 	u64 total;
 	int err = -ENODEV;
 
@@ -1323,7 +1276,7 @@ static int igt_gtt_reserve(void *arg)
 	for (total = 0;
 	     total + 2 * I915_GTT_PAGE_SIZE <= ggtt->vm.total;
 	     total += 2 * I915_GTT_PAGE_SIZE) {
-		struct i915_vma *vma;
+		struct drm_i915_gem_object *obj;
 
 		obj = i915_gem_object_create_internal(ggtt->vm.i915,
 						      2 * PAGE_SIZE);
@@ -1338,17 +1291,17 @@ static int igt_gtt_reserve(void *arg)
 			goto out;
 		}
 
-		list_add(&obj->st_link, &objects);
-
 		vma = i915_vma_instance(obj, &ggtt->vm, NULL);
+		i915_gem_object_put(obj);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
 			goto out;
 		}
+		list_add(&vma->st_link, &vmas);
 
 		mutex_lock(&ggtt->vm.mutex);
 		err = i915_gem_gtt_reserve(&ggtt->vm, &vma->node,
-					   obj->base.size,
+					   vma->size,
 					   total,
 					   obj->cache_level,
 					   0);
@@ -1375,7 +1328,7 @@ static int igt_gtt_reserve(void *arg)
 	for (total = I915_GTT_PAGE_SIZE;
 	     total + 2 * I915_GTT_PAGE_SIZE <= ggtt->vm.total;
 	     total += 2 * I915_GTT_PAGE_SIZE) {
-		struct i915_vma *vma;
+		struct drm_i915_gem_object *obj;
 
 		obj = i915_gem_object_create_internal(ggtt->vm.i915,
 						      2 * PAGE_SIZE);
@@ -1390,17 +1343,17 @@ static int igt_gtt_reserve(void *arg)
 			goto out;
 		}
 
-		list_add(&obj->st_link, &objects);
-
 		vma = i915_vma_instance(obj, &ggtt->vm, NULL);
+		i915_gem_object_put(obj);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
 			goto out;
 		}
+		list_add(&vma->st_link, &vmas);
 
 		mutex_lock(&ggtt->vm.mutex);
 		err = i915_gem_gtt_reserve(&ggtt->vm, &vma->node,
-					   obj->base.size,
+					   vma->size,
 					   total,
 					   obj->cache_level,
 					   0);
@@ -1424,16 +1377,9 @@ static int igt_gtt_reserve(void *arg)
 	}
 
 	/* And then try at random */
-	list_for_each_entry_safe(obj, on, &objects, st_link) {
-		struct i915_vma *vma;
+	list_for_each_entry_safe(vma, vn, &vmas, st_link) {
 		u64 offset;
 
-		vma = i915_vma_instance(obj, &ggtt->vm, NULL);
-		if (IS_ERR(vma)) {
-			err = PTR_ERR(vma);
-			goto out;
-		}
-
 		err = i915_vma_unbind(vma);
 		if (err) {
 			pr_err("i915_vma_unbind failed with err=%d!\n", err);
@@ -1447,9 +1393,9 @@ static int igt_gtt_reserve(void *arg)
 
 		mutex_lock(&ggtt->vm.mutex);
 		err = i915_gem_gtt_reserve(&ggtt->vm, &vma->node,
-					   obj->base.size,
+					   vma->size,
 					   offset,
-					   obj->cache_level,
+					   vma->node.color,
 					   0);
 		mutex_unlock(&ggtt->vm.mutex);
 		if (err) {
@@ -1471,17 +1417,14 @@ static int igt_gtt_reserve(void *arg)
 	}
 
 out:
-	list_for_each_entry_safe(obj, on, &objects, st_link) {
-		i915_gem_object_unpin_pages(obj);
-		i915_gem_object_put(obj);
-	}
+	list_for_each_entry_safe(vma, vn, &vmas, st_link)
+		i915_vma_put(vma);
 	return err;
 }
 
 static int igt_gtt_insert(void *arg)
 {
 	struct i915_ggtt *ggtt = arg;
-	struct drm_i915_gem_object *obj, *on;
 	struct drm_mm_node tmp = {};
 	const struct invalid_insert {
 		u64 size;
@@ -1510,7 +1453,8 @@ static int igt_gtt_insert(void *arg)
 		},
 		{}
 	}, *ii;
-	LIST_HEAD(objects);
+	struct i915_vma *vma, *vn;
+	LIST_HEAD(vmas);
 	u64 total;
 	int err = -ENODEV;
 
@@ -1539,7 +1483,7 @@ static int igt_gtt_insert(void *arg)
 	for (total = 0;
 	     total + I915_GTT_PAGE_SIZE <= ggtt->vm.total;
 	     total += I915_GTT_PAGE_SIZE) {
-		struct i915_vma *vma;
+		struct drm_i915_gem_object *obj;
 
 		obj = i915_gem_object_create_internal(ggtt->vm.i915,
 						      I915_GTT_PAGE_SIZE);
@@ -1554,13 +1498,13 @@ static int igt_gtt_insert(void *arg)
 			goto out;
 		}
 
-		list_add(&obj->st_link, &objects);
-
 		vma = i915_vma_instance(obj, &ggtt->vm, NULL);
+		i915_gem_object_put(obj);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
 			goto out;
 		}
+		list_add(&vma->st_link, &vmas);
 
 		mutex_lock(&ggtt->vm.mutex);
 		err = i915_gem_gtt_insert(&ggtt->vm, &vma->node,
@@ -1570,7 +1514,6 @@ static int igt_gtt_insert(void *arg)
 		mutex_unlock(&ggtt->vm.mutex);
 		if (err == -ENOSPC) {
 			/* maxed out the GGTT space */
-			i915_gem_object_put(obj);
 			break;
 		}
 		if (err) {
@@ -1584,15 +1527,7 @@ static int igt_gtt_insert(void *arg)
 		GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
 	}
 
-	list_for_each_entry(obj, &objects, st_link) {
-		struct i915_vma *vma;
-
-		vma = i915_vma_instance(obj, &ggtt->vm, NULL);
-		if (IS_ERR(vma)) {
-			err = PTR_ERR(vma);
-			goto out;
-		}
-
+	list_for_each_entry_safe(vma, vn, &vmas, st_link) {
 		if (!drm_mm_node_allocated(&vma->node)) {
 			pr_err("VMA was unexpectedly evicted!\n");
 			err = -EINVAL;
@@ -1603,16 +1538,9 @@ static int igt_gtt_insert(void *arg)
 	}
 
 	/* If we then reinsert, we should find the same hole */
-	list_for_each_entry_safe(obj, on, &objects, st_link) {
-		struct i915_vma *vma;
+	list_for_each_entry_safe(vma, vn, &vmas, st_link) {
 		u64 offset;
 
-		vma = i915_vma_instance(obj, &ggtt->vm, NULL);
-		if (IS_ERR(vma)) {
-			err = PTR_ERR(vma);
-			goto out;
-		}
-
 		GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
 		offset = vma->node.start;
 
@@ -1624,7 +1552,7 @@ static int igt_gtt_insert(void *arg)
 
 		mutex_lock(&ggtt->vm.mutex);
 		err = i915_gem_gtt_insert(&ggtt->vm, &vma->node,
-					  obj->base.size, 0, obj->cache_level,
+					  vma->node.size, 0, vma->node.color,
 					  0, ggtt->vm.total,
 					  0);
 		mutex_unlock(&ggtt->vm.mutex);
@@ -1648,7 +1576,7 @@ static int igt_gtt_insert(void *arg)
 	for (total = 0;
 	     total + 2 * I915_GTT_PAGE_SIZE <= ggtt->vm.total;
 	     total += 2 * I915_GTT_PAGE_SIZE) {
-		struct i915_vma *vma;
+		struct drm_i915_gem_object *obj;
 
 		obj = i915_gem_object_create_internal(ggtt->vm.i915,
 						      2 * I915_GTT_PAGE_SIZE);
@@ -1663,13 +1591,13 @@ static int igt_gtt_insert(void *arg)
 			goto out;
 		}
 
-		list_add(&obj->st_link, &objects);
-
 		vma = i915_vma_instance(obj, &ggtt->vm, NULL);
+		i915_gem_object_put(obj);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
 			goto out;
 		}
+		list_add(&vma->st_link, &vmas);
 
 		mutex_lock(&ggtt->vm.mutex);
 		err = i915_gem_gtt_insert(&ggtt->vm, &vma->node,
@@ -1688,10 +1616,8 @@ static int igt_gtt_insert(void *arg)
 	}
 
 out:
-	list_for_each_entry_safe(obj, on, &objects, st_link) {
-		i915_gem_object_unpin_pages(obj);
-		i915_gem_object_put(obj);
-	}
+	list_for_each_entry_safe(vma, vn, &vmas, st_link)
+		i915_vma_put(vma);
 	return err;
 }
 
@@ -1878,6 +1804,7 @@ static int igt_cs_tlb(void *arg)
 	i915_gem_object_set_cache_coherency(out, I915_CACHING_CACHED);
 
 	vma = i915_vma_instance(out, vm, NULL);
+	i915_gem_object_put(out);
 	if (IS_ERR(vma)) {
 		err = PTR_ERR(vma);
 		goto out_put_batch;
@@ -1888,13 +1815,13 @@ static int igt_cs_tlb(void *arg)
 			   PIN_OFFSET_FIXED |
 			   (vm->total - PAGE_SIZE));
 	if (err)
-		goto out_put_out;
+		goto out_put_vma;
 	GEM_BUG_ON(vma->node.start != vm->total - PAGE_SIZE);
 
 	result = i915_gem_object_pin_map(out, I915_MAP_WB);
 	if (IS_ERR(result)) {
 		err = PTR_ERR(result);
-		goto out_put_out;
+		goto out_put_vma;
 	}
 
 	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
@@ -1907,6 +1834,7 @@ static int igt_cs_tlb(void *arg)
 		while (!__igt_timeout(end_time, NULL)) {
 			struct i915_vm_pt_stash stash = {};
 			struct i915_request *rq;
+			struct i915_vma *v;
 			u64 offset;
 
 			offset = igt_random_offset(&prng,
@@ -1915,13 +1843,13 @@ static int igt_cs_tlb(void *arg)
 
 			memset32(result, STACK_MAGIC, PAGE_SIZE / sizeof(u32));
 
-			vma = i915_vma_instance(bbe, vm, NULL);
-			if (IS_ERR(vma)) {
-				err = PTR_ERR(vma);
+			v = i915_vma_instance(bbe, vm, NULL);
+			if (IS_ERR(v)) {
+				err = PTR_ERR(v);
 				goto end;
 			}
 
-			err = vma->ops->set_pages(vma);
+			err = v->ops->set_pages(v);
 			if (err)
 				goto end;
 
@@ -1941,10 +1869,10 @@ static int igt_cs_tlb(void *arg)
 
 			/* Prime the TLB with the dummy pages */
 			for (i = 0; i < count; i++) {
-				vma->node.start = offset + i * PAGE_SIZE;
-				vm->insert_entries(vm, vma, I915_CACHE_NONE, 0);
+				v->node.start = offset + i * PAGE_SIZE;
+				vm->insert_entries(vm, v, I915_CACHE_NONE, 0);
 
-				rq = submit_batch(ce, vma->node.start);
+				rq = submit_batch(ce, v->node.start);
 				if (IS_ERR(rq)) {
 					err = PTR_ERR(rq);
 					goto end;
@@ -1952,7 +1880,8 @@ static int igt_cs_tlb(void *arg)
 				i915_request_put(rq);
 			}
 
-			vma->ops->clear_pages(vma);
+			v->ops->clear_pages(v);
+			i915_vma_put(v);
 
 			err = context_sync(ce);
 			if (err) {
@@ -1961,13 +1890,13 @@ static int igt_cs_tlb(void *arg)
 				goto end;
 			}
 
-			vma = i915_vma_instance(act, vm, NULL);
-			if (IS_ERR(vma)) {
-				err = PTR_ERR(vma);
+			v = i915_vma_instance(act, vm, NULL);
+			if (IS_ERR(v)) {
+				err = PTR_ERR(v);
 				goto end;
 			}
 
-			err = vma->ops->set_pages(vma);
+			err = v->ops->set_pages(v);
 			if (err)
 				goto end;
 
@@ -1977,10 +1906,10 @@ static int igt_cs_tlb(void *arg)
 				u32 *cs = batch + i * 64 / sizeof(*cs);
 				u64 addr;
 
-				vma->node.start = offset + i * PAGE_SIZE;
-				vm->insert_entries(vm, vma, I915_CACHE_NONE, 0);
+				v->node.start = offset + i * PAGE_SIZE;
+				vm->insert_entries(vm, v, I915_CACHE_NONE, 0);
 
-				addr = vma->node.start + i * 64;
+				addr = v->node.start + i * 64;
 				cs[4] = MI_NOOP;
 				cs[6] = lower_32_bits(addr);
 				cs[7] = upper_32_bits(addr);
@@ -2005,7 +1934,8 @@ static int igt_cs_tlb(void *arg)
 			}
 			end_spin(batch, count - 1);
 
-			vma->ops->clear_pages(vma);
+			v->ops->clear_pages(v);
+			i915_vma_put(v);
 
 			err = context_sync(ce);
 			if (err) {
@@ -2033,8 +1963,8 @@ static int igt_cs_tlb(void *arg)
 		err = -EIO;
 	i915_gem_context_unlock_engines(ctx);
 	i915_gem_object_unpin_map(out);
-out_put_out:
-	i915_gem_object_put(out);
+out_put_vma:
+	i915_vma_put(vma);
 out_put_batch:
 	i915_gem_object_unpin_map(act);
 out_put_act:
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 9271aad7f779..e87c7e52f4cc 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -621,8 +621,8 @@ static struct i915_vma *empty_batch(struct drm_i915_private *i915)
 
 	cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
 	if (IS_ERR(cmd)) {
-		err = PTR_ERR(cmd);
-		goto err;
+		i915_gem_object_put(obj);
+		return ERR_CAST(cmd);
 	}
 
 	*cmd = MI_BATCH_BUFFER_END;
@@ -633,10 +633,9 @@ static struct i915_vma *empty_batch(struct drm_i915_private *i915)
 	intel_gt_chipset_flush(&i915->gt);
 
 	vma = i915_vma_instance(obj, &i915->ggtt.vm, NULL);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
-		goto err;
-	}
+	i915_gem_object_put(obj);
+	if (IS_ERR(vma))
+		return vma;
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_GLOBAL);
 	if (err)
@@ -652,7 +651,7 @@ static struct i915_vma *empty_batch(struct drm_i915_private *i915)
 err_pin:
 	i915_vma_unpin(vma);
 err:
-	i915_gem_object_put(obj);
+	i915_vma_put(vma);
 	return ERR_PTR(err);
 }
 
@@ -772,6 +771,7 @@ static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
 		return ERR_CAST(obj);
 
 	vma = i915_vma_instance(obj, i915->gt.vm, NULL);
+	i915_gem_object_put(obj);
 	if (IS_ERR(vma)) {
 		err = PTR_ERR(vma);
 		goto err;
@@ -808,7 +808,7 @@ static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
 	return vma;
 
 err:
-	i915_gem_object_put(obj);
+	i915_vma_put(vma);
 	return ERR_PTR(err);
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index af89c7fc8f59..34b356c7be8d 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -109,36 +109,34 @@ static int create_vmas(struct drm_i915_private *i915,
 {
 	struct drm_i915_gem_object *obj;
 	struct i915_gem_context *ctx;
-	int pinned;
 
 	list_for_each_entry(obj, objects, st_link) {
-		for (pinned = 0; pinned <= 1; pinned++) {
-			list_for_each_entry(ctx, contexts, link) {
-				struct i915_address_space *vm;
-				struct i915_vma *vma;
-				int err;
-
-				vm = i915_gem_context_get_vm_rcu(ctx);
-				vma = checked_vma_instance(obj, vm, NULL);
-				i915_vm_put(vm);
-				if (IS_ERR(vma))
-					return PTR_ERR(vma);
-
-				if (!assert_vma(vma, obj, ctx)) {
-					pr_err("VMA lookup/create failed\n");
-					return -EINVAL;
-				}
+		list_for_each_entry(ctx, contexts, link) {
+			struct i915_address_space *vm;
+			struct i915_vma *vma;
+			int err;
 
-				if (!pinned) {
-					err = i915_vma_pin(vma, 0, 0, PIN_USER);
-					if (err) {
-						pr_err("Failed to pin VMA\n");
-						return err;
-					}
-				} else {
-					i915_vma_unpin(vma);
-				}
+			vm = i915_gem_context_get_vm_rcu(ctx);
+			vma = checked_vma_instance(obj, vm, NULL);
+			i915_vm_put(vm);
+			if (IS_ERR(vma))
+				return PTR_ERR(vma);
+
+			if (!assert_vma(vma, obj, ctx)) {
+				pr_err("VMA lookup/create failed\n");
+				i915_vma_put(vma);
+				return -EINVAL;
 			}
+
+			err = i915_vma_pin(vma, 0, 0, PIN_USER);
+			if (err) {
+				pr_err("Failed to pin VMA\n");
+				i915_vma_put(vma);
+				return err;
+			}
+
+			i915_vma_unpin(vma);
+			i915_vma_put(vma);
 		}
 	}
 
@@ -322,8 +320,9 @@ static int igt_vma_pin1(void *arg)
 		return PTR_ERR(obj);
 
 	vma = checked_vma_instance(obj, &ggtt->vm, NULL);
+	i915_gem_object_put(obj);
 	if (IS_ERR(vma))
-		goto out;
+		return PTR_ERR(vma);
 
 	for (m = modes; m->assert; m++) {
 		err = i915_vma_pin(vma, m->size, 0, m->flags);
@@ -352,7 +351,7 @@ static int igt_vma_pin1(void *arg)
 
 	err = 0;
 out:
-	i915_gem_object_put(obj);
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -502,6 +501,7 @@ static int igt_vma_rotate_remap(void *arg)
 		0,
 	}, *t;
 	const unsigned int max_pages = 64;
+	struct i915_vma *vma;
 	int err = -ENOMEM;
 
 	/* Create VMA for many different combinations of planes and check
@@ -530,18 +530,17 @@ static int igt_vma_rotate_remap(void *arg)
 			for_each_prime_number_from(view.rotated.plane[0].offset, 0, max_offset) {
 				for_each_prime_number_from(view.rotated.plane[1].offset, 0, max_offset) {
 					struct scatterlist *sg;
-					struct i915_vma *vma;
 
 					vma = checked_vma_instance(obj, vm, &view);
 					if (IS_ERR(vma)) {
 						err = PTR_ERR(vma);
-						goto out_object;
+						goto out_vma;
 					}
 
 					err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
 					if (err) {
 						pr_err("Failed to pin VMA, err=%d\n", err);
-						goto out_object;
+						goto out_vma;
 					}
 
 					if (view.type == I915_GGTT_VIEW_ROTATED &&
@@ -549,7 +548,7 @@ static int igt_vma_rotate_remap(void *arg)
 						pr_err("VMA is wrong size, expected %lu, found %llu\n",
 						       PAGE_SIZE * rotated_size(a, b), vma->size);
 						err = -EINVAL;
-						goto out_object;
+						goto out_vma;
 					}
 
 					if (view.type == I915_GGTT_VIEW_REMAPPED &&
@@ -557,27 +556,27 @@ static int igt_vma_rotate_remap(void *arg)
 						pr_err("VMA is wrong size, expected %lu, found %llu\n",
 						       PAGE_SIZE * rotated_size(a, b), vma->size);
 						err = -EINVAL;
-						goto out_object;
+						goto out_vma;
 					}
 
 					if (vma->pages->nents > rotated_size(a, b)) {
 						pr_err("sg table is wrong sizeo, expected %u, found %u nents\n",
 						       rotated_size(a, b), vma->pages->nents);
 						err = -EINVAL;
-						goto out_object;
+						goto out_vma;
 					}
 
 					if (vma->node.size < vma->size) {
 						pr_err("VMA binding too small, expected %llu, found %llu\n",
 						       vma->size, vma->node.size);
 						err = -EINVAL;
-						goto out_object;
+						goto out_vma;
 					}
 
 					if (vma->pages == obj->mm.pages) {
 						pr_err("VMA using unrotated object pages!\n");
 						err = -EINVAL;
-						goto out_object;
+						goto out_vma;
 					}
 
 					sg = vma->pages->sgl;
@@ -599,11 +598,12 @@ static int igt_vma_rotate_remap(void *arg)
 							       view.rotated.plane[1].stride,
 							       view.rotated.plane[1].offset);
 							err = -EINVAL;
-							goto out_object;
+							goto out_vma;
 						}
 					}
 
 					i915_vma_unpin(vma);
+					i915_vma_put(vma);
 
 					cond_resched();
 				}
@@ -611,7 +611,10 @@ static int igt_vma_rotate_remap(void *arg)
 		}
 	}
 	}
+	goto out_object;
 
+out_vma:
+	i915_vma_put(vma);
 out_object:
 	i915_gem_object_put(obj);
 out:
@@ -709,7 +712,7 @@ static int igt_vma_partial(void *arg)
 		{ },
 	}, *p;
 	unsigned int sz, offset;
-	struct i915_vma *vma;
+	struct i915_vma *vma, *vn;
 	int err = -ENOMEM;
 
 	/* Create lots of different VMA for the object and check that
@@ -784,16 +787,20 @@ static int igt_vma_partial(void *arg)
 		}
 
 		err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
-		if (err)
+		if (err) {
+			i915_vma_put(vma);
 			goto out_object;
+		}
 
 		if (!assert_pin(vma, NULL, obj->base.size, p->name)) {
 			pr_err("(%s) inconsistent full pin\n", p->name);
 			err = -EINVAL;
+			i915_vma_put(vma);
 			goto out_object;
 		}
 
 		i915_vma_unpin(vma);
+		i915_vma_put(vma);
 
 		count = 0;
 		list_for_each_entry(vma, &obj->vma.list, obj_link)
@@ -804,8 +811,13 @@ static int igt_vma_partial(void *arg)
 			goto out_object;
 		}
 	}
+	p--;
 
 out_object:
+	do {
+		list_for_each_entry_safe(vma, vn, &obj->vma.list, obj_link)
+			i915_vma_put(vma);
+	} while (p-- != phases);
 	i915_gem_object_put(obj);
 out:
 	return err;
@@ -910,6 +922,7 @@ static int igt_vma_remapped_gtt(void *arg)
 			i915_vma_unpin(vma);
 			if (IS_ERR(map)) {
 				err = PTR_ERR(map);
+				i915_vma_put(vma);
 				goto out;
 			}
 
@@ -928,6 +941,7 @@ static int igt_vma_remapped_gtt(void *arg)
 			}
 
 			i915_vma_unpin_iomap(vma);
+			i915_vma_put(vma);
 
 			vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, PIN_MAPPABLE);
 			if (IS_ERR(vma)) {
@@ -941,6 +955,7 @@ static int igt_vma_remapped_gtt(void *arg)
 			i915_vma_unpin(vma);
 			if (IS_ERR(map)) {
 				err = PTR_ERR(map);
+				i915_vma_put(vma);
 				goto out;
 			}
 
@@ -967,6 +982,7 @@ static int igt_vma_remapped_gtt(void *arg)
 				}
 			}
 			i915_vma_unpin_iomap(vma);
+			i915_vma_put(vma);
 
 			cond_resched();
 		}
diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
index ec0ecb4e4ca6..62f074ddc301 100644
--- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
+++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
@@ -107,12 +107,14 @@ igt_spinner_create_request(struct igt_spinner *spin,
 		return ERR_CAST(vma);
 
 	hws = i915_vma_instance(spin->hws, ce->vm, NULL);
-	if (IS_ERR(hws))
-		return ERR_CAST(hws);
+	if (IS_ERR(hws)) {
+		err = PTR_ERR(hws);
+		goto put_vma;
+	}
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err)
-		return ERR_PTR(err);
+		goto put_hws;
 
 	err = i915_vma_pin(hws, 0, 0, PIN_USER);
 	if (err)
@@ -189,6 +191,10 @@ igt_spinner_create_request(struct igt_spinner *spin,
 	i915_vma_unpin(hws);
 unpin_vma:
 	i915_vma_unpin(vma);
+put_hws:
+	i915_vma_put(hws);
+put_vma:
+	i915_vma_put(vma);
 	return err ? ERR_PTR(err) : rq;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 8d9fdf591514..f37c92720861 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -350,7 +350,7 @@ static int igt_gpu_write(struct i915_gem_context *ctx,
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err)
-		goto out_free;
+		goto out_vma;
 
 	i = 0;
 	engines = i915_gem_context_lock_engines(ctx);
@@ -373,6 +373,9 @@ static int igt_gpu_write(struct i915_gem_context *ctx,
 	} while (!__igt_timeout(end_time, NULL));
 	i915_gem_context_unlock_engines(ctx);
 
+	i915_vma_unpin(vma);
+out_vma:
+	i915_vma_put(vma);
 out_free:
 	kfree(order);
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 9b105b811f1f..32d80ead21ff 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -53,6 +53,30 @@ void mock_device_flush(struct drm_i915_private *i915)
 	} while (intel_gt_retire_requests_timeout(gt, MAX_SCHEDULE_TIMEOUT));
 }
 
+static int workqueues_init(struct drm_i915_private *i915)
+{
+	i915->wq = alloc_ordered_workqueue("i915", 0);
+	if (!i915->wq)
+		goto out_err;
+
+	i915->reclaim_wq = create_workqueue("i915-reclaim");
+	if (!i915->reclaim_wq)
+		goto out_free_wq;
+
+	return 0;
+
+out_free_wq:
+	destroy_workqueue(i915->wq);
+out_err:
+	return -ENOMEM;
+}
+
+static void workqueues_cleanup(struct drm_i915_private *i915)
+{
+	destroy_workqueue(i915->reclaim_wq);
+	destroy_workqueue(i915->wq);
+}
+
 static void mock_device_release(struct drm_device *dev)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
@@ -69,13 +93,13 @@ static void mock_device_release(struct drm_device *dev)
 	i915_gem_drain_freed_objects(i915);
 
 	mock_fini_ggtt(&i915->ggtt);
-	destroy_workqueue(i915->wq);
 
 	intel_gt_driver_late_release(&i915->gt);
 	intel_memory_regions_driver_release(i915);
 
 	drm_mode_config_cleanup(&i915->drm);
 
+	workqueues_cleanup(i915);
 out:
 	put_device(&i915->drm.pdev->dev);
 	i915->drm.pdev = NULL;
@@ -181,8 +205,7 @@ struct drm_i915_private *mock_gem_device(void)
 	atomic_inc(&i915->gt.wakeref.count); /* disable; no hw support */
 	i915->gt.awake = -ENODEV;
 
-	i915->wq = alloc_ordered_workqueue("mock", 0);
-	if (!i915->wq)
+	if (workqueues_init(i915))
 		goto err_drv;
 
 	mock_init_contexts(i915);
@@ -209,7 +232,7 @@ struct drm_i915_private *mock_gem_device(void)
 err_context:
 	intel_gt_driver_remove(&i915->gt);
 err_unlock:
-	destroy_workqueue(i915->wq);
+	workqueues_cleanup(i915);
 err_drv:
 	intel_gt_driver_late_release(&i915->gt);
 	intel_memory_regions_driver_release(i915);
diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
index 7270fc8ca801..df84bef932db 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
@@ -136,5 +136,6 @@ void mock_init_ggtt(struct drm_i915_private *i915, struct i915_ggtt *ggtt)
 
 void mock_fini_ggtt(struct i915_ggtt *ggtt)
 {
+	flush_work(&ggtt->vm.release.work);
 	i915_address_space_fini(&ggtt->vm);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
