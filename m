Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0A160F39B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 11:23:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A2B10E593;
	Thu, 27 Oct 2022 09:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F240810E5AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 09:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666862569; x=1698398569;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HIzhDoA+AnBjScq2n0bgFRo1ru8j+l7OMsuoZQaISls=;
 b=PhgQfBEoAMNSEU3xxSabvzpuTujGLjn03Xkil/beqEjYbm0TxRIC5Dnp
 +F4auHv1VOl70Vzzi4i2cYZ2ESjI7F6edNlewjXLH9iu6WvThuDkGTtVA
 ATj6vIiIjcS8PzJFSRRxuoYe2u+Oy2M/Yaih8z2j7YdYtfSyVn3gA6C5p
 BDzacblbLfEy25e6fmsiER0N3/SX0R6MGTB0xXmQNJlfBPwJvpwuqUMLr
 hKsRX3UFSq8deeQKkyvcu6fjE/n04vqgRa+GW5i01lQgH9KqrNHYayMg/
 XmNVg06nIYckni86ju3m6lAJsN28zkoSI8Fqb50a6BSCi1GiO1N7RttSa w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="394491133"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="394491133"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 02:22:49 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="721596542"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="721596542"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 02:22:48 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Oct 2022 14:52:41 +0530
Message-Id: <20221027092242.1476080-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221027092242.1476080-1-anshuman.gupta@intel.com>
References: <20221027092242.1476080-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915: Encapsulate lmem rpm stuff in
 intel_runtime_pm
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

Runtime pm is not really per GT, therefore it make sense to
move lmem_userfault_list, lmem_userfault_lock and
userfault_wakeref from intel_gt to intel_runtime_pm structure,
which is embedded to i915.

No functional change.

v2:
- Fixes the code comment nit. [Matt Auld]

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c |  6 +++---
 drivers/gpu/drm/i915/gem/i915_gem_pm.c   |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c  |  8 ++++----
 drivers/gpu/drm/i915/gt/intel_gt.c       |  3 ---
 drivers/gpu/drm/i915/gt/intel_gt_types.h | 17 -----------------
 drivers/gpu/drm/i915/i915_gem.c          |  4 +---
 drivers/gpu/drm/i915/intel_runtime_pm.c  |  5 +++++
 drivers/gpu/drm/i915/intel_runtime_pm.h  | 22 ++++++++++++++++++++++
 8 files changed, 36 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 73d9eda1d6b7..fd29a9053582 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -413,7 +413,7 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 	vma->mmo = mmo;
 
 	if (CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
-		intel_wakeref_auto(&to_gt(i915)->userfault_wakeref,
+		intel_wakeref_auto(&i915->runtime_pm.userfault_wakeref,
 				   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
 
 	if (write) {
@@ -589,9 +589,9 @@ void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
 	spin_unlock(&obj->mmo.lock);
 
 	if (obj->userfault_count) {
-		mutex_lock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
+		mutex_lock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
 		list_del(&obj->userfault_link);
-		mutex_unlock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
+		mutex_unlock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
 		obj->userfault_count = 0;
 	}
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
index e5bfb6be9f7a..0d812f4d787d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
@@ -27,7 +27,7 @@ void i915_gem_suspend(struct drm_i915_private *i915)
 
 	GEM_TRACE("%s\n", dev_name(i915->drm.dev));
 
-	intel_wakeref_auto(&to_gt(i915)->userfault_wakeref, 0);
+	intel_wakeref_auto(&i915->runtime_pm.userfault_wakeref, 0);
 	flush_workqueue(i915->wq);
 
 	/*
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 84c91a4228a1..50c70796ca38 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1101,13 +1101,13 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 	/* ttm_bo_vm_reserve() already has dma_resv_lock */
 	if (ret == VM_FAULT_NOPAGE && wakeref && !obj->userfault_count) {
 		obj->userfault_count = 1;
-		mutex_lock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
-		list_add(&obj->userfault_link, &to_gt(to_i915(obj->base.dev))->lmem_userfault_list);
-		mutex_unlock(&to_gt(to_i915(obj->base.dev))->lmem_userfault_lock);
+		mutex_lock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
+		list_add(&obj->userfault_link, &to_i915(obj->base.dev)->runtime_pm.lmem_userfault_list);
+		mutex_unlock(&to_i915(obj->base.dev)->runtime_pm.lmem_userfault_lock);
 	}
 
 	if (wakeref & CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
-		intel_wakeref_auto(&to_gt(to_i915(obj->base.dev))->userfault_wakeref,
+		intel_wakeref_auto(&to_i915(obj->base.dev)->runtime_pm.userfault_wakeref,
 				   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
 
 	i915_ttm_adjust_lru(obj);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 2e796ffad911..8e914c4066ed 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -40,8 +40,6 @@ void intel_gt_common_init_early(struct intel_gt *gt)
 {
 	spin_lock_init(gt->irq_lock);
 
-	INIT_LIST_HEAD(&gt->lmem_userfault_list);
-	mutex_init(&gt->lmem_userfault_lock);
 	INIT_LIST_HEAD(&gt->closed_vma);
 	spin_lock_init(&gt->closed_lock);
 
@@ -859,7 +857,6 @@ static int intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t phys_addr)
 	}
 
 	intel_uncore_init_early(gt->uncore, gt);
-	intel_wakeref_auto_init(&gt->userfault_wakeref, gt->uncore->rpm);
 
 	ret = intel_uncore_setup_mmio(gt->uncore, phys_addr);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 64aa2ba624fc..ff9251807f5c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -144,20 +144,6 @@ struct intel_gt {
 	struct intel_wakeref wakeref;
 	atomic_t user_wakeref;
 
-	/**
-	 *  Protects access to lmem usefault list.
-	 *  It is required, if we are outside of the runtime suspend path,
-	 *  access to @lmem_userfault_list requires always first grabbing the
-	 *  runtime pm, to ensure we can't race against runtime suspend.
-	 *  Once we have that we also need to grab @lmem_userfault_lock,
-	 *  at which point we have exclusive access.
-	 *  The runtime suspend path is special since it doesn't really hold any locks,
-	 *  but instead has exclusive access by virtue of all other accesses requiring
-	 *  holding the runtime pm wakeref.
-	 */
-	struct mutex lmem_userfault_lock;
-	struct list_head lmem_userfault_list;
-
 	struct list_head closed_vma;
 	spinlock_t closed_lock; /* guards the list of closed_vma */
 
@@ -173,9 +159,6 @@ struct intel_gt {
 	 */
 	intel_wakeref_t awake;
 
-	/* Manual runtime pm autosuspend delay for user GGTT/lmem mmaps */
-	struct intel_wakeref_auto userfault_wakeref;
-
 	u32 clock_frequency;
 	u32 clock_period_ns;
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 55d605c0c55d..299f94a9fb87 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -843,7 +843,7 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
 		__i915_gem_object_release_mmap_gtt(obj);
 
 	list_for_each_entry_safe(obj, on,
-				 &to_gt(i915)->lmem_userfault_list, userfault_link)
+				 &i915->runtime_pm.lmem_userfault_list, userfault_link)
 		i915_gem_object_runtime_pm_release_mmap_offset(obj);
 
 	/*
@@ -1227,8 +1227,6 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
 	struct intel_gt *gt;
 	unsigned int i;
 
-	intel_wakeref_auto_fini(&to_gt(dev_priv)->userfault_wakeref);
-
 	i915_gem_suspend_late(dev_priv);
 	for_each_gt(gt, dev_priv, i)
 		intel_gt_driver_remove(gt);
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 744cca507946..bb74d4975cc8 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -633,6 +633,8 @@ void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm)
 						     runtime_pm);
 	int count = atomic_read(&rpm->wakeref_count);
 
+	intel_wakeref_auto_fini(&rpm->userfault_wakeref);
+
 	drm_WARN(&i915->drm, count,
 		 "i915 raw-wakerefs=%d wakelocks=%d on cleanup\n",
 		 intel_rpm_raw_wakeref_count(count),
@@ -652,4 +654,7 @@ void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm)
 	rpm->available = HAS_RUNTIME_PM(i915);
 
 	init_intel_runtime_pm_wakeref(rpm);
+	INIT_LIST_HEAD(&rpm->lmem_userfault_list);
+	mutex_init(&rpm->lmem_userfault_lock);
+	intel_wakeref_auto_init(&rpm->userfault_wakeref, rpm);
 }
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index d9160e3ff4af..9f50f109aa11 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -53,6 +53,28 @@ struct intel_runtime_pm {
 	bool irqs_enabled;
 	bool no_wakeref_tracking;
 
+	/*
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
+
+	/*
+	 *  Keep list of userfaulted gem obj, which require to release their
+	 *  mmap mappings at runtime suspend path.
+	 */
+	struct list_head lmem_userfault_list;
+
+	/* Manual runtime pm autosuspend delay for user GGTT/lmem mmaps */
+	struct intel_wakeref_auto userfault_wakeref;
+
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 	/*
 	 * To aide detection of wakeref leaks and general misuse, we
-- 
2.38.0

