Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 547181AE640
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 21:51:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B12816E98A;
	Fri, 17 Apr 2020 19:51:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4A5F6E959
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 19:51:13 +0000 (UTC)
IronPort-SDR: grJANg4qtHKWvcBDKHTto/lTUQArxPc4aH1nF3bIUJJha3e3mMItcF7KvrNWN8EQHK9D5GawC9
 LKd+Jein96kA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 12:51:13 -0700
IronPort-SDR: IjTVzzNZTlSy9nJUbQTtkdz+fI9jD15B6KU2aNKKv0Z1fps+YFgKbybkrT78hCGUuIU3M93m9e
 4oUE+tEOs4oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="278485466"
Received: from awvttdev-05.aw.intel.com ([10.228.212.156])
 by fmsmga004.fm.intel.com with ESMTP; 17 Apr 2020 12:51:12 -0700
From: "Michael J. Ruhl" <michael.j.ruhl@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 15:51:07 -0400
Message-Id: <20200417195107.68732-1-michael.j.ruhl@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Refactor setting dma info to a
 common helper
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

DMA_MASK bit values are different for different generations.

This will become more difficult to manage over time with the open
coded usage of different versions of the device.

Fix by:
  disallow setting of dma mask in AGP path (< GEN(5) for i915,
  add dma_mask_size to the device info configuration,
  updating open code call sequence to the latest interface,
  refactoring into a common function for setting the dma segment
  and mask info

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
cc: Brian Welty <brian.welty@intel.com>
cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

---
v1: removed i915 depenancy from agp path for dma mask
    Consolidated segment size and work arounds to the helper
v2: added r-b

---
 drivers/char/agp/intel-gtt.c             | 17 +++--
 drivers/gpu/drm/i915/gt/intel_ggtt.c     | 15 ----
 drivers/gpu/drm/i915/i915_drv.c          | 94 +++++++++++++++---------
 drivers/gpu/drm/i915/i915_pci.c          | 14 ++++
 drivers/gpu/drm/i915/intel_device_info.c |  1 +
 drivers/gpu/drm/i915/intel_device_info.h |  2 +
 6 files changed, 87 insertions(+), 56 deletions(-)

diff --git a/drivers/char/agp/intel-gtt.c b/drivers/char/agp/intel-gtt.c
index 3d42fc4290bc..4b34a5195c65 100644
--- a/drivers/char/agp/intel-gtt.c
+++ b/drivers/char/agp/intel-gtt.c
@@ -1407,13 +1407,16 @@ int intel_gmch_probe(struct pci_dev *bridge_pdev, struct pci_dev *gpu_pdev,
 
 	dev_info(&bridge_pdev->dev, "Intel %s Chipset\n", intel_gtt_chipsets[i].name);
 
-	mask = intel_private.driver->dma_mask_size;
-	if (pci_set_dma_mask(intel_private.pcidev, DMA_BIT_MASK(mask)))
-		dev_err(&intel_private.pcidev->dev,
-			"set gfx device dma mask %d-bit failed!\n", mask);
-	else
-		pci_set_consistent_dma_mask(intel_private.pcidev,
-					    DMA_BIT_MASK(mask));
+	if (bridge) {
+		mask = intel_private.driver->dma_mask_size;
+		if (pci_set_dma_mask(intel_private.pcidev, DMA_BIT_MASK(mask)))
+			dev_err(&intel_private.pcidev->dev,
+				"set gfx device dma mask %d-bit failed!\n",
+				mask);
+		else
+			pci_set_consistent_dma_mask(intel_private.pcidev,
+						    DMA_BIT_MASK(mask));
+	}
 
 	if (intel_gtt_init() != 0) {
 		intel_gmch_remove();
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index eebd1190506f..66165b10256e 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -840,7 +840,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	struct pci_dev *pdev = i915->drm.pdev;
 	unsigned int size;
 	u16 snb_gmch_ctl;
-	int err;
 
 	/* TODO: We're not aware of mappable constraints on gen8 yet */
 	if (!IS_DGFX(i915)) {
@@ -848,13 +847,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 		ggtt->mappable_end = resource_size(&ggtt->gmadr);
 	}
 
-	err = pci_set_dma_mask(pdev, DMA_BIT_MASK(39));
-	if (!err)
-		err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(39));
-	if (err)
-		drm_err(&i915->drm,
-			"Can't set DMA mask/consistent mask (%d)\n", err);
-
 	pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
 	if (IS_CHERRYVIEW(i915))
 		size = chv_get_total_gtt_size(snb_gmch_ctl);
@@ -990,7 +982,6 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 	struct pci_dev *pdev = i915->drm.pdev;
 	unsigned int size;
 	u16 snb_gmch_ctl;
-	int err;
 
 	ggtt->gmadr = pci_resource(pdev, 2);
 	ggtt->mappable_end = resource_size(&ggtt->gmadr);
@@ -1005,12 +996,6 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 		return -ENXIO;
 	}
 
-	err = pci_set_dma_mask(pdev, DMA_BIT_MASK(40));
-	if (!err)
-		err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(40));
-	if (err)
-		drm_err(&i915->drm,
-			"Can't set DMA mask/consistent mask (%d)\n", err);
 	pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
 
 	size = gen6_get_total_gtt_size(snb_gmch_ctl);
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 641f5e03b661..21e30b30d9d6 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -566,6 +566,62 @@ static void intel_sanitize_options(struct drm_i915_private *dev_priv)
 	intel_gvt_sanitize_options(dev_priv);
 }
 
+/**
+ * i915_set_dma_info - set all relevant PCI dma info as configured for the
+ * platform
+ * @i915: valid i915 instance
+ *
+ * Set the dma max segment size, device and coherent masks.  The dma mask set
+ * needs to occur before i915_ggtt_probe_hw.
+ *
+ * A couple of platforms have special needs.  Address them as well.
+ *
+ */
+static int i915_set_dma_info(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = i915->drm.pdev;
+	unsigned int mask_size = INTEL_INFO(i915)->dma_mask_size;
+	int ret;
+
+	GEM_BUG_ON(!mask_size);
+
+	/*
+	 * We don't have a max segment size, so set it to the max so sg's
+	 * debugging layer doesn't complain
+	 */
+	dma_set_max_seg_size(&pdev->dev, UINT_MAX);
+
+	ret = dma_set_mask(&pdev->dev, DMA_BIT_MASK(mask_size));
+	if (ret)
+		goto mask_err;
+
+	/* overlay on gen2 is broken and can't address above 1G */
+	if (IS_GEN(i915, 2))
+		mask_size = 30;
+
+	/*
+	 * 965GM sometimes incorrectly writes to hardware status page (HWS)
+	 * using 32bit addressing, overwriting memory if HWS is located
+	 * above 4GB.
+	 *
+	 * The documentation also mentions an issue with undefined
+	 * behaviour if any general state is accessed within a page above 4GB,
+	 * which also needs to be handled carefully.
+	 */
+	if (IS_I965G(i915) || IS_I965GM(i915))
+		mask_size = 32;
+
+	ret = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(mask_size));
+	if (ret)
+		goto mask_err;
+
+	return 0;
+
+mask_err:
+	drm_err(&i915->drm, "Can't set DMA mask/consistent mask (%d)\n", ret);
+	return ret;
+}
+
 /**
  * i915_driver_hw_probe - setup state requiring device access
  * @dev_priv: device private
@@ -611,6 +667,10 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	/* needs to be done before ggtt probe */
 	intel_dram_edram_detect(dev_priv);
 
+	ret = i915_set_dma_info(dev_priv);
+	if (ret)
+		return ret;
+
 	i915_perf_init(dev_priv);
 
 	ret = i915_ggtt_probe_hw(dev_priv);
@@ -639,40 +699,6 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	pci_set_master(pdev);
 
-	/*
-	 * We don't have a max segment size, so set it to the max so sg's
-	 * debugging layer doesn't complain
-	 */
-	dma_set_max_seg_size(&pdev->dev, UINT_MAX);
-
-	/* overlay on gen2 is broken and can't address above 1G */
-	if (IS_GEN(dev_priv, 2)) {
-		ret = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(30));
-		if (ret) {
-			drm_err(&dev_priv->drm, "failed to set DMA mask\n");
-
-			goto err_mem_regions;
-		}
-	}
-
-	/* 965GM sometimes incorrectly writes to hardware status page (HWS)
-	 * using 32bit addressing, overwriting memory if HWS is located
-	 * above 4GB.
-	 *
-	 * The documentation also mentions an issue with undefined
-	 * behaviour if any general state is accessed within a page above 4GB,
-	 * which also needs to be handled carefully.
-	 */
-	if (IS_I965G(dev_priv) || IS_I965GM(dev_priv)) {
-		ret = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));
-
-		if (ret) {
-			drm_err(&dev_priv->drm, "failed to set DMA mask\n");
-
-			goto err_mem_regions;
-		}
-	}
-
 	cpu_latency_qos_add_request(&dev_priv->pm_qos, PM_QOS_DEFAULT_VALUE);
 
 	intel_gt_init_workarounds(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 66738f2c4f28..2fc25ec12c3d 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -171,6 +171,7 @@
 	.engine_mask = BIT(RCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
+	.dma_mask_size = 32, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
 	I9XX_COLORS, \
@@ -190,6 +191,7 @@
 	.engine_mask = BIT(RCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
+	.dma_mask_size = 32, \
 	I845_PIPE_OFFSETS, \
 	I845_CURSOR_OFFSETS, \
 	I9XX_COLORS, \
@@ -226,6 +228,7 @@ static const struct intel_device_info i865g_info = {
 	.engine_mask = BIT(RCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
+	.dma_mask_size = 32, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
 	I9XX_COLORS, \
@@ -286,6 +289,7 @@ static const struct intel_device_info g33_info = {
 	PLATFORM(INTEL_G33),
 	.display.has_hotplug = 1,
 	.display.has_overlay = 1,
+	.dma_mask_size = 36,
 };
 
 static const struct intel_device_info pnv_g_info = {
@@ -293,6 +297,7 @@ static const struct intel_device_info pnv_g_info = {
 	PLATFORM(INTEL_PINEVIEW),
 	.display.has_hotplug = 1,
 	.display.has_overlay = 1,
+	.dma_mask_size = 36,
 };
 
 static const struct intel_device_info pnv_m_info = {
@@ -301,6 +306,7 @@ static const struct intel_device_info pnv_m_info = {
 	.is_mobile = 1,
 	.display.has_hotplug = 1,
 	.display.has_overlay = 1,
+	.dma_mask_size = 36,
 };
 
 #define GEN4_FEATURES \
@@ -313,6 +319,7 @@ static const struct intel_device_info pnv_m_info = {
 	.engine_mask = BIT(RCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
+	.dma_mask_size = 36, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
 	I965_COLORS, \
@@ -365,6 +372,7 @@ static const struct intel_device_info gm45_info = {
 	.has_coherent_ggtt = true, \
 	/* ilk does support rc6, but we do not implement [power] contexts */ \
 	.has_rc6 = 0, \
+	.dma_mask_size = 36, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
 	ILK_COLORS, \
@@ -395,6 +403,7 @@ static const struct intel_device_info ilk_m_info = {
 	.has_rc6 = 1, \
 	.has_rc6p = 1, \
 	.has_rps = true, \
+	.dma_mask_size = 40, \
 	.ppgtt_type = INTEL_PPGTT_ALIASING, \
 	.ppgtt_size = 31, \
 	I9XX_PIPE_OFFSETS, \
@@ -445,6 +454,7 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.has_rc6 = 1, \
 	.has_rc6p = 1, \
 	.has_rps = true, \
+	.dma_mask_size = 40, \
 	.ppgtt_type = INTEL_PPGTT_ALIASING, \
 	.ppgtt_size = 31, \
 	IVB_PIPE_OFFSETS, \
@@ -504,6 +514,7 @@ static const struct intel_device_info vlv_info = {
 	.has_rps = true,
 	.display.has_gmch = 1,
 	.display.has_hotplug = 1,
+	.dma_mask_size = 40,
 	.ppgtt_type = INTEL_PPGTT_ALIASING,
 	.ppgtt_size = 31,
 	.has_snoop = true,
@@ -554,6 +565,7 @@ static const struct intel_device_info hsw_gt3_info = {
 	G75_FEATURES, \
 	GEN(8), \
 	.has_logical_ring_contexts = 1, \
+	.dma_mask_size = 39, \
 	.ppgtt_type = INTEL_PPGTT_FULL, \
 	.ppgtt_size = 48, \
 	.has_64bit_reloc = 1, \
@@ -602,6 +614,7 @@ static const struct intel_device_info chv_info = {
 	.has_rps = true,
 	.has_logical_ring_contexts = 1,
 	.display.has_gmch = 1,
+	.dma_mask_size = 39,
 	.ppgtt_type = INTEL_PPGTT_ALIASING,
 	.ppgtt_size = 32,
 	.has_reset_engine = 1,
@@ -685,6 +698,7 @@ static const struct intel_device_info skl_gt4_info = {
 	.has_logical_ring_contexts = 1, \
 	.has_logical_ring_preemption = 1, \
 	.has_gt_uc = 1, \
+	.dma_mask_size = 39, \
 	.ppgtt_type = INTEL_PPGTT_FULL, \
 	.ppgtt_size = 48, \
 	.has_reset_engine = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index db8496b4c38d..91bb7891c70c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -98,6 +98,7 @@ void intel_device_info_print_static(const struct intel_device_info *info,
 	drm_printf(p, "platform: %s\n", intel_platform_name(info->platform));
 	drm_printf(p, "ppgtt-size: %d\n", info->ppgtt_size);
 	drm_printf(p, "ppgtt-type: %d\n", info->ppgtt_type);
+	drm_printf(p, "dma_mask_size: %u\n", info->dma_mask_size);
 
 #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, yesno(info->name));
 	DEV_INFO_FOR_EACH_FLAG(PRINT_FLAG);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index cce6a72c5ebc..69c9257c6c6a 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -158,6 +158,8 @@ struct intel_device_info {
 
 	enum intel_platform platform;
 
+	unsigned int dma_mask_size; /* available DMA address bits */
+
 	enum intel_ppgtt_type ppgtt_type;
 	unsigned int ppgtt_size; /* log2, e.g. 31/32/48 bits */
 
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
