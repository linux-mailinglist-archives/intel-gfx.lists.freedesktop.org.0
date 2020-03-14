Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8656C1855B7
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 13:21:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B070B6E2B8;
	Sat, 14 Mar 2020 12:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4735D89F4F
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 12:21:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20559227-1500050 
 for multiple; Sat, 14 Mar 2020 12:20:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Mar 2020 12:20:53 +0000
Message-Id: <20200314122058.21472-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200314122058.21472-1-chris@chris-wilson.co.uk>
References: <20200314122058.21472-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/gt: Pull restoration of GGTT
 fences underneath the GT
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make the GT responsible for restoring its fence when it wakes up from
suspend.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c      | 2 ++
 drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 1 +
 drivers/gpu/drm/i915/i915_drv.c           | 4 ----
 drivers/gpu/drm/i915/i915_gem.c           | 1 -
 drivers/gpu/drm/i915/selftests/i915_gem.c | 2 --
 5 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index a7b72fa569a7..bde4f64a41f7 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1195,6 +1195,8 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
 
 	if (INTEL_GEN(ggtt->vm.i915) >= 8)
 		setup_private_pat(ggtt->vm.gt->uncore);
+
+	intel_ggtt_restore_fences(ggtt);
 }
 
 static struct scatterlist *
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 8b653c0f5e5f..2e40400d1ecd 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -324,6 +324,7 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
 {
 	GT_TRACE(gt, "\n");
 	intel_gt_init_swizzling(gt);
+	intel_ggtt_restore_fences(gt->ggtt);
 
 	return intel_uc_runtime_resume(&gt->uc);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 832140f4ea3d..48ba37e35bea 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1288,7 +1288,6 @@ static int i915_drm_resume(struct drm_device *dev)
 		drm_err(&dev_priv->drm, "failed to re-enable GGTT\n");
 
 	i915_ggtt_resume(&dev_priv->ggtt);
-	intel_ggtt_restore_fences(&dev_priv->ggtt);
 
 	intel_csr_ucode_resume(dev_priv);
 
@@ -1606,8 +1605,6 @@ static int intel_runtime_suspend(struct device *kdev)
 
 		intel_gt_runtime_resume(&dev_priv->gt);
 
-		intel_ggtt_restore_fences(&dev_priv->ggtt);
-
 		enable_rpm_wakeref_asserts(rpm);
 
 		return ret;
@@ -1687,7 +1684,6 @@ static int intel_runtime_resume(struct device *kdev)
 	 * we can do is to hope that things will still work (and disable RPM).
 	 */
 	intel_gt_runtime_resume(&dev_priv->gt);
-	intel_ggtt_restore_fences(&dev_priv->ggtt);
 
 	/*
 	 * On VLV/CHV display interrupts are part of the display
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 2c53be0bd9fd..762b50b08d73 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1156,7 +1156,6 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 		/* Minimal basic recovery for KMS */
 		ret = i915_ggtt_enable_hw(dev_priv);
 		i915_ggtt_resume(&dev_priv->ggtt);
-		intel_ggtt_restore_fences(&dev_priv->ggtt);
 		intel_init_clock_gating(dev_priv);
 	}
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
index 7ea517a21e0b..88d400b9df88 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
@@ -125,8 +125,6 @@ static void pm_resume(struct drm_i915_private *i915)
 	 */
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
 		i915_ggtt_resume(&i915->ggtt);
-		intel_ggtt_restore_fences(&i915->ggtt);
-
 		i915_gem_resume(i915);
 	}
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
