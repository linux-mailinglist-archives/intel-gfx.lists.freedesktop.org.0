Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B491AE0F2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 17:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C80256EC39;
	Fri, 17 Apr 2020 15:22:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD4386EC39
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 15:22:53 +0000 (UTC)
IronPort-SDR: icsF1t/my+IR9Ul0+5hW5CAprxvhgh8Bz0RZ/6k6TK28EZ3MiyAiAKQOsgBGh2glzHc0Vv2aka
 EFmXi6PccIhQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 08:22:53 -0700
IronPort-SDR: uhbvlDSOjf5vyxFv2+KoERdmKDnhfIVzyuhK/bV6vrpxqHI/kC+VxBeX4PMsiDypYv05j6nDPz
 xwO+NKa950xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="254240384"
Received: from awvttdev-05.aw.intel.com ([10.228.212.156])
 by orsmga003.jf.intel.com with ESMTP; 17 Apr 2020 08:22:52 -0700
From: "Michael J. Ruhl" <michael.j.ruhl@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 11:22:44 -0400
Message-Id: <20200417152244.77623-1-michael.j.ruhl@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Refactor dma mask usage to a common
 helper
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

DMA_MASK bit values are different for different generations.

This will become more difficult to manage over time with the open
coded usage of different versions of the device.

Fix by:
  adding dma_mask_size to the device info configuration,
  updating open code call sequence to the latest interface,
  refactoring into a common function for setting the dma_mask

Note: GEN(5) and down is also set in intel_gmch_probe().

Signed-off-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
cc: Brian Welty <brian.welty@intel.com>
cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c     | 15 --------------
 drivers/gpu/drm/i915/i915_drv.c          | 25 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_pci.c          | 14 +++++++++++++
 drivers/gpu/drm/i915/intel_device_info.c |  1 +
 drivers/gpu/drm/i915/intel_device_info.h |  2 ++
 5 files changed, 42 insertions(+), 15 deletions(-)

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
index 641f5e03b661..3c5654b5d321 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -566,6 +566,29 @@ static void intel_sanitize_options(struct drm_i915_private *dev_priv)
 	intel_gvt_sanitize_options(dev_priv);
 }
 
+/**
+ * i915_set_dma_mask - set the dma mask as configured for the platform
+ * @i915: valid i915 instance
+ *
+ * Set the dma device and coherent masks.  This needs to occur before
+ * i915_ggtt_probe_hw.
+ *
+ * NOTE: for devices < GEN(6), the dma_mask will also be set in
+ * intel_gmch_probe() (i.e. it will be set a second time).
+ */
+static void i915_set_dma_mask(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = i915->drm.pdev;
+	unsigned int mask_size = INTEL_INFO(i915)->dma_mask_size;
+	int err;
+
+	GEM_BUG_ON(!mask_size);
+
+	err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(mask_size));
+	if (err)
+		DRM_ERROR("Can't set DMA mask/consistent mask (%d)\n", err);
+}
+
 /**
  * i915_driver_hw_probe - setup state requiring device access
  * @dev_priv: device private
@@ -613,6 +636,8 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	i915_perf_init(dev_priv);
 
+	i915_set_dma_mask(dev_priv);
+
 	ret = i915_ggtt_probe_hw(dev_priv);
 	if (ret)
 		goto err_perf;
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
