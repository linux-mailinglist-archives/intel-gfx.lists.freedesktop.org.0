Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FFE5A0E84
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 12:54:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5BA111AF44;
	Thu, 25 Aug 2022 10:54:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDA3D11AF44
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 10:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661424872; x=1692960872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+NGwQeu5c+c97FuNQRUsx37p61Pt6bWvTG4ThwHSrF8=;
 b=Z+G6eJJM7arQlURTFWz2g4gKcotxhDvZ/Ts1yy2CsfiePFD5J+Qfha3W
 D0ZGgd8aJkg0eWddt8wKgqd+uBqEGDtTESXyuZtWzh5/GQjWJCxtnYKnF
 p036+349AOEBDSmXn13a5CmooroLNSQ0u0SNtcqBfsjhAJcBzyEtMXQ3l
 gywY3OKLZAdHxPDj0BKNyBROPdPc/APQRlCWu+0sfnhvIU5f1NZMkIuUi
 kaDipx+T7qv2eBgWaS6MuEnTjCtCnov0NOwBmm9f63GV/zbVq1+s2mAjK
 YSuFIEQc15whjkW3n8pJikOZPUQyhyN27cBiAAOyJ2a1USojAAnCZGyJN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="277227713"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="277227713"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 03:54:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="639545694"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 03:54:22 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Aug 2022 16:24:09 +0530
Message-Id: <20220825105409.6927-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220825105409.6927-1-anshuman.gupta@intel.com>
References: <20220825105409.6927-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/dgfx: Release mmap on rpm suspend
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
Cc: chris@chris-wilson.co.uk, matthew.auld@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Release all mmap mapping for all lmem objects which are associated
with userfault such that, while pcie function in D3hot, any access
to memory mappings will raise a userfault.

Runtime resume the dgpu(when gem object lies in lmem).
This will transition the dgpu graphics function to D0
state if it was in D3 in order to access the mmap memory
mappings.

v2:
- Squashes the patches. [Matt Auld]
- Add adequate locking for lmem_userfault_list addition. [Matt Auld]
- Reused obj->userfault_count to avoid double addition. [Matt Auld]
- Added i915_gem_object_lock to check
  i915_gem_object_is_lmem. [Matt Auld]

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6331
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 48 ++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_gt.c            |  2 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 ++
 drivers/gpu/drm/i915/i915_gem.c               |  8 ++++
 5 files changed, 57 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 9f6b14ec189a..40305e2bcd49 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -298,7 +298,8 @@ struct drm_i915_gem_object {
 	};
 
 	/**
-	 * Whether the object is currently in the GGTT mmap.
+	 * Whether the object is currently in the GGTT or any other supported
+	 * fake offset mmap backed by lmem.
 	 */
 	unsigned int userfault_count;
 	struct list_head userfault_link;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 5a5cf332d8a5..6532a634bd20 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1014,12 +1014,29 @@ static void i915_ttm_delayed_free(struct drm_i915_gem_object *obj)
 	ttm_bo_put(i915_gem_to_ttm(obj));
 }
 
+static intel_wakeref_t
+i915_gem_ttm_get_lmem_obj_wakeref(struct drm_i915_gem_object *obj)
+{
+	intel_wakeref_t wakeref = 0;
+
+	if (i915_gem_object_lock_interruptible(obj, NULL))
+		return 0;
+
+	if (i915_gem_object_is_lmem(obj))
+		wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
+
+	i915_gem_object_unlock(obj);
+
+	return wakeref;
+}
+
 static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 {
 	struct vm_area_struct *area = vmf->vma;
 	struct ttm_buffer_object *bo = area->vm_private_data;
 	struct drm_device *dev = bo->base.dev;
 	struct drm_i915_gem_object *obj;
+	intel_wakeref_t wakeref = 0;
 	vm_fault_t ret;
 	int idx;
 
@@ -1027,18 +1044,23 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 	if (!obj)
 		return VM_FAULT_SIGBUS;
 
+	wakeref = i915_gem_ttm_get_lmem_obj_wakeref(obj);
+
 	/* Sanity check that we allow writing into this object */
 	if (unlikely(i915_gem_object_is_readonly(obj) &&
-		     area->vm_flags & VM_WRITE))
-		return VM_FAULT_SIGBUS;
+		     area->vm_flags & VM_WRITE)) {
+		ret = VM_FAULT_SIGBUS;
+		goto out_rpm;
+	}
 
 	ret = ttm_bo_vm_reserve(bo, vmf);
 	if (ret)
-		return ret;
+		goto out_rpm;
 
 	if (obj->mm.madv != I915_MADV_WILLNEED) {
 		dma_resv_unlock(bo->base.resv);
-		return VM_FAULT_SIGBUS;
+		ret = VM_FAULT_SIGBUS;
+		goto out_rpm;
 	}
 
 	if (!i915_ttm_resource_mappable(bo->resource)) {
@@ -1062,7 +1084,8 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 		if (err) {
 			drm_dbg(dev, "Unable to make resource CPU accessible\n");
 			dma_resv_unlock(bo->base.resv);
-			return VM_FAULT_SIGBUS;
+			ret = VM_FAULT_SIGBUS;
+			goto out_rpm;
 		}
 	}
 
@@ -1073,12 +1096,25 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 	} else {
 		ret = ttm_bo_vm_dummy_page(vmf, vmf->vma->vm_page_prot);
 	}
+
+	/* ttm_bo_vm_reserve() already has dma_resv_lock */
+	if (!ret && i915_gem_object_is_lmem(obj) && !obj->userfault_count++) {
+		mutex_lock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
+		list_add(&obj->userfault_link, &to_gt(to_i915(obj->base.dev))->lmem_userfault_list);
+		mutex_unlock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
+	}
+
 	if (ret == VM_FAULT_RETRY && !(vmf->flags & FAULT_FLAG_RETRY_NOWAIT))
-		return ret;
+		goto out_rpm;
 
 	i915_ttm_adjust_lru(obj);
 
 	dma_resv_unlock(bo->base.resv);
+
+out_rpm:
+	if (wakeref)
+		intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, wakeref);
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index e4bac2431e41..63616ea198ca 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -39,6 +39,8 @@ static void __intel_gt_init_early(struct intel_gt *gt)
 {
 	spin_lock_init(&gt->irq_lock);
 
+	INIT_LIST_HEAD(&gt->lmem_userfault_list);
+	mutex_init(&gt->lmem_userfault_lock);
 	INIT_LIST_HEAD(&gt->closed_vma);
 	spin_lock_init(&gt->closed_lock);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 4d56f7d5a3be..330e7531cf22 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -132,6 +132,9 @@ struct intel_gt {
 	struct intel_wakeref wakeref;
 	atomic_t user_wakeref;
 
+	struct mutex lmem_userfault_lock; /* Protects access to usefault list */
+	struct list_head lmem_userfault_list;
+
 	struct list_head closed_vma;
 	spinlock_t closed_lock; /* guards the list of closed_vma */
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 702e5b89be22..288dc7e231dc 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -842,6 +842,14 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
 				 &to_gt(i915)->ggtt->userfault_list, userfault_link)
 		__i915_gem_object_release_mmap_gtt(obj);
 
+	list_for_each_entry_safe(obj, on,
+				 &to_gt(i915)->lmem_userfault_list, userfault_link) {
+		i915_gem_object_release_mmap_offset(obj);
+
+		if (!--obj->userfault_count)
+			list_del(&obj->userfault_link);
+	}
+
 	/*
 	 * The fence will be lost when the device powers down. If any were
 	 * in use by hardware (i.e. they are pinned), we should not be powering
-- 
2.26.2

