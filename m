Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED5F5B3646
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 13:25:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E4AE10EC99;
	Fri,  9 Sep 2022 11:25:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CF5D10EC8F
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 11:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662722687; x=1694258687;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jb/7UwXgu+fUx60fThgNVy8QTBpy4r0Uot+wkk79FPo=;
 b=NyssYu26ltO7uT0y97WSZMXntZFtb7wa+1tZLSePzVmzrIxZaBbmhCvJ
 akt1Kr49pZhygpyomsQnXNGjf6D69rQXKPXS7DE9yd1v7TR1iubezGM3O
 Yr0yTfWf52Wxkom6JdrhcdADOqZ+yqavZ2tAPLVYy3K2N+/QQkAPPGdeJ
 v4wVF+FfhcfCj7pkIm6c4WNb/s+QdrDuhoiCb2iYvjIXSUJxGIz33dseN
 7wAtcFOmk0UuJAmDezUTQptsf+Y9ZGSBfTqklmea7abdLIG6P1bukah4P
 AhTI2i0KrvlyCwWYqCChEA49icEuQUm8Lg35TH6lLG8zopswHr/aNcSua Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="323661313"
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="323661313"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 04:24:47 -0700
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="592575434"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 04:24:44 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Sep 2022 16:54:18 +0530
Message-Id: <20220909112419.26901-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220909112419.26901-1-anshuman.gupta@intel.com>
References: <20220909112419.26901-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915: Refactor userfault_wakeref to
 re-use
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
Cc: chris@chris-wilson.co.uk, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Refactor userfault_wakeref to re-use for discrete lmem mmap mapping
as well, as on discrete GTT mmap are not supported. Moving
userfault_wakeref from ggtt to gt structure.

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c     | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_pm.c       | 2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 1 -
 drivers/gpu/drm/i915/gt/intel_gt.c           | 1 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_gtt.h          | 3 ---
 drivers/gpu/drm/i915/i915_gem.c              | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 0c5c43852e24..2be222c03c82 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -413,7 +413,7 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 	vma->mmo = mmo;
 
 	if (CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
-		intel_wakeref_auto(&to_gt(i915)->ggtt->userfault_wakeref,
+		intel_wakeref_auto(&to_gt(i915)->userfault_wakeref,
 				   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
 
 	if (write) {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
index 00359ec9d58b..3428f735e786 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
@@ -24,7 +24,7 @@ void i915_gem_suspend(struct drm_i915_private *i915)
 {
 	GEM_TRACE("%s\n", dev_name(i915->drm.dev));
 
-	intel_wakeref_auto(&to_gt(i915)->ggtt->userfault_wakeref, 0);
+	intel_wakeref_auto(&to_gt(i915)->userfault_wakeref, 0);
 	flush_workqueue(i915->wq);
 
 	/*
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 6ebda3d65086..f920d5484132 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -842,7 +842,6 @@ void intel_ggtt_init_fences(struct i915_ggtt *ggtt)
 
 	INIT_LIST_HEAD(&ggtt->fence_list);
 	INIT_LIST_HEAD(&ggtt->userfault_list);
-	intel_wakeref_auto_init(&ggtt->userfault_wakeref, uncore->rpm);
 
 	detect_bit_6_swizzle(ggtt);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index e4bac2431e41..1ce344cfa827 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -801,6 +801,7 @@ static int intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t phys_addr)
 	}
 
 	intel_uncore_init_early(gt->uncore, gt);
+	intel_wakeref_auto_init(&gt->userfault_wakeref, gt->uncore->rpm);
 
 	ret = intel_uncore_setup_mmio(gt->uncore, phys_addr);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 4d56f7d5a3be..e6a662f9d7c0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -147,6 +147,9 @@ struct intel_gt {
 	 */
 	intel_wakeref_t awake;
 
+	/* Manual runtime pm autosuspend delay for user GGTT/lmem mmaps */
+	struct intel_wakeref_auto userfault_wakeref;
+
 	u32 clock_frequency;
 	u32 clock_period_ns;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index e639434e97fd..c0ca53cba9f0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -386,9 +386,6 @@ struct i915_ggtt {
 	 */
 	struct list_head userfault_list;
 
-	/* Manual runtime pm autosuspend delay for user GGTT mmaps */
-	struct intel_wakeref_auto userfault_wakeref;
-
 	struct mutex error_mutex;
 	struct drm_mm_node error_capture;
 	struct drm_mm_node uc_fw;
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 4b76051312dd..70f082f7911a 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1172,7 +1172,7 @@ void i915_gem_driver_unregister(struct drm_i915_private *i915)
 
 void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
 {
-	intel_wakeref_auto_fini(&to_gt(dev_priv)->ggtt->userfault_wakeref);
+	intel_wakeref_auto_fini(&to_gt(dev_priv)->userfault_wakeref);
 
 	i915_gem_suspend_late(dev_priv);
 	intel_gt_driver_remove(to_gt(dev_priv));
-- 
2.26.2

