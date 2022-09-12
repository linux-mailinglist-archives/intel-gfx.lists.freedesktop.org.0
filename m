Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E43545B5A08
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 14:13:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A848C10E408;
	Mon, 12 Sep 2022 12:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68C810E3F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 12:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662984806; x=1694520806;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=prjbByX6kH2w8TS8QPVBefxaDHhebWmZ1paq1cAs2t4=;
 b=EBOkpgGlyyJq5w3yVgHbL8zfi2BXglfjK0dpHtjzWI/F1uDpOv+AkKgJ
 cZGl97+EN2x7LP257Thz6Rg7DlEVkjqwoUdrPneUv+YXCCSy+BTmUbyI6
 gMcQumR2sFQ+zXT2IwFWX1EZnmBYXJ7iQCiaY9C9AAqg9NIakrYr9SZc+
 zLey/A0MXyGVdnmdD0SA6Ry5GSdVTqoFTpRWN1RjqMR6zVeW/XmgidnkZ
 Gm34wY0G5amcQLG7if/jql96Fy0aSq/wg+9kk3j/4g2YL4CQiMx+ySMCJ
 VHUsSUll9u2KEKnFpi0tKC2n7HiSdsjVxvAMfNZkzhpWekQNkCSLhE3Q8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="297850123"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="297850123"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 05:13:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="791533321"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 05:13:24 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 17:43:06 +0530
Message-Id: <20220912121306.24926-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220912121306.24926-1-anshuman.gupta@intel.com>
References: <20220912121306.24926-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915/dgfx: Release mmap on rpm
 suspend
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
Cc: chris@chris-wilson.co.uk, Matthew Auld <matthew.auld@intel.com>,
 rodrigo.vivi@intel.com
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

v3:
- Use i915_ttm_cpu_maps_iomem. [Matt Auld]
- Fix 'ret == 0 to ret == VM_FAULT_NOPAGE'. [Matt Auld]
- Reuse obj->userfault_count as a bool 0 or 1. [Matt Auld]
- Delete the mmaped obj from lmem_userfault_list in obj
  destruction path. [Matt Auld]
- Get a wakeref for object destruction patch. [Matt Auld]
- Use intel_wakeref_auto to delay runtime PM. [Matt Auld]

v4:
- Avoid using mmo offset to get the vma_node. [Matt Auld]
- Added comment to use the lmem_userfault_lock. [Matt Auld]
- Get lmem_userfault_lock in i915_gem_object_release_mmap_offset.
  [Matt Auld]
- Fixed kernel test robot generated warning.

PCIe Specs 5.3.1.4.1

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6331
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 21 +++++++++
 drivers/gpu/drm/i915/gem/i915_gem_mman.h      |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 47 ++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_gt.c            |  2 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h      | 14 ++++++
 drivers/gpu/drm/i915/i915_driver.c            |  1 -
 drivers/gpu/drm/i915/i915_gem.c               |  5 ++
 9 files changed, 87 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index b55befda3387..71e3a9b988c2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -550,6 +550,20 @@ void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 }
 
+void i915_gem_runtime_pm_object_release_mmap_offset(struct drm_i915_gem_object *obj)
+{
+	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
+	struct ttm_device *bdev = bo->bdev;
+
+	drm_vma_node_unmap(&bo->base.vma_node, bdev->dev_mapping);
+
+	if (obj->userfault_count) {
+		/* rpm wakeref provide exclusive access */
+		list_del(&obj->userfault_link);
+		obj->userfault_count = 0;
+	}
+}
+
 void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
 {
 	struct i915_mmap_offset *mmo, *mn;
@@ -573,6 +587,13 @@ void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
 		spin_lock(&obj->mmo.lock);
 	}
 	spin_unlock(&obj->mmo.lock);
+
+	if (obj->userfault_count) {
+		mutex_lock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
+		list_del(&obj->userfault_link);
+		mutex_unlock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
+		obj->userfault_count = 0;
+	}
 }
 
 static struct i915_mmap_offset *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.h b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
index efee9e0d2508..261e4731847b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
@@ -27,6 +27,7 @@ int i915_gem_dumb_mmap_offset(struct drm_file *file_priv,
 void __i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
 void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
 
+void i915_gem_runtime_pm_object_release_mmap_offset(struct drm_i915_gem_object *obj);
 void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj);
 
 #endif
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 85482a04d158..7ff9c7877bec 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -238,7 +238,7 @@ static void __i915_gem_object_free_mmaps(struct drm_i915_gem_object *obj)
 {
 	/* Skip serialisation and waking the device if known to be not used. */
 
-	if (obj->userfault_count)
+	if (obj->userfault_count && !IS_DGFX(to_i915(obj->base.dev)))
 		i915_gem_object_release_mmap_gtt(obj);
 
 	if (!RB_EMPTY_ROOT(&obj->mmo.offsets)) {
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
index f64a3deb12fc..705747e5b547 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -509,9 +509,18 @@ static int i915_ttm_shrink(struct drm_i915_gem_object *obj, unsigned int flags)
 static void i915_ttm_delete_mem_notify(struct ttm_buffer_object *bo)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+	intel_wakeref_t wakeref = 0;
 
 	if (likely(obj)) {
+		/* ttm_bo_release() alreadu has dma_resv_lock */
+		if (i915_ttm_cpu_maps_iomem(bo->resource))
+			wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
+
 		__i915_gem_object_pages_fini(obj);
+
+		if (wakeref)
+			intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, wakeref);
+
 		i915_ttm_free_cached_io_rsgt(obj);
 	}
 }
@@ -981,6 +990,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 	struct ttm_buffer_object *bo = area->vm_private_data;
 	struct drm_device *dev = bo->base.dev;
 	struct drm_i915_gem_object *obj;
+	intel_wakeref_t wakeref = 0;
 	vm_fault_t ret;
 	int idx;
 
@@ -990,18 +1000,24 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 
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
 
+	if (i915_ttm_cpu_maps_iomem(bo->resource))
+		wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
+
 	if (!i915_ttm_resource_mappable(bo->resource)) {
 		int err = -ENODEV;
 		int i;
@@ -1023,7 +1039,8 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 		if (err) {
 			drm_dbg(dev, "Unable to make resource CPU accessible\n");
 			dma_resv_unlock(bo->base.resv);
-			return VM_FAULT_SIGBUS;
+			ret = VM_FAULT_SIGBUS;
+			goto out_rpm;
 		}
 	}
 
@@ -1034,12 +1051,30 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 	} else {
 		ret = ttm_bo_vm_dummy_page(vmf, vmf->vma->vm_page_prot);
 	}
+
 	if (ret == VM_FAULT_RETRY && !(vmf->flags & FAULT_FLAG_RETRY_NOWAIT))
-		return ret;
+		goto out_rpm;
+
+	/* ttm_bo_vm_reserve() already has dma_resv_lock */
+	if (ret == VM_FAULT_NOPAGE && wakeref && !obj->userfault_count) {
+		obj->userfault_count = 1;
+		mutex_lock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
+		list_add(&obj->userfault_link, &to_gt(to_i915(obj->base.dev))->lmem_userfault_list);
+		mutex_unlock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
+	}
+
+	if (wakeref & CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
+		intel_wakeref_auto(&to_gt(to_i915(obj->base.dev))->userfault_wakeref,
+				   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
 
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
index 07300b0a0873..d0b03a928b9a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -40,6 +40,8 @@ void intel_gt_common_init_early(struct intel_gt *gt)
 {
 	spin_lock_init(gt->irq_lock);
 
+	INIT_LIST_HEAD(&gt->lmem_userfault_list);
+	mutex_init(&gt->lmem_userfault_lock);
 	INIT_LIST_HEAD(&gt->closed_vma);
 	spin_lock_init(&gt->closed_lock);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 0757d9577551..f19c2de77ff6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -141,6 +141,20 @@ struct intel_gt {
 	struct intel_wakeref wakeref;
 	atomic_t user_wakeref;
 
+	/**
+	 *  Protects access to lmem usefault list.
+	 *  It is required, if we are outside of the runtime suspend path,
+	 *  access to @lmem_userfault_list requires always first grabbing the
+	 *  runtime pm, to ensure we can't race against runtime suspend.
+	 *  Once we have that we also need to grab @lmem_userfault_lock,
+	 *  at which point we have exclusive access.
+	 *  The runtime suspend path is special since it doesn't really hold any locks,
+	 *  but instead has exclusive access by virtue of all other accesses requiring
+	 *  holding the runtime pm wakeref.
+	 */
+	struct mutex lmem_userfault_lock;
+	struct list_head lmem_userfault_list;
+
 	struct list_head closed_vma;
 	spinlock_t closed_lock; /* guards the list of closed_vma */
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 8262bfb2a2d9..897148880acc 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1634,7 +1634,6 @@ static int intel_runtime_suspend(struct device *kdev)
 		return -ENODEV;
 
 	drm_dbg(&dev_priv->drm, "Suspending device\n");
-
 	disable_rpm_wakeref_asserts(rpm);
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 3463dd795950..c3a83b234b6e 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -842,6 +842,11 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
 				 &to_gt(i915)->ggtt->userfault_list, userfault_link)
 		__i915_gem_object_release_mmap_gtt(obj);
 
+	list_for_each_entry_safe(obj, on,
+				 &to_gt(i915)->lmem_userfault_list, userfault_link) {
+		i915_gem_runtime_pm_object_release_mmap_offset(obj);
+	}
+
 	/*
 	 * The fence will be lost when the device powers down. If any were
 	 * in use by hardware (i.e. they are pinned), we should not be powering
-- 
2.26.2

