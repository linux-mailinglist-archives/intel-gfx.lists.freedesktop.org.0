Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 787F5607483
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 11:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A659C10E661;
	Fri, 21 Oct 2022 09:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C06F10E661
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 09:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666346138; x=1697882138;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bfauRZuZHEKW+skLK06LtUnfJPvQKek9gjuHrOLhojg=;
 b=SrnlvzU7LE7kLC5O22Fdo1NTKcK2q7aXZAVwXjXTnUS48rCUqpe3pO6O
 ojf8+cMV2qbkMsbPbzbCk6F6G3CPfIiS0jN2b6TVJn6wZDqTod/pUkbli
 Zb5pILItPMbM6q2/mBN8AUy9ykLvRPQFID1KBC0J3NiO026ewZNJeP1LF
 JH4TxCZCVpihbZeO00M2QcoFDxst2E8lIQT7OlUjNIC6BQYfrqwMKoHTK
 AO9/MLF1B4+5IV3kd3UZX5IfaM1ArVU0RjcUInO82mOMBtLbV9yBpBO4p
 tWX6oXSrIR+bcvl757/l1MRoa5Thfhs0p3WVoR1Bb+RauNYr1v54O+1MA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="308651438"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="308651438"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 02:55:38 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="608287857"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="608287857"
Received: from anshuma1-desk.iind.intel.com ([10.190.239.112])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 02:55:36 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 15:25:25 +0530
Message-Id: <20221021095525.788221-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221021095525.788221-1-anshuman.gupta@intel.com>
References: <20220923143125.5768-1-anshuman.gupta@intel.com>
 <20221021095525.788221-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/dgfx: Grab wakeref at
 i915_ttm_unmap_virtual
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
Cc: matthew.auld@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We had already grabbed the rpm wakeref at obj destruction path,
but it also required to grab the wakeref when object moves.
When i915_gem_object_release_mmap_offset() gets called by
i915_ttm_move_notify(), it will release the mmap offset without
grabbing the wakeref. We want to avoid that therefore,
grab the wakeref at i915_ttm_unmap_virtual() accordingly.

While doing that also changed the lmem_userfault_lock from
mutex to spinlock, as spinlock widely used for list.

Also changed if (obj->userfault_count) to
GEM_BUG_ON(!obj->userfault_count).

v2:
- Removed lmem_userfault_{list,lock} from intel_gt. [Matt Auld]

Fixes: ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend")
Suggested-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 19 +++++-------
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c  | 38 ++++++++++++++++--------
 drivers/gpu/drm/i915/intel_runtime_pm.c  |  2 +-
 drivers/gpu/drm/i915/intel_runtime_pm.h  |  2 +-
 4 files changed, 35 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index fd29a9053582..e63329bc8065 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -557,11 +557,13 @@ void i915_gem_object_runtime_pm_release_mmap_offset(struct drm_i915_gem_object *
 
 	drm_vma_node_unmap(&bo->base.vma_node, bdev->dev_mapping);
 
-	if (obj->userfault_count) {
-		/* rpm wakeref provide exclusive access */
-		list_del(&obj->userfault_link);
-		obj->userfault_count = 0;
-	}
+	/*
+	 * We have exclusive access here via runtime suspend. All other callers
+	 * must first grab the rpm wakeref.
+	 */
+	GEM_BUG_ON(!obj->userfault_count);
+	list_del(&obj->userfault_link);
+	obj->userfault_count = 0;
 }
 
 void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
@@ -587,13 +589,6 @@ void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
 		spin_lock(&obj->mmo.lock);
 	}
 	spin_unlock(&obj->mmo.lock);
-
-	if (obj->userfault_count) {
-		mutex_lock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
-		list_del(&obj->userfault_link);
-		mutex_unlock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
-		obj->userfault_count = 0;
-	}
 }
 
 static struct i915_mmap_offset *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 50c70796ca38..93639b2dd04f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -509,18 +509,9 @@ static int i915_ttm_shrink(struct drm_i915_gem_object *obj, unsigned int flags)
 static void i915_ttm_delete_mem_notify(struct ttm_buffer_object *bo)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
-	intel_wakeref_t wakeref = 0;
 
 	if (bo->resource && !i915_ttm_is_ghost_object(bo)) {
-		/* ttm_bo_release() already has dma_resv_lock */
-		if (i915_ttm_cpu_maps_iomem(bo->resource))
-			wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
-
 		__i915_gem_object_pages_fini(obj);
-
-		if (wakeref)
-			intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, wakeref);
-
 		i915_ttm_free_cached_io_rsgt(obj);
 	}
 }
@@ -1098,12 +1089,15 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 	if (ret == VM_FAULT_RETRY && !(vmf->flags & FAULT_FLAG_RETRY_NOWAIT))
 		goto out_rpm;
 
-	/* ttm_bo_vm_reserve() already has dma_resv_lock */
+	/*
+	 * ttm_bo_vm_reserve() already has dma_resv_lock.
+	 * userfault_count is protected by dma_resv lock and rpm wakeref.
+	 */
 	if (ret == VM_FAULT_NOPAGE && wakeref && !obj->userfault_count) {
 		obj->userfault_count = 1;
-		mutex_lock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
+		spin_lock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
 		list_add(&obj->userfault_link, &to_i915(obj->base.dev)->runtime_pm.lmem_userfault_list);
-		mutex_unlock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
+		spin_unlock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
 	}
 
 	if (wakeref & CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
@@ -1169,7 +1163,27 @@ static u64 i915_ttm_mmap_offset(struct drm_i915_gem_object *obj)
 
 static void i915_ttm_unmap_virtual(struct drm_i915_gem_object *obj)
 {
+	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
+	intel_wakeref_t wakeref = 0;
+
+	assert_object_held_shared(obj);
+
+	if (i915_ttm_cpu_maps_iomem(bo->resource)) {
+		wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
+
+		/* userfault_count is protected by obj lock and rpm wakeref. */
+		if (obj->userfault_count) {
+			spin_lock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
+			list_del(&obj->userfault_link);
+			spin_unlock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
+			obj->userfault_count = 0;
+		}
+	}
+
 	ttm_bo_unmap_virtual(i915_gem_to_ttm(obj));
+
+	if (wakeref)
+		intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, wakeref);
 }
 
 static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index bb74d4975cc8..129746713d07 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -655,6 +655,6 @@ void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm)
 
 	init_intel_runtime_pm_wakeref(rpm);
 	INIT_LIST_HEAD(&rpm->lmem_userfault_list);
-	mutex_init(&rpm->lmem_userfault_lock);
+	spin_lock_init(&rpm->lmem_userfault_lock);
 	intel_wakeref_auto_init(&rpm->userfault_wakeref, rpm);
 }
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index d0c04af2a6f3..39b832ec1fa0 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -64,7 +64,7 @@ struct intel_runtime_pm {
 	 *  but instead has exclusive access by virtue of all other accesses requiring
 	 *  holding the runtime pm wakeref.
 	 */
-	struct mutex lmem_userfault_lock;
+	spinlock_t lmem_userfault_lock;
 
 	/*
 	 *  Keep list of userfaulted gem obj, which require to release their
-- 
2.25.1

