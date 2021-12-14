Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC894474C20
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 20:36:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1833D10E1B7;
	Tue, 14 Dec 2021 19:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C4810E1B3;
 Tue, 14 Dec 2021 19:36:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="219754033"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="219754033"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 11:36:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="463930205"
Received: from njayagop-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.251.212.16])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 11:35:57 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Tue, 14 Dec 2021 21:33:46 +0200
Message-Id: <20211214193346.21231-17-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211214193346.21231-1-andi.shyti@linux.intel.com>
References: <20211214193346.21231-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 16/16] drm/i915: Remove unused i915->ggtt
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

The reference to the GGTT from the private date is not used
anymore. Remove it.

Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Michał Winiarski <michal.winiarski@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c            |  7 +++++--
 drivers/gpu/drm/i915/gt/intel_gt.h            |  2 +-
 drivers/gpu/drm/i915/i915_driver.c            |  4 +++-
 drivers/gpu/drm/i915/i915_drv.h               |  2 --
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 20 ++++++++++---------
 drivers/gpu/drm/i915/selftests/i915_vma.c     | 20 ++++++++++---------
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  9 +++++++--
 drivers/gpu/drm/i915/selftests/mock_gtt.c     |  9 ++++-----
 drivers/gpu/drm/i915/selftests/mock_gtt.h     |  3 ++-
 9 files changed, 44 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index f98f0fb21efb..298ff32c8d0c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -3,6 +3,7 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <drm/drm_managed.h>
 #include <drm/intel-gtt.h>
 
 #include "intel_gt_debugfs.h"
@@ -85,9 +86,11 @@ int intel_gt_probe_lmem(struct intel_gt *gt)
 	return 0;
 }
 
-void intel_gt_init_hw_early(struct intel_gt *gt, struct i915_ggtt *ggtt)
+int intel_gt_assign_ggtt(struct intel_gt *gt)
 {
-	gt->ggtt = ggtt;
+	gt->ggtt = drmm_kzalloc(&gt->i915->drm, sizeof(*gt->ggtt), GFP_KERNEL);
+
+	return gt->ggtt ? 0 : -ENOMEM;
 }
 
 static const struct intel_mmio_range icl_l3bank_steering_table[] = {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 3ace129eb2af..94e1bac8c0cc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -36,7 +36,7 @@ static inline struct intel_gt *huc_to_gt(struct intel_huc *huc)
 
 void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915);
 void __intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915);
-void intel_gt_init_hw_early(struct intel_gt *gt, struct i915_ggtt *ggtt);
+int intel_gt_assign_ggtt(struct intel_gt *gt);
 int intel_gt_probe_lmem(struct intel_gt *gt);
 int intel_gt_init_mmio(struct intel_gt *gt);
 int __must_check intel_gt_init_hw(struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 3c984553d86f..5f2343389b5e 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -571,7 +571,9 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	i915_perf_init(dev_priv);
 
-	intel_gt_init_hw_early(to_gt(dev_priv), &dev_priv->ggtt);
+	ret = intel_gt_assign_ggtt(to_gt(dev_priv));
+	if (ret)
+		goto err_perf;
 
 	ret = i915_ggtt_probe_hw(dev_priv);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 65724e4df3bd..8266df3e11ac 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -838,8 +838,6 @@ struct drm_i915_private {
 	struct drm_atomic_state *modeset_restore_state;
 	struct drm_modeset_acquire_ctx reset_ctx;
 
-	struct i915_ggtt ggtt; /* VM representing the global address space */
-
 	struct i915_gem_mm mm;
 
 	/* Kernel Modesetting */
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 9afe7cf9d068..f62f7dac57f2 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1737,26 +1737,28 @@ int i915_gem_gtt_mock_selftests(void)
 		SUBTEST(igt_gtt_insert),
 	};
 	struct drm_i915_private *i915;
-	struct i915_ggtt *ggtt;
+	struct intel_gt *gt;
 	int err;
 
 	i915 = mock_gem_device();
 	if (!i915)
 		return -ENOMEM;
 
-	ggtt = kmalloc(sizeof(*ggtt), GFP_KERNEL);
-	if (!ggtt) {
-		err = -ENOMEM;
+	/* allocate the ggtt */
+	err = intel_gt_assign_ggtt(to_gt(i915));
+	if (err)
 		goto out_put;
-	}
-	mock_init_ggtt(i915, ggtt);
 
-	err = i915_subtests(tests, ggtt);
+	gt = to_gt(i915);
+
+	mock_init_ggtt(gt);
+
+	err = i915_subtests(tests, gt->ggtt);
 
 	mock_device_flush(i915);
 	i915_gem_drain_freed_objects(i915);
-	mock_fini_ggtt(ggtt);
-	kfree(ggtt);
+	mock_fini_ggtt(gt->ggtt);
+
 out_put:
 	mock_destroy_device(i915);
 	return err;
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 6ac15d3bc5bc..a87cba4eb92f 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -907,26 +907,28 @@ int i915_vma_mock_selftests(void)
 		SUBTEST(igt_vma_partial),
 	};
 	struct drm_i915_private *i915;
-	struct i915_ggtt *ggtt;
+	struct intel_gt *gt;
 	int err;
 
 	i915 = mock_gem_device();
 	if (!i915)
 		return -ENOMEM;
 
-	ggtt = kmalloc(sizeof(*ggtt), GFP_KERNEL);
-	if (!ggtt) {
-		err = -ENOMEM;
+	/* allocate the ggtt */
+	err = intel_gt_assign_ggtt(to_gt(i915));
+	if (err)
 		goto out_put;
-	}
-	mock_init_ggtt(i915, ggtt);
 
-	err = i915_subtests(tests, ggtt);
+	gt = to_gt(i915);
+
+	mock_init_ggtt(gt);
+
+	err = i915_subtests(tests, gt->ggtt);
 
 	mock_device_flush(i915);
 	i915_gem_drain_freed_objects(i915);
-	mock_fini_ggtt(ggtt);
-	kfree(ggtt);
+	mock_fini_ggtt(gt->ggtt);
+
 out_put:
 	mock_destroy_device(i915);
 	return err;
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 0b469ae0f474..28a0f054009a 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -194,8 +194,13 @@ struct drm_i915_private *mock_gem_device(void)
 
 	mock_init_contexts(i915);
 
-	mock_init_ggtt(i915, &i915->ggtt);
-	to_gt(i915)->vm = i915_vm_get(&i915->ggtt.vm);
+	/* allocate the ggtt */
+	ret = intel_gt_assign_ggtt(to_gt(i915));
+	if (ret)
+		goto err_unlock;
+
+	mock_init_ggtt(to_gt(i915));
+	to_gt(i915)->vm = i915_vm_get(&to_gt(i915)->ggtt->vm);
 
 	mkwrite_device_info(i915)->platform_engine_mask = BIT(0);
 	to_gt(i915)->info.engine_mask = BIT(0);
diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
index 13bb0c3c3f0d..a36f46d50e83 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
@@ -106,12 +106,12 @@ static void mock_unbind_ggtt(struct i915_address_space *vm,
 {
 }
 
-void mock_init_ggtt(struct drm_i915_private *i915, struct i915_ggtt *ggtt)
+void mock_init_ggtt(struct intel_gt *gt)
 {
-	memset(ggtt, 0, sizeof(*ggtt));
+	struct i915_ggtt *ggtt = gt->ggtt;
 
-	ggtt->vm.gt = to_gt(i915);
-	ggtt->vm.i915 = i915;
+	ggtt->vm.gt = gt;
+	ggtt->vm.i915 = gt->i915;
 	ggtt->vm.is_ggtt = true;
 
 	ggtt->gmadr = (struct resource) DEFINE_RES_MEM(0, 2048 * PAGE_SIZE);
@@ -132,7 +132,6 @@ void mock_init_ggtt(struct drm_i915_private *i915, struct i915_ggtt *ggtt)
 	ggtt->vm.vma_ops.clear_pages = clear_pages;
 
 	i915_address_space_init(&ggtt->vm, VM_CLASS_GGTT);
-	to_gt(i915)->ggtt = ggtt;
 }
 
 void mock_fini_ggtt(struct i915_ggtt *ggtt)
diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.h b/drivers/gpu/drm/i915/selftests/mock_gtt.h
index e3f224f43beb..d6eb90bd7f3f 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gtt.h
+++ b/drivers/gpu/drm/i915/selftests/mock_gtt.h
@@ -27,8 +27,9 @@
 
 struct drm_i915_private;
 struct i915_ggtt;
+struct intel_gt;
 
-void mock_init_ggtt(struct drm_i915_private *i915, struct i915_ggtt *ggtt);
+void mock_init_ggtt(struct intel_gt *gt);
 void mock_fini_ggtt(struct i915_ggtt *ggtt);
 
 struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name);
-- 
2.34.1

