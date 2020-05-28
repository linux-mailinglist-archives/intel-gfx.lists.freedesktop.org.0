Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CD41E6D6D
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 23:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8A46E7EA;
	Thu, 28 May 2020 21:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E356E7EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 21:15:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21327494-1500050 
 for multiple; Thu, 28 May 2020 22:15:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 May 2020 22:15:47 +0100
Message-Id: <20200528211547.29392-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Track i915_vma with its own reference
 counter
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

The churn in the patch stems from adding a reference to all vma lookups
that must be released when no longer required. There are a lot.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  43 +--
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |  42 +--
 drivers/gpu/drm/i915/display/intel_fbdev.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  37 +-
 .../gpu/drm/i915/gem/i915_gem_client_blt.c    |   6 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  50 +--
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  13 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 123 +++----
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  33 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  26 --
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |   1 -
 .../gpu/drm/i915/gem/i915_gem_object_blt.c    |  21 +-
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |   3 +-
 drivers/gpu/drm/i915/gem/i915_gem_wait.c      |   9 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   | 122 +++----
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
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  74 ++--
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  20 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  36 +-
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  13 +-
 drivers/gpu/drm/i915/gt/intel_ring.c          |   7 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  27 +-
 drivers/gpu/drm/i915/gt/intel_timeline.c      |   3 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  14 +-
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c  |  48 +--
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  32 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  97 ++---
 drivers/gpu/drm/i915/gt/selftest_mocs.c       |   7 +-
 .../drm/i915/gt/selftest_ring_submission.c    |  11 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c        |   7 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  18 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  11 +-
 drivers/gpu/drm/i915/gvt/scheduler.c          |   4 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   2 +
 drivers/gpu/drm/i915/i915_drv.c               |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |   3 +-
 drivers/gpu/drm/i915/i915_gem.c               | 141 +++-----
 drivers/gpu/drm/i915/i915_perf.c              |  37 +-
 drivers/gpu/drm/i915/i915_vma.c               | 204 ++++++-----
 drivers/gpu/drm/i915/i915_vma.h               |  53 +--
 drivers/gpu/drm/i915/i915_vma_types.h         |   2 +
 drivers/gpu/drm/i915/intel_memory_region.c    |  10 +
 .../gpu/drm/i915/selftests/i915_gem_evict.c   |  60 ++-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 342 +++++++-----------
 drivers/gpu/drm/i915/selftests/i915_request.c |  16 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  94 +++--
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |  12 +-
 .../drm/i915/selftests/intel_memory_region.c  |   5 +-
 drivers/gpu/drm/i915/selftests/mock_gtt.c     |   1 +
 62 files changed, 1050 insertions(+), 1107 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6c3b11de2daf..37c28e97069e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2291,7 +2291,7 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 		 */
 		ret = i915_vma_pin_fence(vma);
 		if (ret != 0 && INTEL_GEN(dev_priv) < 4) {
-			i915_gem_object_unpin_from_display_plane(vma);
+			i915_ggtt_unpin(vma);
 			vma = ERR_PTR(ret);
 			goto err;
 		}
@@ -2300,22 +2300,20 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
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
@@ -3442,24 +3440,26 @@ initial_plane_vma(struct drm_i915_private *i915,
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
 
@@ -3659,6 +3659,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 	intel_state->color_plane[0].stride =
 		intel_fb_pitch(fb, 0, intel_state->hw.rotation);
 
+	i915_vma_open(vma);
 	__i915_vma_pin(vma);
 	intel_state->vma = i915_vma_get(vma);
 	if (intel_plane_uses_fence(intel_state) && i915_vma_pin_fence(vma) == 0)
@@ -15877,11 +15878,7 @@ static int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 
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
@@ -15959,13 +15956,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
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
index b7a6d56bac5f..a2cf9abcc40d 100644
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
index 30b2767578dc..627850628a2d 100644
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
index 24e6d63e2d47..206190910021 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -261,50 +261,44 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
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
 
 	dsb = kmalloc(sizeof(*dsb), GFP_KERNEL);
-
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+	if (!dsb)
+		return;
 
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
@@ -319,7 +313,7 @@ void intel_dsb_cleanup(struct intel_crtc_state *crtc_state)
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
index d3a86a4d5c04..427695b378f8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
@@ -86,6 +86,7 @@ static struct i915_sleeve *create_sleeve(struct i915_address_space *vm,
 
 static void destroy_sleeve(struct i915_sleeve *sleeve)
 {
+	i915_vma_put(sleeve->vma);
 	kfree(sleeve);
 }
 
@@ -114,7 +115,8 @@ static void clear_pages_work_release(struct dma_fence *fence)
 {
 	struct clear_pages_work *w = container_of(fence, typeof(*w), dma);
 
-	destroy_sleeve(w->sleeve);
+	if (w->sleeve)
+		destroy_sleeve(w->sleeve);
 
 	i915_sw_fence_fini(&w->wait);
 
@@ -231,6 +233,8 @@ static void clear_pages_worker(struct work_struct *work)
 		dma_fence_signal(&w->dma);
 		dma_fence_put(&w->dma);
 	}
+
+	destroy_sleeve(fetch_and_zero(&w->sleeve));
 }
 
 static int __i915_sw_fence_call
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index f5d59d18cd5b..e84c69ffccce 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -106,35 +106,39 @@ static void lut_close(struct i915_gem_context *ctx)
 	rcu_read_lock();
 	radix_tree_for_each_slot(slot, &ctx->handles_vma, &iter, 0) {
 		struct i915_vma *vma = rcu_dereference_raw(*slot);
-		struct drm_i915_gem_object *obj = vma->obj;
 		struct i915_lut_handle *lut;
 
-		if (!kref_get_unless_zero(&obj->base.refcount))
+		vma = i915_vma_tryget(vma);
+		if (!vma)
 			continue;
 
-		rcu_read_unlock();
-		i915_gem_object_lock(obj);
-		list_for_each_entry(lut, &obj->lut_list, obj_link) {
-			if (lut->ctx != ctx)
-				continue;
-
-			if (lut->handle != iter.index)
-				continue;
-
-			list_del(&lut->obj_link);
-			break;
-		}
-		i915_gem_object_unlock(obj);
-		rcu_read_lock();
-
-		if (&lut->obj_link != &obj->lut_list) {
-			i915_lut_handle_free(lut);
-			radix_tree_iter_delete(&ctx->handles_vma, &iter, slot);
-			i915_vma_close(vma);
-			i915_gem_object_put(obj);
+		if (vma->obj) {
+			struct drm_i915_gem_object *obj = vma->obj;
+
+			rcu_read_unlock();
+			i915_gem_object_lock(obj);
+			list_for_each_entry(lut, &obj->lut_list, obj_link) {
+				if (lut->ctx != ctx)
+					continue;
+
+				if (lut->handle != iter.index)
+					continue;
+
+				list_del(&lut->obj_link);
+				break;
+			}
+			i915_gem_object_unlock(obj);
+			rcu_read_lock();
+
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
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 7f76fc68f498..731370941df0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -210,9 +210,7 @@ int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
 	i915_gem_object_unlock(obj);
 
 	/* The cache-level will be applied when each vma is rebound. */
-	return i915_gem_object_unbind(obj,
-				      I915_GEM_OBJECT_UNBIND_ACTIVE |
-				      I915_GEM_OBJECT_UNBIND_BARRIER);
+	return i915_gem_object_unbind(obj, I915_GEM_OBJECT_UNBIND_ACTIVE);
 }
 
 int i915_gem_get_caching_ioctl(struct drm_device *dev, void *data,
@@ -396,15 +394,6 @@ static void i915_gem_object_bump_inactive_ggtt(struct drm_i915_gem_object *obj)
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
index 219a36995b96..dfdb459c1508 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -800,9 +800,7 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
 	if (unlikely(!lut))
 		return -ENOMEM;
 
-	i915_vma_get(vma);
-	if (!atomic_fetch_inc(&vma->open_count))
-		i915_vma_reopen(vma);
+	i915_vma_open(vma);
 	lut->handle = handle;
 	lut->ctx = ctx;
 
@@ -826,15 +824,10 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
 		}
 		mutex_unlock(&ctx->mutex);
 	}
-	if (unlikely(err))
-		goto err;
-
-	return 0;
-
-err:
-	i915_vma_close(vma);
-	i915_vma_put(vma);
-	i915_lut_handle_free(lut);
+	if (unlikely(err)) {
+		i915_vma_close(vma);
+		i915_lut_handle_free(lut);
+	}
 	return err;
 }
 
@@ -858,16 +851,15 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 			return ERR_PTR(-ENOENT);
 
 		vma = i915_vma_instance(obj, eb->context->vm, NULL);
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
@@ -999,7 +991,7 @@ static int reloc_gpu_chain(struct reloc_cache *cache)
 
 	err = i915_vma_pin(batch, 0, 0, PIN_USER | PIN_NONBLOCK);
 	if (err)
-		goto out_pool;
+		goto out_batch;
 
 	GEM_BUG_ON(cache->rq_size + RELOC_TAIL > PAGE_SIZE  / sizeof(u32));
 	cmd = cache->rq_cmd + cache->rq_size;
@@ -1026,7 +1018,7 @@ static int reloc_gpu_chain(struct reloc_cache *cache)
 	}
 	i915_vma_unpin(batch);
 	if (err)
-		goto out_pool;
+		goto out_batch;
 
 	cmd = i915_gem_object_pin_map(batch->obj,
 				      cache->has_llc ?
@@ -1042,6 +1034,8 @@ static int reloc_gpu_chain(struct reloc_cache *cache)
 	cache->rq_size = 0;
 	cache->rq_vma = batch;
 
+out_batch:
+	i915_vma_put(batch);
 out_pool:
 	intel_gt_buffer_pool_put(pool);
 	return err;
@@ -1057,6 +1051,18 @@ static int reloc_gpu_flush(struct reloc_cache *cache)
 	struct i915_request *rq;
 	int err;
 
+	if (drm_mm_node_allocated(&cache->node)) {
+		struct i915_ggtt *ggtt = cache_to_ggtt(cache);
+
+		ggtt->vm.clear_range(&ggtt->vm,
+				     cache->node.start,
+				     cache->node.size);
+
+		mutex_lock(&ggtt->vm.mutex);
+		drm_mm_remove_node(&cache->node);
+		mutex_unlock(&ggtt->vm.mutex);
+	}
+
 	rq = fetch_and_zero(&cache->rq);
 	if (!rq)
 		return 0;
@@ -1084,6 +1090,7 @@ static int reloc_gpu_flush(struct reloc_cache *cache)
 		i915_request_set_error_once(rq, err);
 
 	intel_gt_chipset_flush(rq->engine->gt);
+	i915_vma_put(rq->batch);
 	i915_request_add(rq);
 
 	return err;
@@ -1108,17 +1115,6 @@ static void reloc_cache_reset(struct reloc_cache *cache)
 
 		intel_gt_flush_ggtt_writes(ggtt->vm.gt);
 		io_mapping_unmap_atomic((void __iomem *)vaddr);
-
-		if (drm_mm_node_allocated(&cache->node)) {
-			ggtt->vm.clear_range(&ggtt->vm,
-					     cache->node.start,
-					     cache->node.size);
-			mutex_lock(&ggtt->vm.mutex);
-			drm_mm_remove_node(&cache->node);
-			mutex_unlock(&ggtt->vm.mutex);
-		} else {
-			i915_vma_unpin((struct i915_vma *)cache->node.mm);
-		}
 	}
 
 	cache->vaddr = 0;
@@ -1162,60 +1158,43 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
 			 unsigned long page)
 {
 	struct i915_ggtt *ggtt = cache_to_ggtt(cache);
-	unsigned long offset;
 	void *vaddr;
 
 	if (cache->vaddr) {
 		intel_gt_flush_ggtt_writes(ggtt->vm.gt);
 		io_mapping_unmap_atomic((void __force __iomem *) unmask_page(cache->vaddr));
 	} else {
-		struct i915_vma *vma;
 		int err;
 
-		if (i915_gem_object_is_tiled(obj))
-			return ERR_PTR(-EINVAL);
-
 		if (use_cpu_reloc(cache, obj))
 			return NULL;
 
-		i915_gem_object_lock(obj);
-		err = i915_gem_object_set_to_gtt_domain(obj, true);
-		i915_gem_object_unlock(obj);
-		if (err)
-			return ERR_PTR(err);
-
-		vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0,
-					       PIN_MAPPABLE |
-					       PIN_NONBLOCK /* NOWARN */ |
-					       PIN_NOEVICT);
-		if (IS_ERR(vma)) {
-			memset(&cache->node, 0, sizeof(cache->node));
+		if (!drm_mm_node_allocated(&cache->node)) {
 			mutex_lock(&ggtt->vm.mutex);
-			err = drm_mm_insert_node_in_range
-				(&ggtt->vm.mm, &cache->node,
-				 PAGE_SIZE, 0, I915_COLOR_UNEVICTABLE,
-				 0, ggtt->mappable_end,
-				 DRM_MM_INSERT_LOW);
+			err = drm_mm_insert_node_in_range(&ggtt->vm.mm,
+							  &cache->node,
+							  PAGE_SIZE, 0,
+							  I915_COLOR_UNEVICTABLE,
+							  0, ggtt->mappable_end,
+							  DRM_MM_INSERT_LOW);
 			mutex_unlock(&ggtt->vm.mutex);
 			if (err) /* no inactive aperture space, use cpu reloc */
 				return NULL;
-		} else {
-			cache->node.start = vma->node.start;
-			cache->node.mm = (void *)vma;
 		}
-	}
 
-	offset = cache->node.start;
-	if (drm_mm_node_allocated(&cache->node)) {
-		ggtt->vm.insert_page(&ggtt->vm,
-				     i915_gem_object_get_dma_address(obj, page),
-				     offset, I915_CACHE_NONE, 0);
-	} else {
-		offset += page << PAGE_SHIFT;
+		i915_gem_object_lock(obj);
+		err = i915_gem_object_set_to_gtt_domain(obj, true);
+		i915_gem_object_unlock(obj);
+		if (err)
+			return ERR_PTR(err);
 	}
 
+	ggtt->vm.insert_page(&ggtt->vm,
+			     i915_gem_object_get_dma_address(obj, page),
+			     cache->node.start, I915_CACHE_NONE, 0);
+
 	vaddr = (void __force *)io_mapping_map_atomic_wc(&ggtt->iomap,
-							 offset);
+							 cache->node.start);
 	cache->page = page;
 	cache->vaddr = (unsigned long)vaddr;
 
@@ -1316,7 +1295,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 
 	err = i915_vma_pin(batch, 0, 0, PIN_USER | PIN_NONBLOCK);
 	if (err)
-		goto err_unmap;
+		goto err_batch;
 
 	if (engine == eb->context->engine) {
 		rq = i915_request_create(eb->context);
@@ -1369,6 +1348,8 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	i915_request_add(rq);
 err_unpin:
 	i915_vma_unpin(batch);
+err_batch:
+	i915_vma_put(batch);
 err_unmap:
 	i915_gem_object_unpin_map(pool->obj);
 out_pool:
@@ -1943,8 +1924,10 @@ shadow_batch_pin(struct drm_i915_gem_object *obj,
 		return vma;
 
 	err = i915_vma_pin(vma, 0, 0, flags);
-	if (err)
+	if (err) {
+		i915_vma_put(vma);
 		return ERR_PTR(err);
+	}
 
 	return vma;
 }
@@ -2120,7 +2103,7 @@ static int eb_parse(struct i915_execbuffer *eb)
 	if (err)
 		goto err_trampoline;
 
-	eb->vma[eb->buffer_count].vma = i915_vma_get(shadow);
+	eb->vma[eb->buffer_count].vma = shadow;
 	eb->vma[eb->buffer_count].flags = __EXEC_OBJECT_HAS_PIN;
 	eb->batch = &eb->vma[eb->buffer_count++];
 	eb->vma[eb->buffer_count].vma = NULL;
@@ -2720,7 +2703,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
 	 * batch" bit. Hence we need to pin secure batches into the global gtt.
 	 * hsw should have this fixed, but bdw mucks it up again. */
-	batch = eb.batch->vma;
+	batch = i915_vma_get(eb.batch->vma);
 	if (eb.batch_flags & I915_DISPATCH_SECURE) {
 		struct i915_vma *vma;
 
@@ -2740,6 +2723,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 			goto err_parse;
 		}
 
+		i915_vma_put(batch);
 		batch = vma;
 	}
 
@@ -2818,9 +2802,12 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 err_parse:
 	if (batch->private)
 		intel_gt_buffer_pool_put(batch->private);
+	i915_vma_put(batch);
 err_vma:
-	if (eb.trampoline)
+	if (eb.trampoline) {
 		i915_vma_unpin(eb.trampoline);
+		i915_vma_put(eb.trampoline);
+	}
 	eb_unpin_engine(&eb);
 err_context:
 	i915_gem_context_put(eb.gem_context);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 9d306dc9849d..5c6cedfd3c1f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -365,16 +365,19 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 	assert_rpm_wakelock_held(rpm);
 
 	/* Mark as being mmapped into userspace for later revocation */
-	mutex_lock(&i915->ggtt.vm.mutex);
-	if (!i915_vma_set_userfault(vma) && !obj->userfault_count++)
-		list_add(&obj->userfault_link, &i915->ggtt.userfault_list);
-	mutex_unlock(&i915->ggtt.vm.mutex);
+	if (!i915_vma_set_userfault(vma)) {
+		mutex_lock(&ggtt->vm.mutex);
+		i915_vma_open(vma);
+		if (!obj->userfault_count++)
+			list_add(&obj->userfault_link, &ggtt->userfault_list);
+		mutex_unlock(&ggtt->vm.mutex);
+	}
 
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
@@ -766,12 +769,15 @@ static void vm_open(struct vm_area_struct *vma)
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
 
@@ -779,9 +785,18 @@ static const struct vm_operations_struct vm_ops_gtt = {
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
index 99356c00c19e..1c90f038e0dc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -134,14 +134,12 @@ void i915_gem_close_object(struct drm_gem_object *gem, struct drm_file *file)
 		vma = radix_tree_delete(&ctx->handles_vma, lut->handle);
 		if (vma) {
 			GEM_BUG_ON(vma->obj != obj);
-			GEM_BUG_ON(!atomic_read(&vma->open_count));
 			i915_vma_close(vma);
 		}
 		mutex_unlock(&ctx->mutex);
 
 		i915_gem_context_put(lut->ctx);
 		i915_lut_handle_free(lut);
-		i915_gem_object_put(obj);
 	}
 }
 
@@ -168,31 +166,7 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
 
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
 		i915_gem_object_release_mmap(obj);
-
 		rbtree_postorder_for_each_entry_safe(mmo, mn,
 						     &obj->mmo.offsets,
 						     offset) {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 2faa481cc18f..7351e18bad3f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -445,7 +445,6 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 				     u32 alignment,
 				     const struct i915_ggtt_view *view,
 				     unsigned int flags);
-void i915_gem_object_unpin_from_display_plane(struct i915_vma *vma);
 
 void i915_gem_object_make_unshrinkable(struct drm_i915_gem_object *obj);
 void i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
index f457d7130491..b9215c4cfcc3 100644
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
 
@@ -141,7 +144,7 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (unlikely(err))
-		return err;
+		goto out_vma;
 
 	if (obj->cache_dirty & ~obj->cache_coherent) {
 		i915_gem_object_lock(obj);
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
@@ -344,7 +351,7 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
 
 	err = i915_vma_pin(vma[0], 0, 0, PIN_USER);
 	if (unlikely(err))
-		return err;
+		goto out_src;
 
 	vma[1] = i915_vma_instance(dst, vm, NULL);
 	if (IS_ERR(vma[1]))
@@ -352,7 +359,7 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
 
 	err = i915_vma_pin(vma[1], 0, 0, PIN_USER);
 	if (unlikely(err))
-		goto out_unpin_src;
+		goto out_dst;
 
 	batch = intel_emit_vma_copy_blt(ce, vma[0], vma[1]);
 	if (IS_ERR(batch)) {
@@ -408,8 +415,12 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
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
index 2226146b01c9..a9476665ef8b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -127,8 +127,7 @@ userptr_mn_invalidate_range_start(struct mmu_notifier *_mn,
 		spin_unlock(&mn->lock);
 
 		ret = i915_gem_object_unbind(obj,
-					     I915_GEM_OBJECT_UNBIND_ACTIVE |
-					     I915_GEM_OBJECT_UNBIND_BARRIER);
+					     I915_GEM_OBJECT_UNBIND_ACTIVE);
 		if (ret == 0)
 			ret = __i915_gem_object_put_pages(obj);
 		i915_gem_object_put(obj);
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
index a0ed2fab0ff3..2ba79841c322 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -409,14 +409,16 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
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
@@ -432,8 +434,7 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
 			}
 
 			i915_vma_unpin(vma);
-			i915_gem_object_put(obj);
-
+			i915_vma_put(vma);
 			if (err)
 				goto out_device;
 		}
@@ -442,10 +443,9 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
 	goto out_device;
 
 out_put:
-	i915_gem_object_put(obj);
+	i915_vma_put(vma);
 out_device:
 	mkwrite_device_info(i915)->page_sizes = saved_mask;
-
 	return err;
 }
 
@@ -456,7 +456,6 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 	struct drm_i915_private *i915 = ppgtt->vm.i915;
 	unsigned long supported = INTEL_INFO(i915)->page_sizes;
 	struct intel_memory_region *mem;
-	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 	int bit;
 	int err = 0;
@@ -473,6 +472,8 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 		int i;
 
 		for (i = 0; i < ARRAY_SIZE(flags); ++i) {
+			struct drm_i915_gem_object *obj;
+
 			obj = i915_gem_object_create_region(mem, page_size,
 							    flags[i]);
 			if (IS_ERR(obj)) {
@@ -481,9 +482,10 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 			}
 
 			vma = i915_vma_instance(obj, &ppgtt->vm, NULL);
+			i915_gem_object_put(obj);
 			if (IS_ERR(vma)) {
 				err = PTR_ERR(vma);
-				goto out_put;
+				goto out_region;
 			}
 
 			err = i915_vma_pin(vma, 0, 0, PIN_USER);
@@ -511,8 +513,7 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 			}
 
 			i915_vma_unpin(vma);
-			__i915_gem_object_put_pages(obj);
-			i915_gem_object_put(obj);
+			i915_vma_put(vma);
 		}
 	}
 
@@ -521,7 +522,7 @@ static int igt_mock_memory_region_huge_pages(void *arg)
 out_unpin:
 	i915_vma_unpin(vma);
 out_put:
-	i915_gem_object_put(obj);
+	i915_vma_put(vma);
 out_region:
 	intel_memory_region_put(mem);
 	return err;
@@ -532,7 +533,7 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 	struct i915_ppgtt *ppgtt = arg;
 	struct drm_i915_private *i915 = ppgtt->vm.i915;
 	unsigned long supported = INTEL_INFO(i915)->page_sizes;
-	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
 	int bit;
 	int err;
 
@@ -547,12 +548,12 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
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
@@ -561,27 +562,27 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
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
 
@@ -592,9 +593,8 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 		}
 
 		i915_vma_unpin(vma);
-
 		if (err)
-			goto out_unpin;
+			goto out_vma;
 
 		/*
 		 * Try all the other valid offsets until the next
@@ -604,11 +604,11 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
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
 
@@ -619,9 +619,8 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 			}
 
 			i915_vma_unpin(vma);
-
 			if (err)
-				goto out_unpin;
+				goto out_vma;
 
 			if (igt_timeout(end_time,
 					"%s timed out at offset %x with page-size %x\n",
@@ -629,18 +628,13 @@ static int igt_mock_ppgtt_misaligned_dma(void *arg)
 				break;
 		}
 
-		i915_gem_object_unpin_pages(obj);
-		__i915_gem_object_put_pages(obj);
-		i915_gem_object_put(obj);
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
 
@@ -704,12 +698,15 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
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
 
@@ -735,6 +732,7 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
 			expected_gtt &= ~I915_GTT_PAGE_SIZE_64K;
 
 		i915_vma_unpin(vma);
+		i915_vma_put(vma);
 
 		if (vma->page_sizes.sg & I915_GTT_PAGE_SIZE_64K) {
 			if (!IS_ALIGNED(vma->node.start,
@@ -866,8 +864,10 @@ static int igt_mock_ppgtt_64K(void *arg)
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
@@ -876,17 +876,16 @@ static int igt_mock_ppgtt_64K(void *arg)
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
@@ -919,9 +918,7 @@ static int igt_mock_ppgtt_64K(void *arg)
 			}
 
 			i915_vma_unpin(vma);
-			i915_gem_object_unpin_pages(obj);
-			__i915_gem_object_put_pages(obj);
-			i915_gem_object_put(obj);
+			i915_vma_put(vma);
 		}
 	}
 
@@ -929,11 +926,8 @@ static int igt_mock_ppgtt_64K(void *arg)
 
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
 
@@ -1040,7 +1034,7 @@ static int __igt_write_huge(struct intel_context *ce,
 
 	err = i915_vma_unbind(vma);
 	if (err)
-		return err;
+		goto out_vma;
 
 	err = i915_vma_pin(vma, size, 0, flags | offset);
 	if (err) {
@@ -1051,7 +1045,7 @@ static int __igt_write_huge(struct intel_context *ce,
 		if (err == -ENOSPC && i915_is_ggtt(ce->vm))
 			err = 0;
 
-		return err;
+		goto out_vma;
 	}
 
 	err = igt_check_page_sizes(vma);
@@ -1072,6 +1066,8 @@ static int __igt_write_huge(struct intel_context *ce,
 
 out_vma_unpin:
 	i915_vma_unpin(vma);
+out_vma:
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -1452,11 +1448,13 @@ static int igt_tmpfs_fallback(void *arg)
 
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
@@ -1503,7 +1501,7 @@ static int igt_shrink_thp(void *arg)
 
 	err = i915_vma_pin(vma, 0, 0, flags);
 	if (err)
-		goto out_put;
+		goto out_vma;
 
 	if (obj->mm.page_sizes.phys < I915_GTT_PAGE_SIZE_2M) {
 		pr_info("failed to allocate THP, finishing test early\n");
@@ -1527,7 +1525,7 @@ static int igt_shrink_thp(void *arg)
 	i915_gem_context_unlock_engines(ctx);
 	i915_vma_unpin(vma);
 	if (err)
-		goto out_put;
+		goto out_vma;
 
 	/*
 	 * Now that the pages are *unpinned* shrink-all should invoke
@@ -1537,18 +1535,18 @@ static int igt_shrink_thp(void *arg)
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
@@ -1558,6 +1556,8 @@ static int igt_shrink_thp(void *arg)
 
 out_unpin:
 	i915_vma_unpin(vma);
+out_vma:
+	i915_vma_put(vma);
 out_put:
 	i915_gem_object_put(obj);
 out_vm:
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 8fe3ad2ee34e..89523717a00d 100644
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
index 87d7d8aa080f..7e86dbd1d44b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -95,7 +95,6 @@ static int gtt_set(struct context *ctx, unsigned long offset, u32 v)
 	intel_gt_pm_get(vma->vm->gt);
 
 	map = i915_vma_pin_iomap(vma);
-	i915_vma_unpin(vma);
 	if (IS_ERR(map)) {
 		err = PTR_ERR(map);
 		goto out_rpm;
@@ -106,6 +105,7 @@ static int gtt_set(struct context *ctx, unsigned long offset, u32 v)
 
 out_rpm:
 	intel_gt_pm_put(vma->vm->gt);
+	i915_ggtt_unpin(vma);
 	return err;
 }
 
@@ -128,7 +128,6 @@ static int gtt_get(struct context *ctx, unsigned long offset, u32 *v)
 	intel_gt_pm_get(vma->vm->gt);
 
 	map = i915_vma_pin_iomap(vma);
-	i915_vma_unpin(vma);
 	if (IS_ERR(map)) {
 		err = PTR_ERR(map);
 		goto out_rpm;
@@ -139,6 +138,7 @@ static int gtt_get(struct context *ctx, unsigned long offset, u32 *v)
 
 out_rpm:
 	intel_gt_pm_put(vma->vm->gt);
+	i915_ggtt_unpin(vma);
 	return err;
 }
 
@@ -205,14 +205,14 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 
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
 
@@ -239,9 +239,9 @@ static int gpu_set(struct context *ctx, unsigned long offset, u32 v)
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
 	i915_vma_unlock(vma);
-	i915_vma_unpin(vma);
 
 	i915_request_add(rq);
+	i915_ggtt_unpin(vma);
 
 	return err;
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index b81978890641..c35c1eb76b08 100644
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
 
@@ -918,10 +920,9 @@ static struct i915_vma *rpcs_query_batch(struct i915_vma *vma)
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
@@ -930,7 +931,7 @@ static struct i915_vma *rpcs_query_batch(struct i915_vma *vma)
 	return vma;
 
 err:
-	i915_gem_object_put(obj);
+	i915_vma_put(vma);
 	return ERR_PTR(err);
 }
 
@@ -954,16 +955,16 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
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
@@ -1001,7 +1002,7 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
 		goto skip_request;
 
 	i915_vma_unpin_and_release(&batch, 0);
-	i915_vma_unpin(vma);
+	i915_vma_unpin_and_release(&vma, 0);
 
 	*rq_out = i915_request_get(rq);
 
@@ -1014,9 +1015,10 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
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
 
@@ -1538,7 +1540,7 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_OFFSET_FIXED);
 	if (err)
-		goto out_vm;
+		goto out_vma;
 
 	rq = igt_request_alloc(ctx, engine);
 	if (IS_ERR(rq)) {
@@ -1568,12 +1570,14 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 
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
@@ -1617,7 +1621,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 
 		err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_OFFSET_FIXED);
 		if (err)
-			goto out_vm;
+			goto out_vma;
 
 		cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
 		if (IS_ERR(cmd)) {
@@ -1653,7 +1657,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 
 		err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
 		if (err)
-			goto out_vm;
+			goto out_vma;
 
 		cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
 		if (IS_ERR(cmd)) {
@@ -1710,23 +1714,25 @@ static int read_from_scratch(struct i915_gem_context *ctx,
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
index a49016f8ee0d..68a0d8c68b9f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -34,7 +34,7 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_HIGH);
 	if (err)
-		return err;
+		goto out_vma;
 
 	/* 8-Byte aligned */
 	if (!__reloc_entry_gpu(eb, vma,
@@ -102,6 +102,8 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 	i915_request_put(rq);
 unpin_vma:
 	i915_vma_unpin(vma);
+out_vma:
+	i915_vma_put(vma);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9c7402ce5bf9..94d826f8b23c 100644
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
index f4fec7eb4064..34cfb79bc0ad 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -276,7 +276,7 @@ static void gen6_ppgtt_cleanup(struct i915_address_space *vm)
 {
 	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(i915_vm_to_ppgtt(vm));
 
-	__i915_vma_put(ppgtt->vma);
+	i915_vma_put(ppgtt->vma);
 
 	gen6_ppgtt_free_pd(ppgtt);
 	free_scratch(vm);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index da5b61085257..b1ab897788bf 100644
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
index 323c328d444a..ede5c18876ac 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -699,6 +699,7 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
 
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
index 6bdb434a442d..f0809578f894 100644
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
index 2a72cce63fd9..187949b7e313 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -167,33 +167,10 @@ static void vm_free_page(struct i915_address_space *vm, struct page *page)
 	spin_unlock(&vm->free_pages.lock);
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
 	spin_lock(&vm->free_pages.lock);
 	if (pagevec_count(&vm->free_pages.pvec))
 		vm_free_pages_release(vm, true);
@@ -227,12 +204,59 @@ void i915_vm_release(struct kref *kref)
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
+	rb_erase(&vma->obj_node, &obj->vma.tree);
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
+
 	/*
 	 * The vm->mutex must be reclaim safe (for use in the shrinker).
 	 * Do a dummy acquire now under fs_reclaim so that any allocation
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index d93ebdf3fa0e..259a8945a014 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -263,6 +263,12 @@ struct i915_address_space {
 	 */
 	struct list_head bound_list;
 
+	struct {
+		spinlock_t lock;
+		struct list_head list;
+		struct work_struct work;
+	} release;
+
 	struct pagestash free_pages;
 
 	/* Global GTT */
@@ -415,23 +421,11 @@ i915_vm_open(struct i915_address_space *vm)
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
index 69fff36ec0cc..da56ffd1fb71 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3838,21 +3838,18 @@ static int lrc_setup_wa_ctx(struct intel_engine_cs *engine)
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
@@ -5268,10 +5265,9 @@ static int __execlists_context_alloc(struct intel_context *ce,
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
@@ -5288,7 +5284,7 @@ static int __execlists_context_alloc(struct intel_context *ce,
 		tl = intel_timeline_create(engine->gt, hwsp);
 		if (IS_ERR(tl)) {
 			ret = PTR_ERR(tl);
-			goto error_deref_obj;
+			goto err_vma;
 		}
 
 		ce->timeline = tl;
@@ -5297,14 +5293,14 @@ static int __execlists_context_alloc(struct intel_context *ce,
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
@@ -5312,10 +5308,10 @@ static int __execlists_context_alloc(struct intel_context *ce,
 
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
index f59e7875cc5e..167d23e74e78 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -187,14 +187,13 @@ int intel_renderstate_init(struct intel_renderstate *so,
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
@@ -204,8 +203,8 @@ int intel_renderstate_init(struct intel_renderstate *so,
 
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
index 8cda1b7e17ba..4965b0b7c79b 100644
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
index ca7286e58409..803e9938de34 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1217,7 +1217,6 @@ alloc_context_vma(struct intel_engine_cs *engine)
 	struct drm_i915_private *i915 = engine->i915;
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
-	int err;
 
 	obj = i915_gem_object_create_shmem(i915, engine->context_size);
 	if (IS_ERR(obj))
@@ -1246,8 +1245,8 @@ alloc_context_vma(struct intel_engine_cs *engine)
 
 		vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
 		if (IS_ERR(vaddr)) {
-			err = PTR_ERR(vaddr);
-			goto err_obj;
+			i915_gem_object_put(obj);
+			return ERR_CAST(vaddr);
 		}
 
 		shmem_read(engine->default_state, 0,
@@ -1258,16 +1257,9 @@ alloc_context_vma(struct intel_engine_cs *engine)
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
@@ -1995,15 +1987,14 @@ static int gen7_ctx_switch_bb_init(struct intel_engine_cs *engine)
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
@@ -2025,8 +2016,8 @@ static int gen7_ctx_switch_bb_init(struct intel_engine_cs *engine)
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
index 4546284fede1..ee4a11ebca98 100644
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
index fa1e15657663..08015a2d29b6 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1643,21 +1643,19 @@ create_scratch(struct i915_address_space *vm, int count)
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
index f88e445a1cae..301f683b5fe3 100644
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
index 4aa4cc917d8b..ee002926ffe2 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -162,22 +162,18 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
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
+		i915_vma_put(vma);
 		return ERR_CAST(hws);
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
@@ -275,7 +271,9 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 	i915_vma_unpin(hws);
 unpin_vma:
 	i915_vma_unpin(vma);
-	i915_vm_put(vm);
+put_hws:
+	i915_vma_put(hws);
+	i915_vma_put(vma);
 	return err ? ERR_PTR(err) : rq;
 }
 
@@ -1176,20 +1174,22 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
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
@@ -1200,7 +1200,7 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 	err = i915_vma_pin(arg.vma, 0, 0, pin_flags);
 	if (err) {
 		i915_request_add(rq);
-		goto out_obj;
+		goto out_vma;
 	}
 
 	if (flags & EXEC_OBJECT_NEEDS_FENCE) {
@@ -1209,7 +1209,7 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 			pr_err("Unable to pin X-tiled fence; err:%d\n", err);
 			i915_vma_unpin(arg.vma);
 			i915_request_add(rq);
-			goto out_obj;
+			goto out_vma;
 		}
 	}
 
@@ -1279,8 +1279,8 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 
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
index 3e35a45d6218..c576897b4090 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -37,14 +37,13 @@ static struct i915_vma *create_scratch(struct intel_gt *gt)
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
 
@@ -866,15 +865,14 @@ static int live_timeslice_preempt(void *arg)
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
@@ -912,8 +910,8 @@ static int live_timeslice_preempt(void *arg)
 	i915_vma_unpin(vma);
 err_map:
 	i915_gem_object_unpin_map(obj);
-err_obj:
-	i915_gem_object_put(obj);
+err_vma:
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -1170,15 +1168,14 @@ static int live_timeslice_queue(void *arg)
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
@@ -1284,8 +1281,8 @@ static int live_timeslice_queue(void *arg)
 	i915_vma_unpin(vma);
 err_map:
 	i915_gem_object_unpin_map(obj);
-err_obj:
-	i915_gem_object_put(obj);
+err_vma:
+	i915_vma_put(vma);
 	return err;
 }
 
@@ -1452,11 +1449,11 @@ static int live_busywait_preempt(void *arg)
 
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
@@ -1578,8 +1575,10 @@ static int live_busywait_preempt(void *arg)
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
@@ -2722,18 +2721,21 @@ static int create_gang(struct intel_engine_cs *engine,
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
@@ -2760,8 +2762,10 @@ static int create_gang(struct intel_engine_cs *engine,
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
@@ -2779,7 +2783,7 @@ static int create_gang(struct intel_engine_cs *engine,
 	if (err)
 		goto err_rq;
 
-	i915_gem_object_put(obj);
+	i915_vma_put(vma);
 	intel_context_put(ce);
 
 	rq->client_link.next = &(*prev)->client_link;
@@ -2789,8 +2793,8 @@ static int create_gang(struct intel_engine_cs *engine,
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
@@ -2914,10 +2918,9 @@ create_gpr_user(struct intel_engine_cs *engine,
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
@@ -2984,10 +2987,9 @@ static struct i915_vma *create_global(struct intel_gt *gt, size_t sz)
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
@@ -3020,12 +3022,12 @@ create_gpr_client(struct intel_engine_cs *engine,
 
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
@@ -3058,8 +3060,10 @@ create_gpr_client(struct intel_engine_cs *engine,
 
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
@@ -3366,8 +3370,10 @@ static int smoke_submit(struct preempt_smoke *smoke,
 			return PTR_ERR(vma);
 
 		err = i915_vma_pin(vma, 0, 0, PIN_USER);
-		if (err)
+		if (err) {
+			i915_vma_put(vma);
 			return err;
+		}
 	}
 
 	ctx->sched.priority = prio;
@@ -3393,8 +3399,10 @@ static int smoke_submit(struct preempt_smoke *smoke,
 	i915_request_add(rq);
 
 unpin:
-	if (vma)
+	if (vma) {
 		i915_vma_unpin(vma);
+		i915_vma_put(vma);
+	}
 
 	return err;
 }
@@ -5433,14 +5441,13 @@ create_user_vma(struct i915_address_space *vm, unsigned long size)
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
index 8831ffee2061..2fa6cae9f374 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -55,14 +55,13 @@ static struct i915_vma *create_scratch(struct intel_gt *gt)
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
index 5049c3dd08a6..cce48e1aec7b 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -91,10 +91,9 @@ create_spin_counter(struct intel_engine_cs *engine,
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
@@ -104,7 +103,7 @@ create_spin_counter(struct intel_engine_cs *engine,
 
 	base = i915_gem_object_pin_map(obj, I915_MAP_WC);
 	if (IS_ERR(base)) {
-		i915_gem_object_put(obj);
+		i915_vma_put(vma);
 		return ERR_CAST(base);
 	}
 	cs = base;
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 32785463ec9e..f4bd737ed7a6 100644
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
index 861657897c0f..2d2719915b26 100644
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
index 0fb1df71c637..1193906804ca 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -636,8 +636,10 @@ static void release_shadow_batch_buffer(struct intel_vgpu_workload *workload)
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
index bca036ac6621..de48387dc409 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1479,6 +1479,8 @@ gt_drop_caches(struct intel_gt *gt, u64 val)
 		ret = intel_gt_pm_wait_for_idle(gt);
 		if (ret)
 			return ret;
+
+		i915_vma_clock_flush(&gt->vma_clock);
 	}
 
 	if (val & DROP_RESET_ACTIVE && intel_gt_terminally_wedged(gt))
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 34ee12f3f02d..456657ddae03 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1073,8 +1073,8 @@ static void i915_driver_release(struct drm_device *dev)
 
 	i915_gem_driver_release(dev_priv);
 
-	intel_memory_regions_driver_release(dev_priv);
 	i915_ggtt_driver_release(dev_priv);
+	intel_memory_regions_driver_release(dev_priv);
 
 	i915_driver_mmio_release(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 98f2c448cd92..6c7ff7d27184 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1766,8 +1766,7 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
 int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 			   unsigned long flags);
 #define I915_GEM_OBJECT_UNBIND_ACTIVE BIT(0)
-#define I915_GEM_OBJECT_UNBIND_BARRIER BIT(1)
-#define I915_GEM_OBJECT_UNBIND_TEST BIT(2)
+#define I915_GEM_OBJECT_UNBIND_TEST BIT(1)
 
 void i915_gem_runtime_suspend(struct drm_i915_private *dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 0cbcb9f54e7d..921bbd4a9265 100644
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
 
@@ -399,26 +376,14 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
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
@@ -473,12 +438,8 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
 
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
@@ -582,9 +543,8 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
 	intel_wakeref_t wakeref;
 	struct drm_mm_node node;
 	struct dma_fence *fence;
-	struct i915_vma *vma;
-	u64 remain, offset;
 	void __user *user_data;
+	u64 remain, offset;
 	int ret;
 
 	if (i915_gem_object_has_struct_page(obj)) {
@@ -603,21 +563,10 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
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
@@ -684,12 +633,8 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
 
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
@@ -985,22 +930,27 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
 
 	if (i915_vma_misplaced(vma, size, alignment, flags)) {
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
 
 		ret = i915_vma_unbind(vma);
 		if (ret)
-			return ERR_PTR(ret);
+			goto err_put;
 	}
 
 	ret = i915_vma_pin(vma, size, alignment, flags | PIN_GLOBAL);
 	if (ret)
-		return ERR_PTR(ret);
+		goto err_put;
 
 	if (vma->fence && !i915_gem_object_is_tiled(obj)) {
 		mutex_lock(&ggtt->vm.mutex);
@@ -1009,12 +959,16 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
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
@@ -1181,6 +1135,7 @@ void i915_gem_driver_unregister(struct drm_i915_private *i915)
 void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
 {
 	intel_wakeref_auto_fini(&dev_priv->ggtt.userfault_wakeref);
+	flush_work(&dev_priv->ggtt.vm.release.work);
 
 	i915_gem_suspend_late(dev_priv);
 	intel_gt_driver_remove(&dev_priv->gt);
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index f35712d04ba4..5896a7f1fc22 100644
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
index 9b30ddc49e4b..b504d823e693 100644
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
 	mutex_init(&vma->pages_mutex);
 	vma->vm = i915_vm_get(vm);
 	vma->ops = &vm->vma_ops;
-	vma->obj = obj;
+	vma->obj = i915_gem_object_get(obj);
 	vma->resv = obj->base.resv;
 	vma->size = obj->base.size;
 	vma->display_alignment = I915_GTT_MIN_ALIGNMENT;
@@ -196,8 +197,10 @@ vma_create(struct drm_i915_gem_object *obj,
 		 * and dispose of ours.
 		 */
 		cmp = i915_vma_compare(pos, vm, view);
-		if (cmp == 0) {
+		if (cmp == 0 && kref_get_unless_zero(&pos->ref)) {
 			spin_unlock(&obj->vma.lock);
+			i915_gem_object_put(obj);
+			i915_vm_put(vm);
 			i915_vma_free(vma);
 			return pos;
 		}
@@ -228,6 +231,8 @@ vma_create(struct drm_i915_gem_object *obj,
 err_unlock:
 	spin_unlock(&obj->vma.lock);
 err_vma:
+	i915_gem_object_put(obj);
+	i915_vm_put(vm);
 	i915_vma_free(vma);
 	return ERR_PTR(-E2BIG);
 }
@@ -265,8 +270,6 @@ vma_lookup(struct drm_i915_gem_object *obj,
  *
  * i915_vma_instance() looks up an existing VMA of the @obj in the @vm with
  * the same @view characteristics. If a match is not found, one is created.
- * Once created, the VMA is kept until either the object is freed, or the
- * address space is closed.
  *
  * Returns the vma, or an error pointer.
  */
@@ -282,6 +285,8 @@ i915_vma_instance(struct drm_i915_gem_object *obj,
 
 	spin_lock(&obj->vma.lock);
 	vma = vma_lookup(obj, vm, view);
+	if (vma)
+		vma = i915_vma_tryget(vma);
 	spin_unlock(&obj->vma.lock);
 
 	/* vma_create() will resolve the race if another creates the vma */
@@ -510,21 +515,20 @@ void i915_vma_unpin_iomap(struct i915_vma *vma)
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
@@ -911,11 +915,6 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 
 	/* No more allocations allowed now we hold vm->mutex */
 
-	if (unlikely(i915_vma_is_closed(vma))) {
-		err = -ENOENT;
-		goto err_unlock;
-	}
-
 	bound = atomic_read(&vma->flags);
 	if (unlikely(bound & I915_VMA_ERROR)) {
 		err = -ENOMEM;
@@ -1019,8 +1018,34 @@ int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags)
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
 {
+	return READ_ONCE(obj->base.handle_count);
+}
+
+void i915_vma_close(struct i915_vma *vma)
+{
+	struct i915_vma_clock *clock = &vma->vm->gt->vma_clock;
+
 	/*
 	 * We defer actually closing, unbinding and destroying the VMA until
 	 * the next idle point, or if the object is freed in the meantime. By
@@ -1033,106 +1058,102 @@ static void __vma_close(struct i915_vma *vma, struct intel_gt *gt)
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
+		schedule_work(&vm->release.work);
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
 
-	if (vma->obj) {
-		struct drm_i915_gem_object *obj = vma->obj;
-
-		spin_lock(&obj->vma.lock);
-		list_del(&vma->obj_link);
-		rb_erase(&vma->obj_node, &obj->vma.tree);
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
@@ -1164,7 +1185,9 @@ void i915_vma_revoke_mmap(struct i915_vma *vma)
 			    vma->size,
 			    1);
 
-	i915_vma_unset_userfault(vma);
+	if (i915_vma_unset_userfault(vma))
+		i915_vma_close(vma);
+
 	if (!--vma->obj->userfault_count)
 		list_del(&vma->obj->userfault_link);
 }
@@ -1354,6 +1377,23 @@ void i915_vma_make_purgeable(struct i915_vma *vma)
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
index d0d01f909548..5b578a40be9b 100644
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
 
@@ -352,8 +352,6 @@ i915_vma_unpin_fence(struct i915_vma *vma)
 		__i915_vma_unpin_fence(vma);
 }
 
-void i915_vma_parked(struct intel_gt *gt);
-
 #define for_each_until(cond) if (cond) break; else
 
 /**
@@ -384,4 +382,13 @@ static inline int i915_vma_sync(struct i915_vma *vma)
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
index 63831cdb7402..98574279c96e 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -277,6 +277,8 @@ struct i915_vma {
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
index 2e471500a646..70d4d1b98301 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -140,6 +140,21 @@ fake_dma_object(struct drm_i915_private *i915, u64 size)
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
@@ -319,22 +334,13 @@ static int lowlevel_hole(struct i915_address_space *vm,
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
@@ -342,13 +348,12 @@ static int fill_hole(struct i915_address_space *vm,
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
@@ -370,11 +375,11 @@ static int fill_hole(struct i915_address_space *vm,
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
@@ -384,21 +389,18 @@ static int fill_hole(struct i915_address_space *vm,
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
 
@@ -414,22 +416,18 @@ static int fill_hole(struct i915_address_space *vm,
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
@@ -450,22 +448,18 @@ static int fill_hole(struct i915_address_space *vm,
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
@@ -487,22 +481,18 @@ static int fill_hole(struct i915_address_space *vm,
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
@@ -523,9 +513,9 @@ static int fill_hole(struct i915_address_space *vm,
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
@@ -537,14 +527,14 @@ static int fill_hole(struct i915_address_space *vm,
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
 
@@ -565,24 +555,17 @@ static int walk_hole(struct i915_address_space *vm,
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
@@ -618,7 +601,7 @@ static int walk_hole(struct i915_address_space *vm,
 		}
 
 err_put:
-		i915_gem_object_put(obj);
+		i915_vma_put(vma);
 		if (err)
 			return err;
 
@@ -647,10 +630,9 @@ static int pot_hole(struct i915_address_space *vm,
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
@@ -669,7 +651,7 @@ static int pot_hole(struct i915_address_space *vm,
 				       addr,
 				       hole_start, hole_end,
 				       err);
-				goto err_obj;
+				goto err_vma;
 			}
 
 			if (!drm_mm_node_allocated(&vma->node) ||
@@ -679,7 +661,7 @@ static int pot_hole(struct i915_address_space *vm,
 				i915_vma_unpin(vma);
 				err = i915_vma_unbind(vma);
 				err = -EINVAL;
-				goto err_obj;
+				goto err_vma;
 			}
 
 			i915_vma_unpin(vma);
@@ -691,12 +673,12 @@ static int pot_hole(struct i915_address_space *vm,
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
 
@@ -714,7 +696,6 @@ static int drunk_hole(struct i915_address_space *vm,
 
 	/* Keep creating larger objects until one cannot fit into the hole */
 	for (size = 12; (hole_end - hole_start) >> size; size++) {
-		struct drm_i915_gem_object *obj;
 		unsigned int *order, count, n;
 		struct i915_vma *vma;
 		u64 hole_size;
@@ -745,18 +726,12 @@ static int drunk_hole(struct i915_address_space *vm,
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
@@ -769,7 +744,7 @@ static int drunk_hole(struct i915_address_space *vm,
 				       addr, BIT_ULL(size),
 				       hole_start, hole_end,
 				       err);
-				goto err_obj;
+				goto err_vma;
 			}
 
 			if (!drm_mm_node_allocated(&vma->node) ||
@@ -779,7 +754,7 @@ static int drunk_hole(struct i915_address_space *vm,
 				i915_vma_unpin(vma);
 				err = i915_vma_unbind(vma);
 				err = -EINVAL;
-				goto err_obj;
+				goto err_vma;
 			}
 
 			i915_vma_unpin(vma);
@@ -790,12 +765,12 @@ static int drunk_hole(struct i915_address_space *vm,
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
@@ -810,10 +785,9 @@ static int __shrink_hole(struct i915_address_space *vm,
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
 
@@ -823,19 +797,12 @@ static int __shrink_hole(struct i915_address_space *vm,
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
 
@@ -876,7 +843,7 @@ static int __shrink_hole(struct i915_address_space *vm,
 		}
 	}
 
-	close_object_list(&objects, vm);
+	close_vma_list(&vmas);
 	cleanup_freed_objects(vm->i915);
 	return err;
 }
@@ -908,8 +875,7 @@ static int shrink_boom(struct i915_address_space *vm,
 		       unsigned long end_time)
 {
 	unsigned int sizes[] = { SZ_2M, SZ_1G };
-	struct drm_i915_gem_object *purge;
-	struct drm_i915_gem_object *explode;
+	struct i915_vma *purge, *explode;
 	int err;
 	int i;
 
@@ -923,26 +889,19 @@ static int shrink_boom(struct i915_address_space *vm,
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
@@ -952,20 +911,14 @@ static int shrink_boom(struct i915_address_space *vm,
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
@@ -974,9 +927,9 @@ static int shrink_boom(struct i915_address_space *vm,
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
@@ -1283,9 +1236,9 @@ static int igt_mock_drunk(void *arg)
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
 
@@ -1298,7 +1251,7 @@ static int igt_gtt_reserve(void *arg)
 	for (total = 0;
 	     total + 2 * I915_GTT_PAGE_SIZE <= ggtt->vm.total;
 	     total += 2 * I915_GTT_PAGE_SIZE) {
-		struct i915_vma *vma;
+		struct drm_i915_gem_object *obj;
 
 		obj = i915_gem_object_create_internal(ggtt->vm.i915,
 						      2 * PAGE_SIZE);
@@ -1313,17 +1266,17 @@ static int igt_gtt_reserve(void *arg)
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
@@ -1350,7 +1303,7 @@ static int igt_gtt_reserve(void *arg)
 	for (total = I915_GTT_PAGE_SIZE;
 	     total + 2 * I915_GTT_PAGE_SIZE <= ggtt->vm.total;
 	     total += 2 * I915_GTT_PAGE_SIZE) {
-		struct i915_vma *vma;
+		struct drm_i915_gem_object *obj;
 
 		obj = i915_gem_object_create_internal(ggtt->vm.i915,
 						      2 * PAGE_SIZE);
@@ -1365,17 +1318,17 @@ static int igt_gtt_reserve(void *arg)
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
@@ -1399,16 +1352,9 @@ static int igt_gtt_reserve(void *arg)
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
@@ -1422,9 +1368,9 @@ static int igt_gtt_reserve(void *arg)
 
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
@@ -1446,17 +1392,14 @@ static int igt_gtt_reserve(void *arg)
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
@@ -1485,7 +1428,8 @@ static int igt_gtt_insert(void *arg)
 		},
 		{}
 	}, *ii;
-	LIST_HEAD(objects);
+	struct i915_vma *vma, *vn;
+	LIST_HEAD(vmas);
 	u64 total;
 	int err = -ENODEV;
 
@@ -1514,7 +1458,7 @@ static int igt_gtt_insert(void *arg)
 	for (total = 0;
 	     total + I915_GTT_PAGE_SIZE <= ggtt->vm.total;
 	     total += I915_GTT_PAGE_SIZE) {
-		struct i915_vma *vma;
+		struct drm_i915_gem_object *obj;
 
 		obj = i915_gem_object_create_internal(ggtt->vm.i915,
 						      I915_GTT_PAGE_SIZE);
@@ -1529,13 +1473,13 @@ static int igt_gtt_insert(void *arg)
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
@@ -1545,7 +1489,6 @@ static int igt_gtt_insert(void *arg)
 		mutex_unlock(&ggtt->vm.mutex);
 		if (err == -ENOSPC) {
 			/* maxed out the GGTT space */
-			i915_gem_object_put(obj);
 			break;
 		}
 		if (err) {
@@ -1559,15 +1502,7 @@ static int igt_gtt_insert(void *arg)
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
@@ -1578,16 +1513,9 @@ static int igt_gtt_insert(void *arg)
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
 
@@ -1599,7 +1527,7 @@ static int igt_gtt_insert(void *arg)
 
 		mutex_lock(&ggtt->vm.mutex);
 		err = i915_gem_gtt_insert(&ggtt->vm, &vma->node,
-					  obj->base.size, 0, obj->cache_level,
+					  vma->node.size, 0, vma->node.color,
 					  0, ggtt->vm.total,
 					  0);
 		mutex_unlock(&ggtt->vm.mutex);
@@ -1623,7 +1551,7 @@ static int igt_gtt_insert(void *arg)
 	for (total = 0;
 	     total + 2 * I915_GTT_PAGE_SIZE <= ggtt->vm.total;
 	     total += 2 * I915_GTT_PAGE_SIZE) {
-		struct i915_vma *vma;
+		struct drm_i915_gem_object *obj;
 
 		obj = i915_gem_object_create_internal(ggtt->vm.i915,
 						      2 * I915_GTT_PAGE_SIZE);
@@ -1638,13 +1566,13 @@ static int igt_gtt_insert(void *arg)
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
@@ -1663,10 +1591,8 @@ static int igt_gtt_insert(void *arg)
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
 
@@ -1853,6 +1779,7 @@ static int igt_cs_tlb(void *arg)
 	i915_gem_object_set_cache_coherency(out, I915_CACHING_CACHED);
 
 	vma = i915_vma_instance(out, vm, NULL);
+	i915_gem_object_put(out);
 	if (IS_ERR(vma)) {
 		err = PTR_ERR(vma);
 		goto out_put_batch;
@@ -1863,13 +1790,13 @@ static int igt_cs_tlb(void *arg)
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
@@ -1881,6 +1808,7 @@ static int igt_cs_tlb(void *arg)
 
 		while (!__igt_timeout(end_time, NULL)) {
 			struct i915_request *rq;
+			struct i915_vma *v;
 			u64 offset;
 
 			offset = igt_random_offset(&prng,
@@ -1893,22 +1821,22 @@ static int igt_cs_tlb(void *arg)
 
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
@@ -1916,7 +1844,8 @@ static int igt_cs_tlb(void *arg)
 				i915_request_put(rq);
 			}
 
-			vma->ops->clear_pages(vma);
+			v->ops->clear_pages(v);
+			i915_vma_put(v);
 
 			err = context_sync(ce);
 			if (err) {
@@ -1925,13 +1854,13 @@ static int igt_cs_tlb(void *arg)
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
 
@@ -1941,10 +1870,10 @@ static int igt_cs_tlb(void *arg)
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
@@ -1969,7 +1898,8 @@ static int igt_cs_tlb(void *arg)
 			}
 			end_spin(batch, count - 1);
 
-			vma->ops->clear_pages(vma);
+			v->ops->clear_pages(v);
+			i915_vma_put(v);
 
 			err = context_sync(ce);
 			if (err) {
@@ -1997,8 +1927,8 @@ static int igt_cs_tlb(void *arg)
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
index 92c628f18c60..61dcfa3654d6 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -620,8 +620,8 @@ static struct i915_vma *empty_batch(struct drm_i915_private *i915)
 
 	cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
 	if (IS_ERR(cmd)) {
-		err = PTR_ERR(cmd);
-		goto err;
+		i915_gem_object_put(obj);
+		return ERR_CAST(cmd);
 	}
 
 	*cmd = MI_BATCH_BUFFER_END;
@@ -632,10 +632,9 @@ static struct i915_vma *empty_batch(struct drm_i915_private *i915)
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
@@ -651,7 +650,7 @@ static struct i915_vma *empty_batch(struct drm_i915_private *i915)
 err_pin:
 	i915_vma_unpin(vma);
 err:
-	i915_gem_object_put(obj);
+	i915_vma_put(vma);
 	return ERR_PTR(err);
 }
 
@@ -771,6 +770,7 @@ static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
 		return ERR_CAST(obj);
 
 	vma = i915_vma_instance(obj, i915->gt.vm, NULL);
+	i915_gem_object_put(obj);
 	if (IS_ERR(vma)) {
 		err = PTR_ERR(vma);
 		goto err;
@@ -807,7 +807,7 @@ static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
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
index e35ba5f9e73f..eaeb2ab506e3 100644
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
index 6e80d99048e4..ecc4973b80eb 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -343,7 +343,7 @@ static int igt_gpu_write(struct i915_gem_context *ctx,
 
 	err = i915_vma_pin(vma, 0, 0, PIN_USER);
 	if (err)
-		goto out_free;
+		goto out_vma;
 
 	i = 0;
 	engines = i915_gem_context_lock_engines(ctx);
@@ -366,6 +366,9 @@ static int igt_gpu_write(struct i915_gem_context *ctx,
 	} while (!__igt_timeout(end_time, NULL));
 	i915_gem_context_unlock_engines(ctx);
 
+	i915_vma_unpin(vma);
+out_vma:
+	i915_vma_put(vma);
 out_free:
 	kfree(order);
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
index edc5e3dda8ca..9a6e26cada6d 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
@@ -128,5 +128,6 @@ void mock_init_ggtt(struct drm_i915_private *i915, struct i915_ggtt *ggtt)
 
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
