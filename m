Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB06012FD58
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 21:00:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E126E33A;
	Fri,  3 Jan 2020 20:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F97189DCF
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 20:00:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jan 2020 12:00:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,391,1571727600"; d="scan'208";a="232201185"
Received: from eyonkov-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.22.82])
 by orsmga002.jf.intel.com with ESMTP; 03 Jan 2020 12:00:32 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jan 2020 20:00:30 +0000
Message-Id: <20200103200030.334215-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200103200030.334215-1-matthew.auld@intel.com>
References: <20200103200030.334215-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/lmem: stop mapping the aperture
 for fake LMEM
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

Just map the region directly, otherwise we are just limiting ourselves
to the size of the mappable aperture. We still keep the same behaviour
with matching the size of the mappable_end, but that can now be
configured with its own modparam, such that we can configure larger
sizes.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_params.c         |  2 +
 drivers/gpu/drm/i915/i915_params.h         |  1 +
 drivers/gpu/drm/i915/intel_memory_region.h |  3 --
 drivers/gpu/drm/i915/intel_region_lmem.c   | 45 ++++++----------------
 4 files changed, 14 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 1dd1f3652795..21be0f1ced82 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -182,6 +182,8 @@ i915_param_named(enable_gvt, bool, 0400,
 #if IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM)
 i915_param_named_unsafe(fake_lmem_start, ulong, 0600,
 	"Fake LMEM start offset (default: 0)");
+i915_param_named_unsafe(fake_lmem_size, ulong, 0600,
+	"Fake LMEM size (default: 0)");
 #endif
 
 static __always_inline void _print_param(struct drm_printer *p,
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 31b88f297fbc..57078a45e6ba 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -67,6 +67,7 @@ struct drm_printer;
 	param(int, enable_dpcd_backlight, 0) \
 	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE) \
 	param(unsigned long, fake_lmem_start, 0) \
+	param(unsigned long, fake_lmem_size, 0) \
 	/* leave bools at the end to not create holes */ \
 	param(bool, alpha_support, IS_ENABLED(CONFIG_DRM_I915_ALPHA_SUPPORT)) \
 	param(bool, enable_hangcheck, true) \
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 0c8e35be76a3..6e0c0d4c100e 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -77,9 +77,6 @@ struct intel_memory_region {
 	struct io_mapping iomap;
 	struct resource region;
 
-	/* For fake LMEM */
-	struct drm_mm_node fake_mappable;
-
 	/* XXX: filthy midlayers */
 	struct drm_mm stolen;
 	struct i915_buddy_mm mm;
diff --git a/drivers/gpu/drm/i915/intel_region_lmem.c b/drivers/gpu/drm/i915/intel_region_lmem.c
index e6a6b571dad4..aedffa2918c2 100644
--- a/drivers/gpu/drm/i915/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/intel_region_lmem.c
@@ -12,53 +12,29 @@
 static int init_fake_lmem_bar(struct intel_memory_region *mem)
 {
 	struct drm_i915_private *i915 = mem->i915;
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
 
 	mem->remap_addr = dma_map_resource(&i915->drm.pdev->dev,
 					   mem->region.start,
-					   mem->fake_mappable.size,
+					   resource_size(&mem->region),
 					   PCI_DMA_BIDIRECTIONAL,
 					   DMA_ATTR_FORCE_CONTIGUOUS);
-	if (dma_mapping_error(&i915->drm.pdev->dev, mem->remap_addr)) {
-		drm_mm_remove_node(&mem->fake_mappable);
+	if (dma_mapping_error(&i915->drm.pdev->dev, mem->remap_addr))
 		return -EINVAL;
-	}
-
-	for (n = 0; n < mem->fake_mappable.size >> PAGE_SHIFT; ++n) {
-		ggtt->vm.insert_page(&ggtt->vm,
-				     mem->remap_addr + (n << PAGE_SHIFT),
-				     n << PAGE_SHIFT,
-				     I915_CACHE_NONE, 0);
-	}
 
 	mem->region = (struct resource)DEFINE_RES_MEM(mem->remap_addr,
-						      mem->fake_mappable.size);
+						      resource_size(&mem->region));
 
 	return 0;
 }
 
 static void release_fake_lmem_bar(struct intel_memory_region *mem)
 {
-	if (!drm_mm_node_allocated(&mem->fake_mappable))
+	if (!i915_modparams.fake_lmem_start)
 		return;
 
-	drm_mm_remove_node(&mem->fake_mappable);
-
 	dma_unmap_resource(&mem->i915->drm.pdev->dev,
 			   mem->remap_addr,
-			   mem->fake_mappable.size,
+			   resource_size(&mem->region),
 			   PCI_DMA_BIDIRECTIONAL,
 			   DMA_ATTR_FORCE_CONTIGUOUS);
 }
@@ -107,22 +83,23 @@ intel_setup_fake_lmem(struct drm_i915_private *i915)
 	struct pci_dev *pdev = i915->drm.pdev;
 	struct intel_memory_region *mem;
 	resource_size_t mappable_end;
-	resource_size_t io_start;
 	resource_size_t start;
+	resource_size_t size;
 
 	GEM_BUG_ON(i915_ggtt_has_aperture(&i915->ggtt));
 	GEM_BUG_ON(!i915_modparams.fake_lmem_start);
 
-	/* Your mappable aperture belongs to me now! */
 	mappable_end = pci_resource_len(pdev, 2);
-	io_start = pci_resource_start(pdev, 2),
 	start = i915_modparams.fake_lmem_start;
+	size = i915_modparams.fake_lmem_size;
+	if (!size)
+		size = mappable_end;
 
 	mem = intel_memory_region_create(i915,
 					 start,
-					 mappable_end,
+					 size,
 					 PAGE_SIZE,
-					 io_start,
+					 start,
 					 &intel_region_lmem_ops);
 	if (!IS_ERR(mem)) {
 		DRM_INFO("Intel graphics fake LMEM: %pR\n", &mem->region);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
