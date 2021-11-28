Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 633434605C8
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Nov 2021 12:10:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D0806FFA9;
	Sun, 28 Nov 2021 11:10:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A9166FFA8;
 Sun, 28 Nov 2021 11:10:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10181"; a="216528255"
X-IronPort-AV: E=Sophos;i="5.87,271,1631602800"; d="scan'208";a="216528255"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2021 03:09:59 -0800
X-IronPort-AV: E=Sophos;i="5.87,271,1631602800"; d="scan'208";a="511283358"
Received: from snishad-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.252.48.241])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2021 03:09:54 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Sun, 28 Nov 2021 13:09:25 +0200
Message-Id: <20211128110926.2569-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211128110926.2569-1-andi.shyti@linux.intel.com>
References: <20211128110926.2569-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915: Store backpointer to GT in
 uncore
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
Cc: =?UTF-8?q?Michal=C5=82Winiarski?= <michal.winiarski@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michał Winiarski <michal.winiarski@intel.com>

We now support a per-gt uncore, yet we're not able to infer which GT
we're operating upon.  Let's store a backpointer for now.

Signed-off-by: Michał Winiarski <michal.winiarski@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c               | 11 +++++++----
 drivers/gpu/drm/i915/gt/intel_gt.h               |  1 +
 drivers/gpu/drm/i915/i915_driver.c               |  5 +++--
 drivers/gpu/drm/i915/intel_uncore.c              |  9 +++++----
 drivers/gpu/drm/i915/intel_uncore.h              |  3 ++-
 drivers/gpu/drm/i915/selftests/mock_gem_device.c |  4 ++--
 drivers/gpu/drm/i915/selftests/mock_uncore.c     |  2 +-
 7 files changed, 21 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index f2422d48be32..f98f0fb21efb 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -25,11 +25,8 @@
 #include "shmem_utils.h"
 #include "pxp/intel_pxp.h"
 
-void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
+void __intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 {
-	gt->i915 = i915;
-	gt->uncore = &i915->uncore;
-
 	spin_lock_init(&gt->irq_lock);
 
 	INIT_LIST_HEAD(&gt->closed_vma);
@@ -48,6 +45,12 @@ void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 	intel_rps_init_early(&gt->rps);
 }
 
+void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
+{
+	gt->i915 = i915;
+	gt->uncore = &i915->uncore;
+}
+
 int intel_gt_probe_lmem(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 74e771871a9b..3ace129eb2af 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -35,6 +35,7 @@ static inline struct intel_gt *huc_to_gt(struct intel_huc *huc)
 }
 
 void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915);
+void __intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915);
 void intel_gt_init_hw_early(struct intel_gt *gt, struct i915_ggtt *ggtt);
 int intel_gt_probe_lmem(struct intel_gt *gt);
 int intel_gt_init_mmio(struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index a13666627dad..35f491238e22 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -315,8 +315,9 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	intel_device_info_subplatform_init(dev_priv);
 	intel_step_init(dev_priv);
 
+	intel_gt_init_early(&dev_priv->gt, dev_priv);
 	intel_uncore_mmio_debug_init_early(&dev_priv->mmio_debug);
-	intel_uncore_init_early(&dev_priv->uncore, dev_priv);
+	intel_uncore_init_early(&dev_priv->uncore, &dev_priv->gt);
 
 	spin_lock_init(&dev_priv->irq_lock);
 	spin_lock_init(&dev_priv->gpu_error.lock);
@@ -347,7 +348,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	intel_wopcm_init_early(&dev_priv->wopcm);
 
-	intel_gt_init_early(&dev_priv->gt, dev_priv);
+	__intel_gt_init_early(&dev_priv->gt, dev_priv);
 
 	i915_gem_init_early(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index abdac78d3976..fc25ebf1a593 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2061,12 +2061,13 @@ void intel_uncore_cleanup_mmio(struct intel_uncore *uncore)
 }
 
 void intel_uncore_init_early(struct intel_uncore *uncore,
-			     struct drm_i915_private *i915)
+			     struct intel_gt *gt)
 {
 	spin_lock_init(&uncore->lock);
-	uncore->i915 = i915;
-	uncore->rpm = &i915->runtime_pm;
-	uncore->debug = &i915->mmio_debug;
+	uncore->i915 = gt->i915;
+	uncore->gt = gt;
+	uncore->rpm = &gt->i915->runtime_pm;
+	uncore->debug = &gt->i915->mmio_debug;
 }
 
 static void uncore_raw_init(struct intel_uncore *uncore)
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index d1d17b04e29f..210fe2a71612 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -129,6 +129,7 @@ struct intel_uncore {
 	void __iomem *regs;
 
 	struct drm_i915_private *i915;
+	struct intel_gt *gt;
 	struct intel_runtime_pm *rpm;
 
 	spinlock_t lock; /** lock is also taken in irq contexts. */
@@ -217,7 +218,7 @@ u32 intel_uncore_read_with_mcr_steering(struct intel_uncore *uncore,
 void
 intel_uncore_mmio_debug_init_early(struct intel_uncore_mmio_debug *mmio_debug);
 void intel_uncore_init_early(struct intel_uncore *uncore,
-			     struct drm_i915_private *i915);
+			     struct intel_gt *gt);
 int intel_uncore_setup_mmio(struct intel_uncore *uncore);
 int intel_uncore_init_mmio(struct intel_uncore *uncore);
 void intel_uncore_prune_engine_fw_domains(struct intel_uncore *uncore,
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index d0e2e61de8d4..eeb632aac4a7 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -175,12 +175,12 @@ struct drm_i915_private *mock_gem_device(void)
 	mkwrite_device_info(i915)->memory_regions = REGION_SMEM;
 	intel_memory_regions_hw_probe(i915);
 
-	mock_uncore_init(&i915->uncore, i915);
-
 	spin_lock_init(&i915->gpu_error.lock);
 
 	i915_gem_init__mm(i915);
 	intel_gt_init_early(&i915->gt, i915);
+	__intel_gt_init_early(&i915->gt, i915);
+	mock_uncore_init(&i915->uncore, i915);
 	atomic_inc(&i915->gt.wakeref.count); /* disable; no hw support */
 	i915->gt.awake = -ENODEV;
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_uncore.c b/drivers/gpu/drm/i915/selftests/mock_uncore.c
index ca57e4008701..b3790ef137e4 100644
--- a/drivers/gpu/drm/i915/selftests/mock_uncore.c
+++ b/drivers/gpu/drm/i915/selftests/mock_uncore.c
@@ -42,7 +42,7 @@ __nop_read(64)
 void mock_uncore_init(struct intel_uncore *uncore,
 		      struct drm_i915_private *i915)
 {
-	intel_uncore_init_early(uncore, i915);
+	intel_uncore_init_early(uncore, &i915->gt);
 
 	ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, nop);
 	ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, nop);
-- 
2.34.1

