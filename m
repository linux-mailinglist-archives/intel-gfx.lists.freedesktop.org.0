Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D69471B27
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Dec 2021 16:12:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EEFC10F58A;
	Sun, 12 Dec 2021 15:12:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 310AC10F58A;
 Sun, 12 Dec 2021 15:12:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10195"; a="262728357"
X-IronPort-AV: E=Sophos;i="5.88,200,1635231600"; d="scan'208";a="262728357"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2021 07:12:21 -0800
X-IronPort-AV: E=Sophos;i="5.88,200,1635231600"; d="scan'208";a="681342356"
Received: from nipunpan-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.53.91])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2021 07:12:18 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Sun, 12 Dec 2021 17:12:12 +0200
Message-Id: <20211212151213.118070-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 05/12] drm/i915/gem: Use to_gt() helper
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michał Winiarski <michal.winiarski@intel.com>

Use to_gt() helper consistently throughout the codebase.
Pure mechanical s/i915->gt/to_gt(i915). No functional changes.

Signed-off-by: Michał Winiarski <michal.winiarski@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 22 ++++++++--------
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  4 +--
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      |  6 +++--
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |  6 ++---
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_throttle.c  |  3 ++-
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  | 12 ++++-----
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |  2 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  4 +--
 .../i915/gem/selftests/i915_gem_client_blt.c  |  2 +-
 .../drm/i915/gem/selftests/i915_gem_context.c | 10 +++----
 .../drm/i915/gem/selftests/i915_gem_migrate.c |  2 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 26 ++++++++++---------
 15 files changed, 55 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 347dab952e90..cad3f0b2be9e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -237,7 +237,7 @@ static int proto_context_set_persistence(struct drm_i915_private *i915,
 		 * colateral damage, and we should not pretend we can by
 		 * exposing the interface.
 		 */
-		if (!intel_has_reset_engine(&i915->gt))
+		if (!intel_has_reset_engine(to_gt(i915)))
 			return -ENODEV;
 
 		pc->user_flags &= ~BIT(UCONTEXT_PERSISTENCE);
@@ -254,7 +254,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
 
 	if (!protected) {
 		pc->uses_protected_content = false;
-	} else if (!intel_pxp_is_enabled(&i915->gt.pxp)) {
+	} else if (!intel_pxp_is_enabled(&to_gt(i915)->pxp)) {
 		ret = -ENODEV;
 	} else if ((pc->user_flags & BIT(UCONTEXT_RECOVERABLE)) ||
 		   !(pc->user_flags & BIT(UCONTEXT_BANNABLE))) {
@@ -268,8 +268,8 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
 		 */
 		pc->pxp_wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
-		if (!intel_pxp_is_active(&i915->gt.pxp))
-			ret = intel_pxp_start(&i915->gt.pxp);
+		if (!intel_pxp_is_active(&to_gt(i915)->pxp))
+			ret = intel_pxp_start(&to_gt(i915)->pxp);
 	}
 
 	return ret;
@@ -571,7 +571,7 @@ set_proto_ctx_engines_parallel_submit(struct i915_user_extension __user *base,
 	intel_engine_mask_t prev_mask;
 
 	/* FIXME: This is NIY for execlists */
-	if (!(intel_uc_uses_guc_submission(&i915->gt.uc)))
+	if (!(intel_uc_uses_guc_submission(&to_gt(i915)->uc)))
 		return -ENODEV;
 
 	if (get_user(slot, &ext->engine_index))
@@ -833,7 +833,7 @@ static int set_proto_ctx_sseu(struct drm_i915_file_private *fpriv,
 		sseu = &pc->legacy_rcs_sseu;
 	}
 
-	ret = i915_gem_user_to_context_sseu(&i915->gt, &user_sseu, sseu);
+	ret = i915_gem_user_to_context_sseu(to_gt(i915), &user_sseu, sseu);
 	if (ret)
 		return ret;
 
@@ -1044,7 +1044,7 @@ static struct i915_gem_engines *alloc_engines(unsigned int count)
 static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx,
 						struct intel_sseu rcs_sseu)
 {
-	const struct intel_gt *gt = &ctx->i915->gt;
+	const struct intel_gt *gt = to_gt(ctx->i915);
 	struct intel_engine_cs *engine;
 	struct i915_gem_engines *e, *err;
 	enum intel_engine_id id;
@@ -1521,7 +1521,7 @@ static int __context_set_persistence(struct i915_gem_context *ctx, bool state)
 		 * colateral damage, and we should not pretend we can by
 		 * exposing the interface.
 		 */
-		if (!intel_has_reset_engine(&ctx->i915->gt))
+		if (!intel_has_reset_engine(to_gt(ctx->i915)))
 			return -ENODEV;
 
 		i915_gem_context_clear_persistence(ctx);
@@ -1559,7 +1559,7 @@ i915_gem_create_context(struct drm_i915_private *i915,
 	} else if (HAS_FULL_PPGTT(i915)) {
 		struct i915_ppgtt *ppgtt;
 
-		ppgtt = i915_ppgtt_create(&i915->gt, 0);
+		ppgtt = i915_ppgtt_create(to_gt(i915), 0);
 		if (IS_ERR(ppgtt)) {
 			drm_dbg(&i915->drm, "PPGTT setup failed (%ld)\n",
 				PTR_ERR(ppgtt));
@@ -1742,7 +1742,7 @@ int i915_gem_vm_create_ioctl(struct drm_device *dev, void *data,
 	if (args->flags)
 		return -EINVAL;
 
-	ppgtt = i915_ppgtt_create(&i915->gt, 0);
+	ppgtt = i915_ppgtt_create(to_gt(i915), 0);
 	if (IS_ERR(ppgtt))
 		return PTR_ERR(ppgtt);
 
@@ -2194,7 +2194,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 	if (args->flags & I915_CONTEXT_CREATE_FLAGS_UNKNOWN)
 		return -EINVAL;
 
-	ret = intel_gt_terminally_wedged(&i915->gt);
+	ret = intel_gt_terminally_wedged(to_gt(i915));
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 8955d6abcef1..9402d4bf4ffc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -379,7 +379,7 @@ static int ext_set_protected(struct i915_user_extension __user *base, void *data
 	if (ext.flags)
 		return -EINVAL;
 
-	if (!intel_pxp_is_enabled(&ext_data->i915->gt.pxp))
+	if (!intel_pxp_is_enabled(&to_gt(ext_data->i915)->pxp))
 		return -ENODEV;
 
 	ext_data->flags |= I915_BO_PROTECTED;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 2213f7b613da..ec7c4a29a720 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2372,9 +2372,9 @@ static int eb_submit(struct i915_execbuffer *eb)
 	return err;
 }
 
-static int num_vcs_engines(const struct drm_i915_private *i915)
+static int num_vcs_engines(struct drm_i915_private *i915)
 {
-	return hweight_long(VDBOX_MASK(&i915->gt));
+	return hweight_long(VDBOX_MASK(to_gt(i915)));
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 39bb15eafc07..1ca5c062974e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -646,7 +646,7 @@ mmap_offset_attach(struct drm_i915_gem_object *obj,
 		goto insert;
 
 	/* Attempt to reap some mmap space from dead objects */
-	err = intel_gt_retire_requests_timeout(&i915->gt, MAX_SCHEDULE_TIMEOUT,
+	err = intel_gt_retire_requests_timeout(to_gt(i915), MAX_SCHEDULE_TIMEOUT,
 					       NULL);
 	if (err)
 		goto err;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 7986612f48fa..ca6faffcc496 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -19,6 +19,7 @@
 static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
 {
 	struct address_space *mapping = obj->base.filp->f_mapping;
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct scatterlist *sg;
 	struct sg_table *st;
 	dma_addr_t dma;
@@ -73,7 +74,7 @@ static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
 		dst += PAGE_SIZE;
 	}
 
-	intel_gt_chipset_flush(&to_i915(obj->base.dev)->gt);
+	intel_gt_chipset_flush(to_gt(i915));
 
 	/* We're no longer struct page backed */
 	obj->mem_flags &= ~I915_BO_FLAG_STRUCT_PAGE;
@@ -140,6 +141,7 @@ int i915_gem_object_pwrite_phys(struct drm_i915_gem_object *obj,
 {
 	void *vaddr = sg_page(obj->mm.pages->sgl) + args->offset;
 	char __user *user_data = u64_to_user_ptr(args->data_ptr);
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	int err;
 
 	err = i915_gem_object_wait(obj,
@@ -159,7 +161,7 @@ int i915_gem_object_pwrite_phys(struct drm_i915_gem_object *obj,
 		return -EFAULT;
 
 	drm_clflush_virt_range(vaddr, args->size);
-	intel_gt_chipset_flush(&to_i915(obj->base.dev)->gt);
+	intel_gt_chipset_flush(to_gt(i915));
 
 	i915_gem_object_flush_frontbuffer(obj, ORIGIN_CPU);
 	return 0;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
index 726b40e1fbb0..ac56124760e1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
@@ -35,7 +35,7 @@ void i915_gem_suspend(struct drm_i915_private *i915)
 	 * state. Fortunately, the kernel_context is disposable and we do
 	 * not rely on its state.
 	 */
-	intel_gt_suspend_prepare(&i915->gt);
+	intel_gt_suspend_prepare(to_gt(i915));
 
 	i915_gem_drain_freed_objects(i915);
 }
@@ -153,7 +153,7 @@ void i915_gem_suspend_late(struct drm_i915_private *i915)
 	 * machine in an unusable condition.
 	 */
 
-	intel_gt_suspend_late(&i915->gt);
+	intel_gt_suspend_late(to_gt(i915));
 
 	spin_lock_irqsave(&i915->mm.obj_lock, flags);
 	for (phase = phases; *phase; phase++) {
@@ -223,7 +223,7 @@ void i915_gem_resume(struct drm_i915_private *i915)
 	 * guarantee that the context image is complete. So let's just reset
 	 * it and start again.
 	 */
-	intel_gt_resume(&i915->gt);
+	intel_gt_resume(to_gt(i915));
 
 	ret = lmem_restore(i915, I915_TTM_BACKUP_ALLOW_GPU);
 	GEM_WARN_ON(ret);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 157a9765f483..05a1ba2f2e7b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -153,7 +153,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 	 */
 	if (shrink & I915_SHRINK_ACTIVE)
 		/* Retire requests to unpin all idle contexts */
-		intel_gt_retire_requests(&i915->gt);
+		intel_gt_retire_requests(to_gt(i915));
 
 	/*
 	 * As we may completely rewrite the (un)bound list whilst unbinding
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_throttle.c b/drivers/gpu/drm/i915/gem/i915_gem_throttle.c
index 1929d6cf4150..75501db71041 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_throttle.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_throttle.c
@@ -38,12 +38,13 @@ i915_gem_throttle_ioctl(struct drm_device *dev, void *data,
 {
 	const unsigned long recent_enough = jiffies - DRM_I915_THROTTLE_JIFFIES;
 	struct drm_i915_file_private *file_priv = file->driver_priv;
+	struct drm_i915_private *i915 = to_i915(dev);
 	struct i915_gem_context *ctx;
 	unsigned long idx;
 	long ret;
 
 	/* ABI: return -EIO if already wedged */
-	ret = intel_gt_terminally_wedged(&to_i915(dev)->gt);
+	ret = intel_gt_terminally_wedged(to_gt(i915));
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 80df9f592407..8ad09fcf3698 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -397,7 +397,7 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 	enum i915_cache_level src_level, dst_level;
 	int ret;
 
-	if (!i915->gt.migrate.context || intel_gt_is_wedged(&i915->gt))
+	if (!to_gt(i915)->migrate.context || intel_gt_is_wedged(to_gt(i915)))
 		return ERR_PTR(-EINVAL);
 
 	/* With fail_gpu_migration, we always perform a GPU clear. */
@@ -410,8 +410,8 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 		    !I915_SELFTEST_ONLY(fail_gpu_migration))
 			return ERR_PTR(-EINVAL);
 
-		intel_engine_pm_get(i915->gt.migrate.context->engine);
-		ret = intel_context_migrate_clear(i915->gt.migrate.context, dep,
+		intel_engine_pm_get(to_gt(i915)->migrate.context->engine);
+		ret = intel_context_migrate_clear(to_gt(i915)->migrate.context, dep,
 						  dst_st->sgl, dst_level,
 						  i915_ttm_gtt_binds_lmem(dst_mem),
 						  0, &rq);
@@ -423,8 +423,8 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 			return ERR_CAST(src_rsgt);
 
 		src_level = i915_ttm_cache_level(i915, bo->resource, src_ttm);
-		intel_engine_pm_get(i915->gt.migrate.context->engine);
-		ret = intel_context_migrate_copy(i915->gt.migrate.context,
+		intel_engine_pm_get(to_gt(i915)->migrate.context->engine);
+		ret = intel_context_migrate_copy(to_gt(i915)->migrate.context,
 						 dep, src_rsgt->table.sgl,
 						 src_level,
 						 i915_ttm_gtt_binds_lmem(bo->resource),
@@ -435,7 +435,7 @@ static struct dma_fence *i915_ttm_accel_move(struct ttm_buffer_object *bo,
 		i915_refct_sgt_put(src_rsgt);
 	}
 
-	intel_engine_pm_put(i915->gt.migrate.context->engine);
+	intel_engine_pm_put(to_gt(i915)->migrate.context->engine);
 
 	if (ret && rq) {
 		i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 3173c9f9a040..3cc01c30dd62 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -529,7 +529,7 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 		 * On almost all of the older hw, we cannot tell the GPU that
 		 * a page is readonly.
 		 */
-		if (!dev_priv->gt.vm->has_read_only)
+		if (!to_gt(dev_priv)->vm->has_read_only)
 			return -ENODEV;
 	}
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index c69c7d45aabc..11f0aa65f8a3 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -1705,7 +1705,7 @@ int i915_gem_huge_page_mock_selftests(void)
 	mkwrite_device_info(dev_priv)->ppgtt_type = INTEL_PPGTT_FULL;
 	mkwrite_device_info(dev_priv)->ppgtt_size = 48;
 
-	ppgtt = i915_ppgtt_create(&dev_priv->gt, 0);
+	ppgtt = i915_ppgtt_create(to_gt(dev_priv), 0);
 	if (IS_ERR(ppgtt)) {
 		err = PTR_ERR(ppgtt);
 		goto out_unlock;
@@ -1747,7 +1747,7 @@ int i915_gem_huge_page_live_selftests(struct drm_i915_private *i915)
 		return 0;
 	}
 
-	if (intel_gt_is_wedged(&i915->gt))
+	if (intel_gt_is_wedged(to_gt(i915)))
 		return 0;
 
 	return i915_live_subtests(tests, i915);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 8402ed925a69..75947e9dada2 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -592,7 +592,7 @@ int i915_gem_client_blt_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_client_tiled_blits),
 	};
 
-	if (intel_gt_is_wedged(&i915->gt))
+	if (intel_gt_is_wedged(to_gt(i915)))
 		return 0;
 
 	return i915_live_subtests(tests, i915);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 21b71568cd5f..45398adda9c8 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -90,7 +90,7 @@ static int live_nop_switch(void *arg)
 		}
 		if (i915_request_wait(rq, 0, 10 * HZ) < 0) {
 			pr_err("Failed to populated %d contexts\n", nctx);
-			intel_gt_set_wedged(&i915->gt);
+			intel_gt_set_wedged(to_gt(i915));
 			i915_request_put(rq);
 			err = -EIO;
 			goto out_file;
@@ -146,7 +146,7 @@ static int live_nop_switch(void *arg)
 			if (i915_request_wait(rq, 0, HZ / 5) < 0) {
 				pr_err("Switching between %ld contexts timed out\n",
 				       prime);
-				intel_gt_set_wedged(&i915->gt);
+				intel_gt_set_wedged(to_gt(i915));
 				i915_request_put(rq);
 				break;
 			}
@@ -1223,7 +1223,7 @@ __igt_ctx_sseu(struct drm_i915_private *i915,
 		return 0;
 
 	if (flags & TEST_RESET)
-		igt_global_reset_lock(&i915->gt);
+		igt_global_reset_lock(to_gt(i915));
 
 	obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
 	if (IS_ERR(obj)) {
@@ -1306,7 +1306,7 @@ __igt_ctx_sseu(struct drm_i915_private *i915,
 
 out_unlock:
 	if (flags & TEST_RESET)
-		igt_global_reset_unlock(&i915->gt);
+		igt_global_reset_unlock(to_gt(i915));
 
 	if (ret)
 		pr_err("%s: Failed with %d!\n", name, ret);
@@ -1877,7 +1877,7 @@ int i915_gem_context_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_vm_isolation),
 	};
 
-	if (intel_gt_is_wedged(&i915->gt))
+	if (intel_gt_is_wedged(to_gt(i915)))
 		return 0;
 
 	return i915_live_subtests(tests, i915);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
index 4b8e6b098659..ecb691c81d1e 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
@@ -261,5 +261,5 @@ int i915_gem_migrate_live_selftests(struct drm_i915_private *i915)
 	if (!HAS_LMEM(i915))
 		return 0;
 
-	return intel_gt_live_subtests(tests, &i915->gt);
+	return intel_gt_live_subtests(tests, to_gt(i915));
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 6d30cdfa80f3..743e6ab2c40b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -84,6 +84,7 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
 				 struct rnd_state *prng)
 {
 	const unsigned long npages = obj->base.size / PAGE_SIZE;
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct i915_ggtt_view view;
 	struct i915_vma *vma;
 	unsigned long page;
@@ -141,7 +142,7 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
 	if (offset >= obj->base.size)
 		goto out;
 
-	intel_gt_flush_ggtt_writes(&to_i915(obj->base.dev)->gt);
+	intel_gt_flush_ggtt_writes(to_gt(i915));
 
 	p = i915_gem_object_get_page(obj, offset >> PAGE_SHIFT);
 	cpu = kmap(p) + offset_in_page(offset);
@@ -175,6 +176,7 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
 {
 	const unsigned int nreal = obj->scratch / PAGE_SIZE;
 	const unsigned long npages = obj->base.size / PAGE_SIZE;
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct i915_vma *vma;
 	unsigned long page;
 	int err;
@@ -234,7 +236,7 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
 		if (offset >= obj->base.size)
 			continue;
 
-		intel_gt_flush_ggtt_writes(&to_i915(obj->base.dev)->gt);
+		intel_gt_flush_ggtt_writes(to_gt(i915));
 
 		p = i915_gem_object_get_page(obj, offset >> PAGE_SHIFT);
 		cpu = kmap(p) + offset_in_page(offset);
@@ -616,14 +618,14 @@ static bool assert_mmap_offset(struct drm_i915_private *i915,
 static void disable_retire_worker(struct drm_i915_private *i915)
 {
 	i915_gem_driver_unregister__shrinker(i915);
-	intel_gt_pm_get(&i915->gt);
-	cancel_delayed_work_sync(&i915->gt.requests.retire_work);
+	intel_gt_pm_get(to_gt(i915));
+	cancel_delayed_work_sync(&to_gt(i915)->requests.retire_work);
 }
 
 static void restore_retire_worker(struct drm_i915_private *i915)
 {
 	igt_flush_test(i915);
-	intel_gt_pm_put(&i915->gt);
+	intel_gt_pm_put(to_gt(i915));
 	i915_gem_driver_register__shrinker(i915);
 }
 
@@ -651,8 +653,8 @@ static int igt_mmap_offset_exhaustion(void *arg)
 
 	/* Disable background reaper */
 	disable_retire_worker(i915);
-	GEM_BUG_ON(!i915->gt.awake);
-	intel_gt_retire_requests(&i915->gt);
+	GEM_BUG_ON(!to_gt(i915)->awake);
+	intel_gt_retire_requests(to_gt(i915));
 	i915_gem_drain_freed_objects(i915);
 
 	/* Trim the device mmap space to only a page */
@@ -728,7 +730,7 @@ static int igt_mmap_offset_exhaustion(void *arg)
 
 	/* Now fill with busy dead objects that we expect to reap */
 	for (loop = 0; loop < 3; loop++) {
-		if (intel_gt_is_wedged(&i915->gt))
+		if (intel_gt_is_wedged(to_gt(i915)))
 			break;
 
 		obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
@@ -942,7 +944,7 @@ static int __igt_mmap(struct drm_i915_private *i915,
 	}
 
 	if (type == I915_MMAP_TYPE_GTT)
-		intel_gt_flush_ggtt_writes(&i915->gt);
+		intel_gt_flush_ggtt_writes(to_gt(i915));
 
 	err = wc_check(obj);
 	if (err == -ENXIO)
@@ -1049,7 +1051,7 @@ static int __igt_mmap_access(struct drm_i915_private *i915,
 		goto out_unmap;
 	}
 
-	intel_gt_flush_ggtt_writes(&i915->gt);
+	intel_gt_flush_ggtt_writes(to_gt(i915));
 
 	err = access_process_vm(current, addr, &x, sizeof(x), 0);
 	if (err != sizeof(x)) {
@@ -1065,7 +1067,7 @@ static int __igt_mmap_access(struct drm_i915_private *i915,
 		goto out_unmap;
 	}
 
-	intel_gt_flush_ggtt_writes(&i915->gt);
+	intel_gt_flush_ggtt_writes(to_gt(i915));
 
 	err = __get_user(y, ptr);
 	if (err) {
@@ -1165,7 +1167,7 @@ static int __igt_mmap_gpu(struct drm_i915_private *i915,
 	}
 
 	if (type == I915_MMAP_TYPE_GTT)
-		intel_gt_flush_ggtt_writes(&i915->gt);
+		intel_gt_flush_ggtt_writes(to_gt(i915));
 
 	for_each_uabi_engine(engine, i915) {
 		struct i915_request *rq;
-- 
2.34.1

