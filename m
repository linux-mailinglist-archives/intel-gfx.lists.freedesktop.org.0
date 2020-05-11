Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5DC1CD4BC
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:20:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2C176E408;
	Mon, 11 May 2020 09:20:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F41E96E408
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 09:20:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21157723-1500050 
 for multiple; Mon, 11 May 2020 10:20:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2020 10:20:25 +0100
Message-Id: <20200511092025.18413-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Restore pristine per-device user
 messages
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

We were using dev_*() to avoid having the drm subsystem impose it's
non-conventional and completely false '[drm]' tagging. Undo the damage.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 29 +++++++--------
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  4 +--
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  4 +--
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  7 ++--
 drivers/gpu/drm/i915/gt/intel_rc6.c           | 11 +++---
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         | 21 +++++------
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 35 ++++++++-----------
 drivers/gpu/drm/i915/gt/intel_rps.c           |  5 +--
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  3 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         | 32 +++++++++--------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      | 26 +++++++++-----
 13 files changed, 89 insertions(+), 92 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 98b326a1568d..dcc2760be062 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -576,7 +576,7 @@ static int init_status_page(struct intel_engine_cs *engine)
 	 */
 	obj = i915_gem_object_create_internal(engine->i915, PAGE_SIZE);
 	if (IS_ERR(obj)) {
-		drm_err(&engine->i915->drm,
+		dev_err(engine->i915->drm.dev,
 			"Failed to allocate status page\n");
 		return PTR_ERR(obj);
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 66165b10256e..bc9b451a78b9 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -786,13 +786,13 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 	else
 		ggtt->gsm = ioremap_wc(phys_addr, size);
 	if (!ggtt->gsm) {
-		drm_err(&i915->drm, "Failed to map the ggtt page table\n");
+		dev_err(i915->drm.dev, "Failed to map the ggtt page table\n");
 		return -ENOMEM;
 	}
 
 	ret = setup_scratch_page(&ggtt->vm, GFP_DMA32);
 	if (ret) {
-		drm_err(&i915->drm, "Scratch setup failed\n");
+		dev_err(i915->drm.dev, "Scratch setup failed\n");
 		/* iounmap will also get called at remove, but meh */
 		iounmap(ggtt->gsm);
 		return ret;
@@ -991,7 +991,7 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 	 * just a coarse sanity check.
 	 */
 	if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > (512<<20)) {
-		drm_err(&i915->drm, "Unknown GMADR size (%pa)\n",
+		dev_err(i915->drm.dev, "Unknown GMADR size (%pa)\n",
 			&ggtt->mappable_end);
 		return -ENXIO;
 	}
@@ -1042,7 +1042,7 @@ static int i915_gmch_probe(struct i915_ggtt *ggtt)
 
 	ret = intel_gmch_probe(i915->bridge_dev, i915->drm.pdev, NULL);
 	if (!ret) {
-		drm_err(&i915->drm, "failed to set up gmch\n");
+		dev_err(i915->drm.dev, "failed to set up GMCH\n");
 		return -EIO;
 	}
 
@@ -1065,7 +1065,7 @@ static int i915_gmch_probe(struct i915_ggtt *ggtt)
 	ggtt->vm.vma_ops.clear_pages = clear_pages;
 
 	if (unlikely(ggtt->do_idle_maps))
-		drm_notice(&i915->drm,
+		dev_notice(i915->drm.dev,
 			   "Applying Ironlake quirks for intel_iommu\n");
 
 	return 0;
@@ -1090,9 +1090,9 @@ static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
 		return ret;
 
 	if ((ggtt->vm.total - 1) >> 32) {
-		drm_err(&i915->drm,
-			"We never expected a Global GTT with more than 32bits"
-			" of address space! Found %lldM!\n",
+		dev_warn(i915->drm.dev,
+			 "We never expected a Global GTT with more than 32bits"
+			 " of address space! Found %lldM!\n",
 			ggtt->vm.total >> 20);
 		ggtt->vm.total = 1ULL << 32;
 		ggtt->mappable_end =
@@ -1100,10 +1100,10 @@ static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
 	}
 
 	if (ggtt->mappable_end > ggtt->vm.total) {
-		drm_err(&i915->drm,
-			"mappable aperture extends past end of GGTT,"
-			" aperture=%pa, total=%llx\n",
-			&ggtt->mappable_end, ggtt->vm.total);
+		dev_warn(i915->drm.dev,
+			 "mappable aperture extends past end of GGTT,"
+			 " aperture=%pa, total=%llx\n",
+			 &ggtt->mappable_end, ggtt->vm.total);
 		ggtt->mappable_end = ggtt->vm.total;
 	}
 
@@ -1130,7 +1130,7 @@ int i915_ggtt_probe_hw(struct drm_i915_private *i915)
 		return ret;
 
 	if (intel_vtd_active())
-		drm_info(&i915->drm, "VT-d active for gfx access\n");
+		dev_info(i915->drm.dev, "VT-d active for gfx access\n");
 
 	return 0;
 }
@@ -1460,9 +1460,6 @@ i915_get_ggtt_vma_pages(struct i915_vma *vma)
 	if (IS_ERR(vma->pages)) {
 		ret = PTR_ERR(vma->pages);
 		vma->pages = NULL;
-		drm_err(&vma->vm->i915->drm,
-			"Failed to get pages for VMA view type %u (%d)!\n",
-			vma->ggtt_view.type, ret);
 	}
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 7fb36b12fe7a..f481bbb9e5b1 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -692,8 +692,8 @@ static void detect_bit_6_swizzle(struct i915_ggtt *ggtt)
 		}
 
 		if (dcc == 0xffffffff) {
-			drm_err(&i915->drm, "Couldn't read from MCHBAR.  "
-				  "Disabling tiling.\n");
+			dev_err(i915->drm.dev,
+				"Could not read MCHBAR, disabling tiling.\n");
 			swizzle_x = I915_BIT_6_SWIZZLE_UNKNOWN;
 			swizzle_y = I915_BIT_6_SWIZZLE_UNKNOWN;
 		}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index e59776485457..2aa2eeecd736 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -214,7 +214,7 @@ int intel_gt_resume(struct intel_gt *gt)
 	/* Only when the HW is re-initialised, can we replay the requests */
 	err = intel_gt_init_hw(gt);
 	if (err) {
-		drm_err(&gt->i915->drm,
+		dev_err(gt->i915->drm.dev,
 			"Failed to initialize GPU, declaring it wedged!\n");
 		goto err_wedged;
 	}
@@ -230,7 +230,7 @@ int intel_gt_resume(struct intel_gt *gt)
 
 		intel_engine_pm_put(engine);
 		if (err) {
-			drm_err(&gt->i915->drm,
+			dev_err(gt->i915->drm.dev,
 				"Failed to restart %s (%d)\n",
 				engine->name, err);
 			goto err_wedged;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 8e254f639751..97e181e25503 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3259,7 +3259,7 @@ check_redzone(const void *vaddr, const struct intel_engine_cs *engine)
 	vaddr += engine->context_size;
 
 	if (memchr_inv(vaddr, CONTEXT_REDZONE, I915_GTT_PAGE_SIZE))
-		drm_err_once(&engine->i915->drm,
+		dev_err_once(engine->i915->drm.dev,
 			     "%s context redzone overwritten!\n",
 			     engine->name);
 }
@@ -3946,7 +3946,7 @@ static void enable_error_interrupt(struct intel_engine_cs *engine)
 
 	status = ENGINE_READ(engine, RING_ESR);
 	if (unlikely(status)) {
-		drm_err(&engine->i915->drm,
+		dev_err(engine->i915->drm.dev,
 			"engine '%s' resumed still in error: %08x\n",
 			engine->name, status);
 		__intel_gt_reset(engine->gt, engine->mask);
@@ -5015,7 +5015,8 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 		 * because we only expect rare glitches but nothing
 		 * critical to prevent us from using GPU
 		 */
-		drm_err(&i915->drm, "WA batch buffer initialization failed\n");
+		dev_warn(i915->drm.dev,
+			 "WA batch buffer initialization failed\n");
 
 	if (HAS_LOGICAL_RING_ELSQ(i915)) {
 		execlists->submit_reg = uncore->regs +
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index ab675d35030d..9a428e91541b 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -248,9 +248,10 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
 			GEN6_DECODE_RC6_VID(rc6vids & 0xff), 450);
 		rc6vids &= 0xffff00;
 		rc6vids |= GEN6_ENCODE_RC6_VID(450);
-		ret = sandybridge_pcode_write(i915, GEN6_PCODE_WRITE_RC6VIDS, rc6vids);
-		if (ret)
-			drm_err(&i915->drm,
+		if (sandybridge_pcode_write(i915,
+					    GEN6_PCODE_WRITE_RC6VIDS,
+					    rc6vids))
+			dev_warn(i915->drm.dev,
 				"Couldn't fix incorrect rc6 voltage\n");
 	}
 }
@@ -462,7 +463,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
 		return false;
 
 	if (IS_GEN9_LP(i915) && !bxt_check_bios_rc6_setup(rc6)) {
-		drm_notice(&i915->drm,
+		dev_notice(i915->drm.dev,
 			   "RC6 and powersaving disabled by BIOS\n");
 		return false;
 	}
@@ -494,7 +495,7 @@ static bool pctx_corrupted(struct intel_rc6 *rc6)
 	if (intel_uncore_read(rc6_to_uncore(rc6), GEN8_RC6_CTX_INFO))
 		return false;
 
-	drm_notice(&i915->drm,
+	dev_notice(i915->drm.dev,
 		   "RC6 context corruption, disabling runtime power management\n");
 	return true;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 708cb7808865..83c3670adfdb 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -102,7 +102,7 @@ static int render_state_setup(struct intel_renderstate *so,
 	}
 
 	if (rodata->reloc[reloc_index] != -1) {
-		drm_err(&i915->drm, "only %d relocs resolved\n", reloc_index);
+		drm_dbg(&i915->drm, "only %d relocs resolved\n", reloc_index);
 		goto err;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 39070b514e65..812fa94a266e 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -109,7 +109,7 @@ static bool mark_guilty(struct i915_request *rq)
 		goto out;
 	}
 
-	drm_notice(&ctx->i915->drm,
+	dev_notice(ctx->i915->drm.dev,
 		   "%s context reset due to GPU hang\n",
 		   ctx->name);
 
@@ -520,7 +520,7 @@ static int gen8_engine_reset_prepare(struct intel_engine_cs *engine)
 	ret = __intel_wait_for_register_fw(uncore, reg, mask, ack,
 					   700, 0, NULL);
 	if (ret)
-		drm_err(&engine->i915->drm,
+		dev_err(engine->i915->drm.dev,
 			"%s reset request timed out: {request: %08x, RESET_CTL: %08x}\n",
 			engine->name, request,
 			intel_uncore_read_fw(uncore, reg));
@@ -1031,25 +1031,20 @@ void intel_gt_reset(struct intel_gt *gt,
 		goto unlock;
 
 	if (reason)
-		drm_notice(&gt->i915->drm,
+		dev_notice(gt->i915->drm.dev,
 			   "Resetting chip for %s\n", reason);
 	atomic_inc(&gt->i915->gpu_error.reset_count);
 
 	awake = reset_prepare(gt);
 
-	if (!intel_has_gpu_reset(gt)) {
-		if (i915_modparams.reset)
-			drm_err(&gt->i915->drm, "GPU reset not supported\n");
-		else
-			drm_dbg(&gt->i915->drm, "GPU reset disabled\n");
+	if (!intel_has_gpu_reset(gt))
 		goto error;
-	}
 
 	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
 		intel_runtime_pm_disable_interrupts(gt->i915);
 
 	if (do_reset(gt, stalled_mask)) {
-		drm_err(&gt->i915->drm, "Failed to reset chip\n");
+		dev_err(gt->i915->drm.dev, "Failed to reset chip\n");
 		goto taint;
 	}
 
@@ -1068,7 +1063,7 @@ void intel_gt_reset(struct intel_gt *gt,
 	 */
 	ret = intel_gt_init_hw(gt);
 	if (ret) {
-		drm_err(&gt->i915->drm,
+		dev_err(gt->i915->drm.dev,
 			"Failed to initialise HW following reset (%d)\n",
 			ret);
 		goto taint;
@@ -1136,7 +1131,7 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
 	reset_prepare_engine(engine);
 
 	if (msg)
-		drm_notice(&engine->i915->drm,
+		dev_notice(engine->i915->drm.dev,
 			   "Resetting %s for %s\n", engine->name, msg);
 	atomic_inc(&engine->i915->gpu_error.reset_engine_count[engine->uabi_class]);
 
@@ -1381,7 +1376,7 @@ static void intel_wedge_me(struct work_struct *work)
 {
 	struct intel_wedge_me *w = container_of(work, typeof(*w), work.work);
 
-	drm_err(&w->gt->i915->drm,
+	dev_err(w->gt->i915->drm.dev,
 		"%s timed out, cancelling all in-flight rendering.\n",
 		w->name);
 	intel_gt_set_wedged(w->gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index ca7286e58409..ac0228979281 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -578,7 +578,7 @@ static void flush_cs_tlb(struct intel_engine_cs *engine)
 				    RING_INSTPM(engine->mmio_base),
 				    INSTPM_SYNC_FLUSH, 0,
 				    1000))
-		drm_err(&dev_priv->drm,
+		dev_err(dev_priv->drm.dev,
 			"%s: wait for SyncFlush to complete for TLB invalidation timed out\n",
 			engine->name);
 }
@@ -603,7 +603,7 @@ static bool stop_ring(struct intel_engine_cs *engine)
 					    MODE_IDLE,
 					    MODE_IDLE,
 					    1000)) {
-			drm_err(&dev_priv->drm,
+			dev_err(dev_priv->drm.dev,
 				"%s : timed out trying to stop ring\n",
 				engine->name);
 
@@ -664,16 +664,8 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	/* WaClearRingBufHeadRegAtInit:ctg,elk */
 	if (!stop_ring(engine)) {
 		/* G45 ring initialization often fails to reset head to zero */
-		drm_dbg(&dev_priv->drm, "%s head not reset to zero "
-			"ctl %08x head %08x tail %08x start %08x\n",
-			engine->name,
-			ENGINE_READ(engine, RING_CTL),
-			ENGINE_READ(engine, RING_HEAD),
-			ENGINE_READ(engine, RING_TAIL),
-			ENGINE_READ(engine, RING_START));
-
 		if (!stop_ring(engine)) {
-			drm_err(&dev_priv->drm,
+			dev_err(dev_priv->drm.dev,
 				"failed to set %s head to zero "
 				"ctl %08x head %08x tail %08x start %08x\n",
 				engine->name,
@@ -723,15 +715,16 @@ static int xcs_resume(struct intel_engine_cs *engine)
 				    RING_CTL(engine->mmio_base),
 				    RING_VALID, RING_VALID,
 				    50)) {
-		drm_err(&dev_priv->drm, "%s initialization failed "
-			  "ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
-			  engine->name,
-			  ENGINE_READ(engine, RING_CTL),
-			  ENGINE_READ(engine, RING_CTL) & RING_VALID,
-			  ENGINE_READ(engine, RING_HEAD), ring->head,
-			  ENGINE_READ(engine, RING_TAIL), ring->tail,
-			  ENGINE_READ(engine, RING_START),
-			  i915_ggtt_offset(ring->vma));
+		dev_err(dev_priv->drm.dev,
+			"%s initialization failed "
+			"ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
+			engine->name,
+			ENGINE_READ(engine, RING_CTL),
+			ENGINE_READ(engine, RING_CTL) & RING_VALID,
+			ENGINE_READ(engine, RING_HEAD), ring->head,
+			ENGINE_READ(engine, RING_TAIL), ring->tail,
+			ENGINE_READ(engine, RING_START),
+			i915_ggtt_offset(ring->vma));
 		ret = -EIO;
 		goto out;
 	}
@@ -1689,7 +1682,7 @@ static void gen6_bsd_submit_request(struct i915_request *request)
 					 GEN6_BSD_SLEEP_INDICATOR,
 					 0,
 					 1000, 0, NULL))
-		drm_err(&uncore->i915->drm,
+		dev_err(uncore->i915->drm.dev,
 			"timed out waiting for the BSD ring to wake up\n");
 
 	/* Now that the ring is fully powered up, update the tail */
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 2f59fc6df3c2..d933c964725d 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -543,7 +543,7 @@ static bool gen5_rps_enable(struct intel_rps *rps)
 
 	if (wait_for_atomic((intel_uncore_read(uncore, MEMSWCTL) &
 			     MEMCTL_CMD_STS) == 0, 10))
-		drm_err(&uncore->i915->drm,
+		dev_err(uncore->i915->drm.dev,
 			"stuck trying to change perf mode\n");
 	mdelay(1);
 
@@ -1005,7 +1005,8 @@ static bool rps_reset(struct intel_rps *rps)
 	rps->last_freq = -1;
 
 	if (rps_set(rps, rps->min_freq, true)) {
-		drm_err(&i915->drm, "Failed to reset RPS to initial values\n");
+		dev_err(i915->drm.dev,
+			"Failed to reset RPS to initial values\n");
 		return false;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index aa90e6b7a118..720cf91feca8 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -835,11 +835,10 @@ wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	slice = fls(sseu->slice_mask) - 1;
 	subslice = fls(l3_en & intel_sseu_get_subslices(sseu, slice));
 	if (!subslice) {
-		drm_warn(&i915->drm,
+		dev_warn(i915->drm.dev,
 			 "No common index found between subslice mask %x and L3 bank mask %x!\n",
 			 intel_sseu_get_subslices(sseu, slice), l3_en);
 		subslice = fls(l3_en);
-		drm_WARN_ON(&i915->drm, !subslice);
 	}
 	subslice--;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index f518fe05c6f9..0306069ef198 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -63,27 +63,27 @@ static void __confirm_options(struct intel_uc *uc)
 	}
 
 	if (!intel_uc_supports_guc(uc))
-		drm_info(&i915->drm,
-			 "Incompatible option enable_guc=%d - %s\n",
-			 i915_modparams.enable_guc, "GuC is not supported!");
+		dev_notice(i915->drm.dev,
+			   "Incompatible option enable_guc=%d - %s\n",
+			   i915_modparams.enable_guc, "GuC is not supported!");
 
 	if (i915_modparams.enable_guc & ENABLE_GUC_LOAD_HUC &&
 	    !intel_uc_supports_huc(uc))
-		drm_info(&i915->drm,
-			 "Incompatible option enable_guc=%d - %s\n",
-			 i915_modparams.enable_guc, "HuC is not supported!");
+		dev_notice(i915->drm.dev,
+			   "Incompatible option enable_guc=%d - %s\n",
+			   i915_modparams.enable_guc, "HuC is not supported!");
 
 	if (i915_modparams.enable_guc & ENABLE_GUC_SUBMISSION &&
 	    !intel_uc_supports_guc_submission(uc))
-		drm_info(&i915->drm,
-			 "Incompatible option enable_guc=%d - %s\n",
-			 i915_modparams.enable_guc, "GuC submission is N/A");
+		dev_notice(i915->drm.dev,
+			   "Incompatible option enable_guc=%d - %s\n",
+			   i915_modparams.enable_guc, "GuC submission is N/A");
 
 	if (i915_modparams.enable_guc & ~(ENABLE_GUC_SUBMISSION |
 					  ENABLE_GUC_LOAD_HUC))
-		drm_info(&i915->drm,
-			 "Incompatible option enable_guc=%d - %s\n",
-			 i915_modparams.enable_guc, "undocumented flag");
+		dev_notice(i915->drm.dev,
+			   "Incompatible option enable_guc=%d - %s\n",
+			   i915_modparams.enable_guc, "undocumented flag");
 }
 
 void intel_uc_init_early(struct intel_uc *uc)
@@ -480,14 +480,16 @@ static int __uc_init_hw(struct intel_uc *uc)
 	if (intel_uc_uses_guc_submission(uc))
 		intel_guc_submission_enable(guc);
 
-	drm_info(&i915->drm, "%s firmware %s version %u.%u %s:%s\n",
+	dev_info(i915->drm.dev,
+		 "%s firmware %s version %u.%u %s:%s\n",
 		 intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_GUC), guc->fw.path,
 		 guc->fw.major_ver_found, guc->fw.minor_ver_found,
 		 "submission",
 		 enableddisabled(intel_uc_uses_guc_submission(uc)));
 
 	if (intel_uc_uses_huc(uc)) {
-		drm_info(&i915->drm, "%s firmware %s version %u.%u %s:%s\n",
+		dev_info(i915->drm.dev,
+			 "%s firmware %s version %u.%u %s:%s\n",
 			 intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_HUC),
 			 huc->fw.path,
 			 huc->fw.major_ver_found, huc->fw.minor_ver_found,
@@ -508,7 +510,7 @@ static int __uc_init_hw(struct intel_uc *uc)
 	__uc_sanitize(uc);
 
 	if (!ret) {
-		drm_notice(&i915->drm, "GuC is uninitialized\n");
+		dev_notice(i915->drm.dev, "GuC is uninitialized\n");
 		/* We want to run without GuC submission */
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index e1caae93996d..78e934ac6983 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -296,7 +296,8 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 
 	/* Check the size of the blob before examining buffer contents */
 	if (unlikely(fw->size < sizeof(struct uc_css_header))) {
-		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu < %zu\n",
+		dev_warn(i915->drm.dev,
+			 "%s firmware %s: invalid size: %zu < %zu\n",
 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			 fw->size, sizeof(struct uc_css_header));
 		err = -ENODATA;
@@ -309,7 +310,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 	size = (css->header_size_dw - css->key_size_dw - css->modulus_size_dw -
 		css->exponent_size_dw) * sizeof(u32);
 	if (unlikely(size != sizeof(struct uc_css_header))) {
-		drm_warn(&i915->drm,
+		dev_warn(i915->drm.dev,
 			 "%s firmware %s: unexpected header size: %zu != %zu\n",
 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			 fw->size, sizeof(struct uc_css_header));
@@ -322,7 +323,8 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 
 	/* now RSA */
 	if (unlikely(css->key_size_dw != UOS_RSA_SCRATCH_COUNT)) {
-		drm_warn(&i915->drm, "%s firmware %s: unexpected key size: %u != %u\n",
+		dev_warn(i915->drm.dev,
+			 "%s firmware %s: unexpected key size: %u != %u\n",
 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			 css->key_size_dw, UOS_RSA_SCRATCH_COUNT);
 		err = -EPROTO;
@@ -333,7 +335,8 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 	/* At least, it should have header, uCode and RSA. Size of all three. */
 	size = sizeof(struct uc_css_header) + uc_fw->ucode_size + uc_fw->rsa_size;
 	if (unlikely(fw->size < size)) {
-		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu < %zu\n",
+		dev_warn(i915->drm.dev,
+			 "%s firmware %s: invalid size: %zu < %zu\n",
 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			 fw->size, size);
 		err = -ENOEXEC;
@@ -343,7 +346,8 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 	/* Sanity check whether this fw is not larger than whole WOPCM memory */
 	size = __intel_uc_fw_get_upload_size(uc_fw);
 	if (unlikely(size >= i915->wopcm.size)) {
-		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu > %zu\n",
+		dev_warn(i915->drm.dev,
+			 "%s firmware %s: invalid size: %zu > %zu\n",
 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			 size, (size_t)i915->wopcm.size);
 		err = -E2BIG;
@@ -358,7 +362,8 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 
 	if (uc_fw->major_ver_found != uc_fw->major_ver_wanted ||
 	    uc_fw->minor_ver_found < uc_fw->minor_ver_wanted) {
-		drm_notice(&i915->drm, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
+		dev_notice(i915->drm.dev,
+			   "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
 			   intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			   uc_fw->major_ver_found, uc_fw->minor_ver_found,
 			   uc_fw->major_ver_wanted, uc_fw->minor_ver_wanted);
@@ -386,9 +391,11 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 				  INTEL_UC_FIRMWARE_MISSING :
 				  INTEL_UC_FIRMWARE_ERROR);
 
-	drm_notice(&i915->drm, "%s firmware %s: fetch failed with error %d\n",
+	dev_notice(i915->drm.dev,
+		   "%s firmware %s: fetch failed with error %d\n",
 		   intel_uc_fw_type_repr(uc_fw->type), uc_fw->path, err);
-	drm_info(&i915->drm, "%s firmware(s) can be downloaded from %s\n",
+	dev_info(i915->drm.dev,
+		 "%s firmware(s) can be downloaded from %s\n",
 		 intel_uc_fw_type_repr(uc_fw->type), INTEL_UC_FIRMWARE_URL);
 
 	release_firmware(fw);		/* OK even if fw is NULL */
@@ -473,7 +480,8 @@ static int uc_fw_xfer(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 	/* Wait for DMA to finish */
 	ret = intel_wait_for_register_fw(uncore, DMA_CTRL, START_DMA, 0, 100);
 	if (ret)
-		drm_err(&gt->i915->drm, "DMA for %s fw failed, DMA_CTRL=%u\n",
+		dev_err(gt->i915->drm.dev,
+			"DMA for %s fw failed, DMA_CTRL=%u\n",
 			intel_uc_fw_type_repr(uc_fw->type),
 			intel_uncore_read_fw(uncore, DMA_CTRL));
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
