Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2442162AC
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 01:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 474826E4C1;
	Mon,  6 Jul 2020 23:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F306E4AF
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 23:57:58 +0000 (UTC)
IronPort-SDR: RP5rG9bgcXjdIpxjxtFS9QTDkPhhWaHJIMNUeSDqsT7PtJnpyK/5kLPiNpQJTOQSLwRU7MlIry
 2riCGaIINlyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="147528452"
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="147528452"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 16:57:58 -0700
IronPort-SDR: Ii+2BE/SS1E9mk/ZMW0OHFP5D41PHtTNGlektq2eTFEVyfjd8tQEmSz9ai0YM2qj23KYexTzOd
 D2l+rVeuD4AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="357606858"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga001.jf.intel.com with ESMTP; 06 Jul 2020 16:57:58 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 16:57:50 -0700
Message-Id: <20200706235757.1020-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200706235757.1020-1-daniele.ceraolospurio@intel.com>
References: <20200706235757.1020-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/9] drm/i915: Use the gt in HAS_ENGINE
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A follow up patch will move the engine mask under the gt structure,
so get ready for that.

v2: switch the remaining gvt case using dev_priv->gt to gvt->gt (Chris)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com> #v1
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c  |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_irq.c     |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c |  7 ++++---
 drivers/gpu/drm/i915/gvt/handlers.c        |  2 +-
 drivers/gpu/drm/i915/gvt/interrupt.c       |  2 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c    |  2 +-
 drivers/gpu/drm/i915/i915_drv.c            |  2 +-
 drivers/gpu/drm/i915/i915_drv.h            | 15 ++++++++-------
 drivers/gpu/drm/i915/intel_device_info.c   | 13 +++++++------
 drivers/gpu/drm/i915/intel_pm.c            |  2 +-
 drivers/gpu/drm/i915/intel_uncore.c        | 16 +++++++++-------
 drivers/gpu/drm/i915/intel_uncore.h        |  4 +++-
 12 files changed, 38 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 7bf2f76212f0..be92d1ef9aa9 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -473,7 +473,7 @@ int intel_engines_init_mmio(struct intel_gt *gt)
 		return -ENODEV;
 
 	for (i = 0; i < ARRAY_SIZE(intel_engines); i++) {
-		if (!HAS_ENGINE(i915, i))
+		if (!HAS_ENGINE(gt, i))
 			continue;
 
 		err = intel_engine_setup(gt, i);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 0cc7dd54f4f9..e1964cf40fd6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -457,7 +457,7 @@ void gen5_gt_irq_postinstall(struct intel_gt *gt)
 		 * RPS interrupts will get enabled/disabled on demand when RPS
 		 * itself is enabled/disabled.
 		 */
-		if (HAS_ENGINE(gt->i915, VECS0)) {
+		if (HAS_ENGINE(gt, VECS0)) {
 			pm_irqs |= PM_VEBOX_USER_INTERRUPT;
 			gt->pm_ier |= PM_VEBOX_USER_INTERRUPT;
 		}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 101728006ae9..fbdd6b0677db 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -67,7 +67,8 @@ struct __guc_ads_blob {
 
 static void __guc_ads_init(struct intel_guc *guc)
 {
-	struct drm_i915_private *dev_priv = guc_to_gt(guc)->i915;
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct drm_i915_private *dev_priv = gt->i915;
 	struct __guc_ads_blob *blob = guc->ads_blob;
 	const u32 skipped_size = LRC_PPHWSP_SZ * PAGE_SIZE + LR_HW_CONTEXT_SIZE;
 	u32 base;
@@ -103,8 +104,8 @@ static void __guc_ads_init(struct intel_guc *guc)
 	blob->system_info.rcs_enabled = 1;
 	blob->system_info.bcs_enabled = 1;
 
-	blob->system_info.vdbox_enable_mask = VDBOX_MASK(dev_priv);
-	blob->system_info.vebox_enable_mask = VEBOX_MASK(dev_priv);
+	blob->system_info.vdbox_enable_mask = VDBOX_MASK(gt);
+	blob->system_info.vebox_enable_mask = VEBOX_MASK(gt);
 	blob->system_info.vdbox_sfc_support_mask = RUNTIME_INFO(dev_priv)->vdbox_sfc_access;
 
 	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 78ba2857144e..85e44c6c47a6 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -1868,7 +1868,7 @@ static int csfe_chicken1_mmio_write(struct intel_vgpu *vgpu,
 	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d, r, w); \
 	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d, r, w); \
 	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d, r, w); \
-	if (HAS_ENGINE(dev_priv, VCS1)) \
+	if (HAS_ENGINE(gvt->gt, VCS1)) \
 		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d, r, w); \
 } while (0)
 
diff --git a/drivers/gpu/drm/i915/gvt/interrupt.c b/drivers/gpu/drm/i915/gvt/interrupt.c
index 540017fed908..7498878e6289 100644
--- a/drivers/gpu/drm/i915/gvt/interrupt.c
+++ b/drivers/gpu/drm/i915/gvt/interrupt.c
@@ -540,7 +540,7 @@ static void gen8_init_irq(
 	SET_BIT_INFO(irq, 4, VCS_MI_FLUSH_DW, INTEL_GVT_IRQ_INFO_GT1);
 	SET_BIT_INFO(irq, 8, VCS_AS_CONTEXT_SWITCH, INTEL_GVT_IRQ_INFO_GT1);
 
-	if (HAS_ENGINE(gvt->gt->i915, VCS1)) {
+	if (HAS_ENGINE(gvt->gt, VCS1)) {
 		SET_BIT_INFO(irq, 16, VCS2_MI_USER_INTERRUPT,
 			INTEL_GVT_IRQ_INFO_GT1);
 		SET_BIT_INFO(irq, 20, VCS2_MI_FLUSH_DW,
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
index 2ccaf78f96e8..86a60bdf0818 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.c
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
@@ -171,7 +171,7 @@ static void load_render_mocs(const struct intel_engine_cs *engine)
 		return;
 
 	for (ring_id = 0; ring_id < cnt; ring_id++) {
-		if (!HAS_ENGINE(engine->i915, ring_id))
+		if (!HAS_ENGINE(engine->gt, ring_id))
 			continue;
 
 		offset.reg = regs[ring_id];
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 67102dc26fce..1f9c40cf10ae 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -533,7 +533,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 
 	intel_device_info_init_mmio(dev_priv);
 
-	intel_uncore_prune_mmio_domains(&dev_priv->uncore);
+	intel_uncore_prune_engine_fw_domains(&dev_priv->uncore, &dev_priv->gt);
 
 	intel_uc_init_mmio(&dev_priv->gt.uc);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2c2e88d49f3e..b3968beb7048 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1562,18 +1562,19 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_GEN9_LP(dev_priv)	(IS_GEN(dev_priv, 9) && IS_LP(dev_priv))
 #define IS_GEN9_BC(dev_priv)	(IS_GEN(dev_priv, 9) && !IS_LP(dev_priv))
 
-#define HAS_ENGINE(dev_priv, id) (INTEL_INFO(dev_priv)->engine_mask & BIT(id))
+#define __HAS_ENGINE(engine_mask, id) ((engine_mask) & BIT(id))
+#define HAS_ENGINE(gt, id) __HAS_ENGINE(INTEL_INFO((gt)->i915)->engine_mask, id)
 
-#define ENGINE_INSTANCES_MASK(dev_priv, first, count) ({		\
+#define ENGINE_INSTANCES_MASK(gt, first, count) ({		\
 	unsigned int first__ = (first);					\
 	unsigned int count__ = (count);					\
-	(INTEL_INFO(dev_priv)->engine_mask &				\
+	(INTEL_INFO((gt)->i915)->engine_mask &				\
 	 GENMASK(first__ + count__ - 1, first__)) >> first__;		\
 })
-#define VDBOX_MASK(dev_priv) \
-	ENGINE_INSTANCES_MASK(dev_priv, VCS0, I915_MAX_VCS)
-#define VEBOX_MASK(dev_priv) \
-	ENGINE_INSTANCES_MASK(dev_priv, VECS0, I915_MAX_VECS)
+#define VDBOX_MASK(gt) \
+	ENGINE_INSTANCES_MASK(gt, VCS0, I915_MAX_VCS)
+#define VEBOX_MASK(gt) \
+	ENGINE_INSTANCES_MASK(gt, VECS0, I915_MAX_VECS)
 
 /*
  * The Gen7 cmdparser copies the scanned buffer to the ggtt for execution
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index c27a56aff5de..c0443afa12b9 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -1100,6 +1100,7 @@ void intel_device_info_init_mmio(struct drm_i915_private *dev_priv)
 {
 	struct intel_device_info *info = mkwrite_device_info(dev_priv);
 	struct intel_uncore *uncore = &dev_priv->uncore;
+	struct intel_gt *gt = &dev_priv->gt;
 	unsigned int logical_vdbox = 0;
 	unsigned int i;
 	u32 media_fuse;
@@ -1116,7 +1117,7 @@ void intel_device_info_init_mmio(struct drm_i915_private *dev_priv)
 		      GEN11_GT_VEBOX_DISABLE_SHIFT;
 
 	for (i = 0; i < I915_MAX_VCS; i++) {
-		if (!HAS_ENGINE(dev_priv, _VCS(i))) {
+		if (!HAS_ENGINE(gt, _VCS(i))) {
 			vdbox_mask &= ~BIT(i);
 			continue;
 		}
@@ -1136,11 +1137,11 @@ void intel_device_info_init_mmio(struct drm_i915_private *dev_priv)
 			RUNTIME_INFO(dev_priv)->vdbox_sfc_access |= BIT(i);
 	}
 	drm_dbg(&dev_priv->drm, "vdbox enable: %04x, instances: %04lx\n",
-		vdbox_mask, VDBOX_MASK(dev_priv));
-	GEM_BUG_ON(vdbox_mask != VDBOX_MASK(dev_priv));
+		vdbox_mask, VDBOX_MASK(gt));
+	GEM_BUG_ON(vdbox_mask != VDBOX_MASK(gt));
 
 	for (i = 0; i < I915_MAX_VECS; i++) {
-		if (!HAS_ENGINE(dev_priv, _VECS(i))) {
+		if (!HAS_ENGINE(gt, _VECS(i))) {
 			vebox_mask &= ~BIT(i);
 			continue;
 		}
@@ -1151,6 +1152,6 @@ void intel_device_info_init_mmio(struct drm_i915_private *dev_priv)
 		}
 	}
 	drm_dbg(&dev_priv->drm, "vebox enable: %04x, instances: %04lx\n",
-		vebox_mask, VEBOX_MASK(dev_priv));
-	GEM_BUG_ON(vebox_mask != VEBOX_MASK(dev_priv));
+		vebox_mask, VEBOX_MASK(gt));
+	GEM_BUG_ON(vebox_mask != VEBOX_MASK(gt));
 }
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 2d980b83a1f1..ea1f79d36f7c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7114,7 +7114,7 @@ static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
 
 	/* This is not a WA. Enable VD HCP & MFX_ENC powergate */
 	for (i = 0; i < I915_MAX_VCS; i++) {
-		if (HAS_ENGINE(dev_priv, _VCS(i)))
+		if (HAS_ENGINE(&dev_priv->gt, _VCS(i)))
 			vd_pg_enable |= VDN_HCP_POWERGATE_ENABLE(i) |
 					VDN_MFX_POWERGATE_ENABLE(i);
 	}
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 8e2c073da1aa..83e576cff161 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1529,6 +1529,8 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 	(ret ?: (ret = __fw_domain_init((uncore__), (id__), (set__), (ack__))))
 
 	if (INTEL_GEN(i915) >= 11) {
+		/* we'll prune the domains of missing engines later */
+		intel_engine_mask_t emask = INTEL_INFO(i915)->engine_mask;
 		int i;
 
 		uncore->funcs.force_wake_get = fw_domains_get_with_fallback;
@@ -1541,7 +1543,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 			       FORCEWAKE_ACK_BLITTER_GEN9);
 
 		for (i = 0; i < I915_MAX_VCS; i++) {
-			if (!HAS_ENGINE(i915, _VCS(i)))
+			if (!__HAS_ENGINE(emask, _VCS(i)))
 				continue;
 
 			fw_domain_init(uncore, FW_DOMAIN_ID_MEDIA_VDBOX0 + i,
@@ -1549,7 +1551,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 				       FORCEWAKE_ACK_MEDIA_VDBOX_GEN11(i));
 		}
 		for (i = 0; i < I915_MAX_VECS; i++) {
-			if (!HAS_ENGINE(i915, _VECS(i)))
+			if (!__HAS_ENGINE(emask, _VECS(i)))
 				continue;
 
 			fw_domain_init(uncore, FW_DOMAIN_ID_MEDIA_VEBOX0 + i,
@@ -1844,20 +1846,20 @@ int intel_uncore_init_mmio(struct intel_uncore *uncore)
  * the forcewake domains. Prune them, to make sure they only reference existing
  * engines.
  */
-void intel_uncore_prune_mmio_domains(struct intel_uncore *uncore)
+void intel_uncore_prune_engine_fw_domains(struct intel_uncore *uncore,
+					  struct intel_gt *gt)
 {
-	struct drm_i915_private *i915 = uncore->i915;
 	enum forcewake_domains fw_domains = uncore->fw_domains;
 	enum forcewake_domain_id domain_id;
 	int i;
 
-	if (!intel_uncore_has_forcewake(uncore) || INTEL_GEN(i915) < 11)
+	if (!intel_uncore_has_forcewake(uncore) || INTEL_GEN(uncore->i915) < 11)
 		return;
 
 	for (i = 0; i < I915_MAX_VCS; i++) {
 		domain_id = FW_DOMAIN_ID_MEDIA_VDBOX0 + i;
 
-		if (HAS_ENGINE(i915, _VCS(i)))
+		if (HAS_ENGINE(gt, _VCS(i)))
 			continue;
 
 		if (fw_domains & BIT(domain_id))
@@ -1867,7 +1869,7 @@ void intel_uncore_prune_mmio_domains(struct intel_uncore *uncore)
 	for (i = 0; i < I915_MAX_VECS; i++) {
 		domain_id = FW_DOMAIN_ID_MEDIA_VEBOX0 + i;
 
-		if (HAS_ENGINE(i915, _VECS(i)))
+		if (HAS_ENGINE(gt, _VECS(i)))
 			continue;
 
 		if (fw_domains & BIT(domain_id))
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 8d3aa8b9acf9..c4b22d9d0b45 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -35,6 +35,7 @@
 struct drm_i915_private;
 struct intel_runtime_pm;
 struct intel_uncore;
+struct intel_gt;
 
 struct intel_uncore_mmio_debug {
 	spinlock_t lock; /** lock is also taken in irq contexts. */
@@ -186,7 +187,8 @@ intel_uncore_mmio_debug_init_early(struct intel_uncore_mmio_debug *mmio_debug);
 void intel_uncore_init_early(struct intel_uncore *uncore,
 			     struct drm_i915_private *i915);
 int intel_uncore_init_mmio(struct intel_uncore *uncore);
-void intel_uncore_prune_mmio_domains(struct intel_uncore *uncore);
+void intel_uncore_prune_engine_fw_domains(struct intel_uncore *uncore,
+					  struct intel_gt *gt);
 bool intel_uncore_unclaimed_mmio(struct intel_uncore *uncore);
 bool intel_uncore_arm_unclaimed_mmio_detection(struct intel_uncore *uncore);
 void intel_uncore_fini_mmio(struct intel_uncore *uncore);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
