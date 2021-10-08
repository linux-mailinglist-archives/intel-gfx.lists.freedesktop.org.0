Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEA4427343
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 23:57:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3958C8936C;
	Fri,  8 Oct 2021 21:57:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2187D6E878;
 Fri,  8 Oct 2021 21:57:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10131"; a="206715328"
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="206715328"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 14:57:14 -0700
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="489625454"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 14:57:14 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Fri,  8 Oct 2021 14:56:28 -0700
Message-Id: <20211008215635.2026385-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211008215635.2026385-1-matthew.d.roper@intel.com>
References: <20211008215635.2026385-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/11] drm/i915: Store backpointer to GT in
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michał Winiarski <michal.winiarski@intel.com>

We now support a per-gt uncore, yet we're not able to infer which GT
we're operating upon.  Let's store a backpointer for now.

Signed-off-by: Michał Winiarski <michal.winiarski@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c               | 2 +-
 drivers/gpu/drm/i915/intel_uncore.c              | 9 +++++----
 drivers/gpu/drm/i915/intel_uncore.h              | 3 ++-
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 3 +--
 drivers/gpu/drm/i915/selftests/mock_uncore.c     | 2 +-
 5 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index f4bea1f1de77..863039d56cba 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -905,7 +905,7 @@ tile_setup(struct intel_gt *gt, unsigned int id, phys_addr_t phys_addr)
 {
 	int ret;
 
-	intel_uncore_init_early(gt->uncore, gt->i915);
+	intel_uncore_init_early(gt->uncore, gt);
 
 	ret = intel_uncore_setup_mmio(gt->uncore, phys_addr);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 8a0a0676d67a..2c449836f537 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2057,12 +2057,13 @@ void intel_uncore_cleanup_mmio(struct intel_uncore *uncore)
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
index 83a455aa8374..2989032b580b 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -130,6 +130,7 @@ struct intel_uncore {
 	void __iomem *regs;
 
 	struct drm_i915_private *i915;
+	struct intel_gt *gt;
 	struct intel_runtime_pm *rpm;
 
 	spinlock_t lock; /** lock is also taken in irq contexts. */
@@ -218,7 +219,7 @@ u32 intel_uncore_read_with_mcr_steering(struct intel_uncore *uncore,
 void
 intel_uncore_mmio_debug_init_early(struct intel_uncore_mmio_debug *mmio_debug);
 void intel_uncore_init_early(struct intel_uncore *uncore,
-			     struct drm_i915_private *i915);
+			     struct intel_gt *gt);
 int intel_uncore_setup_mmio(struct intel_uncore *uncore, phys_addr_t phys_addr);
 int intel_uncore_init_mmio(struct intel_uncore *uncore);
 void intel_uncore_prune_engine_fw_domains(struct intel_uncore *uncore,
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 4f8180146888..bd21bb7d104e 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -175,10 +175,9 @@ struct drm_i915_private *mock_gem_device(void)
 	mkwrite_device_info(i915)->memory_regions = REGION_SMEM;
 	intel_memory_regions_hw_probe(i915);
 
-	mock_uncore_init(&i915->uncore, i915);
-
 	i915_gem_init__mm(i915);
 	intel_gt_init_early(&i915->gt, i915);
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
2.33.0

