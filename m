Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE0914E0A7
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 19:17:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 684FB6FA16;
	Thu, 30 Jan 2020 18:17:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A23EB6FA16
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 18:17:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20063787-1500050 
 for multiple; Thu, 30 Jan 2020 18:17:13 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jan 2020 18:17:09 +0000
Message-Id: <20200130181710.2030251-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200130181710.2030251-1-chris@chris-wilson.co.uk>
References: <20200130181710.2030251-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Rename
 i915_gem_restore_ggtt_mappings() for its new placement
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The i915_ggtt now sits beneath gt/ outside of the auspices of gem/ and
should be given a fresh name to reflect that. We also want to give it a
name that reflects its role in the system suspend/resume, with the
intention of pulling together all the GGTT operations (e.g. restoring
the fence registers once they are pulled under gt/intel_ggtt_detiler.c)

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c      | 34 +++--------------------
 drivers/gpu/drm/i915/gt/intel_gtt.h       |  4 +--
 drivers/gpu/drm/i915/i915_drv.c           |  4 +--
 drivers/gpu/drm/i915/i915_gem.c           |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem.c |  6 ++--
 5 files changed, 12 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index f83070b5e6ed..91ec175c38ec 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -104,27 +104,12 @@ static bool needs_idle_maps(struct drm_i915_private *i915)
 	return IS_GEN(i915, 5) && IS_MOBILE(i915) && intel_vtd_active();
 }
 
-static void ggtt_suspend_mappings(struct i915_ggtt *ggtt)
+void i915_ggtt_suspend(struct i915_ggtt *ggtt)
 {
-	struct drm_i915_private *i915 = ggtt->vm.i915;
-
-	/*
-	 * Don't bother messing with faults pre GEN6 as we have little
-	 * documentation supporting that it's a good idea.
-	 */
-	if (INTEL_GEN(i915) < 6)
-		return;
-
-	intel_gt_check_and_clear_faults(ggtt->vm.gt);
-
 	ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);
-
 	ggtt->invalidate(ggtt);
-}
 
-void i915_gem_suspend_gtt_mappings(struct drm_i915_private *i915)
-{
-	ggtt_suspend_mappings(&i915->ggtt);
+	intel_gt_check_and_clear_faults(ggtt->vm.gt);
 }
 
 void gen6_ggtt_invalidate(struct i915_ggtt *ggtt)
@@ -1155,7 +1140,7 @@ void i915_ggtt_disable_guc(struct i915_ggtt *ggtt)
 	ggtt->invalidate(ggtt);
 }
 
-static void ggtt_restore_mappings(struct i915_ggtt *ggtt)
+void i915_ggtt_resume(struct i915_ggtt *ggtt)
 {
 	struct i915_vma *vma;
 	bool flush = false;
@@ -1163,8 +1148,6 @@ static void ggtt_restore_mappings(struct i915_ggtt *ggtt)
 
 	intel_gt_check_and_clear_faults(ggtt->vm.gt);
 
-	mutex_lock(&ggtt->vm.mutex);
-
 	/* First fill our portion of the GTT with scratch pages */
 	ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);
 
@@ -1191,19 +1174,10 @@ static void ggtt_restore_mappings(struct i915_ggtt *ggtt)
 	atomic_set(&ggtt->vm.open, open);
 	ggtt->invalidate(ggtt);
 
-	mutex_unlock(&ggtt->vm.mutex);
-
 	if (flush)
 		wbinvd_on_all_cpus();
-}
-
-void i915_gem_restore_gtt_mappings(struct drm_i915_private *i915)
-{
-	struct i915_ggtt *ggtt = &i915->ggtt;
-
-	ggtt_restore_mappings(ggtt);
 
-	if (INTEL_GEN(i915) >= 8)
+	if (INTEL_GEN(ggtt->vm.i915) >= 8)
 		setup_private_pat(ggtt->vm.gt->uncore);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 7da7681c20b1..23004445806a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -512,8 +512,8 @@ int i915_ppgtt_init_hw(struct intel_gt *gt);
 
 struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt);
 
-void i915_gem_suspend_gtt_mappings(struct drm_i915_private *i915);
-void i915_gem_restore_gtt_mappings(struct drm_i915_private *i915);
+void i915_ggtt_suspend(struct i915_ggtt *gtt);
+void i915_ggtt_resume(struct i915_ggtt *ggtt);
 
 u64 gen8_pte_encode(dma_addr_t addr,
 		    enum i915_cache_level level,
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 5a5846d892f4..4661c5f1f297 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1719,7 +1719,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	intel_suspend_hw(dev_priv);
 
-	i915_gem_suspend_gtt_mappings(dev_priv);
+	i915_ggtt_suspend(&dev_priv->ggtt);
 
 	i915_save_state(dev_priv);
 
@@ -1832,7 +1832,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	if (ret)
 		DRM_ERROR("failed to re-enable GGTT\n");
 
-	i915_gem_restore_gtt_mappings(dev_priv);
+	i915_ggtt_resume(&dev_priv->ggtt);
 	i915_gem_restore_fences(&dev_priv->ggtt);
 
 	intel_csr_ucode_resume(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index ff79da5657f8..25fce35a46f9 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1153,7 +1153,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 
 		/* Minimal basic recovery for KMS */
 		ret = i915_ggtt_enable_hw(dev_priv);
-		i915_gem_restore_gtt_mappings(dev_priv);
+		i915_ggtt_resume(&dev_priv->ggtt);
 		i915_gem_restore_fences(&dev_priv->ggtt);
 		intel_init_clock_gating(dev_priv);
 	}
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
index 78f36faf2bbe..623759b73bb4 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
@@ -98,7 +98,7 @@ static void pm_suspend(struct drm_i915_private *i915)
 	intel_wakeref_t wakeref;
 
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
-		i915_gem_suspend_gtt_mappings(i915);
+		i915_ggtt_suspend(&i915->ggtt);
 		i915_gem_suspend_late(i915);
 	}
 }
@@ -108,7 +108,7 @@ static void pm_hibernate(struct drm_i915_private *i915)
 	intel_wakeref_t wakeref;
 
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
-		i915_gem_suspend_gtt_mappings(i915);
+		i915_ggtt_suspend(&i915->ggtt);
 
 		i915_gem_freeze(i915);
 		i915_gem_freeze_late(i915);
@@ -124,7 +124,7 @@ static void pm_resume(struct drm_i915_private *i915)
 	 * that runtime-pm just works.
 	 */
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
-		i915_gem_restore_gtt_mappings(i915);
+		i915_ggtt_resume(&i915->ggtt);
 		i915_gem_restore_fences(&i915->ggtt);
 
 		i915_gem_resume(i915);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
