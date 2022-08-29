Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8755A538D
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 19:55:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F7610EAE3;
	Mon, 29 Aug 2022 17:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57A9810EAE3;
 Mon, 29 Aug 2022 17:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661795691; x=1693331691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gNptl55EAJpbLeBKKCvLVJ1r9nDdg/Zxl9u5jcphbAk=;
 b=iFBqkxW4qrIutyi9XXREgQ14n1NZ82ZIWH40qdhggy8OuzGe9jWsRt29
 A2ExBbbuc5O81MujGkTcD2nx8TKXEzInJcAFdHrELbe5Y+2NCGZ+CSTJm
 E0TTRPdvzb4b/p6/7NUh/lP4/cVgIJ+KBNa1n/nHPPEgt9QF11qERYQKF
 T7KUCvOA/u7vxN46k3gvvsbngXdmsn3nLh/6sy3hiSAh3emWvpH7lyDQT
 3t5u/x7IqoKMKup9YauifDATVPdsEGDPqlM3ITp0LZQQcPegLjLRZjfzH
 oBMpr6rXtwI9RnmT1yBbCKNazOknM5ECzE6VaEM90Ha4JkRJu0xI6OjCo A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="381246661"
X-IronPort-AV: E=Sophos;i="5.93,273,1654585200"; d="scan'208";a="381246661"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 10:02:44 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="562297215"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 10:02:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Aug 2022 10:02:34 -0700
Message-Id: <20220829170238.969875-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220829170238.969875-1-matthew.d.roper@intel.com>
References: <20220829170238.969875-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915: Prepare more multi-GT
 initialization
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We're going to introduce an additional intel_gt for MTL's media unit
soon.  Let's provide a bit more multi-GT initialization framework in
preparation for that.  The initialization will pull the list of GTs for
a platform from the device info structure.  Although necessary for the
immediate MTL media enabling, this same framework will also be used
farther down the road when we enable remote tiles on xehpsdv and pvc.

Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            | 48 +++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_gt.h            |  1 -
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 ++
 drivers/gpu/drm/i915/i915_drv.h               |  2 +
 drivers/gpu/drm/i915/intel_device_info.h      | 16 +++++++
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  1 +
 7 files changed, 67 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 275ad72940c1..41acc285e8bf 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -736,7 +736,7 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
 	u16 vdbox_mask;
 	u16 vebox_mask;
 
-	info->engine_mask = RUNTIME_INFO(i915)->platform_engine_mask;
+	GEM_BUG_ON(!info->engine_mask);
 
 	if (GRAPHICS_VER(i915) < 11)
 		return info->engine_mask;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index cf7aab7adb30..7c0525e96155 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -807,17 +807,16 @@ static void
 intel_gt_tile_cleanup(struct intel_gt *gt)
 {
 	intel_uncore_cleanup_mmio(gt->uncore);
-
-	if (!gt_is_root(gt))
-		kfree(gt);
 }
 
 int intel_gt_probe_all(struct drm_i915_private *i915)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	struct intel_gt *gt = &i915->gt0;
+	const struct intel_gt_definition *gtdef;
 	phys_addr_t phys_addr;
 	unsigned int mmio_bar;
+	unsigned int i;
 	int ret;
 
 	mmio_bar = GRAPHICS_VER(i915) == 2 ? GEN2_GTTMMADR_BAR : GTTMMADR_BAR;
@@ -828,14 +827,55 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
 	 * and it has been already initialized early during probe
 	 * in i915_driver_probe()
 	 */
+	gt->i915 = i915;
+	gt->name = "Primary GT";
+	gt->info.engine_mask = RUNTIME_INFO(i915)->platform_engine_mask;
+
+	drm_dbg(&i915->drm, "Setting up %s\n", gt->name);
 	ret = intel_gt_tile_setup(gt, phys_addr);
 	if (ret)
 		return ret;
 
 	i915->gt[0] = gt;
 
-	/* TODO: add more tiles */
+	for (i = 1, gtdef = &INTEL_INFO(i915)->extra_gt_list[i - 1];
+	     gtdef->setup != NULL;
+	     i++, gtdef = &INTEL_INFO(i915)->extra_gt_list[i - 1]) {
+		gt = drmm_kzalloc(&i915->drm, sizeof(*gt), GFP_KERNEL);
+		if (!gt) {
+			ret = -ENOMEM;
+			goto err;
+		}
+
+		gt->i915 = i915;
+		gt->name = gtdef->name;
+		gt->type = gtdef->type;
+		gt->info.engine_mask = gtdef->engine_mask;
+		gt->info.id = i;
+
+		drm_dbg(&i915->drm, "Setting up %s\n", gt->name);
+		if (GEM_WARN_ON(range_overflows_t(resource_size_t,
+						  gtdef->mapping_base,
+						  SZ_16M,
+						  pci_resource_len(pdev, mmio_bar)))) {
+			ret = -ENODEV;
+			goto err;
+		}
+
+		ret = gtdef->setup(gt, phys_addr + gtdef->mapping_base);
+		if (ret)
+			goto err;
+
+		i915->gt[i] = gt;
+	}
+
 	return 0;
+
+err:
+	i915_probe_error(i915, "Failed to initialize %s! (%d)\n", gtdef->name, ret);
+	intel_gt_release_all(i915);
+
+	return ret;
 }
 
 int intel_gt_tiles_init(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 40b06adf509a..4d8779529cc2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -54,7 +54,6 @@ void intel_gt_driver_register(struct intel_gt *gt);
 void intel_gt_driver_unregister(struct intel_gt *gt);
 void intel_gt_driver_remove(struct intel_gt *gt);
 void intel_gt_driver_release(struct intel_gt *gt);
-
 void intel_gt_driver_late_release_all(struct drm_i915_private *i915);
 
 int intel_gt_wait_for_idle(struct intel_gt *gt, long timeout);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 4d56f7d5a3be..3bd36caee321 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -83,6 +83,9 @@ struct gt_defaults {
 
 struct intel_gt {
 	struct drm_i915_private *i915;
+	const char *name;
+	enum intel_gt_type type;
+
 	struct intel_uncore *uncore;
 	struct i915_ggtt *ggtt;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 443ed6dac92a..d45dca70bfa6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1061,6 +1061,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_REGION(i915, i) (RUNTIME_INFO(i915)->memory_regions & (i))
 #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
 
+#define HAS_EXTRA_GT_LIST(dev_priv)   (INTEL_INFO(dev_priv)->extra_gt_list)
+
 /*
  * Platform has the dedicated compression control state for each lmem surfaces
  * stored in lmem to support the 3D and media compression formats.
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 0ccde94b225f..e0b79dc0fccc 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -244,6 +244,20 @@ struct intel_runtime_info {
 	};
 };
 
+enum intel_gt_type {
+	GT_PRIMARY,
+	GT_TILE,
+};
+
+struct intel_gt_definition {
+	enum intel_gt_type type;
+	char *name;
+	int (*setup)(struct intel_gt *gt,
+		     phys_addr_t phys_addr);
+	u32 mapping_base;
+	intel_engine_mask_t engine_mask;
+};
+
 struct intel_device_info {
 	struct ip_version media;
 
@@ -251,6 +265,8 @@ struct intel_device_info {
 
 	unsigned int dma_mask_size; /* available DMA address bits */
 
+	const struct intel_gt_definition *extra_gt_list;
+
 	u8 gt; /* GT number, 0 if undefined */
 
 #define DEFINE_FLAG(name) u8 name:1
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index f5904e659ef2..915d58ba383e 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -115,6 +115,7 @@ static struct dev_pm_domain pm_domain = {
 static void mock_gt_probe(struct drm_i915_private *i915)
 {
 	i915->gt[0] = &i915->gt0;
+	i915->gt[0]->name = "Mock GT";
 }
 
 struct drm_i915_private *mock_gem_device(void)
-- 
2.37.2

