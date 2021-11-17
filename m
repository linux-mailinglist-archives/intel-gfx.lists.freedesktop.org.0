Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F9445476A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 14:35:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7AFE89DC9;
	Wed, 17 Nov 2021 13:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2BE66E060;
 Wed, 17 Nov 2021 13:35:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="232667557"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="232667557"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 05:35:19 -0800
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="494917750"
Received: from hanwarx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.33.169])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 05:35:15 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Wed, 17 Nov 2021 14:34:55 +0100
Message-Id: <20211117133456.688802-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211117133456.688802-1-andi.shyti@linux.intel.com>
References: <20211117133456.688802-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Store backpointer to GT in uncore
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

We now support a per-gt uncore, yet we're not able to infer which GT
we're operating upon.  Let's store a backpointer for now.

Signed-off-by: Michał Winiarski <michal.winiarski@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c               | 2 +-
 drivers/gpu/drm/i915/intel_uncore.c              | 9 +++++----
 drivers/gpu/drm/i915/intel_uncore.h              | 3 ++-
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 3 +--
 drivers/gpu/drm/i915/selftests/mock_uncore.c     | 2 +-
 5 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index a13666627dad4..26e90e55d8ca9 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -316,7 +316,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	intel_step_init(dev_priv);
 
 	intel_uncore_mmio_debug_init_early(&dev_priv->mmio_debug);
-	intel_uncore_init_early(&dev_priv->uncore, dev_priv);
+	intel_uncore_init_early(&dev_priv->uncore, &dev_priv->gt);
 
 	spin_lock_init(&dev_priv->irq_lock);
 	spin_lock_init(&dev_priv->gpu_error.lock);
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index abdac78d39766..fc25ebf1a593e 100644
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
index d1d17b04e29fc..210fe2a716129 100644
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
index d0e2e61de8d41..cdbeac375240c 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -175,12 +175,11 @@ struct drm_i915_private *mock_gem_device(void)
 	mkwrite_device_info(i915)->memory_regions = REGION_SMEM;
 	intel_memory_regions_hw_probe(i915);
 
-	mock_uncore_init(&i915->uncore, i915);
-
 	spin_lock_init(&i915->gpu_error.lock);
 
 	i915_gem_init__mm(i915);
 	intel_gt_init_early(&i915->gt, i915);
+	mock_uncore_init(&i915->uncore, i915);
 	atomic_inc(&i915->gt.wakeref.count); /* disable; no hw support */
 	i915->gt.awake = -ENODEV;
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_uncore.c b/drivers/gpu/drm/i915/selftests/mock_uncore.c
index ca57e4008701d..b3790ef137e41 100644
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
2.33.1

