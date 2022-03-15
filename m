Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5749E4DA222
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:15:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9628A10E44D;
	Tue, 15 Mar 2022 18:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9BF710E447
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 18:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647368105; x=1678904105;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1lHG2p/pNqrwdoNOPZlyBn1SBEK5OYoc8/e/WtuDvUU=;
 b=VaogITOxpl184CwsiQ+uGhcSODbyoDSdC22J7WIAFyev3QIPRW4gKbUR
 GNA2EcSmX7Kd+YhDRFnPveJu8vuEpFtekqQsnRZWSTaSU/LcDeOydIpV1
 Oaf7vpnNYdMUEZCHJu5cL9HxUWf9r8WAwsQj9UUWLB40tfvRzQEYVx8sN
 aMopv1V3qMeSz8l/QI153K8WMp0DXHv2u8CJGb081K8Vx7KIQN6dJmzlX
 pfYR3HJSDFonBuHEr4MW3ydlZE97UACzBNhS+PcKkypOZMh1dqe30GiA6
 luw91beC8K4nc/XoKnGzN96NCnDjBP8JkmYx8VKYBBru2eLdp0FFtWdHJ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255221139"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="255221139"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:15:05 -0700
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="498133154"
Received: from sobyrne-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.31.219])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:15:04 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 18:14:20 +0000
Message-Id: <20220315181425.576828-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315181425.576828-1-matthew.auld@intel.com>
References: <20220315181425.576828-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/7] drm/i915/stolen: don't treat small BAR as an
 error
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

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

On client platforms with reduced LMEM BAR, we should be able to continue
with driver load with reduced io_size. Instead of using the BAR size to
determine the how large stolen should be, we should instead use the
ADDR_RANGE register to figure this out(at least on platforms like DG2).
For simplicity we don't attempt to support partially mappable stolen.

v2: rearrange the io_mapping_init_wc slightly, since the stolen setup
might result in reduced io_size.

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Co-developed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 62 +++++++++++++++-------
 drivers/gpu/drm/i915/i915_reg.h            |  3 ++
 2 files changed, 46 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 0bf8f61134af..b860ec954104 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -12,6 +12,8 @@
 
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
+#include "gt/intel_gt.h"
+#include "gt/intel_region_lmem.h"
 #include "i915_drv.h"
 #include "i915_gem_stolen.h"
 #include "i915_reg.h"
@@ -492,7 +494,7 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 
 	/* Exclude the reserved region from driver use */
 	mem->region.end = reserved_base - 1;
-	mem->io_size = resource_size(&mem->region);
+	mem->io_size = min(mem->io_size, resource_size(&mem->region));
 
 	/* It is possible for the reserved area to end before the end of stolen
 	 * memory, so just consider the start. */
@@ -750,11 +752,6 @@ static int init_stolen_lmem(struct intel_memory_region *mem)
 	if (GEM_WARN_ON(resource_size(&mem->region) == 0))
 		return -ENODEV;
 
-	if (!io_mapping_init_wc(&mem->iomap,
-				mem->io_start,
-				mem->io_size))
-		return -EIO;
-
 	/*
 	 * TODO: For stolen lmem we mostly just care about populating the dsm
 	 * related bits and setting up the drm_mm allocator for the range.
@@ -762,18 +759,26 @@ static int init_stolen_lmem(struct intel_memory_region *mem)
 	 */
 	err = i915_gem_init_stolen(mem);
 	if (err)
-		goto err_fini;
+		return err;
+
+	if (mem->io_size && !io_mapping_init_wc(&mem->iomap,
+						mem->io_start,
+						mem->io_size)) {
+		err = -EIO;
+		goto err_cleanup;
+	}
 
 	return 0;
 
-err_fini:
-	io_mapping_fini(&mem->iomap);
+err_cleanup:
+	i915_gem_cleanup_stolen(mem->i915);
 	return err;
 }
 
 static int release_stolen_lmem(struct intel_memory_region *mem)
 {
-	io_mapping_fini(&mem->iomap);
+	if (mem->io_size)
+		io_mapping_fini(&mem->iomap);
 	i915_gem_cleanup_stolen(mem->i915);
 	return 0;
 }
@@ -790,25 +795,43 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 {
 	struct intel_uncore *uncore = &i915->uncore;
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	resource_size_t dsm_size, dsm_base, lmem_size;
 	struct intel_memory_region *mem;
+	resource_size_t io_start, io_size;
 	resource_size_t min_page_size;
-	resource_size_t io_start;
-	resource_size_t lmem_size;
-	u64 lmem_base;
 
-	lmem_base = intel_uncore_read64(uncore, GEN12_DSMBASE);
-	if (GEM_WARN_ON(lmem_base >= pci_resource_len(pdev, 2)))
+	if (WARN_ON_ONCE(instance))
 		return ERR_PTR(-ENODEV);
 
-	lmem_size = pci_resource_len(pdev, 2) - lmem_base;
-	io_start = pci_resource_start(pdev, 2) + lmem_base;
+	/* Use DSM base address instead for stolen memory */
+	dsm_base = intel_uncore_read64(uncore, GEN12_DSMBASE);
+	if (IS_DG1(uncore->i915)) {
+		lmem_size = pci_resource_len(pdev, 2);
+		if (WARN_ON(lmem_size < dsm_base))
+			return ERR_PTR(-ENODEV);
+	} else {
+		resource_size_t lmem_range;
+
+		lmem_range = intel_gt_read_register(&i915->gt0, XEHPSDV_TILE0_ADDR_RANGE) & 0xFFFF;
+		lmem_size = lmem_range >> XEHPSDV_TILE_LMEM_RANGE_SHIFT;
+		lmem_size *= SZ_1G;
+	}
+
+	dsm_size = lmem_size - dsm_base;
+	if (pci_resource_len(pdev, 2) < lmem_size) {
+		io_start = 0;
+		io_size = 0;
+	} else {
+		io_start = pci_resource_start(pdev, 2) + dsm_base;
+		io_size = dsm_size;
+	}
 
 	min_page_size = HAS_64K_PAGES(i915) ? I915_GTT_PAGE_SIZE_64K :
 						I915_GTT_PAGE_SIZE_4K;
 
-	mem = intel_memory_region_create(i915, lmem_base, lmem_size,
+	mem = intel_memory_region_create(i915, dsm_base, dsm_size,
 					 min_page_size,
-					 io_start, lmem_size,
+					 io_start, io_size,
 					 type, instance,
 					 &i915_region_stolen_lmem_ops);
 	if (IS_ERR(mem))
@@ -822,6 +845,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 
 	drm_dbg(&i915->drm, "Stolen Local memory IO start: %pa\n",
 		&mem->io_start);
+	drm_dbg(&i915->drm, "Stolen Local DSM base: %pa\n", &dsm_base);
 
 	intel_memory_region_set_name(mem, "stolen-local");
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ddbc7a685a50..4a10b00a585b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8468,6 +8468,9 @@ enum skl_power_gate {
 #define   SGGI_DIS			REG_BIT(15)
 #define   SGR_DIS			REG_BIT(13)
 
+#define XEHPSDV_TILE0_ADDR_RANGE	_MMIO(0x4900)
+#define   XEHPSDV_TILE_LMEM_RANGE_SHIFT  8
+
 #define XEHPSDV_FLAT_CCS_BASE_ADDR	_MMIO(0x4910)
 #define   XEHPSDV_CCS_BASE_SHIFT	8
 
-- 
2.34.1

