Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C0520A94E
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 01:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65FAC6EC20;
	Thu, 25 Jun 2020 23:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45E746E85B
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 23:42:20 +0000 (UTC)
IronPort-SDR: eaa+xiVXNw041TLL3QIcPGR9m2pIt15Zqg9p6rYRmNF0d9HiBcOY3jWvB8+PfyxmWB1hvVPC1S
 fvSSk0CFa6KQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="143347200"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="143347200"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 16:42:20 -0700
IronPort-SDR: Y4KRmuCWDgS+doIjj39yyNGzQqfsYMBp61x1RQNMxszSNZPq7muycFecWuvChMepdoNKH3uIzO
 YNVlr0aJ5DQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="299468557"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 25 Jun 2020 16:42:19 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jun 2020 16:42:08 -0700
Message-Id: <20200625234212.22811-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
References: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: Move engine-related mmio init to
 engines_init_mmio
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

All the info we read in intel_device_info_init_mmio are engine-related
and since we already have an engine_init_mmio function we can just
perform the operations from there.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 72 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_drv.c           |  4 --
 drivers/gpu/drm/i915/intel_device_info.c  | 66 ---------------------
 drivers/gpu/drm/i915/intel_device_info.h  |  2 -
 4 files changed, 71 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index be92d1ef9aa9..8497106eb3a6 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -450,6 +450,74 @@ void intel_engines_free(struct intel_gt *gt)
 	}
 }
 
+/*
+ * Determine which engines are fused off in our particular hardware. Since the
+ * fuse register is in the blitter powerwell, we need forcewake to be ready at
+ * this point (but later we need to prune the forcewake domains for engines that
+ * are indeed fused off).
+ */
+static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
+{
+	struct drm_i915_private *i915 = gt->i915;
+	struct intel_device_info *info = mkwrite_device_info(i915);
+	struct intel_uncore *uncore = gt->uncore;
+	unsigned int logical_vdbox = 0;
+	unsigned int i;
+	u32 media_fuse;
+	u16 vdbox_mask;
+	u16 vebox_mask;
+
+	if (INTEL_GEN(i915) < 11)
+		return info->engine_mask;
+
+	media_fuse = ~intel_uncore_read(uncore, GEN11_GT_VEBOX_VDBOX_DISABLE);
+
+	vdbox_mask = media_fuse & GEN11_GT_VDBOX_DISABLE_MASK;
+	vebox_mask = (media_fuse & GEN11_GT_VEBOX_DISABLE_MASK) >>
+		      GEN11_GT_VEBOX_DISABLE_SHIFT;
+
+	for (i = 0; i < I915_MAX_VCS; i++) {
+		if (!HAS_ENGINE(gt, _VCS(i))) {
+			vdbox_mask &= ~BIT(i);
+			continue;
+		}
+
+		if (!(BIT(i) & vdbox_mask)) {
+			info->engine_mask &= ~BIT(_VCS(i));
+			drm_dbg(&i915->drm, "vcs%u fused off\n", i);
+			continue;
+		}
+
+		/*
+		 * In Gen11, only even numbered logical VDBOXes are
+		 * hooked up to an SFC (Scaler & Format Converter) unit.
+		 * In TGL each VDBOX has access to an SFC.
+		 */
+		if (INTEL_GEN(i915) >= 12 || logical_vdbox++ % 2 == 0)
+			RUNTIME_INFO(i915)->vdbox_sfc_access |= BIT(i);
+	}
+	drm_dbg(&i915->drm, "vdbox enable: %04x, instances: %04lx\n",
+		vdbox_mask, VDBOX_MASK(gt));
+	GEM_BUG_ON(vdbox_mask != VDBOX_MASK(gt));
+
+	for (i = 0; i < I915_MAX_VECS; i++) {
+		if (!HAS_ENGINE(gt, _VECS(i))) {
+			vebox_mask &= ~BIT(i);
+			continue;
+		}
+
+		if (!(BIT(i) & vebox_mask)) {
+			info->engine_mask &= ~BIT(_VECS(i));
+			drm_dbg(&i915->drm, "vecs%u fused off\n", i);
+		}
+	}
+	drm_dbg(&i915->drm, "vebox enable: %04x, instances: %04lx\n",
+		vebox_mask, VEBOX_MASK(gt));
+	GEM_BUG_ON(vebox_mask != VEBOX_MASK(gt));
+
+	return info->engine_mask;
+}
+
 /**
  * intel_engines_init_mmio() - allocate and prepare the Engine Command Streamers
  * @gt: pointer to struct intel_gt
@@ -460,7 +528,7 @@ int intel_engines_init_mmio(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_device_info *device_info = mkwrite_device_info(i915);
-	const unsigned int engine_mask = INTEL_INFO(i915)->engine_mask;
+	const unsigned int engine_mask = init_engine_mask(gt);
 	unsigned int mask = 0;
 	unsigned int i;
 	int err;
@@ -497,6 +565,8 @@ int intel_engines_init_mmio(struct intel_gt *gt)
 
 	intel_setup_engine_capabilities(gt);
 
+	intel_uncore_prune_engine_fw_domains(gt->uncore, gt);
+
 	return 0;
 
 cleanup:
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 1f9c40cf10ae..611287353420 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -531,10 +531,6 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	/* Try to make sure MCHBAR is enabled before poking at it */
 	intel_setup_mchbar(dev_priv);
 
-	intel_device_info_init_mmio(dev_priv);
-
-	intel_uncore_prune_engine_fw_domains(&dev_priv->uncore, &dev_priv->gt);
-
 	intel_uc_init_mmio(&dev_priv->gt.uc);
 
 	ret = intel_engines_init_mmio(&dev_priv->gt);
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index c0443afa12b9..92ebea35c752 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -1089,69 +1089,3 @@ void intel_driver_caps_print(const struct intel_driver_caps *caps,
 		   yesno(caps->has_logical_contexts));
 	drm_printf(p, "scheduler: %x\n", caps->scheduler);
 }
-
-/*
- * Determine which engines are fused off in our particular hardware. Since the
- * fuse register is in the blitter powerwell, we need forcewake to be ready at
- * this point (but later we need to prune the forcewake domains for engines that
- * are indeed fused off).
- */
-void intel_device_info_init_mmio(struct drm_i915_private *dev_priv)
-{
-	struct intel_device_info *info = mkwrite_device_info(dev_priv);
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	struct intel_gt *gt = &dev_priv->gt;
-	unsigned int logical_vdbox = 0;
-	unsigned int i;
-	u32 media_fuse;
-	u16 vdbox_mask;
-	u16 vebox_mask;
-
-	if (INTEL_GEN(dev_priv) < 11)
-		return;
-
-	media_fuse = ~intel_uncore_read(uncore, GEN11_GT_VEBOX_VDBOX_DISABLE);
-
-	vdbox_mask = media_fuse & GEN11_GT_VDBOX_DISABLE_MASK;
-	vebox_mask = (media_fuse & GEN11_GT_VEBOX_DISABLE_MASK) >>
-		      GEN11_GT_VEBOX_DISABLE_SHIFT;
-
-	for (i = 0; i < I915_MAX_VCS; i++) {
-		if (!HAS_ENGINE(gt, _VCS(i))) {
-			vdbox_mask &= ~BIT(i);
-			continue;
-		}
-
-		if (!(BIT(i) & vdbox_mask)) {
-			info->engine_mask &= ~BIT(_VCS(i));
-			drm_dbg(&dev_priv->drm, "vcs%u fused off\n", i);
-			continue;
-		}
-
-		/*
-		 * In Gen11, only even numbered logical VDBOXes are
-		 * hooked up to an SFC (Scaler & Format Converter) unit.
-		 * In TGL each VDBOX has access to an SFC.
-		 */
-		if (INTEL_GEN(dev_priv) >= 12 || logical_vdbox++ % 2 == 0)
-			RUNTIME_INFO(dev_priv)->vdbox_sfc_access |= BIT(i);
-	}
-	drm_dbg(&dev_priv->drm, "vdbox enable: %04x, instances: %04lx\n",
-		vdbox_mask, VDBOX_MASK(gt));
-	GEM_BUG_ON(vdbox_mask != VDBOX_MASK(gt));
-
-	for (i = 0; i < I915_MAX_VECS; i++) {
-		if (!HAS_ENGINE(gt, _VECS(i))) {
-			vebox_mask &= ~BIT(i);
-			continue;
-		}
-
-		if (!(BIT(i) & vebox_mask)) {
-			info->engine_mask &= ~BIT(_VECS(i));
-			drm_dbg(&dev_priv->drm, "vecs%u fused off\n", i);
-		}
-	}
-	drm_dbg(&dev_priv->drm, "vebox enable: %04x, instances: %04lx\n",
-		vebox_mask, VEBOX_MASK(gt));
-	GEM_BUG_ON(vebox_mask != VEBOX_MASK(gt));
-}
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 8d62b8538585..fa60fdc1d75a 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -250,8 +250,6 @@ void intel_device_info_print_runtime(const struct intel_runtime_info *info,
 void intel_device_info_print_topology(const struct sseu_dev_info *sseu,
 				      struct drm_printer *p);
 
-void intel_device_info_init_mmio(struct drm_i915_private *dev_priv);
-
 void intel_driver_caps_print(const struct intel_driver_caps *caps,
 			     struct drm_printer *p);
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
