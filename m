Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D58521B487
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:00:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB9066EC1C;
	Fri, 10 Jul 2020 12:00:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD13A6EC03
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:00:45 +0000 (UTC)
IronPort-SDR: LIn7bUeqq5NFinXO6/o3vbsZF1BVLXXuQhYE3xqIdUAyBv3l2vYll+mvDDed1gsCSrYEj/Bwpu
 SECys/SVS7Xw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716687"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716687"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:45 -0700
IronPort-SDR: wkWN3EyHgTQ6Ilpxt12BWTJmMV9ehRVDNZabcmEX/ntC0cfuxWWWOVwDMF09neUJJeLVJC0AOG
 pgoSXolgpRUg==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257977"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:43 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:37 +0100
Message-Id: <20200710115757.290984-41-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 40/60] drm/i915: drop fake LMEM
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

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c            | 17 ----
 drivers/gpu/drm/i915/i915_params.c         |  5 --
 drivers/gpu/drm/i915/i915_params.h         |  1 -
 drivers/gpu/drm/i915/intel_memory_region.c | 11 +--
 drivers/gpu/drm/i915/intel_region_lmem.c   | 96 ----------------------
 drivers/gpu/drm/i915/intel_region_lmem.h   |  3 -
 6 files changed, 1 insertion(+), 132 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 7b758131e0dc..dbec244f63bc 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -954,23 +954,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (!i915->params.nuclear_pageflip && match_info->gen < 5)
 		i915->drm.driver_features &= ~DRIVER_ATOMIC;
 
-	/*
-	 * Check if we support fake LMEM -- for now we only unleash this for
-	 * the live selftests(test-and-exit).
-	 */
-#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
-	if (IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM)) {
-		if (INTEL_GEN(i915) >= 9 && i915_selftest.live < 0 &&
-		    i915->params.fake_lmem_start) {
-			mkwrite_device_info(i915)->memory_regions =
-				REGION_SMEM | REGION_LMEM | REGION_STOLEN_SMEM;
-			mkwrite_device_info(i915)->is_dgfx = true;
-			GEM_BUG_ON(!HAS_LMEM(i915));
-			GEM_BUG_ON(!IS_DGFX(i915));
-		}
-	}
-#endif
-
 	ret = pci_enable_device(pdev);
 	if (ret)
 		goto out_fini;
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 8d8db9ff0a48..1e928e31fd22 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -187,11 +187,6 @@ i915_param_named(enable_gvt, bool, 0400,
 	"Enable support for Intel GVT-g graphics virtualization host support(default:false)");
 #endif
 
-#if IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM)
-i915_param_named_unsafe(fake_lmem_start, ulong, 0400,
-	"Fake LMEM start offset (default: 0)");
-#endif
-
 static __always_inline void _print_param(struct drm_printer *p,
 					 const char *name,
 					 const char *type,
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 53fb5ba8fbed..1416fabef227 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -69,7 +69,6 @@ struct drm_printer;
 	param(int, fastboot, -1, 0600) \
 	param(int, enable_dpcd_backlight, -1, 0600) \
 	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
-	param(unsigned long, fake_lmem_start, 0, 0400) \
 	/* leave bools at the end to not create holes */ \
 	param(bool, enable_hangcheck, true, 0600) \
 	param(bool, load_detect_test, false, 0600) \
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 1e9f52feec59..b4b7858f13e0 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -297,16 +297,7 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
 			mem = i915_gem_stolen_setup(i915);
 			break;
 		case INTEL_MEMORY_LOCAL:
-#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
-			if (IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM)) {
-				if (INTEL_GEN(i915) >= 9 && i915_selftest.live < 0 &&
-				    i915->params.fake_lmem_start)
-					mem = intel_setup_fake_lmem(i915);
-			}
-#endif
-
-			if (IS_ERR(mem))
-				mem = i915_gem_setup_lmem(i915);
+			mem = i915_gem_setup_lmem(i915);
 			break;
 		}
 
diff --git a/drivers/gpu/drm/i915/intel_region_lmem.c b/drivers/gpu/drm/i915/intel_region_lmem.c
index e98582c76de1..95c8d89d1fc9 100644
--- a/drivers/gpu/drm/i915/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/intel_region_lmem.c
@@ -9,64 +9,9 @@
 #include "gem/i915_gem_region.h"
 #include "intel_region_lmem.h"
 
-static int init_fake_lmem_bar(struct intel_memory_region *mem)
-{
-	struct drm_i915_private *i915 = mem->i915;
-	struct i915_ggtt *ggtt = &i915->ggtt;
-	unsigned long n;
-	int ret;
-
-	/* We want to 1:1 map the mappable aperture to our reserved region */
-
-	mem->fake_mappable.start = 0;
-	mem->fake_mappable.size = resource_size(&mem->region);
-	mem->fake_mappable.color = I915_COLOR_UNEVICTABLE;
-
-	ret = drm_mm_reserve_node(&ggtt->vm.mm, &mem->fake_mappable);
-	if (ret)
-		return ret;
-
-	mem->remap_addr = dma_map_resource(&i915->drm.pdev->dev,
-					   mem->region.start,
-					   mem->fake_mappable.size,
-					   PCI_DMA_BIDIRECTIONAL,
-					   DMA_ATTR_FORCE_CONTIGUOUS);
-	if (dma_mapping_error(&i915->drm.pdev->dev, mem->remap_addr)) {
-		drm_mm_remove_node(&mem->fake_mappable);
-		return -EINVAL;
-	}
-
-	for (n = 0; n < mem->fake_mappable.size >> PAGE_SHIFT; ++n) {
-		ggtt->vm.insert_page(&ggtt->vm,
-				     mem->remap_addr + (n << PAGE_SHIFT),
-				     n << PAGE_SHIFT,
-				     I915_CACHE_NONE, 0);
-	}
-
-	mem->region = (struct resource)DEFINE_RES_MEM(mem->remap_addr,
-						      mem->fake_mappable.size);
-
-	return 0;
-}
-
-static void release_fake_lmem_bar(struct intel_memory_region *mem)
-{
-	if (!drm_mm_node_allocated(&mem->fake_mappable))
-		return;
-
-	drm_mm_remove_node(&mem->fake_mappable);
-
-	dma_unmap_resource(&mem->i915->drm.pdev->dev,
-			   mem->remap_addr,
-			   mem->fake_mappable.size,
-			   PCI_DMA_BIDIRECTIONAL,
-			   DMA_ATTR_FORCE_CONTIGUOUS);
-}
-
 static void
 region_lmem_release(struct intel_memory_region *mem)
 {
-	release_fake_lmem_bar(mem);
 	io_mapping_fini(&mem->iomap);
 	intel_memory_region_release_buddy(mem);
 }
@@ -76,11 +21,6 @@ region_lmem_init(struct intel_memory_region *mem)
 {
 	int ret;
 
-	if (mem->i915->params.fake_lmem_start) {
-		ret = init_fake_lmem_bar(mem);
-		GEM_BUG_ON(ret);
-	}
-
 	if (!io_mapping_init_wc(&mem->iomap,
 				mem->io_start,
 				resource_size(&mem->region)))
@@ -101,42 +41,6 @@ const struct intel_memory_region_ops intel_region_lmem_ops = {
 	.create_object = __i915_gem_lmem_object_create,
 };
 
-struct intel_memory_region *
-intel_setup_fake_lmem(struct drm_i915_private *i915)
-{
-	struct pci_dev *pdev = i915->drm.pdev;
-	struct intel_memory_region *mem;
-	resource_size_t mappable_end;
-	resource_size_t io_start;
-	resource_size_t start;
-
-	GEM_BUG_ON(i915_ggtt_has_aperture(&i915->ggtt));
-	GEM_BUG_ON(!i915->params.fake_lmem_start);
-
-	/* Your mappable aperture belongs to me now! */
-	mappable_end = pci_resource_len(pdev, 2);
-	io_start = pci_resource_start(pdev, 2),
-	start = i915->params.fake_lmem_start;
-
-	mem = intel_memory_region_create(i915,
-					 start,
-					 mappable_end,
-					 PAGE_SIZE,
-					 io_start,
-					 &intel_region_lmem_ops);
-	if (!IS_ERR(mem)) {
-		drm_info(&i915->drm, "Intel graphics fake LMEM: %pR\n",
-			 &mem->region);
-		drm_info(&i915->drm,
-			 "Intel graphics fake LMEM IO start: %llx\n",
-			(u64)mem->io_start);
-		drm_info(&i915->drm, "Intel graphics fake LMEM size: %llx\n",
-			 (u64)resource_size(&mem->region));
-	}
-
-	return mem;
-}
-
 static struct intel_memory_region *
 setup_lmem(struct drm_i915_private *dev_priv)
 {
diff --git a/drivers/gpu/drm/i915/intel_region_lmem.h b/drivers/gpu/drm/i915/intel_region_lmem.h
index 054e729035c1..6dbed8de3ce3 100644
--- a/drivers/gpu/drm/i915/intel_region_lmem.h
+++ b/drivers/gpu/drm/i915/intel_region_lmem.h
@@ -12,7 +12,4 @@ extern const struct intel_memory_region_ops intel_region_lmem_ops;
 
 struct intel_memory_region *i915_gem_setup_lmem(struct drm_i915_private *i915);
 
-struct intel_memory_region *
-intel_setup_fake_lmem(struct drm_i915_private *i915);
-
 #endif /* !__INTEL_REGION_LMEM_H */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
